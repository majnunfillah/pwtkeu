object FrSetPemakaiGdg: TFrSetPemakaiGdg
  Left = 260
  Top = 139
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Set Akses Gudang'
  ClientHeight = 334
  ClientWidth = 478
  Color = 15395562
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 2
    Top = 8
    Width = 474
    Height = 284
  end
  object BitBtn2: TBitBtn
    Left = 313
    Top = 173
    Width = 39
    Height = 25
    Caption = '>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 314
    Top = 205
    Width = 38
    Height = 25
    Caption = '<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn3Click
  end
  object Daftar: TListBox
    Left = 358
    Top = 16
    Width = 113
    Height = 272
    ItemHeight = 13
    Sorted = True
    TabOrder = 2
    OnKeyDown = DaftarKeyDown
  end
  object ok: TBitBtn
    Left = 278
    Top = 297
    Width = 80
    Height = 27
    Caption = '&Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = okClick
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
  object BitBtn1: TBitBtn
    Left = 358
    Top = 297
    Width = 80
    Height = 27
    Caption = '&Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
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
  object BitBtn4: TBitBtn
    Left = 313
    Top = 93
    Width = 39
    Height = 25
    Caption = 'All ->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 313
    Top = 127
    Width = 39
    Height = 25
    Caption = '<- All'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn5Click
  end
  object dxDBGrid1: TdxDBGrid
    Left = 8
    Top = 16
    Width = 297
    Height = 272
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'KODEGDG'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Color = 14811135
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
    OnDblClick = dxDBGrid1DblClick
    OnKeyDown = dxDBGrid1KeyDown
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = DsGudang
    Filter.Criteria = {00000000}
    GridLineColor = 11202790
    GroupPanelColor = 13025469
    GroupPanelFontColor = clBlack
    GroupNodeColor = 10223615
    GroupNodeTextColor = 1912356
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
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    RowFooterColor = 11202790
    object dxDBGrid1KODEGDG: TdxDBGridMaskColumn
      Caption = 'Kode Gudang'
      Width = 85
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KODEGDG'
    end
    object dxDBGrid1NAMA: TdxDBGridMaskColumn
      Caption = 'Nama Gudang'
      Width = 175
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NAMA'
    end
  end
  object QuGudang: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from dbGudang order by KodeGdg')
    Left = 356
    Top = 48
  end
  object DsGudang: TDataSource
    DataSet = QuGudang
    Left = 384
    Top = 48
  end
end
