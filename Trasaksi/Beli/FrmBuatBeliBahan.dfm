object FrBuatBeliBAhan: TFrBuatBeliBAhan
  Left = 259
  Top = 77
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'FrBuatBeliBahan'
  ClientHeight = 454
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 135
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 12
      Width = 66
      Height = 16
      Caption = 'Nomor Urut'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 164
      Top = 12
      Width = 69
      Height = 16
      Caption = 'Nomor Bukti'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 455
      Top = 12
      Width = 46
      Height = 16
      Caption = 'Tanggal'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 8
      Top = 48
      Width = 43
      Height = 16
      Caption = 'Gudang'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 164
      Top = 48
      Width = 58
      Height = 16
      Caption = 'Nomor PO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape4: TShape
      Left = 8
      Top = 37
      Width = 665
      Height = 1
      Brush.Color = clBlack
    end
    object Label1: TLabel
      Left = 8
      Top = 79
      Width = 83
      Height = 16
      Caption = 'Surat Jln Supp'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 8
      Top = 104
      Width = 90
      Height = 16
      Caption = 'No. Kend/ Sopir'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 288
      Top = 78
      Width = 90
      Height = 16
      Caption = 'No. Kend/ Sopir'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 288
      Top = 102
      Width = 65
      Height = 16
      Caption = 'Keterangan'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Tanggal: TDateEdit
      Left = 532
      Top = 8
      Width = 141
      Height = 24
      CheckOnExit = True
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object NoBukti: TEdit
      Left = 235
      Top = 8
      Width = 156
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object NoUrut: TEdit
      Left = 105
      Top = 8
      Width = 55
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 5
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = NoUrutChange
      OnEnter = NoUrutEnter
      OnExit = NoUrutExit
    end
    object NOPO: TEdit
      Left = 235
      Top = 44
      Width = 156
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object KodeGdg: TEdit
      Left = 105
      Top = 44
      Width = 55
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnEnter = KodeGdgEnter
      OnExit = KodeGdgExit
    end
    object FakturSupp: TEdit
      Left = 105
      Top = 75
      Width = 169
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object Keterangan: TEdit
      Left = 105
      Top = 100
      Width = 168
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object Edit1: TEdit
      Left = 385
      Top = 74
      Width = 168
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object Keterangan1: TEdit
      Left = 385
      Top = 100
      Width = 168
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 417
    Width = 692
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object BitBtn3: TBitBtn
      Left = 482
      Top = 6
      Width = 80
      Height = 27
      Caption = '&Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 562
      Top = 6
      Width = 80
      Height = 27
      Caption = '&Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 135
    Width = 692
    Height = 282
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object dxDBGrid1: TdxDBGrid
      Left = 0
      Top = 0
      Width = 692
      Height = 282
      Bands = <
        item
        end
        item
          Visible = False
        end
        item
          Caption = 'Stock'
          Visible = False
        end
        item
          Visible = False
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'KeyNoBukti'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      Color = 14540253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = dxDBGrid1Enter
      OnExit = dxDBGrid1Exit
      OnKeyDown = dxDBGrid1KeyDown
      AutoExpandOnSearch = False
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -13
      BandFont.Name = 'Tahoma'
      BandFont.Style = [fsBold]
      DataSource = DsView
      Filter.Criteria = {00000000}
      FixedBandLineWidth = 1
      GridLineColor = clBlack
      GroupPanelColor = 13025469
      GroupPanelFontColor = clBlack
      GroupNodeColor = clMoneyGreen
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clBlack
      HeaderFont.Height = -13
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideSelectionColor = clMoneyGreen
      HideSelectionTextColor = clBlack
      HighlightColor = 9629163
      HighlightTextColor = clBlack
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
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
      OnCustomDrawCell = dxDBGrid1CustomDrawCell
      object dxDBGrid1IDUser: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDUser'
      end
      object dxDBGrid1IsTerima: TdxDBGridCheckColumn
        Caption = 'Terima'
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IsTerima'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dxDBGrid1NOBUKTI: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOBUKTI'
      end
      object dxDBGrid1Tanggal: TdxDBGridDateColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tanggal'
      end
      object dxDBGrid1KeyNoBukti: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KeyNoBukti'
      end
      object dxDBGrid1URUT: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'URUT'
      end
      object dxDBGrid1FlagTipe: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FlagTipe'
      end
      object dxDBGrid1KODEBRG: TdxDBGridMaskColumn
        Caption = 'Kode Barang'
        DisableEditor = True
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KODEBRG'
      end
      object dxDBGrid1KodeWarna: TdxDBGridMaskColumn
        Caption = 'Warna'
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KodeWarna'
      end
      object dxDBGrid1NAMABRG: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        DisableEditor = True
        Width = 280
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NAMABRG'
      end
      object dxDBGrid1PPN: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPN'
      end
      object dxDBGrid1DISC: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISC'
      end
      object dxDBGrid1Kurs: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Kurs'
      end
      object dxDBGrid1QNT: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QNT'
      end
      object dxDBGrid1NOSAT: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOSAT'
      end
      object dxDBGrid1SATUAN: TdxDBGridMaskColumn
        Caption = 'Sat'
        DisableEditor = True
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SATUAN'
      end
      object dxDBGrid1ISI: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ISI'
      end
      object dxDBGrid1HARGA: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HARGA'
      end
      object dxDBGrid1DISCP: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISCP'
      end
      object dxDBGrid1DISCTOT: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISCTOT'
      end
      object dxDBGrid1BYANGKUT: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BYANGKUT'
      end
      object dxDBGrid1KetDetail: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KetDetail'
      end
      object dxDBGrid1QntSisa: TdxDBGridMaskColumn
        Caption = 'Qnt Sisa PO'
        DisableEditor = True
        HeaderAlignment = taRightJustify
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QntSisa'
      end
      object dxDBGrid1CollyTerima: TdxDBGridMaskColumn
        Caption = 'Colly Terima'
        HeaderAlignment = taRightJustify
        Visible = False
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CollyTerima'
      end
      object dxDBGrid1QntTerima: TdxDBGridMaskColumn
        Caption = 'Qnt Terima'
        HeaderAlignment = taRightJustify
        Width = 80
        BandIndex = 0
        RowIndex = 0
        OnValidate = dxDBGrid1QntTerimaValidate
        FieldName = 'QntTerima'
      end
    end
  end
  object QuView: TADOQuery
    AutoCalcFields = False
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from TempOutstandingPO'
      'order by Tanggal, NoBukti, Urut')
    Left = 26
    Top = 277
    object QuViewIDUser: TStringField
      FieldName = 'IDUser'
      Size = 30
    end
    object QuViewIsTerima: TBooleanField
      FieldName = 'IsTerima'
    end
    object QuViewNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
    end
    object QuViewTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuViewKeyNoBukti: TStringField
      FieldName = 'KeyNoBukti'
      Size = 30
    end
    object QuViewURUT: TIntegerField
      FieldName = 'URUT'
    end
    object QuViewFlagTipe: TStringField
      FieldName = 'FlagTipe'
      Size = 1
    end
    object QuViewKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuViewNAMABRG: TStringField
      FieldName = 'NAMABRG'
      Size = 50
    end
    object QuViewPPN: TWordField
      FieldName = 'PPN'
    end
    object QuViewDISC: TFloatField
      FieldName = 'DISC'
    end
    object QuViewKurs: TBCDField
      FieldName = 'Kurs'
      Precision = 18
      Size = 2
    end
    object QuViewQNT: TBCDField
      FieldName = 'QNT'
      Precision = 18
      Size = 2
    end
    object QuViewNOSAT: TWordField
      FieldName = 'NOSAT'
    end
    object QuViewSATUAN: TStringField
      FieldName = 'SATUAN'
      Size = 5
    end
    object QuViewISI: TBCDField
      FieldName = 'ISI'
      Precision = 18
      Size = 2
    end
    object QuViewHARGA: TBCDField
      FieldName = 'HARGA'
      Precision = 18
    end
    object QuViewDISCP: TBCDField
      FieldName = 'DISCP'
      Precision = 18
      Size = 2
    end
    object QuViewDISCTOT: TBCDField
      FieldName = 'DISCTOT'
      Precision = 18
    end
    object QuViewBYANGKUT: TBCDField
      FieldName = 'BYANGKUT'
      Precision = 18
      Size = 2
    end
    object QuViewKetDetail: TStringField
      FieldName = 'KetDetail'
      Size = 200
    end
    object QuViewQntSisa: TBCDField
      FieldName = 'QntSisa'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object QuViewQntTerima: TBCDField
      FieldName = 'QntTerima'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object QuViewKodeWarna: TStringField
      FieldName = 'KodeWarna'
      Size = 10
    end
    object QuViewCollyTerima: TBCDField
      FieldName = 'CollyTerima'
      Precision = 18
      Size = 2
    end
    object QuViewDiscP2: TBCDField
      FieldName = 'DiscP2'
      Precision = 18
      Size = 2
    end
    object QuViewDiscP3: TBCDField
      FieldName = 'DiscP3'
      Precision = 18
      Size = 2
    end
    object QuViewDiscP4: TBCDField
      FieldName = 'DiscP4'
      Precision = 18
      Size = 2
    end
    object QuViewDiscP5: TBCDField
      FieldName = 'DiscP5'
      Precision = 18
      Size = 2
    end
    object QuViewKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 59
    Top = 277
  end
  object QuBeli: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    Left = 408
    Top = 32
  end
end
