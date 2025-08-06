object FrMainKoreksiBJ: TFrMainKoreksiBJ
  Left = 304
  Top = 150
  Width = 930
  Height = 480
  Caption = 'Koreksi Stock(Barang Jadi)'
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
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 42
    Width = 922
    Height = 404
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'nobukti'
    SummaryGroups = <
      item
        DefaultGroup = True
        SummaryItems = <
          item
            ColumnName = 'dxDBGrid1Qntdb'
            SummaryField = 'Qntdb'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            ColumnName = 'dxDBGrid1QntCr'
            SummaryField = 'QntCr'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            ColumnName = 'dxDBGrid1Total'
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
    DataSource = DsView
    Filter.Criteria = {00000000}
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
    OnCustomDrawCell = dxDBGrid1CustomDrawCell
    OnCustomDrawFooter = dxDBGrid1CustomDrawFooter
    object dxDBGrid1GroupNobukti: TdxDBGridMaskColumn
      Sorted = csUp
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GroupNobukti'
      GroupIndex = 0
    end
    object dxDBGrid1kodebrg: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'kodebrg'
      SummaryFooterType = cstCount
      SummaryFooterField = 'kodebrg'
    end
    object dxDBGrid1namaBrg: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'namaBrg'
    end
    object dxDBGrid1namagdg: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'namagdg'
    end
    object dxDBGrid1namalokasi: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'namalokasi'
    end
    object dxDBGrid1Satuan: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Satuan'
    end
    object dxDBGrid1Qntdb: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Qntdb'
    end
    object dxDBGrid1QntCr: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QntCr'
    end
    object dxDBGrid1Harga: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Harga'
    end
    object dxDBGrid1Total: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Total'
    end
  end
  object wwExpandButton1: TwwExpandButton
    Left = 16
    Top = 96
    Width = 97
    Height = 17
    DisableThemes = False
    Caption = 'wwExpandButton1'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 922
    Height = 42
    Align = alTop
    TabOrder = 2
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 920
      Height = 50
      ButtonHeight = 39
      ButtonWidth = 89
      Color = clBtnFace
      Customizable = True
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
      object ToolButton5: TToolButton
        Left = 178
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 186
        Top = 0
        Caption = 'Refresh'
        ImageIndex = 12
        OnClick = ToolButton10Click
      end
      object ToolButton7: TToolButton
        Left = 275
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 283
        Top = 0
        Caption = 'Lain-lain'
        DropdownMenu = PopupMenu1
        ImageIndex = 10
        Style = tbsDropDown
      end
      object ToolButton8: TToolButton
        Left = 385
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 393
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
      object ToolButton4: TToolButton
        Left = 482
        Top = 0
        Caption = '&Cetak'
        ImageIndex = 4
        OnClick = ToolButton4Click
      end
      object ToolButton3: TToolButton
        Left = 571
        Top = 0
        Caption = 'Otorisasi'
        ImageIndex = 15
        OnClick = ToolButton3Click
      end
      object ToolButton11: TToolButton
        Left = 660
        Top = 0
        Caption = 'Batal Otorisasi'
        ImageIndex = 16
        OnClick = ToolButton11Click
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 42
    Width = 922
    Height = 404
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
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
      object tvMasterGroupNobukti: TcxGridDBColumn
        Caption = 'Group Nobukti'
        DataBinding.FieldName = 'GroupNobukti'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 344
      end
      object tvMasterNobukti: TcxGridDBColumn
        DataBinding.FieldName = 'Nobukti'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterTanggal: TcxGridDBColumn
        DataBinding.FieldName = 'Tanggal'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 77
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
    end
    object tvDetail: TcxGridDBTableView
      DataController.DataSource = DsDetail
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
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.StyleSheet = FrSetForm.cxGridStyleDt
      object tvDetailkodebrg: TcxGridDBColumn
        Caption = 'Kode Brg'
        DataBinding.FieldName = 'kodebrg'
      end
      object tvDetailnamaBrg: TcxGridDBColumn
        Caption = 'Nama Brg'
        DataBinding.FieldName = 'namaBrg'
      end
      object tvDetailKodegdg: TcxGridDBColumn
        DataBinding.FieldName = 'Kodegdg'
        Visible = False
      end
      object tvDetailQntdb: TcxGridDBColumn
        Caption = 'Qnt debet'
        DataBinding.FieldName = 'Qntdb'
      end
      object tvDetailQntCr: TcxGridDBColumn
        Caption = 'Qnt Credit'
        DataBinding.FieldName = 'QntCr'
      end
      object tvDetailSatuan: TcxGridDBColumn
        DataBinding.FieldName = 'Satuan'
        Visible = False
      end
      object tvDetailnosat: TcxGridDBColumn
        DataBinding.FieldName = 'nosat'
        Visible = False
      end
      object tvDetailisi: TcxGridDBColumn
        DataBinding.FieldName = 'isi'
        Visible = False
      end
      object tvDetailHarga: TcxGridDBColumn
        DataBinding.FieldName = 'Harga'
        Visible = False
      end
      object tvDetailurut: TcxGridDBColumn
        DataBinding.FieldName = 'urut'
        Visible = False
      end
      object tvDetailNamaGDG: TcxGridDBColumn
        DataBinding.FieldName = 'NamaGDG'
        Visible = False
      end
      object tvDetailTotal: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
      end
      object tvDetailHrgAdi: TcxGridDBColumn
        DataBinding.FieldName = 'HrgAdi'
        Visible = False
      end
      object tvDetailHrgADO: TcxGridDBColumn
        DataBinding.FieldName = 'HrgADO'
        Visible = False
      end
      object tvDetailHpp: TcxGridDBColumn
        DataBinding.FieldName = 'Hpp'
        Visible = False
      end
      object tvDetailHPP2: TcxGridDBColumn
        DataBinding.FieldName = 'HPP2'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvMaster
      object cxGrid1Level2: TcxGridLevel
        GridView = tvDetail
      end
    end
  end
  object QuView: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'Select a.nobukti+'#39' Tanggal:'#39'+convert(varchar(10),a.tanggal,105) ' +
        'as GroupNobukti, '
      
        '                    A.Nobukti,A.tanggal,A.note,a.Tutup,b.kodebrg' +
        ',C.namaBrg,C.Sat_1,C.Sat_2,C.Sat_3, '
      
        '                    b.Kodegdg,b.kodelokasi,b.Qntdb,B.QntCr,b.Sat' +
        'uan,b.nosat,b.Harga,b.urut,d.namagdg,e.namalokasi, '
      '                   (b.qntdb-b.qntcr)*b.harga as Total '
      '             From dbKoreksi A '
      
        '                  left outer join dbKoreksiDet B on b.nobukti=a.' +
        'nobukti '
      
        '                  left outer join dbBarang C on c.kodebrg=b.kode' +
        'brg '
      
        '                  left outer join dbGudang D on d.kodegdg=d.kode' +
        'gdg '
      
        '                  left outer join dbLokasi E on e.kodeLokasi=e.k' +
        'odeLokasi'
      ''
      '             where month(a.tanggal)=1 and year(a.tanggal)=2006'
      '             Order by b.NoBukti, b.Urut')
    Left = 242
    Top = 101
    object QuViewGroupNobukti: TStringField
      DisplayLabel = 'Per No. Bukti'
      FieldName = 'GroupNobukti'
      ReadOnly = True
      Size = 39
    end
    object QuViewNobukti: TStringField
      DisplayLabel = 'No. Bukti'
      FieldName = 'Nobukti'
    end
    object QuViewtanggal: TDateTimeField
      DisplayLabel = 'Tanggal'
      FieldName = 'tanggal'
    end
    object QuViewkodebrg: TStringField
      DisplayLabel = 'Kode'
      FieldName = 'kodebrg'
      Size = 15
    end
    object QuViewnamaBrg: TStringField
      DisplayLabel = 'Deskripsi'
      DisplayWidth = 30
      FieldName = 'namaBrg'
      Size = 40
    end
    object QuViewnamagdg: TStringField
      DisplayLabel = 'Gudang'
      DisplayWidth = 22
      FieldName = 'namagdg'
      Size = 40
    end
    object QuViewnamalokasi: TStringField
      DisplayLabel = 'Lokasi'
      DisplayWidth = 22
      FieldName = 'namalokasi'
      Size = 40
    end
    object QuViewSatuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
    object QuViewQntdb: TBCDField
      DisplayLabel = 'Qnt Debet'
      DisplayWidth = 15
      FieldName = 'Qntdb'
      DisplayFormat = ',0.00'
      Precision = 9
      Size = 2
    end
    object QuViewQntCr: TBCDField
      DisplayLabel = 'Qnt Kredit'
      DisplayWidth = 15
      FieldName = 'QntCr'
      DisplayFormat = ',0.00'
      Precision = 9
      Size = 2
    end
    object QuViewHarga: TBCDField
      DisplayWidth = 15
      FieldName = 'Harga'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuViewTotal: TBCDField
      DisplayWidth = 18
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 29
    end
    object QuViewnote: TStringField
      FieldName = 'note'
      Size = 100
    end
    object QuViewTutup: TIntegerField
      FieldName = 'Tutup'
    end
    object QuViewSat_1: TStringField
      FieldName = 'Sat_1'
      Size = 5
    end
    object QuViewSat_2: TStringField
      FieldName = 'Sat_2'
      Size = 5
    end
    object QuViewSat_3: TStringField
      FieldName = 'Sat_3'
      Size = 5
    end
    object QuViewKodegdg: TStringField
      FieldName = 'Kodegdg'
      Size = 50
    end
    object QuViewkodelokasi: TStringField
      FieldName = 'kodelokasi'
      Size = 50
    end
    object QuViewnosat: TWordField
      FieldName = 'nosat'
    end
    object QuViewurut: TWordField
      FieldName = 'urut'
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 287
    Top = 101
  end
  object PopupMenu1: TPopupMenu
    Left = 459
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = DsView
    UserName = 'DBPipeline1'
    Left = 558
    Top = 105
  end
  object Sp_Area: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_Area;1'
    Parameters = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Choice'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = 'U'
      end
      item
        Name = '@KodeArea'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@NamaArea'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
        Value = Null
      end>
    Left = 529
    Top = 104
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 50800
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 586
    Top = 108
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 21431
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'pT. pERDANA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 12700
        mmTop = 6350
        mmWidth = 114300
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LAPORAN MASTER GROUP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 12700
        mmTop = 12700
        mmWidth = 114300
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 12700
        mmTop = 0
        mmWidth = 114300
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KODE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3316
        mmLeft = 16933
        mmTop = 1323
        mmWidth = 8184
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NAMA AREA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3316
        mmLeft = 66411
        mmTop = 1323
        mmWidth = 16722
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.75
        mmHeight = 6615
        mmLeft = 38365
        mmTop = 0
        mmWidth = 3969
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 7673
        mmLeft = 12700
        mmTop = 0
        mmWidth = 114300
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KodeArea'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 16140
        mmTop = 1588
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NamaArea'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 42598
        mmTop = 1588
        mmWidth = 1199
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7144
        mmLeft = 38365
        mmTop = 265
        mmWidth = 1852
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 2117
        mmLeft = 12171
        mmTop = 794
        mmWidth = 114829
        BandType = 8
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Tanggal Cetak :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 12435
        mmTop = 1323
        mmWidth = 19579
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 33338
        mmTop = 1323
        mmWidth = 26723
        BandType = 8
      end
    end
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
      end>
    SQL.Strings = (
      'select Nobukti '
      'from dbKoreksi'
      
        'where month(tanggal)=:Bulan and year(tanggal)=:Tahun and NoBukti' +
        ' Like '#39'%PPN%'#39
      'order by nobukti')
    Left = 242
    Top = 147
    object StringField1: TStringField
      DisplayLabel = 'No. Bukti'
      FieldName = 'nobukti'
    end
  end
  object QuMaster: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    SQL.Strings = (
      'Select * from vwMasterKoreksi where noBukti Like '#39'%OBJ%'#39)
    Left = 24
    Top = 184
    object QuMasterGroupNobukti: TStringField
      FieldName = 'GroupNobukti'
      ReadOnly = True
      Size = 68
    end
    object QuMasterNobukti: TStringField
      FieldName = 'Nobukti'
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
    object QuMasterNOURUT: TStringField
      FieldName = 'NOURUT'
      Size = 10
    end
  end
  object DsMaster: TDataSource
    DataSet = QuMaster
    Left = 56
    Top = 184
  end
  object DsDetail: TDataSource
    DataSet = QuDetail
    Left = 56
    Top = 216
  end
  object QuDetail: TADOQuery
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
        Value = ''
      end>
    SQL.Strings = (
      'Select *'
      ''
      ''
      'from vwdetailKoreksi'
      ''
      'where NoBukti=:NoBukti'
      ''
      'Order by nobukti,urut')
    Left = 24
    Top = 216
    object QuDetailNobukti: TStringField
      FieldName = 'Nobukti'
    end
    object QuDetailtanggal: TDateTimeField
      FieldName = 'tanggal'
    end
    object QuDetailnote: TStringField
      FieldName = 'note'
      Size = 200
    end
    object QuDetailISCetak: TBooleanField
      FieldName = 'ISCetak'
    end
    object QuDetailkodebrg: TStringField
      FieldName = 'kodebrg'
      Size = 25
    end
    object QuDetailnamaBrg: TStringField
      DisplayWidth = 60
      FieldName = 'namaBrg'
      Size = 60
    end
    object QuDetailKodeGrp: TStringField
      FieldName = 'KodeGrp'
    end
    object QuDetailKodeSubGrp: TStringField
      FieldName = 'KodeSubGrp'
      Size = 3
    end
    object QuDetailSaldoComp: TBCDField
      FieldName = 'SaldoComp'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailQntOpname: TBCDField
      FieldName = 'QntOpname'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailSelisih: TBCDField
      FieldName = 'Selisih'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailKodegdg: TStringField
      FieldName = 'Kodegdg'
      Size = 15
    end
    object QuDetailQntdb: TBCDField
      FieldName = 'Qntdb'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailQntCr: TBCDField
      FieldName = 'QntCr'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailSatuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
    object QuDetailnosat: TWordField
      FieldName = 'nosat'
    end
    object QuDetailisi: TBCDField
      FieldName = 'isi'
      Precision = 18
      Size = 2
    end
    object QuDetailHarga: TBCDField
      FieldName = 'Harga'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailurut: TIntegerField
      FieldName = 'urut'
    end
    object QuDetailNamaGDG: TStringField
      FieldName = 'NamaGDG'
      Size = 40
    end
    object QuDetailTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuDetailHrgAdi: TBCDField
      FieldName = 'HrgAdi'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuDetailHrgAdo: TBCDField
      FieldName = 'HrgAdo'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuDetailHPP: TFloatField
      FieldName = 'HPP'
      DisplayFormat = ',0.00'
    end
  end
  object frxReport1: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40234.4724841667
    ReportOptions.LastChange = 40234.4724841667
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    OnAfterPrintReport = frxReport1AfterPrintReport
    Left = 256
    Top = 328
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBCetakPO'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 220
    Top = 330
  end
  object frxDataPerusahaan: TfrxDBDataset
    UserName = 'frxDataPerusahaan'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 224
    Top = 360
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
    Left = 304
    Top = 326
  end
end
