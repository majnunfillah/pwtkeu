object FrMainPROut: TFrMainPROut
  Left = 216
  Top = 107
  Width = 1210
  Height = 466
  Caption = 'Purchase Request (PR)'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 48
    Width = 1202
    Height = 384
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
    Width = 1202
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1202
      Height = 39
      ButtonHeight = 39
      ButtonWidth = 99
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
        Enabled = False
        ImageIndex = 0
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Left = 99
        Top = 0
        Hint = 'Koreksi Record'
        Caption = '&Koreksi'
        Enabled = False
        ImageIndex = 1
        OnClick = ToolButton2Click
      end
      object ToolButton3: TToolButton
        Left = 198
        Top = 0
        Hint = 'Hapus Record'
        Caption = '&Batal'
        ImageIndex = 13
        Visible = False
      end
      object ToolButton5: TToolButton
        Left = 297
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 305
        Top = 0
        Caption = 'Refresh'
        ImageIndex = 12
        OnClick = ToolButton10Click
      end
      object ToolButton7: TToolButton
        Left = 404
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 0
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton6: TToolButton
        Left = 412
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
      end
      object ToolButton9: TToolButton
        Left = 0
        Top = 47
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
      object ToolButton11: TToolButton
        Left = 99
        Top = 47
        Caption = 'Tampil Valid'
        DropdownMenu = PopupMenu2
        ImageIndex = 7
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton4: TToolButton
        Left = 211
        Top = 47
        Caption = 'Cetak'
        DropdownMenu = PopupMenu3
        ImageIndex = 4
        Style = tbsDropDown
      end
      object ToolButton13: TToolButton
        Left = 323
        Top = 47
        Caption = 'Otorisasi'
        ImageIndex = 15
        Visible = False
        OnClick = ToolButton13Click
      end
      object ToolButton12: TToolButton
        Left = 422
        Top = 47
        Caption = 'Batal Otorisasi'
        ImageIndex = 16
        Visible = False
        OnClick = ToolButton12Click
      end
      object ToolButton14: TToolButton
        Left = 521
        Top = 47
        Caption = 'Close PR'
        ImageIndex = 6
        OnClick = ToolButton14Click
      end
      object ToolButton15: TToolButton
        Left = 620
        Top = 47
        Caption = 'Buka Closing PO'
        ImageIndex = 16
        OnClick = ToolButton15Click
      end
    end
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 48
    Width = 1202
    Height = 384
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
      Caption = 'Outstanding PR'
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1202
        Height = 358
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object tvMasterOut: TcxGridDBTableView
          DataController.DataSource = dsPPL
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'KeyUrut'
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
              FieldName = 'TotSubTotalRp'
            end
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'TotDPPRp'
            end
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'TotPPNRp'
            end
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'TotNetRp'
            end
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'TotDiskonRp'
            end>
          DataController.Summary.SummaryGroups = <>
          OnCellClick = tvMasterOutCellClick
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
          object tvMasterOutKeyUrut: TcxGridDBColumn
            DataBinding.FieldName = 'KeyUrut'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOutNobukti: TcxGridDBColumn
            Caption = 'No. Bukti'
            DataBinding.FieldName = 'Nobukti'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 140
          end
          object tvMasterOutNoUrut: TcxGridDBColumn
            DataBinding.FieldName = 'NoUrut'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOutTanggal: TcxGridDBColumn
            DataBinding.FieldName = 'Tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 90
          end
          object tvMasterOuturut: TcxGridDBColumn
            DataBinding.FieldName = 'urut'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOutkodebrg: TcxGridDBColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'kodebrg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 120
          end
          object tvMasterOutNamaBrg: TcxGridDBColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NamaBrg'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 250
          end
          object tvMasterOutSat: TcxGridDBColumn
            DataBinding.FieldName = 'Sat'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 62
          end
          object tvMasterOutNosat: TcxGridDBColumn
            DataBinding.FieldName = 'Nosat'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOutIsi: TcxGridDBColumn
            DataBinding.FieldName = 'Isi'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterOutQnt: TcxGridDBColumn
            Caption = 'Qnt PR'
            DataBinding.FieldName = 'Qnt'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 90
          end
          object tvMasterOutDBColumn1: TcxGridDBColumn
            Caption = 'Qnt Terima'
            DataBinding.FieldName = 'QntPO'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 90
          end
          object tvMasterOutDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'SisaPPL'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 90
          end
          object tvMasterOutKeterangan: TcxGridDBColumn
            DataBinding.FieldName = 'Keterangan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 300
          end
          object tvMasterOutIsClose: TcxGridDBColumn
            DataBinding.FieldName = 'IsClose'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = tvMasterOut
        end
      end
    end
    object dxTabSheet2: TdxTabSheet
      Caption = 'Closing PR'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1202
        Height = 358
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
              FieldName = 'TotSubTotalRp'
            end
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'TotDPPRp'
            end
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'TotPPNRp'
            end
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'TotNetRp'
            end
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'TotDiskonRp'
            end>
          DataController.Summary.SummaryGroups = <>
          OnCellClick = tvMasterOutCellClick
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
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'KeyUrut'
            Visible = False
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'No. Bukti'
            DataBinding.FieldName = 'Nobukti'
            Width = 140
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'NoUrut'
            Visible = False
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'Tanggal'
            Width = 90
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'urut'
            Visible = False
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'kodebrg'
            Width = 120
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NamaBrg'
            Width = 250
          end
          object cxGridDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'Sat'
            Width = 62
          end
          object cxGridDBColumn10: TcxGridDBColumn
            DataBinding.FieldName = 'Nosat'
            Visible = False
          end
          object cxGridDBColumn11: TcxGridDBColumn
            DataBinding.FieldName = 'Isi'
            Visible = False
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'Qnt PO'
            DataBinding.FieldName = 'QntPO'
            HeaderAlignmentHorz = taRightJustify
            Width = 90
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'Qnt Terima'
            DataBinding.FieldName = 'qntterima'
            Width = 90
          end
          object cxGridDBColumn14: TcxGridDBColumn
            DataBinding.FieldName = 'QntBatal'
            Width = 90
          end
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'Keterangan'
            Width = 300
          end
          object cxGridDBColumn16: TcxGridDBColumn
            DataBinding.FieldName = 'IsClose'
            Visible = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = tvMaster
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
    Left = 503
    Top = 104
  end
  object QuNavigator: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'select NoBukti from dbBeli where month(tanggal)=1 and year(tangg' +
        'al)=1 and isbatal=0'
      'order by nobukti')
    Left = 186
    Top = 179
    object QuNavigatorNoBukti: TStringField
      FieldName = 'NoBukti'
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 443
    Top = 103
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
      'select @Tahun=2013, @Bulan=9'
      ''
      
        'select  A.NoBukti+'#39' '#39'+right('#39'00000000'#39'+cast(A.urut as varchar(8)' +
        '),8) KeyUrut,'
      'A.*'
      'from vwOutPPL A'
      'where QntBatal>0'
      'order by A.Tanggal, A.NoBukti, A.Urut          '
      '')
    Left = 24
    Top = 184
    object QuMasterKeyUrut: TStringField
      FieldName = 'KeyUrut'
      ReadOnly = True
      Size = 59
    end
    object QuMasterNobukti: TStringField
      FieldName = 'Nobukti'
      Size = 50
    end
    object QuMasterNoUrut: TStringField
      FieldName = 'NoUrut'
      Size = 5
    end
    object QuMasterTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterNMDEP: TStringField
      FieldName = 'NMDEP'
      Size = 40
    end
    object QuMasterurut: TIntegerField
      FieldName = 'urut'
    end
    object QuMasterkodebrg: TStringField
      FieldName = 'kodebrg'
      Size = 25
    end
    object QuMasterNAMABRG: TStringField
      FieldName = 'NAMABRG'
      Size = 100
    end
    object QuMasterSat: TStringField
      FieldName = 'Sat'
      Size = 5
    end
    object QuMasterNosat: TWordField
      FieldName = 'Nosat'
    end
    object QuMasterIsi: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object QuMasterQnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterQntPO: TBCDField
      FieldName = 'QntPO'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 500
    end
    object QuMasterSisaPPL: TBCDField
      FieldName = 'SisaPPL'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 19
      Size = 2
    end
    object QuMasterIsClose: TBooleanField
      FieldName = 'IsClose'
    end
    object QuMastertolerate: TBCDField
      FieldName = 'tolerate'
      Precision = 5
      Size = 2
    end
    object QuMasterQntSisa: TBCDField
      FieldName = 'QntSisa'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuMasterQntTerima: TBCDField
      FieldName = 'QntTerima'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuMasterQntBatal: TBCDField
      FieldName = 'QntBatal'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterTglbatal: TDateTimeField
      FieldName = 'Tglbatal'
      DisplayFormat = ',0.00'
    end
    object QuMasterIsBatal: TBooleanField
      FieldName = 'IsBatal'
    end
    object QuMasteruserbatal: TStringField
      FieldName = 'userbatal'
      Size = 30
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
        Size = 20
        Value = 'n'
      end>
    SQL.Strings = (
      'Select '#9'B.NoBukti, '#39#39' NoSPP, 0 UrutSPP,'
      #9'B.Urut, B.KodeBrg, H.NamaBrg, B.Qnt, B.NoSat, B.Isi, B.Satuan,'
      '        0.00 Qnt2, '#39#39' SatuanRoll, B.Harga,'
      '        B.DiscP DiscP1, B.DiscTot DiscRp1, B.DiscTot,'
      '        B.SubTotal TotalUSD, B.SubTotal TotalIDR, B.NDPP NDPP,'
      
        '        B.NPPN NPPN, B.BYAngkut Beban, B.SubTotal + B.BYAngkut T' +
        'otal,'
      '        B.NoPPL'
      'From  dbPODet B '
      'Left Outer Join dbBarang H on H.KodeBrg=B.KodeBrg'
      'where NoBukti=:NoBukti'
      'order by B.NoBukti, B.Urut'
      '')
    Left = 96
    Top = 184
    object QuDetail1NoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuDetail1NoSPP: TStringField
      FieldName = 'NoSPP'
    end
    object QuDetail1UrutSPP: TIntegerField
      FieldName = 'UrutSPP'
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
    end
    object QuDetail1TotalUSD: TBCDField
      FieldName = 'TotalUSD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
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
    object QuDetail1NoPPL: TStringField
      FieldName = 'NoPPL'
      Size = 50
    end
  end
  object DsDetail1: TDataSource
    DataSet = QuDetail1
    Left = 128
    Top = 184
  end
  object QuPPL: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2013, @Bulan=9'
      ''
      
        'select  A.NoBukti+'#39' '#39'+right('#39'00000000'#39'+cast(A.urut as varchar(8)' +
        '),8) KeyUrut,'
      'A.*'
      'from vwOutPPL A'
      'where A.SisaPPL>0 and isnull(A.QntBatal,0)=0'
      'order by A.Tanggal, A.NoBukti, A.Urut  '
      '')
    Left = 24
    Top = 231
    object QuPPLKeyUrut: TStringField
      FieldName = 'KeyUrut'
      ReadOnly = True
      Size = 59
    end
    object QuPPLNobukti: TStringField
      FieldName = 'Nobukti'
      Size = 50
    end
    object QuPPLNoUrut: TStringField
      FieldName = 'NoUrut'
      Size = 5
    end
    object QuPPLTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuPPLNMDEP: TStringField
      FieldName = 'NMDEP'
      Size = 40
    end
    object QuPPLurut: TIntegerField
      FieldName = 'urut'
    end
    object QuPPLkodebrg: TStringField
      FieldName = 'kodebrg'
      Size = 25
    end
    object QuPPLNAMABRG: TStringField
      FieldName = 'NAMABRG'
      Size = 100
    end
    object QuPPLSat: TStringField
      FieldName = 'Sat'
      Size = 5
    end
    object QuPPLNosat: TWordField
      FieldName = 'Nosat'
    end
    object QuPPLIsi: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object QuPPLQnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuPPLQntPO: TBCDField
      FieldName = 'QntPO'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuPPLKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 500
    end
    object QuPPLSisaPPL: TBCDField
      FieldName = 'SisaPPL'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 19
      Size = 2
    end
    object QuPPLIsClose: TBooleanField
      FieldName = 'IsClose'
    end
    object QuPPLtolerate: TBCDField
      FieldName = 'tolerate'
      DisplayFormat = ',0.00'
      Precision = 5
      Size = 2
    end
    object QuPPLQntSisa: TBCDField
      FieldName = 'QntSisa'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuPPLQntTerima: TBCDField
      FieldName = 'QntTerima'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuPPLQntBatal: TBCDField
      FieldName = 'QntBatal'
      Precision = 18
      Size = 2
    end
    object QuPPLTglbatal: TDateTimeField
      FieldName = 'Tglbatal'
    end
    object QuPPLIsBatal: TBooleanField
      FieldName = 'IsBatal'
    end
    object QuPPLuserbatal: TStringField
      FieldName = 'userbatal'
      Size = 30
    end
    object QuPPLIsOtorisasi1: TBooleanField
      FieldName = 'IsOtorisasi1'
    end
    object QuPPLOtoUser1: TStringField
      FieldName = 'OtoUser1'
      Size = 15
    end
    object QuPPLTglOto1: TDateTimeField
      FieldName = 'TglOto1'
    end
    object QuPPLIsOtorisasi2: TBooleanField
      FieldName = 'IsOtorisasi2'
    end
    object QuPPLOtoUser2: TStringField
      FieldName = 'OtoUser2'
      Size = 15
    end
    object QuPPLTglOto2: TDateTimeField
      FieldName = 'TglOto2'
    end
    object QuPPLIsOtorisasi3: TBooleanField
      FieldName = 'IsOtorisasi3'
    end
    object QuPPLOtoUser3: TStringField
      FieldName = 'OtoUser3'
      Size = 15
    end
    object QuPPLTglOto3: TDateTimeField
      FieldName = 'TglOto3'
    end
    object QuPPLIsOtorisasi4: TBooleanField
      FieldName = 'IsOtorisasi4'
    end
    object QuPPLOtoUser4: TStringField
      FieldName = 'OtoUser4'
      Size = 15
    end
    object QuPPLTglOto4: TDateTimeField
      FieldName = 'TglOto4'
    end
    object QuPPLIsOtorisasi5: TBooleanField
      FieldName = 'IsOtorisasi5'
    end
    object QuPPLOtoUser5: TStringField
      FieldName = 'OtoUser5'
      Size = 15
    end
    object QuPPLTglOto5: TDateTimeField
      FieldName = 'TglOto5'
    end
    object QuPPLNeedOtorisasi: TBooleanField
      FieldName = 'NeedOtorisasi'
      ReadOnly = True
    end
  end
  object dsPPL: TDataSource
    DataSet = QuPPL
    Left = 56
    Top = 231
  end
  object frxReport1: TfrxReport
    Version = '4.5'
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
          DataField = 'LOGO'
          DataSet = frxDataPerusahaan
          DataSetName = 'frxDataPerusahaan'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          KeepAspectRatio = False
          HightQuality = False
        end
        object Memo1: TfrxMemoView
          Left = 68.03154
          Width = 321.26005
          Height = 18.89765
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
          Memo.UTF8 = (
            'Pemasok : ')
        end
        object Memo18: TfrxMemoView
          Left = 491.3389
          Top = 56.69295
          Width = 287.24428
          Height = 18.89765
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
          HAlign = haCenter
          Memo.UTF8 = (
            'APK')
        end
        object Memo56: TfrxMemoView
          Left = 117.16543
          Top = 94.48825
          Width = 113.3859
          Height = 18.89765
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
        object Memo57: TfrxMemoView
          Left = 7.55906
          Top = 3.77953000000002
          Width = 68.03154
          Height = 18.89765
          Memo.UTF8 = (
            'Terbilang')
        end
        object Memo58: TfrxMemoView
          Left = 3.77953
          Top = 45.35436
          Width = 109.60637
          Height = 18.89765
          HAlign = haCenter
          Memo.UTF8 = (
            'ADM. Hutang')
        end
        object Memo59: TfrxMemoView
          Left = 3.77953
          Top = 94.48825
          Width = 109.60637
          Height = 18.89765
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
        object Memo60: TfrxMemoView
          Left = 347.71676
          Top = 45.35436
          Width = 113.3859
          Height = 18.89765
          HAlign = haCenter
          Memo.UTF8 = (
            'Gudang')
        end
        object Memo61: TfrxMemoView
          Left = 347.71676
          Top = 94.48825
          Width = 113.3859
          Height = 18.89765
          HAlign = haCenter
          Memo.UTF8 = (
            '(..........................)')
        end
        object Memo62: TfrxMemoView
          Left = 234.33086
          Top = 45.35436
          Width = 109.60637
          Height = 18.89765
          HAlign = haCenter
          Memo.UTF8 = (
            'Pembelian')
        end
        object Memo63: TfrxMemoView
          Left = 234.33086
          Top = 94.48825
          Width = 109.60637
          Height = 18.89765
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
          Color = clInfoBk
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 3.77953
          Width = 22.67718
          Height = 15.11812
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
    DataSet = DM.QuCari
    Left = 412
    Top = 202
  end
  object frxDataPerusahaan: TfrxDBDataset
    UserName = 'frxDataPerusahaan'
    CloseDataSource = False
    DataSet = DM.QuCari2
    Left = 416
    Top = 232
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    FileName = 'C:\DOCUME~1\admin\LOCALS~1\Temp\fr48.tmp'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 496
    Top = 198
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
    Restrictions = []
    RTLLanguage = False
    Left = 448
    Top = 232
  end
  object PopupMenu3: TPopupMenu
    Left = 536
    Top = 144
    object CetakPO1: TMenuItem
      Caption = 'Cetak PO'
      OnClick = CetakPO1Click
    end
    object CetakPOTanpaHarga1: TMenuItem
      Caption = 'Cetak PO Tanpa Harga'
      OnClick = CetakPOTanpaHarga1Click
    end
  end
end
