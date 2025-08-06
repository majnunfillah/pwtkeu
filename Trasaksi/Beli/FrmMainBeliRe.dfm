object FrMainBeliRe: TFrMainBeliRe
  Left = 167
  Top = 174
  Width = 1009
  Height = 529
  Caption = 'Pembelian Reject'
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
    Width = 1001
    Height = 447
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
    DataSource = DsView
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
    Width = 1001
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1001
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
        Visible = False
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
        Caption = 'Cetak'
        DropdownMenu = PopupMenu3
        ImageIndex = 4
        Style = tbsDropDown
      end
      object ToolButton13: TToolButton
        Left = 775
        Top = 0
        Caption = 'Otorisasi'
        ImageIndex = 15
        Visible = False
        OnClick = ToolButton13Click
      end
      object ToolButton12: TToolButton
        Left = 864
        Top = 0
        Caption = 'Batal Otorisasi'
        ImageIndex = 16
        Visible = False
        OnClick = ToolButton12Click
      end
    end
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 48
    Width = 1001
    Height = 447
    ActivePage = dxTabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HideButtons = True
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
    object dxTabSheet2: TdxTabSheet
      Caption = 'Beli Reject'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1001
        Height = 447
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
          object tvMasterNoBukti: TcxGridDBColumn
            Caption = 'No.Bukti'
            DataBinding.FieldName = 'NoBukti'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterTanggal: TcxGridDBColumn
            DataBinding.FieldName = 'Tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterNamaCustSupp: TcxGridDBColumn
            Caption = 'Nama Supplier'
            DataBinding.FieldName = 'NamaCustSupp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 185
          end
          object tvMasterIsOtorisasi1: TcxGridDBColumn
            DataBinding.FieldName = 'IsOtorisasi1'
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
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          Styles.StyleSheet = FrSetForm.cxGridStyleDt
          object tvDetailKodeBrg: TcxGridDBColumn
            Caption = 'Kode Barang'
            DataBinding.FieldName = 'KodeBrg'
          end
          object tvDetailNamaBrg: TcxGridDBColumn
            Caption = 'Nama Barang'
            DataBinding.FieldName = 'NamaBrg'
            Width = 400
          end
          object tvDetailQnt: TcxGridDBColumn
            DataBinding.FieldName = 'Qnt'
          end
          object tvDetailSatuan: TcxGridDBColumn
            DataBinding.FieldName = 'Satuan'
            Width = 70
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
    Left = 170
    Top = 83
    object QuNavigatorNoBukti: TStringField
      FieldName = 'NoBukti'
    end
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
      'select @Tahun=2013, @Bulan=1'
      ''
      
        'Select  NoBukti, Tanggal, KodeSupp, NamaCustSupp, Handling, Fakt' +
        'urSupp,'
      
        '        TotSubTotal, TotDiskon, TotTotal, TotDPP, TotPPN, TotNet' +
        ',NoPO,'
      
        '        TotSubTotalRp, TotDiskonRp, TotTotalRp, TotDPPRp, TotPPN' +
        'Rp, TotNetRp,'
      'Keterangan,'
      '        A.IsOtorisasi1, A.OtoUser1, A.TglOto1,'
      '       A.IsOtorisasi2, A.OtoUser2, A.TglOto2,'
      '       A.IsOtorisasi3, A.OtoUser3, A.TglOto3,'
      '       A.IsOtorisasi4, A.OtoUser4, A.TglOto4,'
      '       A.IsOtorisasi5, A.OtoUser5, A.TglOto5,'
      
        '       Cast(Case when Case when A.IsOtorisasi1=1 then 1 else 0 e' +
        'nd+'
      
        '                      Case when A.IsOtorisasi2=1 then 1 else 0 e' +
        'nd+'
      
        '                      Case when A.IsOtorisasi3=1 then 1 else 0 e' +
        'nd+'
      
        '                      Case when A.IsOtorisasi4=1 then 1 else 0 e' +
        'nd+'
      
        '                      Case when A.IsOtorisasi5=1 then 1 else 0 e' +
        'nd=A.MaxOL then 0'
      '                 else 1'
      '            end As Bit) NeedOtorisasi'
      'From vwMasterBeli A'
      'where year(Tanggal)=@Tahun and month(Tanggal)=@Bulan '
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
    object QuMasterKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 200
    end
    object QuMasterNoPO: TStringField
      FieldName = 'NoPO'
    end
    object QuMasterNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
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
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2009, @Bulan=9'
      ''
      'Select '#9'A.NoBukti, B.NoPO, B.UrutPO,'
      #9'B.Urut, B.KodeBrg, H.NamaBrg, B.Qnt, B.NoSat, B.Isi, B.Satuan,'
      '        0.00 Qnt2, '#39#39' SatuanRoll, B.Harga, B.HrgNetto,'
      '        B.DiscP DiscP1, B.DiscTot DiscRp1, B.DiscTot,'
      '        B.SubTotal TotalUSD, B.SubTotal TotalIDR, B.NDPP NDPP,'
      
        '        B.NPPN NPPN, B.BYAngkut Beban, B.SubTotal + B.BYAngkut T' +
        'otal, B.KodeGdg'
      'From dbBeliDet B '
      'Left Outer Join dbBeli A On A.NoBukti=b.NoBukti'
      'Left Outer Join dbBarang H on H.KodeBrg=B.KodeBrg'
      'where A.NoBukti=:NoBukti'
      'order by A.NoBukti, B.Urut'
      '')
    Left = 96
    Top = 184
    object QuDetail1NoPO: TStringField
      FieldName = 'NoPO'
    end
    object QuDetail1UrutPO: TIntegerField
      FieldName = 'UrutPO'
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
    object QuDetail1HrgNetto: TBCDField
      FieldName = 'HrgNetto'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 22
    end
    object QuDetail1KodeGdg: TStringField
      FieldName = 'KodeGdg'
    end
    object QuDetail1NoBukti: TStringField
      FieldName = 'NoBukti'
    end
  end
  object DsDetail1: TDataSource
    DataSet = QuDetail1
    Left = 128
    Top = 184
  end
  object frxReport1: TfrxReport
    Version = '4.5'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBCetakPO'
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
    Left = 234
    Top = 250
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
    Left = 204
    Top = 250
  end
  object frxDataPerusahaan: TfrxDBDataset
    UserName = 'frxDataPerusahaan'
    CloseDataSource = False
    Left = 208
    Top = 280
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
    Left = 288
    Top = 246
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
    Left = 584
    Top = 160
  end
  object PopupMenu3: TPopupMenu
    Left = 472
    Top = 144
    object CetakReject1: TMenuItem
      Caption = 'Cetak Reject'
      OnClick = CetakReject1Click
    end
    object CetakLBM1: TMenuItem
      Caption = 'Cetak LBM'
      OnClick = CetakLBM1Click
    end
  end
end
