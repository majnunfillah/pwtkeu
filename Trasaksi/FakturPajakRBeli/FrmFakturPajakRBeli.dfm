object FrFakturPajakRbeli: TFrFakturPajakRbeli
  Left = -4
  Top = -4
  Width = 1374
  Height = 742
  Caption = 'Faktur Pajak'
  Color = clBtnFace
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1366
    Height = 38
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 76
    Caption = 'ToolBar1'
    Color = clBtnFace
    EdgeBorders = [ebLeft, ebTop]
    Flat = True
    Images = DM.ImageList2
    ParentColor = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    object ToolButton10: TToolButton
      Left = 0
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = ToolButton10Click
    end
    object ToolButton7: TToolButton
      Left = 76
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 84
      Top = 0
      Caption = 'Lain-lain'
      DropdownMenu = PopupMenu1
      ImageIndex = 10
      Style = tbsDropDown
      Visible = False
    end
    object ToolButton1: TToolButton
      Left = 173
      Top = 0
      Caption = 'Isi No Pajak'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 249
      Top = 0
      Caption = 'Kosong'
      ImageIndex = 13
      OnClick = ToolButton2Click
    end
    object Panel3: TPanel
      Left = 325
      Top = 0
      Width = 104
      Height = 36
      TabOrder = 0
      object ComboBox1: TComboBox
        Left = 8
        Top = 8
        Width = 89
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 16
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Lembar 1'
        Items.Strings = (
          'Lembar 1'
          'Lembar 2')
      end
    end
    object ToolButton3: TToolButton
      Left = 429
      Top = 0
      Caption = 'Cetak'
      ImageIndex = 4
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 505
      Top = 0
      Caption = 'Design'
      ImageIndex = 10
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 581
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 589
      Top = 0
      Caption = 'K&eluar'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
    object ToolButton8: TToolButton
      Left = 665
      Top = 0
      Caption = 'Otorisasi'
      ImageIndex = 15
      OnClick = ToolButton8Click
    end
    object ToolButton11: TToolButton
      Left = 741
      Top = 0
      Caption = 'Batal Otorisasi'
      ImageIndex = 16
      OnClick = ToolButton11Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 38
    Width = 1366
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Periode : '
    end
    object TglAwal: TDateEdit
      Left = 55
      Top = 4
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object TglAkhir: TDateEdit
      Left = 150
      Top = 4
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 67
    Width = 1366
    Height = 641
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object dxDBGrid1: TdxDBGrid
      Left = 376
      Top = 128
      Width = 352
      Height = 138
      Hint = 'Untuk cari data ketik kata yang dicari di grid'
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'Kodebrg'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Color = 14540253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
      OnDblClick = ToolButton2Click
      AutoExpandOnSearch = False
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = []
      Filter.Criteria = {00000000}
      GridLineColor = clBlack
      GroupPanelColor = 13025469
      GroupPanelFontColor = clBlack
      GroupNodeColor = clMoneyGreen
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clBlack
      HeaderFont.Height = -13
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      HideSelectionColor = clMoneyGreen
      HideSelectionTextColor = clBlack
      HighlightColor = 9629163
      HighlightTextColor = clBlack
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowFooterColor = 16763283
      ShowRowFooter = True
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 1366
      Height = 641
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
            Column = tvMasterNoBukti
          end
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'TotNetRp'
            Column = tvMasterTotNetRp
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
        object tvMasterNoBukti: TcxGridDBColumn
          Caption = 'No. Bukti'
          DataBinding.FieldName = 'NoBukti'
          Width = 150
        end
        object tvMasterTanggal: TcxGridDBColumn
          DataBinding.FieldName = 'Tanggal'
          Width = 80
        end
        object tvMasterNamaSupp: TcxGridDBColumn
          Caption = 'Nama Supplier'
          DataBinding.FieldName = 'NamaCustSupp'
          Width = 280
        end
        object tvMasterNOBELI: TcxGridDBColumn
          Caption = 'No. Pembelian'
          DataBinding.FieldName = 'NOBELI'
          Width = 140
        end
        object tvMasterTotDPPRp: TcxGridDBColumn
          Caption = 'DPP Rp'
          DataBinding.FieldName = 'TotDPPRp'
          Width = 110
        end
        object tvMasterTotPPNRp: TcxGridDBColumn
          Caption = 'PPN Rp'
          DataBinding.FieldName = 'TotPPNRp'
          Width = 110
        end
        object tvMasterTotNetRp: TcxGridDBColumn
          Caption = 'Grand Total Rp'
          DataBinding.FieldName = 'TotNetRp'
          Width = 110
        end
        object tvMasterDBNOPajak: TcxGridDBColumn
          Caption = 'Nomor Pajak'
          DataBinding.FieldName = 'NOpajak'
          Width = 100
        end
        object tvMasterDBTglFPJ: TcxGridDBColumn
          Caption = 'Tanggal FPJ'
          DataBinding.FieldName = 'TglFpj'
          Width = 80
        end
        object tvMasterDBColumn1: TcxGridDBColumn
          Caption = 'Authorisasi'
          DataBinding.FieldName = 'isotorisasi1'
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
            FieldName = 'TotalIDR'
            Column = tvDetailTotalIDR
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
        object tvDetailKodeBrg: TcxGridDBColumn
          DataBinding.FieldName = 'KodeBrg'
          Width = 120
        end
        object tvDetailNamaBrg: TcxGridDBColumn
          DataBinding.FieldName = 'NamaBrg'
          Width = 250
        end
        object tvDetailSatuan: TcxGridDBColumn
          Caption = 'Sat'
          DataBinding.FieldName = 'Satuan'
          Width = 40
        end
        object tvDetailQnt: TcxGridDBColumn
          DataBinding.FieldName = 'Qnt'
          Width = 80
        end
        object tvDetailKodeGdg: TcxGridDBColumn
          Caption = 'Gudang'
          DataBinding.FieldName = 'KodeGdg'
          Width = 60
        end
        object tvDetailHarga: TcxGridDBColumn
          DataBinding.FieldName = 'Harga'
          Width = 90
        end
        object tvDetailDiscTot: TcxGridDBColumn
          Caption = 'Diskon'
          DataBinding.FieldName = 'DiscTot'
          Width = 90
        end
        object tvDetailTotalIDR: TcxGridDBColumn
          Caption = 'Sub Total Rp'
          DataBinding.FieldName = 'TotalIDR'
          Width = 90
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
  object PopupMenu1: TPopupMenu
    Left = 515
    Top = 21
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
    Left = 345
    Top = 212
  end
  object quCetak: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'exec sp_FakturPajakRBeli  '#39'111'#39)
    Left = 418
    Top = 209
    object quCetakNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object quCetakNoPNJ: TStringField
      FieldName = 'NoPNJ'
    end
    object quCetakKodeBrg: TStringField
      FieldName = 'KodeBrg'
      Size = 25
    end
    object quCetakNOFPJ: TStringField
      FieldName = 'NOFPJ'
      ReadOnly = True
      Size = 50
    end
    object quCetakTglFPJ: TDateTimeField
      FieldName = 'TglFPJ'
    end
    object quCetakMySeri: TStringField
      FieldName = 'MySeri'
      Size = 50
    end
    object quCetakKurs: TBCDField
      FieldName = 'Kurs'
      Precision = 18
      Size = 2
    end
    object quCetakUsaha: TStringField
      FieldName = 'Usaha'
    end
    object quCetakKodeGrp: TStringField
      FieldName = 'KodeGrp'
    end
    object quCetakNamaPKP: TStringField
      FieldName = 'NamaPKP'
      Size = 40
    end
    object quCetakAlamatPKP: TStringField
      FieldName = 'AlamatPKP'
      ReadOnly = True
      Size = 243
    end
    object quCetakalamat2: TStringField
      FieldName = 'alamat2'
      Size = 100
    end
    object quCetakNPWPPKP: TStringField
      FieldName = 'NPWPPKP'
      Size = 40
    end
    object quCetakTglPKP: TDateTimeField
      FieldName = 'TglPKP'
    end
    object quCetakKODESUPP: TStringField
      FieldName = 'KODESUPP'
      Size = 15
    end
    object quCetakNAMACUSTSUPP: TStringField
      FieldName = 'NAMACUSTSUPP'
      Size = 100
    end
    object quCetakAlamatCust: TStringField
      FieldName = 'AlamatCust'
      ReadOnly = True
      Size = 232
    end
    object quCetakNPWPCust: TStringField
      FieldName = 'NPWPCust'
      Size = 100
    end
    object quCetakalamatcustom: TStringField
      FieldName = 'alamatcustom'
      Size = 100
    end
    object quCetakkotacustom: TStringField
      FieldName = 'kotacustom'
      Size = 100
    end
    object quCetakKodeBrg_1: TStringField
      FieldName = 'KodeBrg_1'
      Size = 25
    end
    object quCetakNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object quCetakJumlah: TBCDField
      FieldName = 'Jumlah'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object quCetakUangMuka: TIntegerField
      FieldName = 'UangMuka'
      ReadOnly = True
    end
    object quCetakQnt: TBCDField
      FieldName = 'Qnt'
      Precision = 18
      Size = 2
    end
    object quCetakQnt1: TBCDField
      FieldName = 'Qnt1'
      Precision = 18
      Size = 2
    end
    object quCetakQnt2: TBCDField
      FieldName = 'Qnt2'
      Precision = 18
      Size = 2
    end
    object quCetakNDpp: TFloatField
      FieldName = 'NDpp'
      ReadOnly = True
    end
    object quCetakNppn: TFloatField
      FieldName = 'Nppn'
      ReadOnly = True
    end
    object quCetakNnet: TFloatField
      FieldName = 'Nnet'
      ReadOnly = True
    end
    object quCetakKODEVLS: TStringField
      FieldName = 'KODEVLS'
      Size = 15
    end
    object quCetakHarga: TBCDField
      FieldName = 'Harga'
      ReadOnly = True
      Precision = 25
      Size = 7
    end
    object quCetakKota: TStringField
      FieldName = 'Kota'
      Size = 40
    end
    object quCetakDireksi: TStringField
      FieldName = 'Direksi'
      Size = 50
    end
    object quCetakJabatan: TStringField
      FieldName = 'Jabatan'
      Size = 50
    end
    object quCetakKetNota: TStringField
      FieldName = 'KetNota'
      ReadOnly = True
      Size = 1
    end
    object quCetakGroupNobukti2: TStringField
      FieldName = 'GroupNobukti2'
      ReadOnly = True
      Size = 230
    end
    object quCetaknamacustpkp: TStringField
      FieldName = 'namacustpkp'
      Size = 40
    end
    object quCetakalamatcustpkp: TStringField
      FieldName = 'alamatcustpkp'
      Size = 100
    end
    object quCetakalamatcustpkp2: TStringField
      FieldName = 'alamatcustpkp2'
      Size = 100
    end
    object quCetakkotacustpkp: TStringField
      FieldName = 'kotacustpkp'
      Size = 30
    end
    object quCetaknamax: TStringField
      FieldName = 'namax'
      ReadOnly = True
      Size = 100
    end
    object quCetakalamat1x: TStringField
      FieldName = 'alamat1x'
      ReadOnly = True
      Size = 100
    end
    object quCetakalamat2x: TStringField
      FieldName = 'alamat2x'
      ReadOnly = True
      Size = 100
    end
    object quCetakkotapkpx: TStringField
      FieldName = 'kotapkpx'
      ReadOnly = True
      Size = 30
    end
    object quCetakJum: TFloatField
      FieldName = 'Jum'
      ReadOnly = True
    end
    object quCetakHrgNetto: TBCDField
      FieldName = 'HrgNetto'
      ReadOnly = True
      Precision = 21
    end
    object quCetakstn: TStringField
      FieldName = 'stn'
      ReadOnly = True
      Size = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = quCetak
    Left = 448
    Top = 209
  end
  object frxReport1: TfrxReport
    Version = '4.5'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39078.9291113889
    ReportOptions.LastChange = 39560.3895833333
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo46OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  {if <frxDBDataset1."tampiltgl">=0 then'
      '  Memo46.visible:=false'
      '  else'
      '  Memo46.visible:=true;}'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    OnAfterPrintReport = frxReport1AfterPrintReport
    Left = 478
    Top = 209
    Datasets = <>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 279.4
      PaperSize = 1
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
    end
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 216
    Top = 136
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NoBukti=NoBukti'
      'NoPNJ=NoPNJ'
      'KodeBrg=KodeBrg'
      'NOFPJ=NOFPJ'
      'TglFPJ=TglFPJ'
      'MySeri=MySeri'
      'Kurs=Kurs'
      'Usaha=Usaha'
      'KodeGrp=KodeGrp'
      'NamaPKP=NamaPKP'
      'AlamatPKP=AlamatPKP'
      'alamat2=alamat2'
      'NPWPPKP=NPWPPKP'
      'TglPKP=TglPKP'
      'KODESUPP=KODESUPP'
      'NAMACUSTSUPP=NAMACUSTSUPP'
      'AlamatCust=AlamatCust'
      'NPWPCust=NPWPCust'
      'alamatcustom=alamatcustom'
      'kotacustom=kotacustom'
      'KodeBrg_1=KodeBrg_1'
      'NamaBrg=NamaBrg'
      'Jumlah=Jumlah'
      'UangMuka=UangMuka'
      'Qnt=Qnt'
      'Qnt1=Qnt1'
      'Qnt2=Qnt2'
      'NDpp=NDpp'
      'Nppn=Nppn'
      'Nnet=Nnet'
      'KODEVLS=KODEVLS'
      'Harga=Harga'
      'Kota=Kota'
      'Direksi=Direksi'
      'Jabatan=Jabatan'
      'KetNota=KetNota'
      'GroupNobukti2=GroupNobukti2'
      'namacustpkp=namacustpkp'
      'alamatcustpkp=alamatcustpkp'
      'alamatcustpkp2=alamatcustpkp2'
      'kotacustpkp=kotacustpkp'
      'namax=namax'
      'alamat1x=alamat1x'
      'alamat2x=alamat2x'
      'kotapkpx=kotapkpx'
      'Jum=Jum'
      'HrgNetto=HrgNetto'
      'stn=stn')
    DataSet = quCetak
    Left = 512
    Top = 208
  end
  object DsDetail1: TDataSource
    DataSet = QuDetail1
    Left = 128
    Top = 184
  end
  object QuDetail1: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMaster
    Parameters = <>
    SQL.Strings = (
      'declare @tglawal datetime,@TglAkhir datetime'
      ''
      'select @TglAwal='#39#39',@TglAkhir='#39#39
      ''
      'Select '#9'B.NoBukti, B.UrutPBL,'
      #9'B.Urut, B.KodeBrg, H.NamaBrg, B.Qnt, B.NoSat, B.Isi, B.Satuan,'
      '        0.00 Qnt2, '#39#39' SatuanRoll, B.Harga,'
      '        B.DiscP DiscP1, B.DiscTot DiscRp1, B.DiscTot,'
      '        B.SubTotal TotalUSD, B.SubTotal TotalIDR, B.NDPP NDPP,'
      
        '        B.NPPN NPPN, B.BYAngkut Beban, B.SubTotal + B.BYAngkut T' +
        'otal,'
      '        I.Tanggal'
      'From dbRBeliDet B'
      'Left Outer Join dbBarang H on H.KodeBrg=B.KodeBrg'
      'Left Outer Join DbRBeli I on B.nobukti=I.Nobukti'
      'where I.tanggal between @TglAwal and @tglAkhir'
      'order by B.NoBukti, B.Urut'
      ''
      '')
    Left = 96
    Top = 184
    object QuDetail1NoBukti: TStringField
      FieldName = 'NoBukti'
      Visible = False
    end
    object QuDetail1UrutPBL: TIntegerField
      FieldName = 'UrutPBL'
      Visible = False
    end
    object QuDetail1Urut: TSmallintField
      FieldName = 'Urut'
      Visible = False
    end
    object QuDetail1KodeBrg: TStringField
      DisplayLabel = 'Kode Barang'
      FieldName = 'KodeBrg'
      Size = 25
    end
    object QuDetail1NamaBrg: TStringField
      DisplayLabel = 'Nama Barang'
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
      Visible = False
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1DiscRp1: TBCDField
      FieldName = 'DiscRp1'
      Visible = False
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
      Visible = False
      DisplayFormat = ',0.00'
    end
    object QuDetail1NPPN: TFloatField
      FieldName = 'NPPN'
      ReadOnly = True
      Visible = False
      DisplayFormat = ',0.00'
    end
    object QuDetail1Beban: TBCDField
      FieldName = 'Beban'
      Visible = False
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1Total: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Visible = False
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetail1Tanggal: TDateTimeField
      FieldName = 'Tanggal'
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
      'declare @tglawal datetime, @tglakhir datetime'
      ''
      'select @tglawal=2009, @TglAkhir=9'
      ''
      
        'Select  NoBukti, Tanggal, KodeSupp, NamaCustSupp, NoBeli, Handli' +
        'ng, FakturSupp,'
      
        '        TotSubTotal, TotDiskon, TotTotal, TotDPP, TotPPN, TotNet' +
        ','
      
        '        TotSubTotalRp, TotDiskonRp, TotTotalRp, TotDPPRp, TotPPN' +
        'Rp, TotNetRp,'
      '        TglFpj,NOpajak, isotorisasi1,OtoUser1,TglOto1'
      'From vwMasterRBeli'
      '--where year(Tanggal)=@Tahun and month(Tanggal)=@Bulan'
      'Where tanggal between @tglawal and @tglakhir'
      'order by NoBukti'
      ''
      ''
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
    object QuMasterKodeSupp: TStringField
      FieldName = 'KodeSupp'
      Size = 15
    end
    object QuMasterNOBELI: TStringField
      FieldName = 'NOBELI'
    end
    object QuMasterHandling: TBCDField
      FieldName = 'Handling'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterFakturSupp: TStringField
      FieldName = 'FakturSupp'
      Size = 50
    end
    object QuMasterTotSubTotal: TBCDField
      FieldName = 'TotSubTotal'
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
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
    object QuMasterNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuMasterTglFpj: TDateTimeField
      FieldName = 'TglFpj'
    end
    object QuMasterNOpajak: TStringField
      FieldName = 'NOpajak'
      Size = 50
    end
    object QuMasterisotorisasi1: TBooleanField
      FieldName = 'isotorisasi1'
    end
    object QuMasterOtoUser1: TStringField
      FieldName = 'OtoUser1'
      Size = 15
    end
    object QuMasterTglOto1: TDateTimeField
      FieldName = 'TglOto1'
    end
  end
end
