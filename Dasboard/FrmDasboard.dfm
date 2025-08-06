object FrDasboard: TFrDasboard
  Left = 130
  Top = 11
  Width = 1087
  Height = 606
  Caption = 'FrDasboard'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 257
    Top = 0
    Width = 7
    Height = 572
    Cursor = crHSplit
    Beveled = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 257
    Height = 572
    Align = alLeft
    TabOrder = 0
    object fctreeview1: TfcTreeView
      Left = 1
      Top = 33
      Width = 255
      Height = 538
      Align = alClient
      BorderStyle = bsNone
      Indent = 19
      Items.StreamVersion = 1
      Items.Data = {00000000}
      TabOrder = 0
      OnDblClick = fctreeview1DblClick
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 255
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Panel3: TPanel
        Left = 233
        Top = 0
        Width = 22
        Height = 32
        Cursor = crHandPoint
        Align = alRight
        BevelOuter = bvNone
        Caption = '|<'
        TabOrder = 0
        OnClick = Panel3Click
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 89
        Height = 32
        Cursor = crHandPoint
        Align = alLeft
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 'Menu Dasboard'
        TabOrder = 1
        OnClick = Panel4Click
      end
      object Panel10: TPanel
        Left = 184
        Top = 0
        Width = 49
        Height = 32
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        object CheckBox1: TCheckBox
          Left = 0
          Top = 8
          Width = 49
          Height = 17
          Caption = 'Grafik'
          Checked = True
          Ctl3D = False
          ParentCtl3D = False
          State = cbChecked
          TabOrder = 0
          OnClick = CheckBox1Click
        end
      end
      object Panel7: TPanel
        Left = 138
        Top = 0
        Width = 46
        Height = 32
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 3
        object CheckBox2: TCheckBox
          Left = 0
          Top = 8
          Width = 42
          Height = 17
          Caption = 'Grid'
          Checked = True
          Ctl3D = False
          ParentCtl3D = False
          State = cbChecked
          TabOrder = 0
          OnClick = CheckBox2Click
        end
      end
    end
  end
  object Panel9: TPanel
    Left = 264
    Top = 0
    Width = 815
    Height = 572
    Align = alClient
    TabOrder = 1
    object PAGE: TdxPageControl
      Left = 1
      Top = 1
      Width = 813
      Height = 270
      ActivePage = dxTabSheet3
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
      object dxTabKunjunganSales: TdxTabSheet
        Caption = 'dxTabKunjunganSales'
        TabVisible = False
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 813
          Height = 224
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object tvMaster: TcxGridDBTableView
            DataController.DataSource = DsView
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
            OptionsView.Indicator = True
            object tvMasterKeynik: TcxGridDBColumn
              DataBinding.FieldName = 'keynik'
            end
            object tvMasterNama: TcxGridDBColumn
              DataBinding.FieldName = 'nama'
              Width = 300
            end
          end
          object tvDetail: TcxGridDBTableView
            DataController.DataSource = Dscustsales
            DataController.DetailKeyFieldNames = 'keynik'
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.KeyFieldNames = 'Nama'
            DataController.MasterKeyFieldNames = 'keynik'
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
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.StyleSheet = FrSetForm.cxGridStyleDt
            object tvDetailKeynik: TcxGridDBColumn
              DataBinding.FieldName = 'keynik'
              Visible = False
            end
            object tvDetailMInggu1: TcxGridDBColumn
              DataBinding.FieldName = 'mingguke1'
              Width = 80
            end
            object tvDetailMinggu2: TcxGridDBColumn
              DataBinding.FieldName = 'mingguke2'
              Width = 80
            end
            object tvDetailMinggu3: TcxGridDBColumn
              DataBinding.FieldName = 'mingguke3'
              Width = 80
            end
            object tvDetailMInggu4: TcxGridDBColumn
              DataBinding.FieldName = 'mingguke4'
              Width = 80
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
      object dxTabSheet1: TdxTabSheet
        Caption = 'dxTabSheet1'
        TabVisible = False
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 813
          Height = 270
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGrid2DBMaster: TcxGridDBBandedTableView
            DataController.DataSource = DsTarget
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            Bands = <
              item
                FixedKind = fkLeft
              end
              item
                Caption = 'Januari'
              end
              item
                Caption = 'Februari'
              end
              item
                Caption = 'Maret'
              end
              item
                Caption = 'April'
              end
              item
                Caption = 'Mei'
              end
              item
                Caption = 'Juni'
              end
              item
                Caption = 'Juli'
              end
              item
                Caption = 'Agustus'
              end
              item
                Caption = 'September'
              end
              item
                Caption = 'Oktober'
              end
              item
                Caption = 'November'
              end
              item
                Caption = 'Desember'
              end>
            object cxGrid2DBMasterDBKodeSales: TcxGridDBBandedColumn
              Caption = 'Kode Sales'
              DataBinding.FieldName = 'KodeSLS'
              SortOrder = soAscending
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBMasterDBNamaSls: TcxGridDBBandedColumn
              Caption = 'Nama Sales'
              DataBinding.FieldName = 'nama'
              HeaderAlignmentHorz = taCenter
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBMasterDBjan: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan1'
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBMasterDBJanLalu: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan1Lalu'
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBMasterDBSeleisihJan: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih1'
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBMasterDBFeb: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan2'
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBMasterDBFebLalu: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan2Lalu'
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBMasterDBSelisihlFebalu: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih2'
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBMaret: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan3'
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBmaretlalu: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan3Lalu'
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBSelisih: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih3'
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBApril: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan4'
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBAprilLalu: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan4Lalu'
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBSelisihApril: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih4'
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBMei: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan5'
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBmeilalu: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan5Lalu'
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBselisihMei: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih5'
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBMJuni: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan6'
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBjunilalu: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan6Lalu'
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBSelisihJuni: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih5'
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBJuli: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan7'
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBJuliLalu: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan7Lalu'
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBSelIsihJuli: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih7'
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBAgustus: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan8'
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBAgusLalu: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan8Lalu'
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBSelisihAgus: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih8'
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBSptember: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan9'
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBSeptlalu: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan9Lalu'
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBSelisihSept: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih9'
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBOktober: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan10'
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBoktoberlalu: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan10Lalu'
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBSeleishokt: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih10'
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBNovember: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan11'
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBNovemberlalu: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan11Lalu'
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBSeleihNovember: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih11'
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBDesember: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan12'
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBDesemberlalu: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan12Lalu'
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBSelisihDes: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih12'
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGrid2Detail: TcxGridBandedTableView
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end>
            object cxGrid2DetailKodeCust: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid2Detailjan: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid2DetailFeb: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid2Detailmaret: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid2DetailApril: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid2DetailMei: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid2DetailJuni: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid2DetailJuli: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid2DetailAgus: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid2DetailSept: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid2DetailNov: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid2DetailDes: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            DataController.DataSource = DstargetDet
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
                Caption = 'Kode Customer'
                FixedKind = fkLeft
              end
              item
                Caption = 'Januari'
              end
              item
                Caption = 'Februari'
              end
              item
                Caption = 'Maret'
              end
              item
                Caption = 'April'
              end
              item
                Caption = 'Mei'
              end
              item
                Caption = 'Juni'
              end
              item
                Caption = 'Juli'
              end
              item
                Caption = 'Agustus'
              end
              item
                Caption = 'September'
              end
              item
                Caption = 'Oktober'
              end
              item
                Caption = 'November'
              end
              item
                Caption = 'Desember'
              end>
            object cxGrid2DBKodeCustSupp: TcxGridDBBandedColumn
              DataBinding.FieldName = 'KodeCustSupp'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBJan: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan1'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBFeb: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan2'
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBNMar: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan3'
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBNApril: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan4'
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBNMei: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan5'
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBNJuni: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan6'
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBNJuli: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan7'
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBNAgus: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan8'
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBNSept: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan9'
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBNOkt: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan10'
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBNNov: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan11'
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBNDes: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan12'
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBLJAN: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan1Lalu'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBLFEB: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan2Lalu'
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBlMAR: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan3Lalu'
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBLAPR: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan4Lalu'
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBLMEI: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan5Lalu'
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBLJUNI: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan6Lalu'
              Position.BandIndex = 6
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBLJULI: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan7Lalu'
              Position.BandIndex = 7
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBLAGUS: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan8Lalu'
              Position.BandIndex = 8
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBLSEPT: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan9Lalu'
              Position.BandIndex = 9
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBLOKT: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan10Lalu'
              Position.BandIndex = 10
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBLNOV: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan11Lalu'
              Position.BandIndex = 11
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBLDES: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan12Lalu'
              Position.BandIndex = 12
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBSJAN: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih1'
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBSFEB: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih2'
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBSMAR: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih3'
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBSAPR: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih4'
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBSMEI: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih5'
              Position.BandIndex = 5
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBASJUNI: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih6'
              Position.BandIndex = 6
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBSJULI: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih7'
              Position.BandIndex = 7
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBSAGUS: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih8'
              Position.BandIndex = 8
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBSSEPT: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih9'
              Position.BandIndex = 9
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBSOKT: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih1'
              Position.BandIndex = 10
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBSNov: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih11'
              Position.BandIndex = 11
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBSDES: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih12'
              Position.BandIndex = 12
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGrid2DBMaster
          end
        end
      end
      object dxTabSheet2: TdxTabSheet
        Caption = 'dxTabSheet2'
        TabVisible = False
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 813
          Height = 270
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGridDBBandedTableView1: TcxGridDBBandedTableView
            DataController.DataSource = DsTargetThn
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            Bands = <
              item
                FixedKind = fkLeft
              end
              item
                Caption = 'Januari'
              end
              item
                Caption = 'Februari'
              end
              item
                Caption = 'Maret'
              end
              item
                Caption = 'April'
              end
              item
                Caption = 'Mei'
              end
              item
                Caption = 'Juni'
              end
              item
                Caption = 'Juli'
              end
              item
                Caption = 'Agustus'
              end
              item
                Caption = 'September'
              end
              item
                Caption = 'Oktober'
              end
              item
                Caption = 'November'
              end
              item
                Caption = 'Desember'
              end>
            object cxGridDBKodeSales: TcxGridDBBandedColumn
              Caption = 'Kode Sales'
              DataBinding.FieldName = 'KeyNik'
              HeaderAlignmentHorz = taCenter
              SortOrder = soAscending
              Width = 110
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedNama: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Nama'
              HeaderAlignmentHorz = taCenter
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBJan: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan1'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBtargetJan: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp1'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBSelisihJan: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih1'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBFeb: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan2'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBtagetFeb: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp2'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBSelisihFeb: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih2'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBmaret: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan3'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBtargetMaret: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp3'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBSelsishMaret: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih3'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBApril: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan4'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBTargetApril: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp4'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBSelsihApril: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih4'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBMei: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan5'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBTargetMei: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp5'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBSelsihMei: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih5'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBJuni: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan6'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBtargetJuni: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp6'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBSelisihJuni: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih6'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBJuli: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan7'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBtargetJuli: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp7'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBSelsishJuli: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih7'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBAgus: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan8'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBTargetAgus: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp8'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBSelisihAgus: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih8'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBSept: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan9'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBtargetSept: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp9'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBSelsishSept: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih9'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBOkt: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan10'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBtargetOkt: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp10'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBSelsishOkt: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih10'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBnov: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan11'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDtargetNov: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp11'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBSelsishNov: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih11'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBdes: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan12'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBTargetDes: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp12'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBSelsishDes: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih12'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGridBandedTableView1: TcxGridBandedTableView
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end>
            object cxGridBandedColumn1: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn2: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn3: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn4: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn5: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn6: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn7: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn8: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn9: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn10: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn11: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn12: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGrid3DBBandedTableView1: TcxGridDBBandedTableView
            DataController.DataSource = DsTargetThnDet
            DataController.DetailKeyFieldNames = 'KeyNik'
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.KeyFieldNames = 'KeyNik'
            DataController.MasterKeyFieldNames = 'KeyNik'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsView.GroupByBox = False
            Bands = <
              item
                Caption = 'Kode Customer'
                FixedKind = fkLeft
              end
              item
                Caption = 'Januari'
              end
              item
                Caption = 'Februari'
              end
              item
                Caption = 'Maret'
              end
              item
                Caption = 'April'
              end
              item
                Caption = 'Mei'
              end
              item
                Caption = 'Juni'
              end
              item
                Caption = 'Juli'
              end
              item
                Caption = 'Agustus'
              end
              item
                Caption = 'September'
              end
              item
                Caption = 'Oktober'
              end
              item
                Caption = 'November'
              end
              item
                Caption = 'Desember'
              end>
            object cxGrid3DBKodeCustSupp: TcxGridDBBandedColumn
              DataBinding.FieldName = 'KodeCustSupp'
              Width = 200
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBNJan: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan1'
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBnfeb: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan2'
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBBNmar: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan3'
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBnApr: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan4'
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBNMei: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan5'
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBNjuni: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan6'
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBNjuli: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan7'
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBNAgustus: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan8'
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBNSept: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan9'
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBNOkt: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan10'
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBNnov: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan11'
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBNdes: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan12'
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBLJAN: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp1'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBLFEB: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp2'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBLMAR: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp3'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBLAPRIL: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp4'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBLMEI: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp5'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBLJUNI: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp6'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBLJULI: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp7'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBLAGUS: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp8'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBLSEPT: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp9'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBLOKT: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp10'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBLNOV: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp11'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBLDES: TcxGridDBBandedColumn
              Caption = 'Target'
              DataBinding.FieldName = 'Rp12'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBSJAN: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih1'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBSFEB: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih2'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBSMAR: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih3'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBSAPR: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih4'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBSMEI: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih5'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBSJUNI: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih6'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBSJULI: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih7'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBSAGUSTUS: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih8'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBSSPET: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih9'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBSOKT: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih10'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBSNOV: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih11'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid3DBSDES: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih12'
              Visible = False
              Width = 120
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBBandedTableView1
            object cxGridLevel4: TcxGridLevel
              GridView = cxGrid3DBBandedTableView1
              Visible = False
            end
          end
        end
      end
      object dxTabSheet3: TdxTabSheet
        Caption = 'dxTabSheet3'
        TabVisible = False
        object cxGrid4: TcxGrid
          Left = 0
          Top = 0
          Width = 813
          Height = 270
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGridDBTableView1: TcxGridDBTableView
            DataController.DataSource = DsOmset
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
            OptionsView.Indicator = True
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Kode Sales'
              DataBinding.FieldName = 'KodeSLS'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBNama: TcxGridDBColumn
              DataBinding.FieldName = 'Nama'
              HeaderAlignmentHorz = taCenter
              SortOrder = soAscending
              Width = 150
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Januari'
              DataBinding.FieldName = 'RpBulan1'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Februari'
              DataBinding.FieldName = 'RpBulan2'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Maret'
              DataBinding.FieldName = 'RpBulan3'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'April'
              DataBinding.FieldName = 'RpBulan4'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'Mei'
              DataBinding.FieldName = 'RpBulan5'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = 'Juni'
              DataBinding.FieldName = 'RpBulan6'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Juli'
              DataBinding.FieldName = 'RpBulan7'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'Agustus'
              DataBinding.FieldName = 'RpBulan8'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'September'
              DataBinding.FieldName = 'RpBulan9'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = 'Oktober'
              DataBinding.FieldName = 'RpBulan10'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = 'November'
              DataBinding.FieldName = 'RpBulan11'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = 'Desember'
              DataBinding.FieldName = 'RpBulan12'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
          end
          object cxGridDBTableView2: TcxGridDBTableView
            DataController.DataSource = DskotaThnDet
            DataController.DetailKeyFieldNames = 'kota'
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.KeyFieldNames = 'kota'
            DataController.MasterKeyFieldNames = 'KodeKota'
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
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.StyleSheet = FrSetForm.cxGridStyleDt
            object cxGridDBColumn14: TcxGridDBColumn
              DataBinding.FieldName = 'KodeCustSupp'
              Width = 100
            end
            object cxGridDBColumn15: TcxGridDBColumn
              Caption = 'Januari'
              DataBinding.FieldName = 'RpBulan1'
              Width = 80
            end
            object cxGridDBColumn16: TcxGridDBColumn
              Caption = 'Februari'
              DataBinding.FieldName = 'RpBulan2'
              Width = 80
            end
            object cxGridDBColumn17: TcxGridDBColumn
              Caption = 'Maret'
              DataBinding.FieldName = 'RpBulan3'
              Width = 80
            end
            object cxGridDBColumn18: TcxGridDBColumn
              Caption = 'April'
              DataBinding.FieldName = 'RpBulan4'
              Width = 80
            end
            object cxGridDBColumn19: TcxGridDBColumn
              Caption = 'Mei'
              DataBinding.FieldName = 'RpBulan5'
              Width = 80
            end
            object cxGridDBColumn20: TcxGridDBColumn
              Caption = 'Juni'
              DataBinding.FieldName = 'RpBulan6'
              Width = 80
            end
            object cxGridDBColumn21: TcxGridDBColumn
              Caption = 'Juli'
              DataBinding.FieldName = 'RpBulan7'
              Width = 80
            end
            object cxGridDBColumn22: TcxGridDBColumn
              Caption = 'Agustus'
              DataBinding.FieldName = 'RpBulan8'
              Width = 80
            end
            object cxGridDBColumn23: TcxGridDBColumn
              Caption = 'September'
              DataBinding.FieldName = 'RpBulan9'
              Width = 80
            end
            object cxGridDBColumn24: TcxGridDBColumn
              Caption = 'Oktober'
              DataBinding.FieldName = 'RpBulan10'
              Width = 80
            end
            object cxGridDBColumn25: TcxGridDBColumn
              Caption = 'November'
              DataBinding.FieldName = 'RpBulan11'
              Width = 80
            end
            object cxGridDBColumn26: TcxGridDBColumn
              Caption = 'Desember'
              DataBinding.FieldName = 'RpBulan12'
              Width = 80
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView1
            object cxGridLevel5: TcxGridLevel
              GridView = cxGridDBTableView2
              Visible = False
            end
          end
        end
      end
      object dxTabSheet4: TdxTabSheet
        Caption = 'dxTabSheet4'
        TabVisible = False
        object cxGrid5: TcxGrid
          Left = 0
          Top = 0
          Width = 813
          Height = 270
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGridDBBandedTableView2: TcxGridDBBandedTableView
            DataController.DataSource = DsArea
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            Bands = <
              item
                FixedKind = fkLeft
              end
              item
                Caption = 'Januari'
              end
              item
                Caption = 'Februari'
              end
              item
                Caption = 'Maret'
              end
              item
                Caption = 'April'
              end
              item
                Caption = 'Mei'
              end
              item
                Caption = 'Juni'
              end
              item
                Caption = 'Juli'
              end
              item
                Caption = 'Agustus'
              end
              item
                Caption = 'September'
              end
              item
                Caption = 'Oktober'
              end
              item
                Caption = 'November'
              end
              item
                Caption = 'Desember'
              end>
            object cxGridDBBandedColumn1: TcxGridDBBandedColumn
              Caption = 'Kode Area'
              DataBinding.FieldName = 'KodeArea'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2DBBandedColumn1: TcxGridDBBandedColumn
              Caption = 'Nama Area'
              DataBinding.FieldName = 'NamaArea'
              HeaderAlignmentHorz = taCenter
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn2: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan1'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn3: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan1Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn4: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih1'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn5: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan2'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn6: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan2Lalu'
              HeaderAlignmentHorz = taCenter
              SortOrder = soAscending
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn7: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih2'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn8: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan3'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn9: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan3Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn10: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih3'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn11: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan4'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn12: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan4Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn13: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih4'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn14: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan5'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn15: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan5Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn16: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih5'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn17: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan6'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn18: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan6Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn19: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih5'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn20: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan7'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn21: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan7Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn22: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih7'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn23: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan8'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn24: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan8Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn25: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih8'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn26: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan9'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn27: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan9Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn28: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih9'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn29: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan10'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn30: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan10Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn31: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih10'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn32: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan11'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn33: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan11Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn34: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih11'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn35: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan12'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn36: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan12Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn37: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih12'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGridBandedTableView2: TcxGridBandedTableView
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end>
            object cxGridBandedColumn13: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn14: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn15: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn16: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn17: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn18: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn19: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn20: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn21: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn22: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn23: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn24: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGrid5DBBandedTableView1: TcxGridDBBandedTableView
            DataController.DataSource = DsAreaDet
            DataController.DetailKeyFieldNames = 'KodeKota'
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.KeyFieldNames = 'KodeArea'
            DataController.MasterKeyFieldNames = 'KodeArea'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsView.GroupByBox = False
            Bands = <
              item
                Caption = 'Kota'
                FixedKind = fkLeft
              end
              item
                Caption = 'Januari'
              end
              item
                Caption = 'Februari'
              end
              item
                Caption = 'Maret'
              end
              item
                Caption = 'April'
              end
              item
                Caption = 'Meii'
              end
              item
                Caption = 'Juni'
              end
              item
                Caption = 'Juli'
              end
              item
                Caption = 'Agustus'
              end
              item
                Caption = 'September'
              end
              item
                Caption = 'Oktober'
              end
              item
                Caption = 'November'
              end
              item
                Caption = 'Desember'
              end>
            object cxGrid5DBBArea: TcxGridDBBandedColumn
              Caption = 'Kota'
              DataBinding.FieldName = 'KodeKota'
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid5DBkotaJanuari: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan1'
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid5DBKotaFeb: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan2'
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid5DBKotaMar: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan3'
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid5DBKotaApr: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan4'
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid5DBkotaMei: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan5'
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid5DBKotaJuni: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan6'
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid5DBkotaJuli: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan7'
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid5DBkotaAgus: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan8'
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid5DBKotaSept: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan9'
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid5DBKotaOkt: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan10'
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object BandedTableView1DBKOtaNovember: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan11'
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid5DBKotaDes: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan12'
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid5DBLkotaJan: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan1Lalu'
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid5DBLKOTAFEB: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan2Lalu'
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid5DBLKOTAMAR: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan3Lalu'
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid5DBLKOTAAPR: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan4Lalu'
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid5DBLKOTAMEI: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan5Lalu'
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid5DBLKOTAJUNI: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan6Lalu'
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid5DBLKOTAJULI: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan7Lalu'
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid5DBLKOTAGUS: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan8Lalu'
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid5DBLKOTASEPT: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan9Lalu'
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid5DBLKOTAOKT: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan10Lalu'
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid5DBLKOTANOV: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan11Lalu'
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid5DBLKOTADES: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan12Lalu'
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid5DBSKOTAJAN: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih1'
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid5DBSKOTAFEB: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih2'
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid5DBSKOTAMAR: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih3'
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid5DBSKOTAAPR: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih4'
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid5DBSKOTAMEI: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih5'
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid5DBSKOTAJUNI: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih6'
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid5DBSKOTAJULI: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih7'
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid5DBSKOTAAGUS: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih8'
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid5DBSKOTASEPT: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih9'
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid5DBSOKT: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih10'
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid5DBSKOTANOV: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih11'
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid5DBSKOTADES: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih12'
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGridLevel7: TcxGridLevel
            GridView = cxGridDBBandedTableView2
            object cxGridLevel8: TcxGridLevel
              GridView = cxGrid5DBBandedTableView1
              Visible = False
            end
          end
        end
      end
      object dxTabSheet5: TdxTabSheet
        Caption = 'dxTabSheet5'
        TabVisible = False
        object cxGrid6: TcxGrid
          Left = 0
          Top = 0
          Width = 813
          Height = 270
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGridDBTableView5: TcxGridDBTableView
            DataController.DataSource = DsAreathn
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
            OptionsView.Indicator = True
            object cxGridDBColumn33: TcxGridDBColumn
              Caption = 'Kode Area'
              DataBinding.FieldName = 'KodeArea'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBTableView5DBColumn1: TcxGridDBColumn
              Caption = 'Nama Area'
              DataBinding.FieldName = 'NamaArea'
              HeaderAlignmentHorz = taCenter
              Width = 150
            end
            object cxGridDBColumn34: TcxGridDBColumn
              Caption = 'Januari'
              DataBinding.FieldName = 'RpBulan1'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn35: TcxGridDBColumn
              Caption = 'Februari'
              DataBinding.FieldName = 'RpBulan2'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn36: TcxGridDBColumn
              Caption = 'Maret'
              DataBinding.FieldName = 'RpBulan3'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn37: TcxGridDBColumn
              Caption = 'April'
              DataBinding.FieldName = 'RpBulan4'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn38: TcxGridDBColumn
              Caption = 'Mei'
              DataBinding.FieldName = 'RpBulan5'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn39: TcxGridDBColumn
              Caption = 'Juni'
              DataBinding.FieldName = 'RpBulan6'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn40: TcxGridDBColumn
              Caption = 'Juli'
              DataBinding.FieldName = 'RpBulan7'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn41: TcxGridDBColumn
              Caption = 'Agustus'
              DataBinding.FieldName = 'RpBulan6'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn42: TcxGridDBColumn
              Caption = 'September'
              DataBinding.FieldName = 'RpBulan9'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn43: TcxGridDBColumn
              Caption = 'Oktober'
              DataBinding.FieldName = 'RpBulan10'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn44: TcxGridDBColumn
              Caption = 'November'
              DataBinding.FieldName = 'RpBulan11'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn45: TcxGridDBColumn
              Caption = 'Desember'
              DataBinding.FieldName = 'RpBulan12'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
          end
          object cxGridDBTableView6: TcxGridDBTableView
            DataController.DataSource = DsAreaThnDet
            DataController.DetailKeyFieldNames = 'KodeArea'
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.KeyFieldNames = 'KodeArea'
            DataController.MasterKeyFieldNames = 'KodeArea'
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
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.StyleSheet = FrSetForm.cxGridStyleDt
            object cxGridDBColumn46: TcxGridDBColumn
              Caption = 'Kota'
              DataBinding.FieldName = 'kodekota'
              Width = 100
            end
            object cxGridDBColumn47: TcxGridDBColumn
              DataBinding.FieldName = 'Januari'
              Width = 80
            end
            object cxGridDBColumn48: TcxGridDBColumn
              DataBinding.FieldName = 'Februari'
              Width = 80
            end
            object cxGridDBColumn49: TcxGridDBColumn
              DataBinding.FieldName = 'Maret'
              Width = 80
            end
            object cxGridDBColumn50: TcxGridDBColumn
              DataBinding.FieldName = 'April'
              Width = 80
            end
            object cxGridDBTableView6DBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'Mei'
              Width = 80
            end
            object cxGridDBTableView6DBColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'Juni'
              Width = 80
            end
            object cxGridDBTableView6DBColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'juli'
              Width = 80
            end
            object cxGridDBTableView6DBColumn4: TcxGridDBColumn
              DataBinding.FieldName = 'Agustus'
              Width = 80
            end
            object cxGridDBTableView6DBColumn5: TcxGridDBColumn
              DataBinding.FieldName = 'September'
              Width = 80
            end
            object cxGridDBTableView6DBColumn6: TcxGridDBColumn
              DataBinding.FieldName = 'oktober'
              Width = 80
            end
            object cxGridDBTableView6DBColumn7: TcxGridDBColumn
              DataBinding.FieldName = 'November'
              Width = 80
            end
            object cxGridDBTableView6DBColumn8: TcxGridDBColumn
              DataBinding.FieldName = 'Desember'
              Width = 80
            end
          end
          object cxGridLevel9: TcxGridLevel
            GridView = cxGridDBTableView5
            object cxGridLevel10: TcxGridLevel
              GridView = cxGridDBTableView6
            end
          end
        end
      end
      object dxTabSheet6: TdxTabSheet
        Caption = 'dxTabSheet6'
        TabVisible = False
        object cxGrid7: TcxGrid
          Left = 0
          Top = 0
          Width = 813
          Height = 270
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGridDBBandedTableView3: TcxGridDBBandedTableView
            DataController.DataSource = DsKota
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            Bands = <
              item
                FixedKind = fkLeft
              end
              item
                Caption = 'Januari'
              end
              item
                Caption = 'Februari'
              end
              item
                Caption = 'Maret'
              end
              item
                Caption = 'April'
              end
              item
                Caption = 'Mei'
              end
              item
                Caption = 'Juni'
              end
              item
                Caption = 'Juli'
              end
              item
                Caption = 'Agustus'
              end
              item
                Caption = 'September'
              end
              item
                Caption = 'Oktober'
              end
              item
                Caption = 'November'
              end
              item
                Caption = 'Desember'
              end>
            object cxGridDBBandedColumn38: TcxGridDBBandedColumn
              Caption = 'Kode Kota'
              DataBinding.FieldName = 'KodeKota'
              HeaderAlignmentHorz = taCenter
              SortOrder = soDescending
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3DBBandedColumn1: TcxGridDBBandedColumn
              Caption = 'Nama Kota'
              DataBinding.FieldName = 'namaKota'
              HeaderAlignmentHorz = taCenter
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn39: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan1'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn40: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan1Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn41: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih1'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn42: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan2'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn43: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan2Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn44: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih2'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn45: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan3'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn46: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan3Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn47: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih3'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn48: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan4'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn49: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan4Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn50: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih4'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn51: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan5'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn52: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan5Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn53: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih5'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn54: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan6'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn55: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan6Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn56: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih5'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn57: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan7'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn58: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan7Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn59: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih7'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn60: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan8'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn61: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan8Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn62: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih8'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn63: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan9'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn64: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan9Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn65: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih9'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn66: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan10'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn67: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan10Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn68: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih10'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn69: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan11'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn70: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan11Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn71: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih11'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn72: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan12'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn73: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan12Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn74: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih12'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGridBandedTableView3: TcxGridBandedTableView
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end>
            object cxGridBandedColumn25: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn26: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn27: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn28: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn29: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn30: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn31: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn32: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn33: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn34: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn35: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn36: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGrid7DBBandedTableView1: TcxGridDBBandedTableView
            DataController.DataSource = DskotaDet
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsView.GroupByBox = False
            Bands = <
              item
                Caption = 'Customer'
                FixedKind = fkLeft
              end
              item
                Caption = 'Januari'
              end
              item
                Caption = 'Februari'
              end
              item
                Caption = 'Maret'
              end
              item
                Caption = 'April'
              end
              item
                Caption = 'Mei'
              end
              item
                Caption = 'Juni'
              end
              item
                Caption = 'Juli'
              end
              item
                Caption = 'Agustus'
              end
              item
                Caption = 'September'
              end
              item
                Caption = 'Oktober'
              end
              item
                Caption = 'November'
              end
              item
                Caption = 'Desember'
              end>
            object cxGrid7DBKOdecust: TcxGridDBBandedColumn
              DataBinding.FieldName = 'KodeCustSupp'
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid7DBJan: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan1'
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid7DBFeb: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan2'
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid7DBmaret: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan3'
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid7DBApril: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan4'
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid7DBMei: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan5'
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid7DBJuni: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan6'
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid7DBJuli: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan7'
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid7DBAgustus: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan8'
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid7DBSeptember: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan9'
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid7DBoktober: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan10'
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid7DBnovember: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan11'
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid7DBdesember: TcxGridDBBandedColumn
              Caption = 'Tahun ini'
              DataBinding.FieldName = 'RpBulan12'
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid7DBLJan: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan1Lalu'
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid7DBLFEB: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan2Lalu'
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid7DBLMAR: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan3Lalu'
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid7DBLAPR: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan4Lalu'
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid7DBLMEI: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan5Lalu'
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid7DBLJUNI: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan6Lalu'
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid7DBLJULI: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan7Lalu'
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid7DBLAGUSTUS: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan9Lalu'
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid7DBLSEPT: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan9Lalu'
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid7DBLOKT: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan10Lalu'
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid7DBLNOV: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan11Lalu'
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid7DBLDES: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan12Lalu'
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid7DBSJAN: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih1'
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid7DBSFEB: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih2'
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid7DBSMAR: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih3'
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid7DBSAPRL: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih4'
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid7DBSMEI: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih5'
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid7DBSJUNI: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih6'
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid7DBSJULI: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih7'
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid7DBSAGUSTUS: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih8'
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid7DBSSEPT: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih9'
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid7DBSOKT: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih10'
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid7DBSNOV: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih11'
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid7DBSDES: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih12'
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGridLevel11: TcxGridLevel
            GridView = cxGridDBBandedTableView3
            object cxGridLevel12: TcxGridLevel
              GridView = cxGrid7DBBandedTableView1
            end
          end
        end
      end
      object dxTabSheet7: TdxTabSheet
        Caption = 'dxTabSheet7'
        TabVisible = False
        object cxGrid8: TcxGrid
          Left = 0
          Top = 0
          Width = 813
          Height = 270
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGridDBTableView8: TcxGridDBTableView
            DataController.DataSource = Dskotathn
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
            OptionsView.Indicator = True
            object cxGridDBColumn64: TcxGridDBColumn
              Caption = 'Kode Kota'
              DataBinding.FieldName = 'KodeKota'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBTableView8DBColumn1: TcxGridDBColumn
              Caption = 'Nama Kota'
              DataBinding.FieldName = 'Namakota'
              HeaderAlignmentHorz = taCenter
              Width = 150
            end
            object cxGridDBColumn65: TcxGridDBColumn
              DataBinding.FieldName = 'Januari'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn66: TcxGridDBColumn
              DataBinding.FieldName = 'Februari'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn67: TcxGridDBColumn
              DataBinding.FieldName = 'Maret'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn68: TcxGridDBColumn
              DataBinding.FieldName = 'April'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn69: TcxGridDBColumn
              DataBinding.FieldName = 'Mei'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn70: TcxGridDBColumn
              DataBinding.FieldName = 'Juni'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn71: TcxGridDBColumn
              DataBinding.FieldName = 'Juli'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn72: TcxGridDBColumn
              DataBinding.FieldName = 'Agustus'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn73: TcxGridDBColumn
              DataBinding.FieldName = 'September'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn74: TcxGridDBColumn
              Caption = 'Oktober'
              DataBinding.FieldName = 'oktober'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn75: TcxGridDBColumn
              DataBinding.FieldName = 'November'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn76: TcxGridDBColumn
              DataBinding.FieldName = 'Desember'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
          end
          object cxGridDBTableView9: TcxGridDBTableView
            DataController.DataSource = DskotaThnDet
            DataController.DetailKeyFieldNames = 'kota'
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.KeyFieldNames = 'kota'
            DataController.MasterKeyFieldNames = 'KodeKota'
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
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.StyleSheet = FrSetForm.cxGridStyleDt
            object cxGridDBColumn77: TcxGridDBColumn
              DataBinding.FieldName = 'KodeCustSupp'
              Width = 100
            end
            object cxGridDBColumn80: TcxGridDBColumn
              Caption = 'Januari'
              DataBinding.FieldName = 'RpBulan1'
              Width = 80
            end
            object cxGridDBColumn81: TcxGridDBColumn
              Caption = 'Februari'
              DataBinding.FieldName = 'RpBulan2'
              Width = 80
            end
            object cxGridDBTableView9DBColumn1: TcxGridDBColumn
              Caption = 'Maret'
              DataBinding.FieldName = 'RpBulan3'
              Width = 80
            end
            object cxGridDBTableView9DBColumn2: TcxGridDBColumn
              Caption = 'April'
              DataBinding.FieldName = 'RpBulan4'
              Width = 80
            end
            object cxGridDBTableView9DBColumn3: TcxGridDBColumn
              Caption = 'Mei'
              DataBinding.FieldName = 'RpBulan5'
              Width = 80
            end
            object cxGridDBTableView9DBColumn4: TcxGridDBColumn
              Caption = 'Juni'
              DataBinding.FieldName = 'RpBulan6'
              Width = 80
            end
            object cxGridDBTableView9DBColumn5: TcxGridDBColumn
              Caption = 'Juli'
              DataBinding.FieldName = 'RpBulan7'
              Width = 80
            end
            object cxGridDBTableView9DBColumn6: TcxGridDBColumn
              Caption = 'Agustus'
              DataBinding.FieldName = 'RpBulan8'
              Width = 80
            end
            object cxGridDBTableView9DBColumn7: TcxGridDBColumn
              Caption = 'September'
              DataBinding.FieldName = 'RpBulan9'
              Width = 80
            end
            object cxGridDBTableView9DBColumn8: TcxGridDBColumn
              Caption = 'Oktober'
              DataBinding.FieldName = 'RpBulan10'
              Width = 80
            end
            object cxGridDBTableView9DBColumn9: TcxGridDBColumn
              Caption = 'November'
              DataBinding.FieldName = 'RpBulan11'
              Width = 80
            end
            object cxGridDBTableView9DBColumn10: TcxGridDBColumn
              Caption = 'Desember'
              DataBinding.FieldName = 'RpBulan12'
              Width = 80
            end
          end
          object cxGridLevel13: TcxGridLevel
            GridView = cxGridDBTableView8
            object cxGridLevel14: TcxGridLevel
              GridView = cxGridDBTableView9
            end
          end
        end
      end
      object dxTabSheet8: TdxTabSheet
        Caption = 'dxTabSheet8'
        TabVisible = False
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 813
          Height = 239
          Align = alClient
          TabOrder = 0
          object cxGrid9: TcxGrid
            Left = 1
            Top = 1
            Width = 811
            Height = 212
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.Kind = lfFlat
            object cxGridDBTableView10: TcxGridDBTableView
              DataController.DataSource = Dstock
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
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGridDBKodeBrg: TcxGridDBColumn
                Caption = 'Kode Kota'
                DataBinding.FieldName = 'KODEBRG'
                Width = 100
              end
              object cxGridDBNamaBrg: TcxGridDBColumn
                Caption = 'Nama Barang'
                DataBinding.FieldName = 'NamaBrg'
                Width = 200
              end
              object cxGridDBSaldo1: TcxGridDBColumn
                Caption = 'Stock'
                DataBinding.FieldName = 'SALDOQNT'
                Width = 100
              end
              object cxGridDBSO1: TcxGridDBColumn
                Caption = 'Qnt SO'
                DataBinding.FieldName = 'QNT1SO'
                Width = 100
              end
              object cxGridDBPO1: TcxGridDBColumn
                Caption = 'Qnt PO'
                DataBinding.FieldName = 'Qnt1PO'
                Width = 100
              end
              object cxGridDBStockF1: TcxGridDBColumn
                Caption = 'Stock Fiktif'
                DataBinding.FieldName = 'Qnt1Fiktif'
                Width = 100
              end
            end
            object cxGridDBTableView11: TcxGridDBTableView
              DataController.DataSource = DskotaThnDet
              DataController.DetailKeyFieldNames = 'keynik'
              DataController.Filter.Criteria = {FFFFFFFF0000000000}
              DataController.KeyFieldNames = 'Nama'
              DataController.MasterKeyFieldNames = 'keynik'
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
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.StyleSheet = FrSetForm.cxGridStyleDt
              object cxGridDBColumn95: TcxGridDBColumn
                DataBinding.FieldName = 'keynik'
                Visible = False
              end
              object cxGridDBColumn96: TcxGridDBColumn
                DataBinding.FieldName = 'mingguke1'
                Width = 80
              end
              object cxGridDBColumn97: TcxGridDBColumn
                DataBinding.FieldName = 'mingguke2'
                Width = 80
              end
              object cxGridDBColumn98: TcxGridDBColumn
                DataBinding.FieldName = 'mingguke3'
                Width = 80
              end
              object cxGridDBColumn99: TcxGridDBColumn
                DataBinding.FieldName = 'mingguke4'
                Width = 80
              end
            end
            object cxGridLevel15: TcxGridLevel
              GridView = cxGridDBTableView10
            end
          end
          object Panel6: TPanel
            Left = 1
            Top = 213
            Width = 811
            Height = 25
            Align = alBottom
            TabOrder = 1
          end
        end
      end
      object dxTabSheet9: TdxTabSheet
        Caption = 'dxTabSheet9'
        TabVisible = False
        object cxGrid10: TcxGrid
          Left = 0
          Top = 0
          Width = 813
          Height = 270
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGridDBBandedTableView4: TcxGridDBBandedTableView
            DataController.DataSource = DsCustThn
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            Bands = <
              item
                FixedKind = fkLeft
                Width = 411
              end
              item
                Caption = 'Januari'
              end
              item
                Caption = 'Februari'
              end
              item
                Caption = 'Maret'
              end
              item
                Caption = 'April'
              end
              item
                Caption = 'Mei'
              end
              item
                Caption = 'Juni'
              end
              item
                Caption = 'Juli'
              end
              item
                Caption = 'Agustus'
              end
              item
                Caption = 'September'
              end
              item
                Caption = 'Oktober'
              end
              item
                Caption = 'November'
              end
              item
                Caption = 'Desember'
              end>
            object cxGridDBBandedColumn75: TcxGridDBBandedColumn
              Caption = 'Kode Customer'
              DataBinding.FieldName = 'KodeCustSupp'
              HeaderAlignmentHorz = taCenter
              SortOrder = soDescending
              Width = 103
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4DBBandedColumn1: TcxGridDBBandedColumn
              Caption = 'Nama Customer'
              DataBinding.FieldName = 'NamaCustSupp'
              HeaderAlignmentHorz = taCenter
              Width = 308
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn76: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan1'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn77: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan1Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn78: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih1'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn79: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan2'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn80: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan2Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn81: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih2'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn82: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan3'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn83: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan3Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn84: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih3'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn85: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan4'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn86: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan4Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn87: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih4'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn88: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan5'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn89: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan5Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn90: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih5'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn91: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan6'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn92: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan6Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn93: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih5'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 6
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn94: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan7'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn95: TcxGridDBBandedColumn
              Caption = 'Tahun lalu'
              DataBinding.FieldName = 'RpBulan7Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn96: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih7'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 7
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn97: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan8'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn98: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan8Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn99: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih8'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 8
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn100: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan9'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn101: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan9Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn102: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih9'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 9
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn103: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan10'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn104: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan10Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn105: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih10'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 10
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn106: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan11'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn107: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan11Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn108: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih11'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 11
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn109: TcxGridDBBandedColumn
              Caption = 'Tahun Ini'
              DataBinding.FieldName = 'RpBulan12'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn110: TcxGridDBBandedColumn
              Caption = 'Tahun Lalu'
              DataBinding.FieldName = 'RpBulan12Lalu'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn111: TcxGridDBBandedColumn
              Caption = 'Selisih'
              DataBinding.FieldName = 'Selisih12'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 12
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGridBandedTableView4: TcxGridBandedTableView
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end>
            object cxGridBandedColumn37: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn38: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn39: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn40: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn41: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn42: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn43: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn44: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn45: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn46: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn47: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridBandedColumn48: TcxGridBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGridDBTableView12: TcxGridDBTableView
            DataController.DataSource = DskotaDet
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGridDBColumn82: TcxGridDBColumn
              DataBinding.FieldName = 'KodeCustSupp'
              Width = 90
            end
            object cxGridDBColumn83: TcxGridDBColumn
              Caption = 'Januari'
              DataBinding.FieldName = 'RpBln1'
              Width = 90
            end
            object cxGridDBColumn84: TcxGridDBColumn
              Caption = 'Februari'
              DataBinding.FieldName = 'RpBln2'
              Width = 90
            end
            object cxGridDBColumn85: TcxGridDBColumn
              Caption = 'Maret'
              DataBinding.FieldName = 'RpBln3'
              Width = 90
            end
            object cxGridDBColumn86: TcxGridDBColumn
              Caption = 'April'
              DataBinding.FieldName = 'RpBln4'
              Width = 90
            end
            object cxGridDBColumn87: TcxGridDBColumn
              Caption = 'Mei'
              DataBinding.FieldName = 'RpBln5'
              Width = 90
            end
            object cxGridDBColumn88: TcxGridDBColumn
              Caption = 'Juni'
              DataBinding.FieldName = 'RpBln6'
              Width = 90
            end
            object cxGridDBColumn89: TcxGridDBColumn
              Caption = 'Juli'
              DataBinding.FieldName = 'RpBln7'
              Width = 90
            end
            object cxGridDBColumn90: TcxGridDBColumn
              Caption = 'Agustus'
              DataBinding.FieldName = 'RpBln8'
              Width = 90
            end
            object cxGridDBColumn91: TcxGridDBColumn
              Caption = 'September'
              DataBinding.FieldName = 'RpBln9'
              Width = 90
            end
            object cxGridDBColumn92: TcxGridDBColumn
              Caption = 'Oktober'
              DataBinding.FieldName = 'RpBln10'
              Width = 90
            end
            object cxGridDBColumn93: TcxGridDBColumn
              Caption = 'November'
              DataBinding.FieldName = 'RpBln11'
              Width = 90
            end
            object cxGridDBColumn94: TcxGridDBColumn
              Caption = 'Desember'
              DataBinding.FieldName = 'RpBln12'
              Width = 90
            end
          end
          object cxGridLevel16: TcxGridLevel
            GridView = cxGridDBBandedTableView4
          end
        end
      end
      object dxTabSheet10: TdxTabSheet
        Caption = 'dxTabSheet10'
        TabVisible = False
        object cxGrid11: TcxGrid
          Left = 0
          Top = 0
          Width = 813
          Height = 270
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGridDBTableView13: TcxGridDBTableView
            DataController.DataSource = DsCustThn
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
            OptionsView.Indicator = True
            object cxGridDBColumn100: TcxGridDBColumn
              Caption = 'Kode Kota'
              DataBinding.FieldName = 'KodeCustSupp'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBTableView13DBColumn1: TcxGridDBColumn
              Caption = 'Nama Customer'
              DataBinding.FieldName = 'NamaCustSupp'
              HeaderAlignmentHorz = taCenter
              Width = 250
            end
            object cxGridDBColumn101: TcxGridDBColumn
              Caption = 'Januari'
              DataBinding.FieldName = 'RpBulan1'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn102: TcxGridDBColumn
              Caption = 'Februari'
              DataBinding.FieldName = 'RpBulan2'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn103: TcxGridDBColumn
              Caption = 'Maret'
              DataBinding.FieldName = 'RpBulan3'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn104: TcxGridDBColumn
              Caption = 'April'
              DataBinding.FieldName = 'RpBulan4'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn105: TcxGridDBColumn
              Caption = 'Mei'
              DataBinding.FieldName = 'RpBulan5'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn106: TcxGridDBColumn
              Caption = 'Juni'
              DataBinding.FieldName = 'RpBulan6'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn107: TcxGridDBColumn
              Caption = 'Juli'
              DataBinding.FieldName = 'RpBulan7'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn108: TcxGridDBColumn
              Caption = 'Agustus'
              DataBinding.FieldName = 'RpBulan8'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn109: TcxGridDBColumn
              Caption = 'September'
              DataBinding.FieldName = 'RpBulan9'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn110: TcxGridDBColumn
              Caption = 'Oktober'
              DataBinding.FieldName = 'RpBulan10'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn111: TcxGridDBColumn
              Caption = 'November'
              DataBinding.FieldName = 'RpBulan11'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn112: TcxGridDBColumn
              Caption = 'Desember'
              DataBinding.FieldName = 'RpBulan12'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
          end
          object cxGridDBTableView14: TcxGridDBTableView
            DataController.DataSource = DskotaThnDet
            DataController.DetailKeyFieldNames = 'keynik'
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.KeyFieldNames = 'Nama'
            DataController.MasterKeyFieldNames = 'keynik'
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
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.StyleSheet = FrSetForm.cxGridStyleDt
            object cxGridDBColumn113: TcxGridDBColumn
              DataBinding.FieldName = 'keynik'
              Visible = False
            end
            object cxGridDBColumn114: TcxGridDBColumn
              DataBinding.FieldName = 'mingguke1'
              Width = 80
            end
            object cxGridDBColumn115: TcxGridDBColumn
              DataBinding.FieldName = 'mingguke2'
              Width = 80
            end
            object cxGridDBColumn116: TcxGridDBColumn
              DataBinding.FieldName = 'mingguke3'
              Width = 80
            end
            object cxGridDBColumn117: TcxGridDBColumn
              DataBinding.FieldName = 'mingguke4'
              Width = 80
            end
          end
          object cxGridLevel17: TcxGridLevel
            GridView = cxGridDBTableView13
          end
        end
      end
      object dxTabSheet11: TdxTabSheet
        Caption = 'dxTabSheet11'
        TabVisible = False
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 271
      Width = 813
      Height = 300
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object Grafik2: TChart
        Left = 0
        Top = 0
        Width = 813
        Height = 300
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          'TChart')
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Image1: TImage
          Left = 72
          Top = 16
          Width = 25
          Height = 25
          Picture.Data = {
            0A544A504547496D616765ED0C0000FFD8FFE000104A46494600010200006400
            640000FFEC00114475636B79000100040000003C0000FFEE002641646F626500
            64C0000000010300150403060A0D000004CE0000076600000A0400000CEBFFDB
            0084000604040405040605050609060506090B080606080B0C0A0A0B0A0A0C10
            0C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B1B1C1F1F1F1F1F1F1F
            1F1F1F010707070D0C0D181010181A1511151A1F1F1F1F1F1F1F1F1F1F1F1F1F
            1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
            1F1F1F1FFFC2001108008C008C03011100021101031101FFC400CD0001000203
            0101000000000000000000000005060304070102010100000000000000000000
            0000000000001000010205030203090100000000000000000304011102120513
            1415061620302410408021312223333536110001020205080803060700000000
            000001000211033191D13233103021517112920461A1B1C12272B2D241733420
            4042526213E18243A3B314051201000000000000000000000000000000801301
            0002000307030501010000000000000100112131611030F0415171C191D1F120
            81A1B1E14080FFDA000C03010002110311000001EA80000000000000000C27C8
            00007C9B4000000514B90000045984B1000000A0970000008D31165000001CFC
            B5800004782CA0005648C05289E00000D63C2C20B79B40863641C70F8339B066
            3C35CD7301782E20F92481166E03891AE0F4F41F2017E2681284898CD336C000
            000007C035C90311166C91A7283C000001633A383012E622B86C102717328000
            07C93A76607D93A78518CC461CF8BC000006815F3A58248B11E1CF4F4D522CE9
            A00001A67292E609E2C8086238893C3A080000787172FE7A588CE002B06A9710
            00001CA4EAA7A0000D6218900000011C58C000007C8000001F40000000000000
            0001FFDA0008010100010502F76521089A691A691A691A691A691A691A691550
            9C3CAA2AAA3D573264C993264CCA7CF1DD3D5D5561BC8A3FD54C993264C99332
            31F41D37FC4F229FF533264C993264CC847D0F4DFF0013C39072BEE359F1ACF8
            4B329B7CC776E38EEDC71DDB8E3BB71C776E38EEDC71DDB8E1CF543055BE09DB
            AA986B3E359F0D55D56FEC6E9A75D1A289A288BC19EBC286041BB189064C6243
            1CC48E3D8C0A9A31811471F0234B13A7286F527A289A288D210A54F6338FA5B8
            B85F15958AFC4E58E272C7159738ACC1C5660E272C71396389CB1D30D9D36A12
            76B54BA0ED6A964A3EAC52324DAC7D35C5C5C5C5C5C5C5C5C5C5C5C7DB3FB674
            C7D68B7EA6D57E0B8C8BDDA338F556567DD3953BA72A774E54EE9CA9DD3953BA
            72A774E54EE9CA983EA374E1E5C5C2519BE15FD4857F8B50CED53C54298C63A0
            B1A0B1A0B1A0B1A0B1A0B1A0B11495843A7FFAFA86A0CE337647E8957F8F50C9
            C6EC7E350BF23B23646C8D91B23646C87ECFD1E069F5DA86A18DF9AE47E974A3
            78EEA845A74EB6BF31B481B481B481B481B481B481B480F18DCD3090842BBCBC
            C47CE3EC76D948C76CF4C926E686DD3694B21E38C270C5A75D146DDE906CF269
            270A28F07505DB3E9DA14F2504D64F210FA789C2142C9335536B4F22D4E45A9C
            8B53916A722D4E45A9C8B53916A356D051CF916C0B692DA4B692DA4B692DA4B6
            92DA497BBFFFDA0008010200010502F844FFDA0008010300010502F844FFDA00
            08010202063F02227FFFDA0008010302063F02227FFFDA0008010101063F02FB
            B363A447B8AB82A57054AE0A95C152B82A57054AE0A908340311F0E9CD4F898E
            E4901BD1181CC7320D065BBB172A5C6277693D04E679AF94DEC1989FE42B95D8
            7D4733CD7CA6760CC4FF00215CAEC3EA3F6BF6E4BF743078A1ACAC572C572E62
            7F31BEFD1FB7E1847C3A3585873AA6FB961CEA9BEE5873AA6FB961CEA9BEE587
            3AA6FB961CEA9BEE5873AA6FB94C96D64D8BDA40886FB9064B985A251DD875F7
            AC572C57263CD2478B68A7297B9B12F738F5D8AE2B8A6459F88F6ABAAEABAAE9
            5755D5755C53F759A010AE2B8A7B0686870206D16E597E13446B575D52BAEA94
            C2243E05C61E176BD8BE9DFC2EB17D3BF85D62C07F0BAC5813385D62C099C2EB
            17D3BF85D62FA77F0BAC5F4EFE1758B98FF62539BBC5BBBA0F4EB5A5DF8CB4C8
            8690DD7AD08BA31710E910BA14DD108B187B7238F4152BCA3B33B18695186947
            E5F7E47F94A66C19264F84770680A96D46D54B6A36AA5B51B552DA8DAA96D46D
            54B6A36AA5B51B552DA8DAA96D46D4396E62077EE11AC69CA7E5F7E47EC29BB3
            2731B076850022752C3754561BAA2B0DD51586EA8AC3754561BAA2B0DD51512C
            206C523F9BD072BFC9DF90A6ECC93C740F505BBF9412A8542A150A8542A14E30
            A1B1A949779FFC6ECB34FE96F7E52DD448EBC9346B0DF585CCFE861EB23313DB
            AE5B875292F3F9A60FED3B2CD3B32EF4A00EB8AB8C5E363605CC1A3CC17FD176
            A2D6F6E620549808B8730E6E9F96E5718AE3101F67C34EF321C417393265E7CD
            EC6FF1CCFEDFF4C737308A9C33058EA0A7CB9C5DBDBF1BAE3A2007C0742A5DC0
            FB152EE07D8A97703EC54BB81F62A5DC0FB152EE07D8A97703EC54BB81F627CF
            37778997110A74FC73342A150A8542A150A8547DE3FFDA0008010103013F21FF
            0033449C8B8C3E053E053E053E053E053E053E0500583341D1BA35607D700100
            D5DC00A63A013BC377BC596D08F40DCBADC4C0389F96E862DC440389F97D6331
            2066A637E0ADBDD8A6B8A15B53A1B88D1A3468D1A31DD3152B4E78A2ACA5596D
            3B9F94A7A2FC8DB68C5DBD61F81388B388B119DE3B7CED15FD93FBD273CFA9ED
            13EE1ED39F7D4F699BFE64FEC083CADF78714733EA3ED388B388B013D01ABBFC
            1D8B58B29B6D4E4EEF32B256464F6D72955B5B360597D5A044B66CD8049A2C57
            45B21D6506C50229285BB2EF2654FB2A16174DE7CB37066156CD18649D9A44DF
            8951743F4DE800005635401483AA5DDBFEFEFB38474987F4FD5B39AEF70568FC
            B109A6F96E478F1E3C78F1E3C02A45A688181B5E46DFB617EBB0D819F8A57DB7
            EB628D0AED93205BB849249249249D0A66A82667A6DA59BA0AFBFF001B0D9752
            A305D01E92DB36F7C0FB1579DC0000A1335FBBC4A35E7F34B4B47A407AABC6CC
            F94BAC6A3B294EB116980238E0C05F7F66EE2AAA210C7D69C7228C633A7594EB
            152E4A2FB1FDDB6733927837DA540B7CCD2C37CBBEF67F46E01310704952D4BE
            4BA2716FB4701139B8C34E67D22BE5B7D8D0C0B9F6AB21DC8A56B0EF1E72FA4C
            8FAC97B85E61412E5036C6E4FDFBF7EFDFBF7F7C89BD303B354735DCAB989A49
            A49A49A49A49A49A49A48032FF003FFFDA0008010203013F21FF00913FFFDA00
            08010303013F21FF00913FFFDA000C0301000211031100001092492492492492
            4904924904924924800000124924920000004924924924924924920904924900
            9048240208208249209048009241249000000000241009249249249048200000
            0082410402492492002410000000000012412492492012492492492482492482
            0000000924924800000024924924924924924FFFDA0008010103013F10FF0033
            AD0ACC0D7299C7FE271FF89C7FE271FF0089C7FE271FF89C7FE218614213A486
            E911D2C723F066BB8FE4C390358826111E67A282EDE8034DCDC771BFEE3E1BEE
            BDD0F27BE77CEF9DF3BE77CEF97170DFEBF6940B554418569F753E4CF69F267B
            400B3054E59A95D77B862C58B162C58921E012A05095F686E675601A299C7C99
            ED1E4DFCB13DA725685552385CB1B6D83B4D655FF614D2706B349C1AC79B5A54
            C558E533D2772FD92AEAD7D3DA9991C19F941912C19B0770F1394AFA7F39E093
            DA5D1C29D5D0D46938359A4E0D663A414BA3E97C956C00A5062AE410ECB5C971
            E8B794700F79C03DE03D1328A0B0E8DA4C9E4CFB16C9C533FA084C99318F795A
            25342CA181E5D4804C54127A016508D464D94805C45A36601655421509B5AFEA
            06CC00BC23B2662DDE3DD82774EE9DD3BA774EE9DD3BA774EE9DD3BA2C01E64C
            63F51CC98E313118521D6AEF4D8E0BD729BD92FC277CA6DDF0B5480B8D103C9D
            28280791B981020408102040DD855402B108A4EF9DF3B497E5D8822D101D5708
            57815FA653ACE7A53C82D86B24A2DA0C729C09E2702789C09E2702789C09E270
            2789C09E26404C79CB152A14E593BECD29D653AC15714CBD5FD361BAD0D6E965
            4C95291A80F135233B8DFE40F3091B08157413F154E2A9C5538AA7154E2A9C55
            31D264DC8DDC23452F76F026A4D49CE3C65CEF06D868A6750480264E250F134B
            EB2EB200A62B82427D98C0C0A26F9350D3269934C9A64D3269934C81C1006769
            B963CE120C6C016D463D59A5F59A5F59712E8ECB1DD94129CA01C050DAEE26C1
            2D1BC5F4BCBB25934B3D67870E9B88B4A6F542524101DE68832F9C181316098B
            B802A3B5108000053E9430BBE8B2C8B3ED0D0000A868AB7373113605830B1CD5
            07A07D7481955AF282614E1864C9AEADCE4C993264C993217E58D1E0996A6C4F
            C40A2B70B5A1EA93E389F1C4F8E27C713E389F1C4F8E27C710BA0069FE7FFFDA
            0008010203013F10FF00913FFFDA0008010303013F10FF00913FFFD9}
          Stretch = True
          OnClick = Image1Click
        end
      end
    end
  end
  object Qumenurep2: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    Left = 144
    Top = 40
  end
  object Qumenurep1: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    Left = 112
    Top = 48
  end
  object Quview: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'select keynik,nama from dbkaryawan where issales=1')
    Left = 48
    Top = 120
    object Quviewkeynik: TIntegerField
      FieldName = 'keynik'
    end
    object Quviewnama: TStringField
      FieldName = 'nama'
      Size = 50
    end
  end
  object DsView: TDataSource
    DataSet = Quview
    Left = 16
    Top = 120
  end
  object qucustsales: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      
        'select  A.keynik,A.Nama,A1.mingguke1,a2.mingguke2,A3.mingguke3,A' +
        '4.mingguke4 from Dbkaryawan A'
      'left outer join (select keynik,KodeCustSupp mingguke1 from '
      
        #9#9#9#9#9'DBSALESCUSTOMER where MingguKe=1) A1 on A.KeyNIK = A1.KeyNi' +
        'k'
      'left outer join (select keynik,KodeCustSupp mingguke2 from '
      
        #9#9#9#9#9'DBSALESCUSTOMER where MingguKe=2) A2 on A.KeyNIK = A2.KeyNi' +
        'k'
      'left outer join (select keynik,KodeCustSupp mingguke3 from '
      
        #9#9#9#9#9'DBSALESCUSTOMER where MingguKe=3) A3 on A.KeyNIK = A3.KeyNi' +
        'k'
      'left outer join (select keynik,KodeCustSupp mingguke4 from '
      
        #9#9#9#9#9'DBSALESCUSTOMER where MingguKe=4) A4 on A.KeyNIK = A4.KeyNi' +
        'k'
      'left outer join dbKaryawan B on A.KeyNik = B.KeyNIK'
      'left outer join DBCUSTSUPP C on A1.mingguke1 = C.KODECUSTSUPP'
      'where a.issales=1')
    Left = 120
    Top = 120
    object qucustsaleskeynik: TIntegerField
      FieldName = 'keynik'
    end
    object qucustsalesNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object qucustsalesmingguke1: TStringField
      FieldName = 'mingguke1'
      Size = 15
    end
    object qucustsalesmingguke2: TStringField
      FieldName = 'mingguke2'
      Size = 15
    end
    object qucustsalesmingguke3: TStringField
      FieldName = 'mingguke3'
      Size = 15
    end
    object qucustsalesmingguke4: TStringField
      FieldName = 'mingguke4'
      Size = 15
    end
  end
  object Dscustsales: TDataSource
    DataSet = qucustsales
    Left = 88
    Top = 120
  end
  object Qutarget: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      ''
      'select A.*,B.*,C.nama'
      
        ',A.RpBulan1-B.RpBulan1Lalu Selisih1,A.RpBulan2-B.RpBulan2Lalu Se' +
        'lisih2'
      
        ',A.RpBulan3-B.RpBulan3Lalu Selisih3,A.RpBulan4-B.RpBulan4Lalu Se' +
        'lisih4'
      
        ',A.RpBulan5-B.RpBulan5Lalu Selisih5,A.RpBulan6-B.RpBulan6Lalu Se' +
        'lisih6'
      
        ',A.RpBulan7-B.RpBulan7Lalu Selisih7,A.RpBulan8-B.RpBulan8Lalu Se' +
        'lisih8'
      
        ',A.RpBulan9-B.RpBulan9Lalu Selisih9,A.RpBulan10-B.RpBulan10Lalu ' +
        'Selisih10'
      
        ',A.RpBulan11-B.RpBulan11Lalu Selisih11,A.RpBulan12-B.RpBulan12La' +
        'lu Selisih12'
      'from ('
      'select A.KodeSLS,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan' +
        '2,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan' +
        '4,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan' +
        '6,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan' +
        '8,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBula' +
        'n10,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBu' +
        'lan12'
      'from DBSalesCustPrd A '
      'where A.Tahun =YEAR(getdate())Group by A.KodeSLS)A '
      'left outer join'
      '(select A.KodeSLS,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1Lalu,Sum(isnull(A.RpBln2,0)) RpB' +
        'ulan2Lalu,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3Lalu,Sum(isnull(A.RpBln4,0)) RpB' +
        'ulan4Lalu,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5Lalu,Sum(isnull(A.RpBln6,0)) RpB' +
        'ulan6Lalu,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7Lalu,Sum(isnull(A.RpBln8,0)) RpB' +
        'ulan8Lalu,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9Lalu,Sum(isnull(A.RpBln10,0)) Rp' +
        'Bulan10Lalu,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11Lalu,Sum(isnull(A.RpBln12,0)) ' +
        'RpBulan12Lalu'
      'from DBSalesCustPrd A '
      'where A.Tahun =YEAR(getdate())-1 Group by A.KodeSLS'
      ') B on A.KodeSLS = B.KodeSLS'
      'left Outer join DbKaryawan C on A.kodesls = C.Keynik'
      'order by A.kodeSls,C.nama  '
      '')
    Left = 120
    Top = 184
    object QutargetKodeSLS: TIntegerField
      FieldName = 'KodeSLS'
    end
    object QutargetRpBulan1: TBCDField
      FieldName = 'RpBulan1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan2: TBCDField
      FieldName = 'RpBulan2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan3: TBCDField
      FieldName = 'RpBulan3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan4: TBCDField
      FieldName = 'RpBulan4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan5: TBCDField
      FieldName = 'RpBulan5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan6: TBCDField
      FieldName = 'RpBulan6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan7: TBCDField
      FieldName = 'RpBulan7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan8: TBCDField
      FieldName = 'RpBulan8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan9: TBCDField
      FieldName = 'RpBulan9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan10: TBCDField
      FieldName = 'RpBulan10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan11: TBCDField
      FieldName = 'RpBulan11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan12: TBCDField
      FieldName = 'RpBulan12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan1Lalu: TBCDField
      FieldName = 'RpBulan1Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan2Lalu: TBCDField
      FieldName = 'RpBulan2Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan3Lalu: TBCDField
      FieldName = 'RpBulan3Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan4Lalu: TBCDField
      FieldName = 'RpBulan4Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan5Lalu: TBCDField
      FieldName = 'RpBulan5Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan6Lalu: TBCDField
      FieldName = 'RpBulan6Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan7Lalu: TBCDField
      FieldName = 'RpBulan7Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan8Lalu: TBCDField
      FieldName = 'RpBulan8Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan9Lalu: TBCDField
      FieldName = 'RpBulan9Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan10Lalu: TBCDField
      FieldName = 'RpBulan10Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan11Lalu: TBCDField
      FieldName = 'RpBulan11Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetRpBulan12Lalu: TBCDField
      FieldName = 'RpBulan12Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetSelisih1: TBCDField
      FieldName = 'Selisih1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetSelisih2: TBCDField
      FieldName = 'Selisih2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetSelisih3: TBCDField
      FieldName = 'Selisih3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetSelisih4: TBCDField
      FieldName = 'Selisih4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetSelisih5: TBCDField
      FieldName = 'Selisih5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetSelisih6: TBCDField
      FieldName = 'Selisih6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetSelisih7: TBCDField
      FieldName = 'Selisih7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetSelisih8: TBCDField
      FieldName = 'Selisih8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetSelisih9: TBCDField
      FieldName = 'Selisih9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetSelisih10: TBCDField
      FieldName = 'Selisih10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetSelisih11: TBCDField
      FieldName = 'Selisih11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetSelisih12: TBCDField
      FieldName = 'Selisih12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object Qutargetnama: TStringField
      FieldName = 'nama'
      Size = 50
    end
  end
  object DsTarget: TDataSource
    DataSet = Qutarget
    Left = 88
    Top = 184
  end
  object QuTargetDet: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'select A.*,B.*'
      
        ',A.RpBulan1-B.RpBulan1Lalu Selisih1,A.RpBulan2-B.RpBulan2Lalu Se' +
        'lisih2'
      
        ',A.RpBulan3-B.RpBulan3Lalu Selisih3,A.RpBulan4-B.RpBulan4Lalu Se' +
        'lisih4'
      
        ',A.RpBulan5-B.RpBulan5Lalu Selisih5,A.RpBulan6-B.RpBulan6Lalu Se' +
        'lisih6'
      
        ',A.RpBulan7-B.RpBulan7Lalu Selisih7,A.RpBulan8-B.RpBulan8Lalu Se' +
        'lisih8'
      
        ',A.RpBulan9-B.RpBulan9Lalu Selisih9,A.RpBulan10-B.RpBulan10Lalu ' +
        'Selisih10'
      
        ',A.RpBulan11-B.RpBulan11Lalu Selisih11,A.RpBulan12-B.RpBulan12La' +
        'lu Selisih12'
      'from ('
      'select A.KodeSLS,A.KodeCustSupp,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan' +
        '2,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan' +
        '4,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan' +
        '6,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan' +
        '8,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBula' +
        'n10,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBu' +
        'lan12'
      'from DBSalesCustPrd A '
      
        'where A.Tahun =YEAR(getdate())Group by A.KodeSLS,A.KodeCustSupp)' +
        'A '
      'left outer join'
      '(select A.KodeSLS,A.KodeCustSupp,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1Lalu,Sum(isnull(A.RpBln2,0)) RpB' +
        'ulan2Lalu,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3Lalu,Sum(isnull(A.RpBln4,0)) RpB' +
        'ulan4Lalu,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5Lalu,Sum(isnull(A.RpBln6,0)) RpB' +
        'ulan6Lalu,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7Lalu,Sum(isnull(A.RpBln8,0)) RpB' +
        'ulan8Lalu,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9Lalu,Sum(isnull(A.RpBln10,0)) Rp' +
        'Bulan10Lalu,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11Lalu,Sum(isnull(A.RpBln12,0)) ' +
        'RpBulan12Lalu'
      'from DBSalesCustPrd A '
      
        'where A.Tahun =YEAR(getdate())-1 Group by A.KodeSLS,A.KodeCustSu' +
        'pp'
      ') B on A.KodeSLS = B.KodeSLS order by A.kodeSls')
    Left = 48
    Top = 184
    object QuTargetDetKodeSLS: TIntegerField
      FieldName = 'KodeSLS'
    end
    object QuTargetDetKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuTargetDetRpBulan1: TBCDField
      FieldName = 'RpBulan1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan2: TBCDField
      FieldName = 'RpBulan2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan3: TBCDField
      FieldName = 'RpBulan3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan4: TBCDField
      FieldName = 'RpBulan4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan5: TBCDField
      FieldName = 'RpBulan5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan6: TBCDField
      FieldName = 'RpBulan6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan7: TBCDField
      FieldName = 'RpBulan7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan8: TBCDField
      FieldName = 'RpBulan8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan9: TBCDField
      FieldName = 'RpBulan9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan10: TBCDField
      FieldName = 'RpBulan10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan11: TBCDField
      FieldName = 'RpBulan11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan12: TBCDField
      FieldName = 'RpBulan12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetKodeSLS_1: TIntegerField
      FieldName = 'KodeSLS_1'
    end
    object QuTargetDetKodeCustSupp_1: TStringField
      FieldName = 'KodeCustSupp_1'
      Size = 15
    end
    object QuTargetDetRpBulan1Lalu: TBCDField
      FieldName = 'RpBulan1Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan2Lalu: TBCDField
      FieldName = 'RpBulan2Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan3Lalu: TBCDField
      FieldName = 'RpBulan3Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan4Lalu: TBCDField
      FieldName = 'RpBulan4Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan5Lalu: TBCDField
      FieldName = 'RpBulan5Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan6Lalu: TBCDField
      FieldName = 'RpBulan6Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan7Lalu: TBCDField
      FieldName = 'RpBulan7Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan8Lalu: TBCDField
      FieldName = 'RpBulan8Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan9Lalu: TBCDField
      FieldName = 'RpBulan9Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan10Lalu: TBCDField
      FieldName = 'RpBulan10Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan11Lalu: TBCDField
      FieldName = 'RpBulan11Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetRpBulan12Lalu: TBCDField
      FieldName = 'RpBulan12Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetSelisih1: TBCDField
      FieldName = 'Selisih1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetSelisih2: TBCDField
      FieldName = 'Selisih2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetSelisih3: TBCDField
      FieldName = 'Selisih3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetSelisih4: TBCDField
      FieldName = 'Selisih4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetSelisih5: TBCDField
      FieldName = 'Selisih5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetSelisih6: TBCDField
      FieldName = 'Selisih6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetSelisih7: TBCDField
      FieldName = 'Selisih7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetSelisih8: TBCDField
      FieldName = 'Selisih8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetSelisih9: TBCDField
      FieldName = 'Selisih9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetSelisih10: TBCDField
      FieldName = 'Selisih10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetSelisih11: TBCDField
      FieldName = 'Selisih11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuTargetDetSelisih12: TBCDField
      FieldName = 'Selisih12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
  end
  object DstargetDet: TDataSource
    DataSet = QuTargetDet
    Left = 16
    Top = 184
  end
  object QutargetThn: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'select C.Nama,B.KeyNik'
      ',A.RpBulan1,B.Rp1,Isnull(A.RpBulan1,0)-isnull(B.Rp1,0) Selisih1'
      ',A.RpBulan2,B.Rp2,Isnull(A.RpBulan2,0)-isnull(B.Rp2,0) Selisih2'
      ',A.RpBulan3,B.Rp3,Isnull(A.RpBulan3,0)-isnull(B.Rp3,0) Selisih3'
      ',A.RpBulan4,B.Rp4,Isnull(A.RpBulan4,0)-isnull(B.Rp4,0) Selisih4'
      ',A.RpBulan5,B.Rp5,Isnull(A.RpBulan5,0)-isnull(B.Rp5,0) Selisih5'
      ',A.RpBulan6,B.Rp6,Isnull(A.RpBulan6,0)-isnull(B.Rp6,0) Selisih6'
      ',A.RpBulan7,B.Rp7,Isnull(A.RpBulan7,0)-isnull(B.Rp7,0) Selisih7'
      ',A.RpBulan8,B.Rp8,Isnull(A.RpBulan8,0)-isnull(B.Rp8,0) Selisih8'
      ',A.RpBulan9,B.Rp9,Isnull(A.RpBulan9,0)-isnull(B.Rp9,0) Selisih9'
      
        ',A.RpBulan10,B.Rp10,Isnull(A.RpBulan10,0)-isnull(B.Rp10,0) Selis' +
        'ih10'
      
        ',A.RpBulan11,B.Rp11,Isnull(A.RpBulan11,0)-isnull(B.Rp11,0) Selis' +
        'ih11'
      
        ',A.RpBulan12,B.Rp12,Isnull(A.RpBulan12,0)-isnull(B.Rp12,0) Selis' +
        'ih12'
      'from DBTARGETSALES B '
      'left Outer Join ('
      'select A.KodeSLS,A.Tahun,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan' +
        '2,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan' +
        '4,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan' +
        '6,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan' +
        '8,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBula' +
        'n10,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBu' +
        'lan12'
      'from DBSalesCustPrd A '
      
        'where A.Tahun =YEAR(getdate())Group by A.KodeSLS,A.Tahun)A on A.' +
        'KodeSLS = B.KeyNik and A.tahun = B.Tahun'
      'Left Outer Join DbKaryawan C on A.Kodesls = C.keyNik'
      'where B.Tahun=YEAR(getdate())    order by B.KeyNik,C.Nama')
    Left = 120
    Top = 152
    object QutargetThnKeyNik: TStringField
      FieldName = 'KeyNik'
      Size = 15
    end
    object QutargetThnRpBulan1: TBCDField
      FieldName = 'RpBulan1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRp1: TBCDField
      FieldName = 'Rp1'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnSelisih1: TBCDField
      FieldName = 'Selisih1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRpBulan2: TBCDField
      FieldName = 'RpBulan2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRp2: TBCDField
      FieldName = 'Rp2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnSelisih2: TBCDField
      FieldName = 'Selisih2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRpBulan3: TBCDField
      FieldName = 'RpBulan3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRp3: TBCDField
      FieldName = 'Rp3'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnSelisih3: TBCDField
      FieldName = 'Selisih3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRpBulan4: TBCDField
      FieldName = 'RpBulan4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRp4: TBCDField
      FieldName = 'Rp4'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnSelisih4: TBCDField
      FieldName = 'Selisih4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRpBulan5: TBCDField
      FieldName = 'RpBulan5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRp5: TBCDField
      FieldName = 'Rp5'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnSelisih5: TBCDField
      FieldName = 'Selisih5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRpBulan6: TBCDField
      FieldName = 'RpBulan6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRp6: TBCDField
      FieldName = 'Rp6'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnSelisih6: TBCDField
      FieldName = 'Selisih6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRpBulan7: TBCDField
      FieldName = 'RpBulan7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRp7: TBCDField
      FieldName = 'Rp7'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnSelisih7: TBCDField
      FieldName = 'Selisih7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRpBulan8: TBCDField
      FieldName = 'RpBulan8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRp8: TBCDField
      FieldName = 'Rp8'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnSelisih8: TBCDField
      FieldName = 'Selisih8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRpBulan9: TBCDField
      FieldName = 'RpBulan9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRp9: TBCDField
      FieldName = 'Rp9'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnSelisih9: TBCDField
      FieldName = 'Selisih9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRpBulan10: TBCDField
      FieldName = 'RpBulan10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRp10: TBCDField
      FieldName = 'Rp10'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnSelisih10: TBCDField
      FieldName = 'Selisih10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRpBulan11: TBCDField
      FieldName = 'RpBulan11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRp11: TBCDField
      FieldName = 'Rp11'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnSelisih11: TBCDField
      FieldName = 'Selisih11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRpBulan12: TBCDField
      FieldName = 'RpBulan12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnRp12: TBCDField
      FieldName = 'Rp12'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnSelisih12: TBCDField
      FieldName = 'Selisih12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
  end
  object DsTargetThn: TDataSource
    DataSet = QutargetThn
    Left = 88
    Top = 152
  end
  object QutargetThnDet: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'select B.KeyNik,A.KodeCustSupp,B.Tahun'
      ',A.RpBulan1,B.Rp1,Isnull(A.RpBulan1,0)-isnull(B.Rp1,0) Selisih1'
      ',A.RpBulan2,B.Rp2,Isnull(A.RpBulan2,0)-isnull(B.Rp2,0) Selisih2'
      ',A.RpBulan3,B.Rp3,Isnull(A.RpBulan3,0)-isnull(B.Rp3,0) Selisih3'
      ',A.RpBulan4,B.Rp4,Isnull(A.RpBulan4,0)-isnull(B.Rp4,0) Selisih4'
      ',A.RpBulan5,B.Rp5,Isnull(A.RpBulan5,0)-isnull(B.Rp5,0) Selisih5'
      ',A.RpBulan6,B.Rp6,Isnull(A.RpBulan6,0)-isnull(B.Rp6,0) Selisih6'
      ',A.RpBulan7,B.Rp7,Isnull(A.RpBulan7,0)-isnull(B.Rp7,0) Selisih7'
      ',A.RpBulan8,B.Rp8,Isnull(A.RpBulan8,0)-isnull(B.Rp8,0) Selisih8'
      ',A.RpBulan9,B.Rp9,Isnull(A.RpBulan9,0)-isnull(B.Rp9,0) Selisih9'
      
        ',A.RpBulan10,B.Rp10,Isnull(A.RpBulan10,0)-isnull(B.Rp10,0) Selis' +
        'ih10'
      
        ',A.RpBulan11,B.Rp11,Isnull(A.RpBulan11,0)-isnull(B.Rp11,0) Selis' +
        'ih11'
      
        ',A.RpBulan12,B.Rp12,Isnull(A.RpBulan12,0)-isnull(B.Rp12,0) Selis' +
        'ih12'
      'from DBTARGETSALES B '
      'left Outer Join ('
      'select A.KodeSLS,A.KodeCustSupp,A.Tahun,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan' +
        '2,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan' +
        '4,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan' +
        '6,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan' +
        '8,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBula' +
        'n10,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBu' +
        'lan12'
      'from DBSalesCustPrd A '
      
        'where A.Tahun =YEAR(getdate())Group by A.KodeSLS,A.KodeCustSupp,' +
        'A.Tahun)A on A.KodeSLS = B.KeyNik and A.tahun = B.Tahun'
      'where B.tahun= year(getdate())order by B.KeyNik')
    Left = 48
    Top = 152
    object QutargetThnDetKeyNik: TStringField
      FieldName = 'KeyNik'
      Size = 15
    end
    object QutargetThnDetKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QutargetThnDetTahun: TIntegerField
      FieldName = 'Tahun'
    end
    object QutargetThnDetRpBulan1: TBCDField
      FieldName = 'RpBulan1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRp1: TBCDField
      FieldName = 'Rp1'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnDetSelisih1: TBCDField
      FieldName = 'Selisih1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRpBulan2: TBCDField
      FieldName = 'RpBulan2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRp2: TBCDField
      FieldName = 'Rp2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnDetSelisih2: TBCDField
      FieldName = 'Selisih2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRpBulan3: TBCDField
      FieldName = 'RpBulan3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRp3: TBCDField
      FieldName = 'Rp3'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnDetSelisih3: TBCDField
      FieldName = 'Selisih3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRpBulan4: TBCDField
      FieldName = 'RpBulan4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRp4: TBCDField
      FieldName = 'Rp4'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnDetSelisih4: TBCDField
      FieldName = 'Selisih4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRpBulan5: TBCDField
      FieldName = 'RpBulan5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRp5: TBCDField
      FieldName = 'Rp5'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnDetSelisih5: TBCDField
      FieldName = 'Selisih5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRpBulan6: TBCDField
      FieldName = 'RpBulan6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRp6: TBCDField
      FieldName = 'Rp6'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnDetSelisih6: TBCDField
      FieldName = 'Selisih6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRpBulan7: TBCDField
      FieldName = 'RpBulan7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRp7: TBCDField
      FieldName = 'Rp7'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnDetSelisih7: TBCDField
      FieldName = 'Selisih7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRpBulan8: TBCDField
      FieldName = 'RpBulan8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRp8: TBCDField
      FieldName = 'Rp8'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnDetSelisih8: TBCDField
      FieldName = 'Selisih8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRpBulan9: TBCDField
      FieldName = 'RpBulan9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRp9: TBCDField
      FieldName = 'Rp9'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnDetSelisih9: TBCDField
      FieldName = 'Selisih9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRpBulan10: TBCDField
      FieldName = 'RpBulan10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRp10: TBCDField
      FieldName = 'Rp10'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnDetSelisih10: TBCDField
      FieldName = 'Selisih10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRpBulan11: TBCDField
      FieldName = 'RpBulan11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRp11: TBCDField
      FieldName = 'Rp11'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnDetSelisih11: TBCDField
      FieldName = 'Selisih11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRpBulan12: TBCDField
      FieldName = 'RpBulan12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QutargetThnDetRp12: TBCDField
      FieldName = 'Rp12'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QutargetThnDetSelisih12: TBCDField
      FieldName = 'Selisih12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
  end
  object DsTargetThnDet: TDataSource
    DataSet = QutargetThnDet
    Left = 16
    Top = 152
  end
  object QuOmset: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      ''
      'select C.Nama,A.KodeSLS,A.Tahun,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan' +
        '2,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan' +
        '4,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan' +
        '6,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan' +
        '8,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBula' +
        'n10,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBu' +
        'lan12'
      'from DBSalesCustPrd A'
      'Left Outer Join DbKaryawan C on A.Kodesls = C.keyNik'
      'where A.Tahun =YEAR(getdate())Group by A.KodeSLS,C.Nama,A.Tahun')
    Left = 120
    Top = 216
    object QuOmsetKodeSLS: TIntegerField
      FieldName = 'KodeSLS'
    end
    object QuOmsetTahun: TIntegerField
      FieldName = 'Tahun'
    end
    object QuOmsetRpBulan1: TBCDField
      FieldName = 'RpBulan1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuOmsetRpBulan2: TBCDField
      FieldName = 'RpBulan2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuOmsetRpBulan3: TBCDField
      FieldName = 'RpBulan3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuOmsetRpBulan4: TBCDField
      FieldName = 'RpBulan4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuOmsetRpBulan5: TBCDField
      FieldName = 'RpBulan5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuOmsetRpBulan6: TBCDField
      FieldName = 'RpBulan6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuOmsetRpBulan7: TBCDField
      FieldName = 'RpBulan7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuOmsetRpBulan8: TBCDField
      FieldName = 'RpBulan8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuOmsetRpBulan9: TBCDField
      FieldName = 'RpBulan9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuOmsetRpBulan10: TBCDField
      FieldName = 'RpBulan10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuOmsetRpBulan11: TBCDField
      FieldName = 'RpBulan11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuOmsetRpBulan12: TBCDField
      FieldName = 'RpBulan12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuOmsetNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
  end
  object DsOmset: TDataSource
    DataSet = QuOmset
    Left = 88
    Top = 216
  end
  object QuOmsetDet: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'declare @tahun Integer'
      ''
      'select @Tahun=year(getdate())'
      'select A.KODESLS,'
      
        'Case when month(A.TANGGAL)=1 then isnull(A.nilaidpp,0) else 0 en' +
        'd jan, '
      
        'Case when month(A.TANGGAL)=2 then isnull(A.nilaidpp,0) else 0 en' +
        'd Feb,'
      
        'Case when month(A.TANGGAL)=3 then isnull(A.nilaidpp,0) else 0 en' +
        'd mar, '
      
        'Case when month(A.TANGGAL)=4 then isnull(A.nilaidpp,0) else 0 en' +
        'd Apr,'
      
        'Case when month(A.TANGGAL)=5 then isnull(A.nilaidpp,0) else 0 en' +
        'd Mei, '
      
        'Case when month(A.TANGGAL)=6 then isnull(A.nilaidpp,0) else 0 en' +
        'd juni,'
      
        'Case when month(A.TANGGAL)=7 then isnull(A.nilaidpp,0) else 0 en' +
        'd juli, '
      
        'Case when month(A.TANGGAL)=8 then isnull(A.nilaidpp,0) else 0 en' +
        'd Agus,'
      
        'Case when month(A.TANGGAL)=9 then isnull(A.nilaidpp,0) else 0 en' +
        'd Sept, '
      
        'Case when month(A.TANGGAL)=10 then isnull(A.nilaidpp,0) else 0 e' +
        'nd okt,'
      
        'Case when month(A.TANGGAL)=11 then isnull(A.nilaidpp,0) else 0 e' +
        'nd nov,'
      
        'Case when month(A.TANGGAL)=12 then isnull(A.nilaidpp,0) else 0 e' +
        'nd dese'
      
        'from DBSO A left outer join Dbcustsupp B on A.KODECUST=B.kodeCus' +
        'tSupp'
      'left Outer join dbKota C on B.kota = C.KodeKota'
      'where year(A.tanggal)=@tahun'
      '')
    Left = 56
    Top = 216
    object QuOmsetDetKODESLS: TIntegerField
      FieldName = 'KODESLS'
    end
    object QuOmsetDetjan: TBCDField
      FieldName = 'jan'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuOmsetDetFeb: TBCDField
      FieldName = 'Feb'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuOmsetDetmar: TBCDField
      FieldName = 'mar'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuOmsetDetApr: TBCDField
      FieldName = 'Apr'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuOmsetDetMei: TBCDField
      FieldName = 'Mei'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuOmsetDetjuni: TBCDField
      FieldName = 'juni'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuOmsetDetjuli: TBCDField
      FieldName = 'juli'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuOmsetDetAgus: TBCDField
      FieldName = 'Agus'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuOmsetDetSept: TBCDField
      FieldName = 'Sept'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuOmsetDetokt: TBCDField
      FieldName = 'okt'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuOmsetDetnov: TBCDField
      FieldName = 'nov'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuOmsetDetdese: TBCDField
      FieldName = 'dese'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object DsOmsetdet: TDataSource
    DataSet = QuOmsetDet
    Left = 16
    Top = 216
  end
  object QuArea: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      ''
      'select A.*,B.*,C.NamaArea'
      
        ',A.RpBulan1-B.RpBulan1Lalu Selisih1,A.RpBulan2-B.RpBulan2Lalu Se' +
        'lisih2'
      
        ',A.RpBulan3-B.RpBulan3Lalu Selisih3,A.RpBulan4-B.RpBulan4Lalu Se' +
        'lisih4'
      
        ',A.RpBulan5-B.RpBulan5Lalu Selisih5,A.RpBulan6-B.RpBulan6Lalu Se' +
        'lisih6'
      
        ',A.RpBulan7-B.RpBulan7Lalu Selisih7,A.RpBulan8-B.RpBulan8Lalu Se' +
        'lisih8'
      
        ',A.RpBulan9-B.RpBulan9Lalu Selisih9,A.RpBulan10-B.RpBulan10Lalu ' +
        'Selisih10'
      
        ',A.RpBulan11-B.RpBulan11Lalu Selisih11,A.RpBulan12-B.RpBulan12La' +
        'lu Selisih12'
      'from ('
      'select A.KodeArea,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan' +
        '2,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan' +
        '4,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan' +
        '6,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan' +
        '8,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBula' +
        'n10,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBu' +
        'lan12'
      'from dbareakotaprd A '
      'where A.Tahun =YEAR(getdate())Group by A.KodeArea)A '
      'left outer join'
      '(select A.KodeArea,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1Lalu,Sum(isnull(A.RpBln2,0)) RpB' +
        'ulan2Lalu,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3Lalu,Sum(isnull(A.RpBln4,0)) RpB' +
        'ulan4Lalu,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5Lalu,Sum(isnull(A.RpBln6,0)) RpB' +
        'ulan6Lalu,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7Lalu,Sum(isnull(A.RpBln8,0)) RpB' +
        'ulan8Lalu,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9Lalu,Sum(isnull(A.RpBln10,0)) Rp' +
        'Bulan10Lalu,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11Lalu,Sum(isnull(A.RpBln12,0)) ' +
        'RpBulan12Lalu'
      'from dbareakotaprd A'
      'where A.Tahun =YEAR(getdate())-1 Group by A.KodeArea'
      ') B on A.KodeArea = B.KodeArea'
      'left Outer Join DbArea C on A.kodearea=C.KodeArea'
      'Order By A.KodeArea,C.namaArea'
      '')
    Left = 120
    Top = 288
    object QuAreaKodeArea: TStringField
      FieldName = 'KodeArea'
    end
    object QuAreaRpBulan1: TBCDField
      FieldName = 'RpBulan1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan2: TBCDField
      FieldName = 'RpBulan2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan3: TBCDField
      FieldName = 'RpBulan3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan4: TBCDField
      FieldName = 'RpBulan4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan5: TBCDField
      FieldName = 'RpBulan5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan6: TBCDField
      FieldName = 'RpBulan6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan7: TBCDField
      FieldName = 'RpBulan7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan8: TBCDField
      FieldName = 'RpBulan8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan9: TBCDField
      FieldName = 'RpBulan9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan10: TBCDField
      FieldName = 'RpBulan10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan11: TBCDField
      FieldName = 'RpBulan11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan12: TBCDField
      FieldName = 'RpBulan12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaKodeArea_1: TStringField
      FieldName = 'KodeArea_1'
    end
    object QuAreaRpBulan1Lalu: TBCDField
      FieldName = 'RpBulan1Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan2Lalu: TBCDField
      FieldName = 'RpBulan2Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan3Lalu: TBCDField
      FieldName = 'RpBulan3Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan4Lalu: TBCDField
      FieldName = 'RpBulan4Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan5Lalu: TBCDField
      FieldName = 'RpBulan5Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan6Lalu: TBCDField
      FieldName = 'RpBulan6Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan7Lalu: TBCDField
      FieldName = 'RpBulan7Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan8Lalu: TBCDField
      FieldName = 'RpBulan8Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan9Lalu: TBCDField
      FieldName = 'RpBulan9Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan10Lalu: TBCDField
      FieldName = 'RpBulan10Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan11Lalu: TBCDField
      FieldName = 'RpBulan11Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaRpBulan12Lalu: TBCDField
      FieldName = 'RpBulan12Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaSelisih1: TBCDField
      FieldName = 'Selisih1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaSelisih2: TBCDField
      FieldName = 'Selisih2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaSelisih3: TBCDField
      FieldName = 'Selisih3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaSelisih4: TBCDField
      FieldName = 'Selisih4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaSelisih5: TBCDField
      FieldName = 'Selisih5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaSelisih6: TBCDField
      FieldName = 'Selisih6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaSelisih7: TBCDField
      FieldName = 'Selisih7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaSelisih8: TBCDField
      FieldName = 'Selisih8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaSelisih9: TBCDField
      FieldName = 'Selisih9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaSelisih10: TBCDField
      FieldName = 'Selisih10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaSelisih11: TBCDField
      FieldName = 'Selisih11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaSelisih12: TBCDField
      FieldName = 'Selisih12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaNamaArea: TStringField
      FieldName = 'NamaArea'
      Size = 50
    end
  end
  object DsArea: TDataSource
    DataSet = QuArea
    Left = 88
    Top = 288
  end
  object QuAreaDet: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      ''
      'select A.*,B.*'
      
        ',isnull(A.RpBulan1,0)-isnull(B.RpBulan1Lalu,0) Selisih1,isnull(A' +
        '.RpBulan2,0)-isnull(B.RpBulan2Lalu,0) Selisih2'
      
        ',isnull(A.RpBulan3,0)-isnull(B.RpBulan3Lalu,0) Selisih3,isnull(A' +
        '.RpBulan4,0)-isnull(B.RpBulan4Lalu,0) Selisih4'
      
        ',isnull(A.RpBulan5,0)-isnull(B.RpBulan5Lalu,0) Selisih5,isnull(A' +
        '.RpBulan6,0)-isnull(B.RpBulan6Lalu,0) Selisih6'
      
        ',isnull(A.RpBulan7,0)-isnull(B.RpBulan7Lalu,0) Selisih7,isnull(A' +
        '.RpBulan8,0)-isnull(B.RpBulan8Lalu,0) Selisih8'
      
        ',isnull(A.RpBulan9,0)-isnull(B.RpBulan9Lalu,0) Selisih9,isnull(A' +
        '.RpBulan10,0)-isnull(B.RpBulan10Lalu,0) Selisih10'
      
        ',isnull(A.RpBulan11,0)-isnull(B.RpBulan11Lalu,0) Selisih11,isnul' +
        'l(A.RpBulan12,0)-isnull(B.RpBulan12Lalu,0) Selisih12'
      'from ('
      'select A.KodeArea,A.KodeKota,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan' +
        '2,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan' +
        '4,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan' +
        '6,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan' +
        '8,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBula' +
        'n10,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBu' +
        'lan12'
      'from dbareakotaprd A '
      'where A.Tahun =YEAR(getdate())Group by A.KodeArea,A.KodeKota)A'
      'left outer join'
      '(select A.KodeArea,A.KodeKota,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1Lalu,Sum(isnull(A.RpBln2,0)) RpB' +
        'ulan2Lalu,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3Lalu,Sum(isnull(A.RpBln4,0)) RpB' +
        'ulan4Lalu,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5Lalu,Sum(isnull(A.RpBln6,0)) RpB' +
        'ulan6Lalu,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7Lalu,Sum(isnull(A.RpBln8,0)) RpB' +
        'ulan8Lalu,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9Lalu,Sum(isnull(A.RpBln10,0)) Rp' +
        'Bulan10Lalu,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11Lalu,Sum(isnull(A.RpBln12,0)) ' +
        'RpBulan12Lalu'
      'from dbareakotaprd A '
      'where A.Tahun =YEAR(getdate())-1 Group by A.KodeArea,A.KodeKota'
      ') B on A.KodeArea = B.KodeArea'
      ''
      '')
    Left = 48
    Top = 288
    object QuAreaDetKodeArea: TStringField
      FieldName = 'KodeArea'
    end
    object QuAreaDetKodeKota: TStringField
      FieldName = 'KodeKota'
      Size = 15
    end
    object QuAreaDetRpBulan1: TBCDField
      FieldName = 'RpBulan1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan2: TBCDField
      FieldName = 'RpBulan2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan3: TBCDField
      FieldName = 'RpBulan3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan4: TBCDField
      FieldName = 'RpBulan4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan5: TBCDField
      FieldName = 'RpBulan5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan6: TBCDField
      FieldName = 'RpBulan6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan7: TBCDField
      FieldName = 'RpBulan7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan8: TBCDField
      FieldName = 'RpBulan8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan9: TBCDField
      FieldName = 'RpBulan9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan10: TBCDField
      FieldName = 'RpBulan10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan11: TBCDField
      FieldName = 'RpBulan11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan12: TBCDField
      FieldName = 'RpBulan12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetKodeArea_1: TStringField
      FieldName = 'KodeArea_1'
    end
    object QuAreaDetKodeKota_1: TStringField
      FieldName = 'KodeKota_1'
      Size = 15
    end
    object QuAreaDetRpBulan1Lalu: TBCDField
      FieldName = 'RpBulan1Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan2Lalu: TBCDField
      FieldName = 'RpBulan2Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan3Lalu: TBCDField
      FieldName = 'RpBulan3Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan4Lalu: TBCDField
      FieldName = 'RpBulan4Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan5Lalu: TBCDField
      FieldName = 'RpBulan5Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan6Lalu: TBCDField
      FieldName = 'RpBulan6Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan7Lalu: TBCDField
      FieldName = 'RpBulan7Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan8Lalu: TBCDField
      FieldName = 'RpBulan8Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan9Lalu: TBCDField
      FieldName = 'RpBulan9Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan10Lalu: TBCDField
      FieldName = 'RpBulan10Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan11Lalu: TBCDField
      FieldName = 'RpBulan11Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetRpBulan12Lalu: TBCDField
      FieldName = 'RpBulan12Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetSelisih1: TBCDField
      FieldName = 'Selisih1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetSelisih2: TBCDField
      FieldName = 'Selisih2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetSelisih3: TBCDField
      FieldName = 'Selisih3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetSelisih4: TBCDField
      FieldName = 'Selisih4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetSelisih5: TBCDField
      FieldName = 'Selisih5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetSelisih6: TBCDField
      FieldName = 'Selisih6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetSelisih7: TBCDField
      FieldName = 'Selisih7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetSelisih8: TBCDField
      FieldName = 'Selisih8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetSelisih9: TBCDField
      FieldName = 'Selisih9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetSelisih10: TBCDField
      FieldName = 'Selisih10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetSelisih11: TBCDField
      FieldName = 'Selisih11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaDetSelisih12: TBCDField
      FieldName = 'Selisih12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
  end
  object DsAreaDet: TDataSource
    DataSet = QuAreaDet
    Left = 16
    Top = 288
  end
  object QuAreaThn: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'select A.KodeArea,B.NamaArea,A.Tahun,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan' +
        '2,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan' +
        '4,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan' +
        '6,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan' +
        '8,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBula' +
        'n10,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBu' +
        'lan12'
      'from dbareakotaprd A '
      'left Outer Join Dbarea B On A.KOdeArea = B.KodeArea'
      
        'where A.Tahun =YEAR(getdate())Group by A.KodeArea,A.Tahun,B.Nama' +
        'Area')
    Left = 120
    Top = 320
    object QuAreaThnKodeArea: TStringField
      FieldName = 'KodeArea'
    end
    object QuAreaThnTahun: TIntegerField
      FieldName = 'Tahun'
    end
    object QuAreaThnRpBulan1: TBCDField
      FieldName = 'RpBulan1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaThnRpBulan2: TBCDField
      FieldName = 'RpBulan2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaThnRpBulan3: TBCDField
      FieldName = 'RpBulan3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaThnRpBulan4: TBCDField
      FieldName = 'RpBulan4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaThnRpBulan5: TBCDField
      FieldName = 'RpBulan5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaThnRpBulan6: TBCDField
      FieldName = 'RpBulan6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaThnRpBulan7: TBCDField
      FieldName = 'RpBulan7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaThnRpBulan8: TBCDField
      FieldName = 'RpBulan8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaThnRpBulan9: TBCDField
      FieldName = 'RpBulan9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaThnRpBulan10: TBCDField
      FieldName = 'RpBulan10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaThnRpBulan11: TBCDField
      FieldName = 'RpBulan11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaThnRpBulan12: TBCDField
      FieldName = 'RpBulan12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreaThnNamaArea: TStringField
      FieldName = 'NamaArea'
      Size = 50
    end
  end
  object DsAreathn: TDataSource
    DataSet = QuAreaThn
    Left = 88
    Top = 320
  end
  object QuAreathnDet: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'select A.KodeArea,A.kodekota,'
      
        'Sum(isnull(A.RpBln1,0)) Januari,Sum(isnull(A.RpBln2,0)) Februari' +
        ','
      'Sum(isnull(A.RpBln3,0)) Maret,Sum(isnull(A.RpBln4,0)) April,'
      'Sum(isnull(A.RpBln5,0)) Mei,Sum(isnull(A.RpBln6,0)) Juni,'
      'Sum(isnull(A.RpBln7,0)) juli,Sum(isnull(A.RpBln8,0)) Agustus,'
      
        'Sum(isnull(A.RpBln9,0)) September,Sum(isnull(A.RpBln10,0)) oktob' +
        'er,'
      
        'Sum(isnull(A.RpBln11,0)) November,Sum(isnull(A.RpBln12,0)) Desem' +
        'ber'
      'from dbareakotaprd A '
      'where A.Tahun =YEAR(getdate())Group by A.KodeArea,A.kodekota')
    Left = 48
    Top = 320
    object QuAreathnDetKodeArea: TStringField
      FieldName = 'KodeArea'
    end
    object QuAreathnDetkodekota: TStringField
      FieldName = 'kodekota'
      Size = 15
    end
    object QuAreathnDetJanuari: TBCDField
      FieldName = 'Januari'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreathnDetFebruari: TBCDField
      FieldName = 'Februari'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreathnDetMaret: TBCDField
      FieldName = 'Maret'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreathnDetApril: TBCDField
      FieldName = 'April'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreathnDetMei: TBCDField
      FieldName = 'Mei'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreathnDetJuni: TBCDField
      FieldName = 'Juni'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreathnDetjuli: TBCDField
      FieldName = 'juli'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreathnDetAgustus: TBCDField
      FieldName = 'Agustus'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreathnDetSeptember: TBCDField
      FieldName = 'September'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreathnDetoktober: TBCDField
      FieldName = 'oktober'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreathnDetNovember: TBCDField
      FieldName = 'November'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuAreathnDetDesember: TBCDField
      FieldName = 'Desember'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
  end
  object DsAreaThnDet: TDataSource
    DataSet = QuAreathnDet
    Left = 16
    Top = 320
  end
  object QuKota: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      ''
      'select A.*,B.*,C.namaKota'
      
        ',A.RpBulan1-B.RpBulan1Lalu Selisih1,A.RpBulan2-B.RpBulan2Lalu Se' +
        'lisih2'
      
        ',A.RpBulan3-B.RpBulan3Lalu Selisih3,A.RpBulan4-B.RpBulan4Lalu Se' +
        'lisih4'
      
        ',A.RpBulan5-B.RpBulan5Lalu Selisih5,A.RpBulan6-B.RpBulan6Lalu Se' +
        'lisih6'
      
        ',A.RpBulan7-B.RpBulan7Lalu Selisih7,A.RpBulan8-B.RpBulan8Lalu Se' +
        'lisih8'
      
        ',A.RpBulan9-B.RpBulan9Lalu Selisih9,A.RpBulan10-B.RpBulan10Lalu ' +
        'Selisih10'
      
        ',A.RpBulan11-B.RpBulan11Lalu Selisih11,A.RpBulan12-B.RpBulan12La' +
        'lu Selisih12'
      'from ('
      'select A.KodeKota,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan' +
        '2,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan' +
        '4,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan' +
        '6,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan' +
        '8,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBula' +
        'n10,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBu' +
        'lan12'
      'from dbareakotaprd A '
      'where A.Tahun =YEAR(getdate())Group by A.KodeKota)A'
      'left outer join'
      '(select A.KodeKota,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1Lalu,Sum(isnull(A.RpBln2,0)) RpB' +
        'ulan2Lalu,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3Lalu,Sum(isnull(A.RpBln4,0)) RpB' +
        'ulan4Lalu,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5Lalu,Sum(isnull(A.RpBln6,0)) RpB' +
        'ulan6Lalu,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7Lalu,Sum(isnull(A.RpBln8,0)) RpB' +
        'ulan8Lalu,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9Lalu,Sum(isnull(A.RpBln10,0)) Rp' +
        'Bulan10Lalu,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11Lalu,Sum(isnull(A.RpBln12,0)) ' +
        'RpBulan12Lalu'
      'from dbareakotaprd A '
      'where A.Tahun =YEAR(getdate())-1 Group by A.KodeKota'
      ') B on A.KodeKota = B.KodeKota'
      'Left Outer join DbKota C on A.KodeKota = C.Kodekota'
      '')
    Left = 120
    Top = 376
    object QuKotaKodeKota: TStringField
      FieldName = 'KodeKota'
      Size = 15
    end
    object QuKotaRpBulan1: TBCDField
      FieldName = 'RpBulan1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan2: TBCDField
      FieldName = 'RpBulan2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan3: TBCDField
      FieldName = 'RpBulan3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan4: TBCDField
      FieldName = 'RpBulan4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan5: TBCDField
      FieldName = 'RpBulan5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan6: TBCDField
      FieldName = 'RpBulan6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan7: TBCDField
      FieldName = 'RpBulan7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan8: TBCDField
      FieldName = 'RpBulan8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan9: TBCDField
      FieldName = 'RpBulan9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan10: TBCDField
      FieldName = 'RpBulan10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan11: TBCDField
      FieldName = 'RpBulan11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan12: TBCDField
      FieldName = 'RpBulan12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaKodeKota_1: TStringField
      FieldName = 'KodeKota_1'
      Size = 15
    end
    object QuKotaRpBulan1Lalu: TBCDField
      FieldName = 'RpBulan1Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan2Lalu: TBCDField
      FieldName = 'RpBulan2Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan3Lalu: TBCDField
      FieldName = 'RpBulan3Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan4Lalu: TBCDField
      FieldName = 'RpBulan4Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan5Lalu: TBCDField
      FieldName = 'RpBulan5Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan6Lalu: TBCDField
      FieldName = 'RpBulan6Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan7Lalu: TBCDField
      FieldName = 'RpBulan7Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan8Lalu: TBCDField
      FieldName = 'RpBulan8Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan9Lalu: TBCDField
      FieldName = 'RpBulan9Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan10Lalu: TBCDField
      FieldName = 'RpBulan10Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan11Lalu: TBCDField
      FieldName = 'RpBulan11Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaRpBulan12Lalu: TBCDField
      FieldName = 'RpBulan12Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaSelisih1: TBCDField
      FieldName = 'Selisih1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaSelisih2: TBCDField
      FieldName = 'Selisih2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaSelisih3: TBCDField
      FieldName = 'Selisih3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaSelisih4: TBCDField
      FieldName = 'Selisih4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaSelisih5: TBCDField
      FieldName = 'Selisih5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaSelisih6: TBCDField
      FieldName = 'Selisih6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaSelisih7: TBCDField
      FieldName = 'Selisih7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaSelisih8: TBCDField
      FieldName = 'Selisih8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaSelisih9: TBCDField
      FieldName = 'Selisih9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaSelisih10: TBCDField
      FieldName = 'Selisih10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaSelisih11: TBCDField
      FieldName = 'Selisih11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaSelisih12: TBCDField
      FieldName = 'Selisih12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotanamaKota: TStringField
      FieldName = 'namaKota'
      Size = 30
    end
  end
  object DsKota: TDataSource
    DataSet = QuKota
    Left = 88
    Top = 376
  end
  object QuKotaDet: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'select C.Kota,A.*,B.*'
      
        ',A.RpBulan1-B.RpBulan1Lalu Selisih1,A.RpBulan2-B.RpBulan2Lalu Se' +
        'lisih2'
      
        ',A.RpBulan3-B.RpBulan3Lalu Selisih3,A.RpBulan4-B.RpBulan4Lalu Se' +
        'lisih4'
      
        ',A.RpBulan5-B.RpBulan5Lalu Selisih5,A.RpBulan6-B.RpBulan6Lalu Se' +
        'lisih6'
      
        ',A.RpBulan7-B.RpBulan7Lalu Selisih7,A.RpBulan8-B.RpBulan8Lalu Se' +
        'lisih8'
      
        ',A.RpBulan9-B.RpBulan9Lalu Selisih9,A.RpBulan10-B.RpBulan10Lalu ' +
        'Selisih10'
      
        ',A.RpBulan11-B.RpBulan11Lalu Selisih11,A.RpBulan12-B.RpBulan12La' +
        'lu Selisih12'
      'from ('
      'select A.KodeCustSupp,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan' +
        '2,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan' +
        '4,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan' +
        '6,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan' +
        '8,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBula' +
        'n10,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBu' +
        'lan12'
      'from DBSalesCustPrd A '
      'where A.Tahun =YEAR(getdate())Group by A.KodeCustSupp)A'
      'left outer join'
      '(select A.KodeCustSupp,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1Lalu,Sum(isnull(A.RpBln2,0)) RpB' +
        'ulan2Lalu,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3Lalu,Sum(isnull(A.RpBln4,0)) RpB' +
        'ulan4Lalu,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5Lalu,Sum(isnull(A.RpBln6,0)) RpB' +
        'ulan6Lalu,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7Lalu,Sum(isnull(A.RpBln8,0)) RpB' +
        'ulan8Lalu,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9Lalu,Sum(isnull(A.RpBln10,0)) Rp' +
        'Bulan10Lalu,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11Lalu,Sum(isnull(A.RpBln12,0)) ' +
        'RpBulan12Lalu'
      'from DBSalesCustPrd A '
      'where A.Tahun =YEAR(getdate())-1 Group by A.KodeCustSupp'
      ') B on A.KodeCustSupp = B.KodeCustSupp'
      'left outer join DBCUSTSUPP C on A.KodeCustSupp = C.KODECUSTSUPP')
    Left = 48
    Top = 376
    object QuKotaDetKota: TStringField
      FieldName = 'Kota'
      Size = 100
    end
    object QuKotaDetKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuKotaDetRpBulan1: TBCDField
      FieldName = 'RpBulan1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan2: TBCDField
      FieldName = 'RpBulan2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan3: TBCDField
      FieldName = 'RpBulan3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan4: TBCDField
      FieldName = 'RpBulan4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan5: TBCDField
      FieldName = 'RpBulan5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan6: TBCDField
      FieldName = 'RpBulan6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan7: TBCDField
      FieldName = 'RpBulan7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan8: TBCDField
      FieldName = 'RpBulan8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan9: TBCDField
      FieldName = 'RpBulan9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan10: TBCDField
      FieldName = 'RpBulan10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan11: TBCDField
      FieldName = 'RpBulan11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan12: TBCDField
      FieldName = 'RpBulan12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetKodeCustSupp_1: TStringField
      FieldName = 'KodeCustSupp_1'
      Size = 15
    end
    object QuKotaDetRpBulan1Lalu: TBCDField
      FieldName = 'RpBulan1Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan2Lalu: TBCDField
      FieldName = 'RpBulan2Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan3Lalu: TBCDField
      FieldName = 'RpBulan3Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan4Lalu: TBCDField
      FieldName = 'RpBulan4Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan5Lalu: TBCDField
      FieldName = 'RpBulan5Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan6Lalu: TBCDField
      FieldName = 'RpBulan6Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan7Lalu: TBCDField
      FieldName = 'RpBulan7Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan8Lalu: TBCDField
      FieldName = 'RpBulan8Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan9Lalu: TBCDField
      FieldName = 'RpBulan9Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan10Lalu: TBCDField
      FieldName = 'RpBulan10Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan11Lalu: TBCDField
      FieldName = 'RpBulan11Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetRpBulan12Lalu: TBCDField
      FieldName = 'RpBulan12Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetSelisih1: TBCDField
      FieldName = 'Selisih1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetSelisih2: TBCDField
      FieldName = 'Selisih2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetSelisih3: TBCDField
      FieldName = 'Selisih3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetSelisih4: TBCDField
      FieldName = 'Selisih4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetSelisih5: TBCDField
      FieldName = 'Selisih5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetSelisih6: TBCDField
      FieldName = 'Selisih6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetSelisih7: TBCDField
      FieldName = 'Selisih7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetSelisih8: TBCDField
      FieldName = 'Selisih8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetSelisih9: TBCDField
      FieldName = 'Selisih9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetSelisih10: TBCDField
      FieldName = 'Selisih10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetSelisih11: TBCDField
      FieldName = 'Selisih11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaDetSelisih12: TBCDField
      FieldName = 'Selisih12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
  end
  object DskotaDet: TDataSource
    DataSet = QuKotaDet
    Left = 16
    Top = 376
  end
  object QuKotaThn: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'select A.KodeKota,B.Namakota,A.Tahun,'
      
        'Sum(isnull(A.RpBln1,0)) Januari,Sum(isnull(A.RpBln2,0)) Februari' +
        ','
      'Sum(isnull(A.RpBln3,0)) Maret,Sum(isnull(A.RpBln4,0)) April,'
      'Sum(isnull(A.RpBln5,0)) Mei,Sum(isnull(A.RpBln6,0)) Juni,'
      'Sum(isnull(A.RpBln7,0)) Juli,Sum(isnull(A.RpBln8,0)) Agustus,'
      
        'Sum(isnull(A.RpBln9,0)) September,Sum(isnull(A.RpBln10,0)) oktob' +
        'er,'
      
        'Sum(isnull(A.RpBln11,0)) November,Sum(isnull(A.RpBln12,0)) Desem' +
        'ber'
      'from dbareakotaprd A'
      'Left Outer Join DbKOta B on A.KodeKota =B.KodeKota '
      
        'where A.Tahun =YEAR(getdate())Group by A.KodeKota,A.Tahun,B.nama' +
        'KOta')
    Left = 120
    Top = 408
    object QuKotaThnKodeKota: TStringField
      FieldName = 'KodeKota'
      Size = 15
    end
    object QuKotaThnTahun: TIntegerField
      FieldName = 'Tahun'
      DisplayFormat = ',0.00'
    end
    object QuKotaThnJanuari: TBCDField
      FieldName = 'Januari'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnFebruari: TBCDField
      FieldName = 'Februari'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnMaret: TBCDField
      FieldName = 'Maret'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnApril: TBCDField
      FieldName = 'April'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnMei: TBCDField
      FieldName = 'Mei'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnJuni: TBCDField
      FieldName = 'Juni'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnJuli: TBCDField
      FieldName = 'Juli'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnAgustus: TBCDField
      FieldName = 'Agustus'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnSeptember: TBCDField
      FieldName = 'September'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnoktober: TBCDField
      FieldName = 'oktober'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnNovember: TBCDField
      FieldName = 'November'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnDesember: TBCDField
      FieldName = 'Desember'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnNamakota: TStringField
      FieldName = 'Namakota'
      Size = 30
    end
  end
  object Dskotathn: TDataSource
    DataSet = QuKotaThn
    Left = 88
    Top = 408
  end
  object QuKotaThnDet: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'select A.KodeCustSupp,B.KOTA,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan' +
        '2,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan' +
        '4,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan' +
        '6,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan' +
        '8,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBula' +
        'n10,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBu' +
        'lan12'
      'from DBSalesCustPrd A '
      'Left Outer join DBCUSTSUPP B on A.KodeCustSupp = B.KODECUSTSUPP'
      'where A.Tahun =YEAR(getdate())Group by A.KodeCustSupp,B.kota')
    Left = 48
    Top = 408
    object QuKotaThnDetKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuKotaThnDetKOTA: TStringField
      FieldName = 'KOTA'
      Size = 100
    end
    object QuKotaThnDetRpBulan1: TBCDField
      FieldName = 'RpBulan1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnDetRpBulan2: TBCDField
      FieldName = 'RpBulan2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnDetRpBulan3: TBCDField
      FieldName = 'RpBulan3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnDetRpBulan4: TBCDField
      FieldName = 'RpBulan4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnDetRpBulan5: TBCDField
      FieldName = 'RpBulan5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnDetRpBulan6: TBCDField
      FieldName = 'RpBulan6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnDetRpBulan7: TBCDField
      FieldName = 'RpBulan7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnDetRpBulan8: TBCDField
      FieldName = 'RpBulan8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnDetRpBulan9: TBCDField
      FieldName = 'RpBulan9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnDetRpBulan10: TBCDField
      FieldName = 'RpBulan10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnDetRpBulan11: TBCDField
      FieldName = 'RpBulan11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuKotaThnDetRpBulan12: TBCDField
      FieldName = 'RpBulan12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
  end
  object DskotaThnDet: TDataSource
    DataSet = QuKotaThnDet
    Left = 16
    Top = 408
  end
  object QuStock: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'declare @bulan integer,@tahun integer'
      '--select @bulan=month(GetDate()),@tahun=Year(Getdate())'
      'select @bulan=1,@tahun=2013'
      ''
      
        'select A.KODEBRG,B.NamaBrg,A.SALDO2QNT,A.SALDOQNT,C.QNT1SO,C.QNT' +
        '2SO,D.Qnt1PO,D.Qnt2PO,'
      
        ' (isnull(A.SALDOQNT,0) + isnull(D.Qnt1PO,0))-isnull(C.QNT1SO,0) ' +
        'Qnt1F,'
      
        ' (isnull(A.SALDO2QNT,0) + isnull(D.Qnt2PO,0))- isnull(C.QNT2SO,0' +
        ') Qnt2F,'
      'C.Bulan,C.Tahun'
      'from DBSTOCKBRG A'
      'left outer join DBBARANG b on A.KODEBRG = B.KODEBRG'
      
        'left outer join (select D.KODEBRG,Month(B.tanggal) Bulan,YEAR(B.' +
        'tanggal) Tahun,'
      
        #9#9#9'sum(case when MONTH(B.tanggal)=@bulan and year(B.tanggal)=@ta' +
        'hun then isnull(A.Qnt,0) else 0 end) Qnt1SO,'
      
        #9#9#9'sum(case when MONTH(B.tanggal)=@bulan and year(B.tanggal)=@ta' +
        'hun then isnull(A.QNT2,0) else 0 end) Qnt2SO'
      #9#9#9'from DBBARANG D'
      #9#9#9'Left Outer Join DBSODET A on D.KODEBRG = A.KODEBRG'
      #9#9#9'Left Outer Join DBSO B on A.NOBUKTI = B.NOBUKTI'
      #9#9#9'Group By Month(B.Tanggal),year(B.tanggal),D.KODEBRG) C '
      
        #9#9#9'on A.BULAN = C.Bulan and A.TAHUN = C.Tahun and A.KODEBRG = C.' +
        'KODEBRG'
      
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
      'where A.BULAN=@bulan and A.TAHUN=@tahun')
    Left = 120
    Top = 528
    object QuStockKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuStockNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object QuStockSALDO2QNT: TBCDField
      FieldName = 'SALDO2QNT'
      ReadOnly = True
      DisplayFormat = '0'
      Precision = 26
      Size = 2
    end
    object QuStockSALDOQNT: TBCDField
      FieldName = 'SALDOQNT'
      ReadOnly = True
      DisplayFormat = '0'
      Precision = 26
      Size = 2
    end
    object QuStockQNT1SO: TBCDField
      FieldName = 'QNT1SO'
      ReadOnly = True
      DisplayFormat = '0'
      Precision = 32
      Size = 2
    end
    object QuStockQNT2SO: TBCDField
      FieldName = 'QNT2SO'
      ReadOnly = True
      DisplayFormat = '0'
      Precision = 32
      Size = 2
    end
    object QuStockQnt1PO: TBCDField
      FieldName = 'Qnt1PO'
      ReadOnly = True
      DisplayFormat = '0'
      Precision = 32
    end
    object QuStockQnt2PO: TBCDField
      FieldName = 'Qnt2PO'
      ReadOnly = True
      DisplayFormat = '0'
      Precision = 32
      Size = 20
    end
    object QuStockQnt1F: TBCDField
      FieldName = 'Qnt1F'
      ReadOnly = True
      DisplayFormat = '0'
      Precision = 32
      Size = 2
    end
    object QuStockQnt2F: TBCDField
      FieldName = 'Qnt2F'
      ReadOnly = True
      DisplayFormat = '0'
      Precision = 32
      Size = 2
    end
    object QuStockBulan: TIntegerField
      FieldName = 'Bulan'
      ReadOnly = True
      DisplayFormat = '0'
    end
    object QuStockTahun: TIntegerField
      FieldName = 'Tahun'
      ReadOnly = True
    end
  end
  object Dstock: TDataSource
    DataSet = QuStock
    Left = 88
    Top = 528
  end
  object ADOQuery1: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'declare @bulan integer,@tahun integer'
      '--select @bulan=month(GetDate()),@tahun=Year(Getdate())'
      'select @bulan=1,@tahun=2013'
      ''
      ''
      'select A.kodebrg,Sum(isnull(A.Qnt1F,0)) Qnt1f from ('
      
        'select A.KODEBRG,B.NamaBrg,A.SALDO2QNT,A.SALDOQNT,C.QNT1SO,C.QNT' +
        '2SO,D.Qnt1PO,D.Qnt2PO,'
      
        ' (isnull(A.SALDOQNT,0) + isnull(D.Qnt1PO,0))-isnull(C.QNT1SO,0) ' +
        'Qnt1F,'
      
        ' (isnull(A.SALDO2QNT,0) + isnull(D.Qnt2PO,0))- isnull(C.QNT2SO,0' +
        ') Qnt2F,'
      'C.Bulan,C.Tahun'
      'from DBSTOCKBRG A'
      'left outer join DBBARANG b on A.KODEBRG = B.KODEBRG'
      
        'left outer join (select D.KODEBRG,Month(B.tanggal) Bulan,YEAR(B.' +
        'tanggal) Tahun,'
      
        #9#9#9'sum(case when MONTH(B.tanggal)=@bulan and year(B.tanggal)=@ta' +
        'hun then isnull(A.Qnt,0) else 0 end) Qnt1SO,'
      
        #9#9#9'sum(case when MONTH(B.tanggal)=@bulan and year(B.tanggal)=@ta' +
        'hun then isnull(A.QNT2,0) else 0 end) Qnt2SO'
      #9#9#9'from DBBARANG D'
      #9#9#9'Left Outer Join DBSODET A on D.KODEBRG = A.KODEBRG'
      #9#9#9'Left Outer Join DBSO B on A.NOBUKTI = B.NOBUKTI'
      #9#9#9'Group By Month(B.Tanggal),year(B.tanggal),D.KODEBRG) C '
      
        #9#9#9'on A.BULAN = C.Bulan and A.TAHUN = C.Tahun and A.KODEBRG = C.' +
        'KODEBRG'
      
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
      
        'where A.BULAN=@bulan and A.TAHUN=@tahun   )A   group by A.KOdebr' +
        'g')
    Left = 576
    Top = 144
    object ADOQuery1kodebrg: TStringField
      FieldName = 'kodebrg'
      Size = 25
    end
    object ADOQuery1Qnt1f: TBCDField
      FieldName = 'Qnt1f'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 528
    Top = 152
  end
  object QuCust: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'declare @tahun integer'
      'select @tahun=year(getdate())'
      'select A.KodeCustSupp,B.NamaCustSupp,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan' +
        '2,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan' +
        '4,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan' +
        '6,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan' +
        '8,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBula' +
        'n10,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBu' +
        'lan12'
      'from DBSalesCustPrd A'
      'Left Outer Join DbCustSupp B ON A.KodeCustSupp = B.kodeCustSupp'
      'where A.Tahun =@tahun Group by A.KodeCustSupp,B.NamaCustSupp'
      'Order by A.KodeCustSupp,B.NamaCustSupp')
    Left = 120
    Top = 488
    object QuCustKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuCustRpBulan1: TBCDField
      FieldName = 'RpBulan1'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuCustRpBulan2: TBCDField
      FieldName = 'RpBulan2'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuCustRpBulan3: TBCDField
      FieldName = 'RpBulan3'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuCustRpBulan4: TBCDField
      FieldName = 'RpBulan4'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuCustRpBulan5: TBCDField
      FieldName = 'RpBulan5'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuCustRpBulan6: TBCDField
      FieldName = 'RpBulan6'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuCustRpBulan7: TBCDField
      FieldName = 'RpBulan7'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuCustRpBulan8: TBCDField
      FieldName = 'RpBulan8'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuCustRpBulan9: TBCDField
      FieldName = 'RpBulan9'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuCustRpBulan10: TBCDField
      FieldName = 'RpBulan10'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuCustRpBulan11: TBCDField
      FieldName = 'RpBulan11'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuCustRpBulan12: TBCDField
      FieldName = 'RpBulan12'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuCustNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
  end
  object DsCustThn: TDataSource
    DataSet = QuCustThn
    Left = 88
    Top = 456
  end
  object QuCustThn: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'declare @tahun Integer'
      ''
      'select @Tahun=year(getdate())'
      ''
      'select A.*,B.*,C.NamaCustSupp'
      
        ',A.RpBulan1-B.RpBulan1Lalu Selisih1,A.RpBulan2-B.RpBulan2Lalu Se' +
        'lisih2'
      
        ',A.RpBulan3-B.RpBulan3Lalu Selisih3,A.RpBulan4-B.RpBulan4Lalu Se' +
        'lisih4'
      
        ',A.RpBulan5-B.RpBulan5Lalu Selisih5,A.RpBulan6-B.RpBulan6Lalu Se' +
        'lisih6'
      
        ',A.RpBulan7-B.RpBulan7Lalu Selisih7,A.RpBulan8-B.RpBulan8Lalu Se' +
        'lisih8'
      
        ',A.RpBulan9-B.RpBulan9Lalu Selisih9,A.RpBulan10-B.RpBulan10Lalu ' +
        'Selisih10'
      
        ',A.RpBulan11-B.RpBulan11Lalu Selisih11,A.RpBulan12-B.RpBulan12La' +
        'lu Selisih12'
      'from ('
      'select A.KodeCustSupp,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan' +
        '2,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan' +
        '4,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan' +
        '6,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan' +
        '8,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBula' +
        'n10,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBu' +
        'lan12'
      'from DBSalesCustPrd A '
      'where A.Tahun =YEAR(getdate())Group by A.KodeCustSupp)A'
      'left outer join'
      '(select A.KodeCustSupp,'
      
        'Sum(isnull(A.RpBln1,0)) RpBulan1Lalu,Sum(isnull(A.RpBln2,0)) RpB' +
        'ulan2Lalu,'
      
        'Sum(isnull(A.RpBln3,0)) RpBulan3Lalu,Sum(isnull(A.RpBln4,0)) RpB' +
        'ulan4Lalu,'
      
        'Sum(isnull(A.RpBln5,0)) RpBulan5Lalu,Sum(isnull(A.RpBln6,0)) RpB' +
        'ulan6Lalu,'
      
        'Sum(isnull(A.RpBln7,0)) RpBulan7Lalu,Sum(isnull(A.RpBln8,0)) RpB' +
        'ulan8Lalu,'
      
        'Sum(isnull(A.RpBln9,0)) RpBulan9Lalu,Sum(isnull(A.RpBln10,0)) Rp' +
        'Bulan10Lalu,'
      
        'Sum(isnull(A.RpBln11,0)) RpBulan11Lalu,Sum(isnull(A.RpBln12,0)) ' +
        'RpBulan12Lalu'
      'from DBSalesCustPrd A '
      'where A.Tahun =YEAR(getdate())-1 Group by A.KodeCustSupp'
      ') B on A.KodeCustSupp = B.KodeCustSupp'
      'Left Outer Join DbCustSUpp C on A.KOdeCustSupp=C.KodeCustSupp'
      'Order BY A.KodeCustSupp,C.namaCustSupp'
      ''
      ''
      ''
      ''
      '')
    Left = 120
    Top = 456
    object QuCustThnKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuCustThnRpBulan1: TBCDField
      FieldName = 'RpBulan1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan2: TBCDField
      FieldName = 'RpBulan2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan3: TBCDField
      FieldName = 'RpBulan3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan4: TBCDField
      FieldName = 'RpBulan4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan5: TBCDField
      FieldName = 'RpBulan5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan6: TBCDField
      FieldName = 'RpBulan6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan7: TBCDField
      FieldName = 'RpBulan7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan8: TBCDField
      FieldName = 'RpBulan8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan9: TBCDField
      FieldName = 'RpBulan9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan10: TBCDField
      FieldName = 'RpBulan10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan11: TBCDField
      FieldName = 'RpBulan11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan12: TBCDField
      FieldName = 'RpBulan12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnKodeCustSupp_1: TStringField
      FieldName = 'KodeCustSupp_1'
      Size = 15
    end
    object QuCustThnRpBulan1Lalu: TBCDField
      FieldName = 'RpBulan1Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan2Lalu: TBCDField
      FieldName = 'RpBulan2Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan3Lalu: TBCDField
      FieldName = 'RpBulan3Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan4Lalu: TBCDField
      FieldName = 'RpBulan4Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan5Lalu: TBCDField
      FieldName = 'RpBulan5Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan6Lalu: TBCDField
      FieldName = 'RpBulan6Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan7Lalu: TBCDField
      FieldName = 'RpBulan7Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan8Lalu: TBCDField
      FieldName = 'RpBulan8Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan9Lalu: TBCDField
      FieldName = 'RpBulan9Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan10Lalu: TBCDField
      FieldName = 'RpBulan10Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan11Lalu: TBCDField
      FieldName = 'RpBulan11Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnRpBulan12Lalu: TBCDField
      FieldName = 'RpBulan12Lalu'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnSelisih1: TBCDField
      FieldName = 'Selisih1'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnSelisih2: TBCDField
      FieldName = 'Selisih2'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnSelisih3: TBCDField
      FieldName = 'Selisih3'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnSelisih4: TBCDField
      FieldName = 'Selisih4'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnSelisih5: TBCDField
      FieldName = 'Selisih5'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnSelisih6: TBCDField
      FieldName = 'Selisih6'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnSelisih7: TBCDField
      FieldName = 'Selisih7'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnSelisih8: TBCDField
      FieldName = 'Selisih8'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnSelisih9: TBCDField
      FieldName = 'Selisih9'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnSelisih10: TBCDField
      FieldName = 'Selisih10'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnSelisih11: TBCDField
      FieldName = 'Selisih11'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnSelisih12: TBCDField
      FieldName = 'Selisih12'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuCustThnNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
  end
  object DsCust: TDataSource
    DataSet = QuCust
    Left = 88
    Top = 488
  end
  object QuGrafikKota: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'declare @tahun integer'
      'select @tahun=year(GETDATE())'
      ''
      
        'select 100 Bulan,A.KodeKota,A.NamaKota,isnull(RpBulan,0) RpBUlan' +
        ',isnull(QntBulan,0) QNTBULAN from dbKota A'
      
        'Left Outer join (Select kodekota,Sum(isnull(RpBln1,0)) RpBulan,S' +
        'um(isnull(Qntbln1,0)) QntBulan from dbareakotaprd where tahun=@t' +
        'ahun group by kodekota) B on A.KodeKota = B.kodekota'
      'union all'
      
        'select 200 Bulan,A.KodeKota,A.NamaKota,isnull(RpBulan,0) RPBUlan' +
        ',isnull(QntBulan,0) QNTBULAN from dbKota A'
      
        'Left Outer join (Select kodekota,Sum(isnull(RpBln2,0)) RpBulan,S' +
        'um(isnull(Qntbln2,0)) QntBulan from dbareakotaprd where tahun=@t' +
        'ahun group by kodekota) B on A.KodeKota = B.kodekota'
      'union all'
      
        'select 300 Bulan,A.KodeKota,A.NamaKota,isnull(RpBulan,0) RpBulan' +
        ',isnull(QntBulan,0) QNTBULAN from dbKota A'
      
        'Left Outer join (Select kodekota,Sum(isnull(RpBln3,0)) RpBulan,S' +
        'um(isnull(Qntbln3,0)) QntBulan from dbareakotaprd where tahun=@t' +
        'ahun group by kodekota) B on A.KodeKota = B.kodekota'
      'union all'
      
        'select 400 Bulan,A.KodeKota,A.NamaKota,isnull(RpBulan,0) RpBUlan' +
        ',isnull(QntBulan,0) QNTBULAN from dbKota A'
      
        'Left Outer join (Select kodekota,Sum(isnull(RpBln4,0)) RpBulan,S' +
        'um(isnull(Qntbln4,0)) QntBulan from dbareakotaprd where tahun=@t' +
        'ahun group by kodekota) B on A.KodeKota = B.kodekota'
      'union all'
      
        'select 500 Bulan,A.KodeKota,A.NamaKota,isnull(RpBulan,0) RPBUlan' +
        ',isnull(QntBulan,0) QNTBULAN from dbKota A'
      
        'Left Outer join (Select kodekota,Sum(isnull(RpBln5,0)) RpBulan,S' +
        'um(isnull(Qntbln5,0)) QntBulan from dbareakotaprd where tahun=@t' +
        'ahun group by kodekota) B on A.KodeKota = B.kodekota'
      'union all'
      
        'select 600 Bulan,A.KodeKota,A.NamaKota,isnull(RpBulan,0) RpBulan' +
        ',isnull(QntBulan,0) QNTBULAN from dbKota A'
      
        'Left Outer join (Select kodekota,Sum(isnull(RpBln6,0)) RpBulan,S' +
        'um(isnull(Qntbln6,0)) QntBulan from dbareakotaprd where tahun=@t' +
        'ahun group by kodekota) B on A.KodeKota = B.kodekota'
      'union all'
      
        'select 700 Bulan,A.KodeKota,A.NamaKota,isnull(RpBulan,0) RpBUlan' +
        ',isnull(QntBulan,0) QNTBULAN from dbKota A'
      
        'Left Outer join (Select kodekota,Sum(isnull(RpBln7,0)) RpBulan,S' +
        'um(isnull(Qntbln7,0)) QntBulan from dbareakotaprd where tahun=@t' +
        'ahun group by kodekota) B on A.KodeKota = B.kodekota'
      'union all'
      
        'select 800 Bulan,A.KodeKota,A.NamaKota,isnull(RpBulan,0) RPBUlan' +
        ',isnull(QntBulan,0) QNTBULAN from dbKota A'
      
        'Left Outer join (Select kodekota,Sum(isnull(RpBln8,0)) RpBulan,S' +
        'um(isnull(Qntbln8,0)) QntBulan from dbareakotaprd where tahun=@t' +
        'ahun group by kodekota) B on A.KodeKota = B.kodekota'
      'union all'
      
        'select 900 Bulan,A.KodeKota,A.NamaKota,isnull(RpBulan,0) RpBulan' +
        ',isnull(QntBulan,0) QNTBULAN from dbKota A'
      
        'Left Outer join (Select kodekota,Sum(isnull(RpBln9,0)) RpBulan,S' +
        'um(isnull(Qntbln9,0)) QntBulan from dbareakotaprd where tahun=@t' +
        'ahun group by kodekota) B on A.KodeKota = B.kodekota'
      'union all'
      
        'select 1000 Bulan,A.KodeKota,A.NamaKota,isnull(RpBulan,0) RpBUla' +
        'n,isnull(QntBulan,0) QNTBULAN from dbKota A'
      
        'Left Outer join (Select kodekota,Sum(isnull(RpBln10,0)) RpBulan,' +
        'Sum(isnull(Qntbln10,0)) QntBulan from dbareakotaprd where tahun=' +
        '@tahun group by kodekota) B on A.KodeKota = B.kodekota'
      'union all'
      
        'select 1100 Bulan,A.KodeKota,A.NamaKota,isnull(RpBulan,0) RPBUla' +
        'n,isnull(QntBulan,0) QNTBULAN from dbKota A'
      
        'Left Outer join (Select kodekota,Sum(isnull(RpBln11,0)) RpBulan,' +
        'Sum(isnull(Qntbln11,0)) QntBulan from dbareakotaprd where tahun=' +
        '@tahun group by kodekota) B on A.KodeKota = B.kodekota'
      'union all'
      
        'select 1200 Bulan,A.KodeKota,A.NamaKota,isnull(RpBulan,0) RpBula' +
        'n,isnull(QntBulan,0) QNTBULAN from dbKota A '
      
        'Left Outer join (Select kodekota,Sum(isnull(RpBln12,0)) RpBulan,' +
        'Sum(isnull(Qntbln12,0)) QntBulan from dbareakotaprd where tahun=' +
        '@tahun group by kodekota) B on A.KodeKota = B.kodekota'
      '--order by namakota'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '--select * from dbareakotaprd')
    Left = 304
    Top = 160
    object QuGrafikKotaBulan: TIntegerField
      FieldName = 'Bulan'
      ReadOnly = True
    end
    object QuGrafikKotaKodeKota: TStringField
      FieldName = 'KodeKota'
      ReadOnly = True
      Size = 15
    end
    object QuGrafikKotaNamaKota: TStringField
      FieldName = 'NamaKota'
      ReadOnly = True
      Size = 30
    end
    object QuGrafikKotaRpBUlan: TBCDField
      FieldName = 'RpBUlan'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuGrafikKotaQNTBULAN: TBCDField
      FieldName = 'QNTBULAN'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 503
    Top = 104
  end
end
