object FrMainRSPB: TFrMainRSPB
  Left = -8
  Top = -8
  Width = 1320
  Height = 784
  Caption = 'Retur Surat Jalan'
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
    Width = 1304
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1304
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
        Left = 476
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton9: TToolButton
        Left = 484
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
      object ToolButton11: TToolButton
        Left = 573
        Top = 0
        Caption = 'Tampil Valid'
        DropdownMenu = PopupMenu2
        ImageIndex = 7
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton13: TToolButton
        Left = 677
        Top = 0
        Caption = 'Cetak'
        ImageIndex = 4
        OnClick = ToolButton13Click
      end
      object ToolButton4: TToolButton
        Left = 766
        Top = 0
        Caption = 'Otorisasi'
        ImageIndex = 15
        OnClick = ToolButton4Click
      end
      object ToolButton12: TToolButton
        Left = 855
        Top = 0
        Caption = 'Batal Otorisasi'
        ImageIndex = 16
        OnClick = ToolButton12Click
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 48
    Width = 1304
    Height = 698
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    object tvMaster: TcxGridDBBandedTableView
      DataController.DataSource = DsMasterBP
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
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
      object tvMasterNOSPB: TcxGridDBBandedColumn
        Caption = 'No. SPB'
        DataBinding.FieldName = 'NOSPB'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 140
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvMasterTglSPB: TcxGridDBBandedColumn
        Caption = 'Tanggal SPB'
        DataBinding.FieldName = 'TglSPB'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 77
        Position.BandIndex = 0
        Position.ColIndex = 4
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
        Width = 177
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tvMasterNoPesan: TcxGridDBBandedColumn
        Caption = 'No. Pesanan'
        DataBinding.FieldName = 'NoPesan'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 140
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tvMasterTglKirim: TcxGridDBBandedColumn
        Caption = 'Hari/ Tanggal'
        DataBinding.FieldName = 'TglKirim'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tvMasterNoLC: TcxGridDBBandedColumn
        Caption = 'No. LC'
        DataBinding.FieldName = 'NoLC'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 140
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tvMasterShippingMark: TcxGridDBBandedColumn
        Caption = 'Shipping Mark'
        DataBinding.FieldName = 'ShippingMark'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object tvMasterCatatan: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Catatan'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object tvMasterIDUser: TcxGridDBBandedColumn
        Caption = 'User'
        DataBinding.FieldName = 'IDUser'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object tvMasterTipe: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tipe'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object tvMasterIsFlag: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IsFlag'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvMasterMyTipe: TcxGridDBBandedColumn
        Caption = 'Retur Surat Jalan'
        DataBinding.FieldName = 'MyTipe'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 13
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
  object QuMaster: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select  A.NoBukti+right('#39'00000'#39'+cast(A.Urut as varchar(5)),5) Ke' +
        'yNoBukti, A.Nobukti, P.Tanggal, P.KodeCustSupp, S.NamaCust NamaC' +
        'ustSupp,'
      
        '        A.urut, A.kodebrg, B.NamaBrg, '#39#39'Jns_Kertas,'#39#39'Ukr_Kertas,' +
        ' A.Sat_1, A.Sat_2, A.Isi,'
      '        A.Qnt, A.Qnt2, A.QntSPB QntSPP, A.Qnt2SPB Qnt2SPP,'
      '        A.QntSisa, A.Qnt2Sisa, P.TglKirim'
      'From    vwBrowsOutSPP A'
      'Left Outer Join dbSPP P on P.NoBukti=A.NoBukti'
      'Left Outer Join vwBrowsCustomer S on S.KodeCust=P.KodeCustSupp'
      'Left Outer Join dbBarang B on B.KodeBrg=A.KodeBrg'
      'where A.tipespp='#39'Ekspor'#39
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
      Size = 80
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
      Size = 200
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
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuMasterQnt2: TBCDField
      FieldName = 'Qnt2'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuMasterQntSPP: TBCDField
      FieldName = 'QntSPP'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 2
    end
    object QuMasterQnt2SPP: TBCDField
      FieldName = 'Qnt2SPP'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 2
    end
    object QuMasterQntSisa: TBCDField
      FieldName = 'QntSisa'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 2
    end
    object QuMasterQnt2Sisa: TBCDField
      FieldName = 'Qnt2Sisa'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 2
    end
    object QuMasterJns_Kertas: TStringField
      FieldName = 'Jns_Kertas'
      Size = 50
    end
    object QuMasterUkr_Kertas: TStringField
      FieldName = 'Ukr_Kertas'
      Size = 50
    end
    object QuMasterTglKirim: TDateTimeField
      FieldName = 'TglKirim'
    end
  end
  object DsMaster: TDataSource
    DataSet = QuMaster
    Left = 384
    Top = 232
  end
  object PopupMenu2: TPopupMenu
    Left = 563
    Top = 111
    object TampilValid: TMenuItem
      Caption = 'Tampil Valid'
      Checked = True
    end
    object TampilBatal: TMenuItem
      Caption = 'Tampil Batal'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 475
    Top = 105
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
    Left = 503
    Top = 104
  end
  object QuMasterBP: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2011, @Bulan=1'
      ''
      
        'select  A.NOBUKTI, A.NOURUT, A.TANGGAL, A.NOSPB, C.Tanggal TglSP' +
        'B, A.KODECUSTSUPP, B.NamaCust NamaCustSupp,'
      
        '        A.NoPolKend, A.Container, A.NoContainer, A.NoSeal, A.Cat' +
        'atan, A.IDUser,'
      '        C.Tipe, A.IsFlag,'
      
        '        Case when A.isFlag=0 then '#39'Retur Surat Jalan Barang Jadi' +
        #39
      
        '             when A.isFlag=1 then '#39'Retur Surat Jalan Bahan Baku ' +
        'dan Lain-lain'#39
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
      'from'#9'dbRSPB A'
      'left outer join vwBrowsCustomer B on B.KodeCust=A.KodeCustSupp'
      'left Outer join (Select x.NoBukti, x.Tanggal, '#39'Ekpsor'#39' Tipe'
      '                 from DBSPB x                 '
      '                 ) C on C.NoBukti=A.NoSPB'
      'where'#9'year(A.Tanggal)=@Tahun and month(A.Tanggal)=@Bulan'
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
    object QuMasterBPNOSPB: TStringField
      FieldName = 'NOSPB'
      Size = 30
    end
    object QuMasterBPTglSPB: TDateTimeField
      FieldName = 'TglSPB'
      ReadOnly = True
    end
    object QuMasterBPTipe: TStringField
      FieldName = 'Tipe'
      ReadOnly = True
      Size = 6
    end
    object QuMasterBPIsFlag: TBooleanField
      FieldName = 'IsFlag'
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
        Value = Null
      end>
    SQL.Strings = (
      
        'select '#9'B.NOBUKTI, B.URUT, B.NoSPB NoSC, B.UrutSPB UrutSC, B.KOD' +
        'EBRG, C.NAMABRG, '#39#39' Jns_Kertas, '#39#39' Ukr_Kertas,'
      
        '        B.QNT, B.QNT2, B.SAT_1, B.SAT_2, B.ISI, B.NetW, B.GrossW' +
        ', '#39#39' KetDetail'
      'from'#9'dbRSPBDet B'
      'left outer join dbBarang C on C.KodeBrg=B.KodeBrg'
      'where'#9'B.NoBukti=:NoBukti'
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
  object frxDBCetak: TfrxDBDataset
    UserName = 'frxDBCetakPO'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 368
    Top = 328
  end
  object frxDBCetak2: TfrxDBDataset
    UserName = 'frxDBperusahaan'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 368
    Top = 360
  end
  object frxReport1: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40694.2430998611
    ReportOptions.LastChange = 40694.2430998611
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    OnAfterPrintReport = frxReport1AfterPrintReport
    Left = 336
    Top = 296
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
    end
  end
end
