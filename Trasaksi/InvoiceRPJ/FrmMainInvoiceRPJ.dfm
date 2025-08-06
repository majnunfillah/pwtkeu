object FrMainInvoiceRPJ: TFrMainInvoiceRPJ
  Left = 8
  Top = 179
  Width = 1298
  Height = 520
  Caption = 'Invoice Retur Penjualan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1282
    Height = 46
    ButtonHeight = 39
    ButtonWidth = 89
    Caption = 'ToolBar1'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = DM.ImageList2
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
      Caption = '&Hapus'
      ImageIndex = 13
      OnClick = ToolButton3Click
    end
    object ToolButton5: TToolButton
      Left = 267
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 275
      Top = 0
      Caption = '&Cetak'
      ImageIndex = 4
      OnClick = ToolButton4Click
    end
    object ToolButton10: TToolButton
      Left = 364
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = ToolButton10Click
    end
    object ToolButton7: TToolButton
      Left = 453
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 461
      Top = 0
      Caption = 'Lain - lain'
      DropdownMenu = PopupMenu1
      ImageIndex = 10
      Style = tbsDropDown
    end
    object ToolButton9: TToolButton
      Left = 565
      Top = 0
      Caption = 'K&eluar'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
    object ToolButton12: TToolButton
      Left = 654
      Top = 0
      Width = 8
      Caption = 'ToolButton12'
      ImageIndex = 17
      Style = tbsSeparator
    end
    object ToolButton8: TToolButton
      Left = 662
      Top = 0
      Caption = 'Otorisasi'
      ImageIndex = 15
      OnClick = ToolButton8Click
    end
    object ToolButton11: TToolButton
      Left = 751
      Top = 0
      Caption = 'Batal Otorisasi'
      ImageIndex = 16
      OnClick = ToolButton11Click
    end
    object ToolButton13: TToolButton
      Left = 840
      Top = 0
      Caption = 'Batal'
      ImageIndex = 6
      OnClick = ToolButton13Click
    end
  end
  object cxGrid8: TcxGrid
    Left = 0
    Top = 46
    Width = 1282
    Height = 436
    Align = alClient
    BevelKind = bkSoft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    object tvInvoiceRPJ: TcxGridDBBandedTableView
      DataController.DataSource = DSInvoiceRPJ
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OnCellClick = tvInvoiceRPJCellClick
      OnCustomDrawCell = tvInvoiceRPJCustomDrawCell
      OnFocusedRecordChanged = tvInvoiceRPJFocusedRecordChanged
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      Preview.AutoHeight = False
      Preview.Place = ppTop
      Styles.StyleSheet = DM.cxGridBandStyleHd
      Styles.Header = DM.cxStyle8
      Styles.BandHeader = DM.cxStyle8
      Bands = <
        item
          Caption = 'Descripsi'
          FixedKind = fkLeft
          Hidden = True
        end
        item
          Caption = 'Jumlah (Valas)'
        end
        item
        end
        item
          Caption = 'Jumlah (Rp)'
        end
        item
          Caption = 'Otorisasi'
        end
        item
          Caption = 'Pembatalan'
        end>
      object cxGridDBBandedColumn109: TcxGridDBBandedColumn
        Caption = 'No. Bukti'
        DataBinding.FieldName = 'NOBUKTI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn110: TcxGridDBBandedColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'TANGGAL'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn111: TcxGridDBBandedColumn
        Caption = 'Kode Supplier'
        DataBinding.FieldName = 'KODECUSTSUPP'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        SortOrder = soAscending
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn112: TcxGridDBBandedColumn
        Caption = 'Nama Supplier'
        DataBinding.FieldName = 'NamaCustSupp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn113: TcxGridDBBandedColumn
        Caption = 'No. Invoice'
        DataBinding.FieldName = 'Noinvoice'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn114: TcxGridDBBandedColumn
        Caption = 'Tgl. Invoice'
        DataBinding.FieldName = 'TglInvoice'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tvInvoiceRPJDBBandedColumn4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoJurnal'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn115: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Alamat'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn116: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Kota'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn117: TcxGridDBBandedColumn
        Caption = 'DPP'
        DataBinding.FieldName = 'TotDPP'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn118: TcxGridDBBandedColumn
        Caption = 'PPN'
        DataBinding.FieldName = 'TotPPN'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn119: TcxGridDBBandedColumn
        Caption = 'Netto'
        DataBinding.FieldName = 'TotNet'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn120: TcxGridDBBandedColumn
        Caption = 'Mata Uang'
        DataBinding.FieldName = 'Kodevls'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn121: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Kurs'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn122: TcxGridDBBandedColumn
        Caption = 'DPP'
        DataBinding.FieldName = 'TotDPPRp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn123: TcxGridDBBandedColumn
        Caption = 'PPN'
        DataBinding.FieldName = 'TotPPNRp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn124: TcxGridDBBandedColumn
        Caption = 'Netto'
        DataBinding.FieldName = 'TotNetRp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn125: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IsOtorisasi1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn126: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OtoUser1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn127: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TglOto1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn146: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IsOtorisasi2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn147: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OtoUser2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn148: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TglOto2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn149: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IsOtorisasi3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn150: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OtoUser3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn151: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TglOto3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn152: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IsOtorisasi4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn153: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OtoUser4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn154: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TglOto4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn155: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IsOtorisasi5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn156: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OtoUser5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn157: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TglOto5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object tvInvoiceRPJMyTipe: TcxGridDBBandedColumn
        Caption = 'Invoice Retur'
        DataBinding.FieldName = 'MyTipe'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tvInvoiceRPJDBBandedColumn1: TcxGridDBBandedColumn
        Caption = 'Batal'
        DataBinding.FieldName = 'IsBatal'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.Editing = False
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvInvoiceRPJDBBandedColumn2: TcxGridDBBandedColumn
        Caption = 'User Batal'
        DataBinding.FieldName = 'Userbatal'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.Editing = False
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvInvoiceRPJDBBandedColumn3: TcxGridDBBandedColumn
        Caption = 'Tgl Batal'
        DataBinding.FieldName = 'TglBatal'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.Editing = False
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object tvDetailInvoiceRPJ: TcxGridDBBandedTableView
      DataController.DataSource = DSDetailInvoiceRPJ
      DataController.DetailKeyFieldNames = 'NOBUKTI'
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.MasterKeyFieldNames = 'NOBUKTI'
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
      Bands = <
        item
          Caption = 'Deskripsi'
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
      object cxGridDBBandedColumn158: TcxGridDBBandedColumn
        Caption = 'No.'
        DataBinding.FieldName = 'UrutTrans'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 36
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn159: TcxGridDBBandedColumn
        Caption = 'Kode Barang'
        DataBinding.FieldName = 'KODEBRG'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn160: TcxGridDBBandedColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'NamaBrg'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 216
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn161: TcxGridDBBandedColumn
        Caption = 'Sat.'
        DataBinding.FieldName = 'SAT_2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 40
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn162: TcxGridDBBandedColumn
        Caption = 'Qnt'
        DataBinding.FieldName = 'QNT2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn163: TcxGridDBBandedColumn
        Caption = 'Sat.'
        DataBinding.FieldName = 'SAT_1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 40
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn164: TcxGridDBBandedColumn
        Caption = 'Qnt'
        DataBinding.FieldName = 'QNT'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn165: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HARGA'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGridDBBandedColumn166: TcxGridDBBandedColumn
        Caption = 'Disc'
        DataBinding.FieldName = 'DISCTOT'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGridDBBandedColumn167: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NDPP'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn168: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NPPN'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn169: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NNET'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn170: TcxGridDBBandedColumn
        Caption = 'Mata Uang'
        DataBinding.FieldName = 'KODEVLS'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn171: TcxGridDBBandedColumn
        Caption = 'Kurs'
        DataBinding.FieldName = 'KURS'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn172: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NDPPRp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 3
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn173: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NPPNRp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 3
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn174: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NNETRp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 3
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn175: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Keterangan'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
        Position.BandIndex = 3
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object cxGridLevel14: TcxGridLevel
      GridView = tvInvoiceRPJ
      object cxGridLevel15: TcxGridLevel
        GridView = tvDetailInvoiceRPJ
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 379
    Top = 132
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
    object ShowGroupPanel1: TMenuItem
      Caption = 'Show Group Panel'
      OnClick = ShowGroupPanel1Click
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
    DefaultExt = 'xls'
    FileName = 'ExpGrid'
    Filter = 'Excel|*.xls'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 415
    Top = 131
  end
  object sp_barang: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'SP_AktivaTetap;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
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
        Value = Null
      end
      item
        Name = '@Devisi'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@Perkiraan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@Keterangan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Quantity'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Persen'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Tipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@Akumulasi'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Biaya'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@NoMuka'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@NoBelakang'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@biaya2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@persenbiaya1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@persenbiaya2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@biaya3'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@persenbiaya3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@biaya4'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@persenbiaya4'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TipeAktiva'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Bagian'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@NoBelakang2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@IsHeader'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@NoAktivaHd'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 448
    Top = 135
  end
  object frxReport1: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38793.6507510417
    ReportOptions.LastChange = 38796.3810309954
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 56
    Top = 280
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 279.4
      PaperSize = 1
      LeftMargin = 5.1
      RightMargin = 1.3
      Columns = 1
      ColumnWidth = 209.5
      ColumnPositions.Strings = (
        '0')
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'tahoma'
        Font.Style = []
        Height = 79.37013
        ParentFont = False
        Top = 18.89765
        Width = 791.811535
        object Memo1: TfrxMemoView
          Left = 245.66945
          Width = 245.66945
          Height = 22.67718
          ShowHint = False
          AutoWidth = True
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'PT. HIDAYAT MOTOR')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          Left = 245.66945
          Top = 26.45671
          Width = 245.66945
          Height = 26.45671
          ShowHint = False
          AutoWidth = True
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Laporan Master Barang')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          Left = 245.66945
          Top = 52.91342
          Width = 245.66945
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Merk: ')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'tahoma'
        Font.Style = []
        Height = 37.7953
        ParentFont = False
        Top = 120.94496
        Width = 791.811535
        object Memo4: TfrxMemoView
          Width = 75.5906
          Height = 37.7953
          ShowHint = False
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 75.5906
          Width = 170.07885
          Height = 37.7953
          ShowHint = False
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Barang')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 245.66945
          Width = 181.41744
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Grosir')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 427.08689
          Width = 181.41744
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kulakan')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 608.50433
          Width = 181.41744
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ecer')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 245.66945
          Top = 18.89765
          Width = 60.47248
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'sat 3')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 306.14193
          Top = 18.89765
          Width = 60.47248
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'sat 2')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 366.61441
          Top = 18.89765
          Width = 60.47248
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'sat 1')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 427.08689
          Top = 18.89765
          Width = 60.47248
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'sat 3')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 487.55937
          Top = 18.89765
          Width = 60.47248
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'sat 2')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 548.03185
          Top = 18.89765
          Width = 60.47248
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'sat 1')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 608.50433
          Top = 18.89765
          Width = 60.47248
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'sat 3')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 668.97681
          Top = 18.89765
          Width = 60.47248
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'sat 2')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 729.44929
          Top = 18.89765
          Width = 60.47248
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'sat 1')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'tahoma'
        Font.Style = []
        Height = 18.89765
        ParentFont = False
        Top = 219.21274
        Width = 791.811535
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo19: TfrxMemoView
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          AllowExpressions = False
          DataField = 'KODEBRG'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBDataset1."KODEBRG"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 79.37013
          Width = 166.29932
          Height = 18.89765
          ShowHint = False
          AllowExpressions = False
          DataField = 'NAMABRG'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[frxDBDataset1."NAMABRG"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 249.44898
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          AllowExpressions = False
          DataField = 'HRGJUAL_3'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."HRGJUAL_3"]')
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 309.92146
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          AllowExpressions = False
          DataField = 'HRGJUAL_2'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."HRGJUAL_2"]')
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 370.39394
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          AllowExpressions = False
          DataField = 'HRGJUAL_1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."HRGJUAL_1"]')
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          Left = 430.86642
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          AllowExpressions = False
          DataField = 'HRGJUAL_3B'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."HRGJUAL_3B"]')
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          Left = 491.3389
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          AllowExpressions = False
          DataField = 'HRGJUAL_2B'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."HRGJUAL_2B"]')
          WordWrap = False
        end
        object Memo27: TfrxMemoView
          Left = 551.81138
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          AllowExpressions = False
          DataField = 'HRGJUAL_1B'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."HRGJUAL_1B"]')
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          Left = 612.28386
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          AllowExpressions = False
          DataField = 'HRGJUAL_3C'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."HRGJUAL_3C"]')
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          Left = 672.75634
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          AllowExpressions = False
          DataField = 'HRGJUAL_2C'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."HRGJUAL_2C"]')
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          Left = 733.22882
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          AllowExpressions = False
          DataField = 'HRGJUAL_1C'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."HRGJUAL_1C"]')
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'tahoma'
        Font.Style = []
        Height = 22.67718
        ParentFont = False
        Top = 332.59864
        Width = 791.811535
        object Memo17: TfrxMemoView
          Width = 188.9765
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd-mm-yyyy hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal Cetak [<Date> #ddd-mm-yyyy] [<Time> #dhh:mm:ss]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 616.06339
          Width = 173.85838
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          HAlign = haRight
          Memo.UTF8 = (
            'Halaman [Page] dari [TotalPages]')
          WordWrap = False
        end
      end
      object Footer1: TfrxFooter
        Height = 11.33859
        Top = 260.78757
        Width = 791.811535
        object Memo31: TfrxMemoView
          Width = 789.92177
          Height = 7.55906
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'KODEBRG=KODEBRG'
      'NAMABRG=NAMABRG'
      'NAMABRG2=NAMABRG2'
      'KODEGRP=KODEGRP'
      'KODESUBGRP=KODESUBGRP'
      'SAT_1=SAT_1'
      'SAT_2=SAT_2'
      'SAT_3=SAT_3'
      'ISI=ISI'
      'ISI2=ISI2'
      'HRGBELI_1=HRGBELI_1'
      'HRGBELI_2=HRGBELI_2'
      'HRGBELI_3=HRGBELI_3'
      'HRGJUAL_1=HRGJUAL_1'
      'HRGJUAL_2=HRGJUAL_2'
      'HRGJUAL_3=HRGJUAL_3'
      'HRGJLMIN_1=HRGJLMIN_1'
      'HRGJLMIN_2=HRGJLMIN_2'
      'HRGJLMIN_3=HRGJLMIN_3'
      'QNTMIN=QNTMIN'
      'QNTMAX=QNTMAX'
      'TGLINPUT=TGLINPUT'
      'TGLBELI=TGLBELI'
      'PEMAKAI=PEMAKAI'
      'PERKIRAAN=PERKIRAAN'
      'LOKASI=LOKASI'
      'AKTIF=AKTIF'
      'BELI1=BELI1'
      'BELI2=BELI2'
      'QNTSALDO=QNTSALDO'
      'DISKONTOKO=DISKONTOKO'
      'JASA=JASA'
      'FLAGKRM=FLAGKRM'
      'KODEBRD=KODEBRD'
      'HRGDSR_RP=HRGDSR_RP'
      'HRGDSR_US=HRGDSR_US'
      'KURS_RP=KURS_RP'
      'HRGDOLAR1=HRGDOLAR1'
      'HRGDOLAR2=HRGDOLAR2'
      'HRGDOLAR3=HRGDOLAR3'
      'TAMPIL=TAMPIL'
      'HRGJUAL_1B=HRGJUAL_1B'
      'HRGJUAL_2B=HRGJUAL_2B'
      'HRGJUAL_3B=HRGJUAL_3B'
      'HRGJUAL_1C=HRGJUAL_1C'
      'HRGJUAL_2C=HRGJUAL_2C'
      'HRGJUAL_3C=HRGJUAL_3C')
    DataSet = adoqBarang
    BCDToCurrency = False
    Left = 85
    Top = 280
  end
  object adoqBarang: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from dbBarang')
    Left = 88
    Top = 232
  end
  object PopupMenu2: TPopupMenu
    Left = 499
    Top = 141
    object Semua: TMenuItem
      Caption = 'Semua '
      Checked = True
    end
    object Aktif: TMenuItem
      Caption = 'Aktif'
    end
    object TidakAktif: TMenuItem
      Caption = 'Non Aktif'
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 432
    Top = 176
    object InvoiceUangMukaPembelian1: TMenuItem
      Caption = 'Invoice Uang Muka Pembelian'
    end
    object InvoiceBP1: TMenuItem
      Caption = 'Invoice BP'
    end
    object InvoiceLogistik1: TMenuItem
      Caption = 'Invoice Logistik'
    end
    object InvoiceShippingInstruction1: TMenuItem
      Caption = 'Invoice Shipping Instruction'
    end
    object InvoiceTruckingInstruction1: TMenuItem
      Caption = 'Invoice Trucking Instruction'
    end
    object InvoiceSuratJalanSPB1: TMenuItem
      Caption = 'Invoice Surat Jalan (SPB)'
    end
  end
  object QuInvoiceRPJ: TADOQuery
    AutoCalcFields = False
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = '0'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 4
      end
      item
        Name = '1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2013
      end>
    SQL.Strings = (
      'Declare @Bulan int, @Tahun int, @Periode Varchar(20)'
      'Select @Bulan=:0,@Tahun=:1'
      
        'Select @Periode=Cast(@tahun as varchar(4))+Case when @bulan<10 t' +
        'hen '#39'0'#39' else '#39#39' end+Cast(@bulan as varchar(2))'
      
        'Select  A.NOBUKTI, A.NOURUT, A.TANGGAL, A.TglJatuhTempo, A.KODEC' +
        'USTSUPP, D.NamaCustSupp, D.Alamat, D.Kota,'
      
        '        I.TotSubTotal, I.TotDiskon, I.TotTotal, I.TotDPP, I.TotP' +
        'PN, I.TotNet,'
      
        '        I.TotSubTotalRp, I.TotDiskonRp, I.TotTotalRp, I.TotDPPRp' +
        ', I.TotPPNRp, I.TotNetRp,'
      '        a.Noinvoice, A.TglInvoice, A.Kodevls, A.Kurs,'
      '        A.IsOtorisasi1, A.OtoUser1, A.TglOto1,'
      '       A.IsOtorisasi2, A.OtoUser2, A.TglOto2,'
      '       A.IsOtorisasi3, A.OtoUser3, A.TglOto3,'
      '       A.IsOtorisasi4, A.OtoUser4, A.TglOto4,'
      '       A.IsOtorisasi5, A.OtoUser5, A.TglOto5,'
      '       A.NoJurnal, A.NoUrutJurnal, A.TglJurnal,'
      
        '       Case when A.isFlag=0 then '#39'Invoice Retur Penjualan Barang' +
        ' Jadi'#39
      
        '            when A.isFlag=1 then '#39'Invoice Retur Penjualan Bahan ' +
        'Baku dan Lain-lain'#39
      '            else '#39#39
      '       end MyTipe,'
      
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
      
        '       ,ISnull(A.IsBatal,0) IsBatal,A.Userbatal,A.TglBatal ,Isnu' +
        'll(A.FlagTipe,0) FlagTipe'
      ''
      'From DBInvoiceRPJ A'
      'Left Outer Join vwBrowsCust D On D.KodeCustSupp=A.KodeCustSupp'
      'Left Outer Join vwRpDetInvoiceRPJ I on I.NoBukti=A.NoBukti'
      
        'where cast(year(a.Tanggal) as varchar(4))+Case when month(a.tang' +
        'gal)<10 then '#39'0'#39' else '#39#39' end+Cast(month(a.Tanggal) as varchar(2)' +
        ')=@Periode'
      'Order by A.Tanggal, A.NoBukti'
      ''
      '')
    Left = 149
    Top = 120
    object QuInvoiceRPJNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
      Size = 30
    end
    object QuInvoiceRPJNOURUT: TStringField
      FieldName = 'NOURUT'
      Size = 5
    end
    object QuInvoiceRPJTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QuInvoiceRPJTglJatuhTempo: TDateTimeField
      FieldName = 'TglJatuhTempo'
    end
    object QuInvoiceRPJKODECUSTSUPP: TStringField
      FieldName = 'KODECUSTSUPP'
      Size = 15
    end
    object QuInvoiceRPJNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuInvoiceRPJAlamat: TStringField
      FieldName = 'Alamat'
      ReadOnly = True
      Size = 201
    end
    object QuInvoiceRPJKota: TStringField
      FieldName = 'Kota'
      Size = 100
    end
    object QuInvoiceRPJTotSubTotal: TBCDField
      FieldName = 'TotSubTotal'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuInvoiceRPJTotDiskon: TBCDField
      FieldName = 'TotDiskon'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuInvoiceRPJTotTotal: TBCDField
      FieldName = 'TotTotal'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuInvoiceRPJTotDPP: TBCDField
      FieldName = 'TotDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuInvoiceRPJTotPPN: TBCDField
      FieldName = 'TotPPN'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuInvoiceRPJTotNet: TBCDField
      FieldName = 'TotNet'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
    end
    object QuInvoiceRPJTotSubTotalRp: TBCDField
      FieldName = 'TotSubTotalRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuInvoiceRPJTotDiskonRp: TBCDField
      FieldName = 'TotDiskonRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuInvoiceRPJTotTotalRp: TBCDField
      FieldName = 'TotTotalRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuInvoiceRPJTotDPPRp: TBCDField
      FieldName = 'TotDPPRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuInvoiceRPJTotPPNRp: TBCDField
      FieldName = 'TotPPNRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuInvoiceRPJTotNetRp: TBCDField
      FieldName = 'TotNetRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuInvoiceRPJNoinvoice: TStringField
      FieldName = 'Noinvoice'
      Size = 50
    end
    object QuInvoiceRPJTglInvoice: TDateTimeField
      FieldName = 'TglInvoice'
    end
    object QuInvoiceRPJKodevls: TStringField
      FieldName = 'Kodevls'
      Size = 15
    end
    object QuInvoiceRPJKurs: TBCDField
      FieldName = 'Kurs'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuInvoiceRPJIsOtorisasi1: TBooleanField
      FieldName = 'IsOtorisasi1'
    end
    object QuInvoiceRPJOtoUser1: TStringField
      FieldName = 'OtoUser1'
      Size = 15
    end
    object QuInvoiceRPJTglOto1: TDateTimeField
      FieldName = 'TglOto1'
    end
    object QuInvoiceRPJIsOtorisasi2: TBooleanField
      FieldName = 'IsOtorisasi2'
    end
    object QuInvoiceRPJOtoUser2: TStringField
      FieldName = 'OtoUser2'
      Size = 15
    end
    object QuInvoiceRPJTglOto2: TDateTimeField
      FieldName = 'TglOto2'
    end
    object QuInvoiceRPJIsOtorisasi3: TBooleanField
      FieldName = 'IsOtorisasi3'
    end
    object QuInvoiceRPJOtoUser3: TStringField
      FieldName = 'OtoUser3'
      Size = 15
    end
    object QuInvoiceRPJTglOto3: TDateTimeField
      FieldName = 'TglOto3'
    end
    object QuInvoiceRPJIsOtorisasi4: TBooleanField
      FieldName = 'IsOtorisasi4'
    end
    object QuInvoiceRPJOtoUser4: TStringField
      FieldName = 'OtoUser4'
      Size = 15
    end
    object QuInvoiceRPJTglOto4: TDateTimeField
      FieldName = 'TglOto4'
    end
    object QuInvoiceRPJIsOtorisasi5: TBooleanField
      FieldName = 'IsOtorisasi5'
    end
    object QuInvoiceRPJOtoUser5: TStringField
      FieldName = 'OtoUser5'
      Size = 15
    end
    object QuInvoiceRPJTglOto5: TDateTimeField
      FieldName = 'TglOto5'
    end
    object QuInvoiceRPJNoJurnal: TStringField
      FieldName = 'NoJurnal'
      Size = 30
    end
    object QuInvoiceRPJNoUrutJurnal: TStringField
      FieldName = 'NoUrutJurnal'
      Size = 5
    end
    object QuInvoiceRPJTglJurnal: TDateTimeField
      FieldName = 'TglJurnal'
    end
    object QuInvoiceRPJMyTipe: TStringField
      FieldName = 'MyTipe'
      ReadOnly = True
      Size = 48
    end
    object QuInvoiceRPJNeedOtorisasi: TBooleanField
      FieldName = 'NeedOtorisasi'
      ReadOnly = True
    end
    object QuInvoiceRPJIsBatal: TBooleanField
      FieldName = 'IsBatal'
      ReadOnly = True
    end
    object QuInvoiceRPJUserbatal: TStringField
      FieldName = 'Userbatal'
      Size = 15
    end
    object QuInvoiceRPJTglBatal: TDateTimeField
      FieldName = 'TglBatal'
    end
    object QuInvoiceRPJFlagTipe: TWordField
      FieldName = 'FlagTipe'
      ReadOnly = True
    end
  end
  object DSInvoiceRPJ: TDataSource
    DataSet = QuInvoiceRPJ
    Left = 185
    Top = 119
  end
  object QuDetailInvoiceRPJ: TADOQuery
    AutoCalcFields = False
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = DSInvoiceRPJ
    Parameters = <
      item
        Name = 'NoBukti'
        DataType = ftString
        Size = 30
        Value = 'SJY/RINVC/0413/00001'
      end>
    SQL.Strings = (
      'declare @NoBukti varchar(30)'
      ''
      'select '#9'@NoBukti=:NoBukti'
      
        'Select  A.NOBUKTI, A.NOURUT, A.TANGGAL, A.TglJatuhTempo, A.KODEC' +
        'USTSUPP, D.NamaCustSupp, D.Alamat, D.Kota,'
      '        B.NOSPR NOPBL,'
      
        '        A.KODEVLS, A.KURS, A.PPN, A.TIPEBAYAR, A.HARI, 0.00 DISC' +
        ', 0.00 DISCRP,'
      
        '        0.00 FREIGHT , 0.00 LAIN2 , Cast(0 as bit) ISCETAK, Cast' +
        '(0 as bit) ISCETAKGDG, Cast(0 as bit)IsBatal, '#39#39' UserBatal, A.ID' +
        'User,'
      '        B.URUT, B.KODEBRG, C.NamaBrg, B.QNT, B.QNT2,'
      
        '        B.SAT_1, B.SAT_2, B.NoSat, B.ISI, B.HARGA, B.DiscP DiscP' +
        '1, B.DiscRp DiscRp1, 0.00 DiscP2,  0.00 DiscRp2,'
      
        '         0.00 DiscP3, 0.00 DiscRp3, 0.00 DiscP4, 0.00 DiscRp4, B' +
        '.DISCTOT,  0.00  BYANGKUT, B.HRGNETTO,'
      
        '        B.NDISKON, B.SUBTOTAL, B.NDPP, B.NPPN, B.NNET, B.SUBTOTA' +
        'LRp,'
      '        B.NDPPRp, B.NPPNRp, B.NNETRp, B.UrutSPR,'
      '        B.Keterangan,'
      
        '        I.TotSubTotal, I.TotDiskon, I.TotTotal, I.TotDPP, I.TotP' +
        'PN, I.TotNet,'
      
        '        I.TotSubTotalRp, I.TotDiskonRp, I.TotTotalRp, I.TotDPPRp' +
        ', I.TotPPNRp, I.TotNetRp,'
      '        0 Konversi, B.UrutTrans, a.NoInvoice'
      'From DBInvoiceRPJ A'
      'Left Outer Join DBInvoiceRPJDET B on B.NoBukti=A.NoBukti'
      'Left Outer Join dbBarang c On C.KodeBrg=B.KodeBrg'
      'Left Outer Join vwBrowsSupp D On D.KodeCustSupp=A.KodeCustSupp'
      
        'Left Outer join dbSPBRJualDet E on E.nobukti=B.NOSPR and E.Urut=' +
        'B.UrutSPR'
      'Left Outer Join vwRpDetInvoiceRPJ I on I.NoBukti=A.NoBukti'
      'where a.NoBukti=@NoBukti'
      'order By B.Urut'
      ''
      '')
    Left = 149
    Top = 152
    object QuDetailInvoiceRPJNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
      Size = 30
    end
    object QuDetailInvoiceRPJNOURUT: TStringField
      FieldName = 'NOURUT'
      Size = 5
    end
    object QuDetailInvoiceRPJTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QuDetailInvoiceRPJTglJatuhTempo: TDateTimeField
      FieldName = 'TglJatuhTempo'
    end
    object QuDetailInvoiceRPJKODECUSTSUPP: TStringField
      FieldName = 'KODECUSTSUPP'
      Size = 15
    end
    object QuDetailInvoiceRPJNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuDetailInvoiceRPJAlamat: TStringField
      FieldName = 'Alamat'
      ReadOnly = True
      Size = 201
    end
    object QuDetailInvoiceRPJKota: TStringField
      FieldName = 'Kota'
      Size = 100
    end
    object QuDetailInvoiceRPJNOPBL: TStringField
      FieldName = 'NOPBL'
      Size = 30
    end
    object QuDetailInvoiceRPJKODEVLS: TStringField
      FieldName = 'KODEVLS'
      Size = 15
    end
    object QuDetailInvoiceRPJKURS: TBCDField
      FieldName = 'KURS'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuDetailInvoiceRPJPPN: TWordField
      FieldName = 'PPN'
    end
    object QuDetailInvoiceRPJTIPEBAYAR: TWordField
      FieldName = 'TIPEBAYAR'
    end
    object QuDetailInvoiceRPJHARI: TIntegerField
      FieldName = 'HARI'
    end
    object QuDetailInvoiceRPJDISC: TBCDField
      FieldName = 'DISC'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object QuDetailInvoiceRPJDISCRP: TBCDField
      FieldName = 'DISCRP'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object QuDetailInvoiceRPJFREIGHT: TBCDField
      FieldName = 'FREIGHT'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object QuDetailInvoiceRPJLAIN2: TBCDField
      FieldName = 'LAIN2'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object QuDetailInvoiceRPJISCETAK: TBooleanField
      FieldName = 'ISCETAK'
      ReadOnly = True
    end
    object QuDetailInvoiceRPJISCETAKGDG: TBooleanField
      FieldName = 'ISCETAKGDG'
      ReadOnly = True
    end
    object QuDetailInvoiceRPJIsBatal: TBooleanField
      FieldName = 'IsBatal'
      ReadOnly = True
    end
    object QuDetailInvoiceRPJUserBatal: TStringField
      FieldName = 'UserBatal'
      ReadOnly = True
      Size = 1
    end
    object QuDetailInvoiceRPJIDUser: TStringField
      FieldName = 'IDUser'
      Size = 15
    end
    object QuDetailInvoiceRPJURUT: TIntegerField
      FieldName = 'URUT'
    end
    object QuDetailInvoiceRPJKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuDetailInvoiceRPJNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 200
    end
    object QuDetailInvoiceRPJQNT: TBCDField
      FieldName = 'QNT'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailInvoiceRPJQNT2: TBCDField
      FieldName = 'QNT2'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailInvoiceRPJSAT_1: TStringField
      FieldName = 'SAT_1'
      Size = 5
    end
    object QuDetailInvoiceRPJSAT_2: TStringField
      FieldName = 'SAT_2'
      Size = 5
    end
    object QuDetailInvoiceRPJNoSat: TWordField
      FieldName = 'NoSat'
    end
    object QuDetailInvoiceRPJISI: TBCDField
      FieldName = 'ISI'
      Precision = 18
      Size = 2
    end
    object QuDetailInvoiceRPJHARGA: TBCDField
      FieldName = 'HARGA'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailInvoiceRPJDiscP1: TBCDField
      FieldName = 'DiscP1'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailInvoiceRPJDiscRp1: TBCDField
      FieldName = 'DiscRp1'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailInvoiceRPJDiscP2: TBCDField
      FieldName = 'DiscP2'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 2
      Size = 2
    end
    object QuDetailInvoiceRPJDiscRp2: TBCDField
      FieldName = 'DiscRp2'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 2
      Size = 2
    end
    object QuDetailInvoiceRPJDiscP3: TBCDField
      FieldName = 'DiscP3'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 2
      Size = 2
    end
    object QuDetailInvoiceRPJDiscRp3: TBCDField
      FieldName = 'DiscRp3'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 2
      Size = 2
    end
    object QuDetailInvoiceRPJDiscP4: TBCDField
      FieldName = 'DiscP4'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 2
      Size = 2
    end
    object QuDetailInvoiceRPJDiscRp4: TBCDField
      FieldName = 'DiscRp4'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 2
      Size = 2
    end
    object QuDetailInvoiceRPJDISCTOT: TBCDField
      FieldName = 'DISCTOT'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailInvoiceRPJBYANGKUT: TBCDField
      FieldName = 'BYANGKUT'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 2
      Size = 2
    end
    object QuDetailInvoiceRPJHRGNETTO: TBCDField
      FieldName = 'HRGNETTO'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 19
      Size = 2
    end
    object QuDetailInvoiceRPJNDISKON: TBCDField
      FieldName = 'NDISKON'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 6
    end
    object QuDetailInvoiceRPJSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
    end
    object QuDetailInvoiceRPJNDPP: TBCDField
      FieldName = 'NDPP'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
    end
    object QuDetailInvoiceRPJNPPN: TBCDField
      FieldName = 'NPPN'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 5
    end
    object QuDetailInvoiceRPJNNET: TBCDField
      FieldName = 'NNET'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
    end
    object QuDetailInvoiceRPJSUBTOTALRp: TBCDField
      FieldName = 'SUBTOTALRp'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 6
    end
    object QuDetailInvoiceRPJNDPPRp: TBCDField
      FieldName = 'NDPPRp'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 6
    end
    object QuDetailInvoiceRPJNPPNRp: TBCDField
      FieldName = 'NPPNRp'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 6
    end
    object QuDetailInvoiceRPJNNETRp: TBCDField
      FieldName = 'NNETRp'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 6
    end
    object QuDetailInvoiceRPJKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 8000
    end
    object QuDetailInvoiceRPJTotSubTotal: TBCDField
      FieldName = 'TotSubTotal'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
    end
    object QuDetailInvoiceRPJTotDiskon: TBCDField
      FieldName = 'TotDiskon'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 6
    end
    object QuDetailInvoiceRPJTotTotal: TBCDField
      FieldName = 'TotTotal'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
    end
    object QuDetailInvoiceRPJTotDPP: TBCDField
      FieldName = 'TotDPP'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
    end
    object QuDetailInvoiceRPJTotPPN: TBCDField
      FieldName = 'TotPPN'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 5
    end
    object QuDetailInvoiceRPJTotNet: TBCDField
      FieldName = 'TotNet'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
    end
    object QuDetailInvoiceRPJTotSubTotalRp: TBCDField
      FieldName = 'TotSubTotalRp'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 6
    end
    object QuDetailInvoiceRPJTotDiskonRp: TBCDField
      FieldName = 'TotDiskonRp'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 6
    end
    object QuDetailInvoiceRPJTotTotalRp: TBCDField
      FieldName = 'TotTotalRp'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 6
    end
    object QuDetailInvoiceRPJTotDPPRp: TBCDField
      FieldName = 'TotDPPRp'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 6
    end
    object QuDetailInvoiceRPJTotPPNRp: TBCDField
      FieldName = 'TotPPNRp'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 6
    end
    object QuDetailInvoiceRPJTotNetRp: TBCDField
      FieldName = 'TotNetRp'
      ReadOnly = True
      DisplayFormat = ',0.##'
      Precision = 32
      Size = 6
    end
    object QuDetailInvoiceRPJKonversi: TIntegerField
      FieldName = 'Konversi'
      ReadOnly = True
    end
    object QuDetailInvoiceRPJUrutTrans: TIntegerField
      FieldName = 'UrutTrans'
    end
    object QuDetailInvoiceRPJNoinvoice: TStringField
      FieldName = 'Noinvoice'
      Size = 50
    end
    object QuDetailInvoiceRPJUrutSPR: TIntegerField
      FieldName = 'UrutSPR'
      ReadOnly = True
    end
  end
  object DSDetailInvoiceRPJ: TDataSource
    DataSet = QuDetailInvoiceRPJ
    Left = 185
    Top = 151
  end
  object frxDataPerusahaan: TfrxDBDataset
    UserName = 'frxDataPerusahaan'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 680
    Top = 192
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
end
