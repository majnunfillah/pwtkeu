object FrGiro: TFrGiro
  Left = 153
  Top = 151
  Width = 1036
  Height = 479
  Caption = 'Daftar Giro'
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
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1020
      Height = 39
      ButtonHeight = 39
      ButtonWidth = 79
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
        Left = 79
        Top = 0
        Hint = 'Koreksi Record'
        Caption = '&Koreksi'
        ImageIndex = 1
        OnClick = ToolButton2Click
      end
      object ToolButton3: TToolButton
        Left = 158
        Top = 0
        Hint = 'Hapus Record'
        Caption = '&Hapus'
        ImageIndex = 13
        OnClick = ToolButton3Click
      end
      object ToolButton5: TToolButton
        Left = 237
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 245
        Top = 0
        Caption = 'Refresh'
        ImageIndex = 12
        OnClick = ToolButton10Click
      end
      object ToolButton7: TToolButton
        Left = 324
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 332
        Top = 0
        Caption = '  Lain - lain  '
        DropdownMenu = PopupMenu1
        ImageIndex = 10
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton8: TToolButton
        Left = 426
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton9: TToolButton
        Left = 434
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
      object ToolButton11: TToolButton
        Left = 513
        Top = 0
        Caption = 'Tampil Valid'
        DropdownMenu = PopupMenu2
        ImageIndex = 7
        Style = tbsDropDown
        Visible = False
      end
    end
  end
  object dxPageControl1: TdxPageControl
    Left = 0
    Top = 48
    Width = 1020
    Height = 393
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
    TabOrder = 1
    TabPosition = dxtpTop
    TabWidth = 0
    OnChange = dxPageControl1Change
    object dxTabSheet1: TdxTabSheet
      Caption = 'Daftar Giro dibuka'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1020
        Height = 367
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
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          Styles.StyleSheet = DM.cxGridStyleHd
          Styles.Header = DM.cxStyle8
          object tvMasterBank: TcxGridDBColumn
            DataBinding.FieldName = 'Bank'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object tvMasterNogiro: TcxGridDBColumn
            Caption = 'No. Giro'
            DataBinding.FieldName = 'Nogiro'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object tvMasterTglGiro: TcxGridDBColumn
            Caption = 'Tgl Giro Jatuh Tempo'
            DataBinding.FieldName = 'TglGiro'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 79
          end
          object tvMasterKodevls: TcxGridDBColumn
            Caption = 'Valas'
            DataBinding.FieldName = 'Kodevls'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object tvMasterKurs: TcxGridDBColumn
            DataBinding.FieldName = 'Kurs'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object tvMasterDebetRp: TcxGridDBColumn
            Caption = 'Debet Rupiah'
            DataBinding.FieldName = 'DebetRp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 98
          end
          object tvMasterKreditRp: TcxGridDBColumn
            Caption = 'Kredit Rupiah'
            DataBinding.FieldName = 'KreditRp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 98
          end
          object tvMasterDebet: TcxGridDBColumn
            Caption = 'Debet Valas'
            DataBinding.FieldName = 'Debet'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 98
          end
          object tvMasterkredit: TcxGridDBColumn
            Caption = 'Kredit Valas'
            DataBinding.FieldName = 'kredit'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 98
          end
          object tvMasterTglBuka: TcxGridDBColumn
            Caption = 'Tgl Buka Giro'
            DataBinding.FieldName = 'TglBuka'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 73
          end
          object tvMasterBuktiBuka: TcxGridDBColumn
            Caption = 'Bukti Buka Giro'
            DataBinding.FieldName = 'BuktiBuka'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvMasterKeterangan: TcxGridDBColumn
            Caption = 'Keterangan Buka Giro'
            DataBinding.FieldName = 'Keterangan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 155
          end
          object tvMasterTglCair: TcxGridDBColumn
            Caption = 'Tgl Pencairan Giro'
            DataBinding.FieldName = 'TglCair'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 90
          end
          object tvMasterBuktiCair: TcxGridDBColumn
            Caption = 'Bukti Pencairan'
            DataBinding.FieldName = 'BuktiCair'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 124
          end
          object tvMasterKeteranganCair: TcxGridDBColumn
            Caption = 'Keterangan Pencairan'
            DataBinding.FieldName = 'KeteranganCair'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 155
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = tvMaster
        end
      end
    end
    object dxTabSheet2: TdxTabSheet
      Caption = 'Daftar Giro diterima'
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1020
        Height = 367
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object tvDetail: TcxGridDBTableView
          DataController.DataSource = dsDetail1
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
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          Styles.StyleSheet = DM.cxGridStyleHd
          Styles.Header = DM.cxStyle8
          object tvDetailBank: TcxGridDBColumn
            DataBinding.FieldName = 'Bank'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object tvDetailNoGiro: TcxGridDBColumn
            Caption = 'No. Giro'
            DataBinding.FieldName = 'NoGiro'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object tvDetailDBPerkiraan: TcxGridDBColumn
            Caption = 'Perkiraan Kas'
            DataBinding.FieldName = 'Perkiraan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object tvDetailTglGiro: TcxGridDBColumn
            Caption = 'Tgl Giro Jatuh Tempo'
            DataBinding.FieldName = 'TglGiro'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 81
          end
          object tvDetailKodevls: TcxGridDBColumn
            Caption = 'Valas'
            DataBinding.FieldName = 'Kodevls'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object tvDetailKurs: TcxGridDBColumn
            DataBinding.FieldName = 'Kurs'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object tvDetailDebetRp: TcxGridDBColumn
            Caption = 'Debet Rupiah'
            DataBinding.FieldName = 'DebetRp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 98
          end
          object tvDetailKreditRp: TcxGridDBColumn
            Caption = 'Kredit Rupiah'
            DataBinding.FieldName = 'KreditRp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 98
          end
          object tvDetailDebet: TcxGridDBColumn
            Caption = 'Debet Valas'
            DataBinding.FieldName = 'Debet'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 98
          end
          object tvDetailKredit: TcxGridDBColumn
            Caption = 'Kredit Valas'
            DataBinding.FieldName = 'Kredit'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 98
          end
          object tvDetailTglBuka: TcxGridDBColumn
            Caption = 'Tgl Terima Giro'
            DataBinding.FieldName = 'TglBuka'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object tvDetailBuktiBuka: TcxGridDBColumn
            Caption = 'Bukti Terima Giro'
            DataBinding.FieldName = 'BuktiBuka'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailKeterangan: TcxGridDBColumn
            Caption = 'Keterangan Terima Giro'
            DataBinding.FieldName = 'Keterangan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 121
          end
          object tvDetailTglCair: TcxGridDBColumn
            Caption = 'Tgl Pencairan Giro'
            DataBinding.FieldName = 'TglCair'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 101
          end
          object tvDetailBuktiCair: TcxGridDBColumn
            Caption = 'Bukti Pencairan Giro'
            DataBinding.FieldName = 'BuktiCair'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvDetailKeteranganCair: TcxGridDBColumn
            Caption = 'Keterangan Pencairan Giro'
            DataBinding.FieldName = 'KeteranganCair'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 121
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = tvDetail
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
  object Sp_Batal: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'SP_Giro;1'
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
        Name = '@Bank'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@NoGiro'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@TglGiro'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@KodeVls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@Kurs'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Jumlah'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TglBuka'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@BuktiBuka'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Keteranganbuka'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@TglCair'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@BuktiCair'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@KeteranganCair'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Tipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@Kas'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end>
    Left = 529
    Top = 104
  end
  object PopupMenu2: TPopupMenu
    Left = 427
    Top = 111
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
      'Select A.*,b.Keterangan NamaBank,c.NamaVls'
      'from dbgiro a'
      '     left outer join dbPerkiraan b on b.perkiraan=a.Bank'
      '     left outer join dbValas c on c.kodevls=a.kodevls'
      'where A.Tipe='#39'HT'#39
      'Order by a.Bank,a.Nogiro,a.TglGiro')
    Left = 24
    Top = 184
    object QuMasterNoGiro: TStringField
      FieldName = 'NoGiro'
    end
    object QuMasterBank: TStringField
      FieldName = 'Bank'
    end
    object QuMasterTglGiro: TDateTimeField
      FieldName = 'TglGiro'
    end
    object QuMasterDebet: TBCDField
      FieldName = 'Debet'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterKredit: TBCDField
      FieldName = 'Kredit'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterDebetRp: TBCDField
      FieldName = 'DebetRp'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterKreditRp: TBCDField
      FieldName = 'KreditRp'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 200
    end
    object QuMasterTglBuka: TDateTimeField
      FieldName = 'TglBuka'
    end
    object QuMasterBuktiBuka: TStringField
      FieldName = 'BuktiBuka'
    end
    object QuMasterUrutBuktiBuka: TIntegerField
      FieldName = 'UrutBuktiBuka'
    end
    object QuMasterTglCair: TDateTimeField
      FieldName = 'TglCair'
    end
    object QuMasterBuktiCair: TStringField
      FieldName = 'BuktiCair'
    end
    object QuMasterKeteranganCair: TStringField
      FieldName = 'KeteranganCair'
      Size = 200
    end
    object QuMasterUrutBuktiCair: TIntegerField
      FieldName = 'UrutBuktiCair'
    end
    object QuMasterKodevls: TStringField
      FieldName = 'Kodevls'
      Size = 15
    end
    object QuMasterKurs: TBCDField
      FieldName = 'Kurs'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterJumlah: TBCDField
      FieldName = 'Jumlah'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterTipe: TStringField
      FieldName = 'Tipe'
      Size = 2
    end
    object QuMasterNamaBank: TStringField
      FieldName = 'NamaBank'
      Size = 8000
    end
    object QuMasterNamaVls: TStringField
      FieldName = 'NamaVls'
      Size = 40
    end
  end
  object QuDetail1: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select A.*,c.NamaVls,d.keterangan Perkiraan'
      'from dbgiro a'
      '     left outer join dbValas c on c.kodevls=a.kodevls'
      '     Left outer join dbperkiraan d on d.perkiraan=a.kas'
      'where A.Tipe='#39'PT'#39
      'Order by a.Bank,a.Nogiro,a.TglGiro')
    Left = 120
    Top = 232
    object QuDetail1NoGiro: TStringField
      FieldName = 'NoGiro'
    end
    object QuDetail1Bank: TStringField
      FieldName = 'Bank'
    end
    object QuDetail1TglGiro: TDateTimeField
      FieldName = 'TglGiro'
    end
    object QuDetail1Debet: TBCDField
      FieldName = 'Debet'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1Kredit: TBCDField
      FieldName = 'Kredit'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1DebetRp: TBCDField
      FieldName = 'DebetRp'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1KreditRp: TBCDField
      FieldName = 'KreditRp'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1Keterangan: TStringField
      FieldName = 'Keterangan'
      Size = 200
    end
    object QuDetail1TglBuka: TDateTimeField
      FieldName = 'TglBuka'
    end
    object QuDetail1BuktiBuka: TStringField
      FieldName = 'BuktiBuka'
    end
    object QuDetail1UrutBuktiBuka: TIntegerField
      FieldName = 'UrutBuktiBuka'
    end
    object QuDetail1TglCair: TDateTimeField
      FieldName = 'TglCair'
    end
    object QuDetail1BuktiCair: TStringField
      FieldName = 'BuktiCair'
    end
    object QuDetail1KeteranganCair: TStringField
      FieldName = 'KeteranganCair'
      Size = 200
    end
    object QuDetail1UrutBuktiCair: TIntegerField
      FieldName = 'UrutBuktiCair'
    end
    object QuDetail1Kodevls: TStringField
      FieldName = 'Kodevls'
      Size = 15
    end
    object QuDetail1Kurs: TBCDField
      FieldName = 'Kurs'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1Jumlah: TBCDField
      FieldName = 'Jumlah'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1Tipe: TStringField
      FieldName = 'Tipe'
      Size = 2
    end
    object QuDetail1NamaVls: TStringField
      FieldName = 'NamaVls'
      Size = 40
    end
    object QuDetail1Kas: TStringField
      FieldName = 'Kas'
      Size = 25
    end
    object QuDetail1Perkiraan: TStringField
      FieldName = 'Perkiraan'
      Size = 8000
    end
  end
  object dsDetail1: TDataSource
    DataSet = QuDetail1
    Left = 152
    Top = 232
  end
end
