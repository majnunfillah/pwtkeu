object FrDeposito: TFrDeposito
  Left = 110
  Top = 179
  Width = 1113
  Height = 479
  Caption = 'Daftar Deposito'
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
    Width = 1105
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1105
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
        Left = 424
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton9: TToolButton
        Left = 432
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
      object ToolButton11: TToolButton
        Left = 511
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
    Width = 1105
    Height = 397
    ActivePage = dxTabSheet1
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
      Caption = 'Daftar Deposito'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1105
        Height = 371
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
          OptionsView.CellAutoHeight = True
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
            Width = 74
          end
          object tvMasterNamaBank: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'NamaBank'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 106
          end
          object tvMasterNogiro: TcxGridDBColumn
            Caption = 'No. Deposito'
            DataBinding.FieldName = 'NoDEPOSITO'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object tvMasterTglGiro: TcxGridDBColumn
            DataBinding.FieldName = 'Tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 79
          end
          object tvMasterJatuhTempo: TcxGridDBColumn
            Caption = 'Jatuh Tempo'
            DataBinding.FieldName = 'TglJatuhTempo'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 69
          end
          object tvMasterKodevls: TcxGridDBColumn
            Caption = 'Valas'
            DataBinding.FieldName = 'Kodevls'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 31
          end
          object tvMasterKurs: TcxGridDBColumn
            DataBinding.FieldName = 'Kurs'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 58
          end
          object tvMasterDebetRp: TcxGridDBColumn
            Caption = 'Debet Rupiah'
            DataBinding.FieldName = 'DebetRp'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 113
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
            Caption = 'Tgl Buka Deposito'
            DataBinding.FieldName = 'TglBuka'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 73
          end
          object tvMasterBuktiBuka: TcxGridDBColumn
            Caption = 'Bukti Buka Deposito'
            DataBinding.FieldName = 'BuktiBuka'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 106
          end
          object tvMasterKeterangan: TcxGridDBColumn
            Caption = 'Keterangan Buka Deposito'
            DataBinding.FieldName = 'Keterangan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 102
          end
          object tvMasterTglCair: TcxGridDBColumn
            Caption = 'Tgl Pencairan Deposito'
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
            Width = 109
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = tvMaster
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 467
    Top = 161
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
    Left = 495
    Top = 160
  end
  object Sp_Batal: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'SP_DEPOSITO;1'
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
        Name = '@NoDEPOSITO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@TglJatuhTempo'
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
      end>
    Left = 521
    Top = 160
  end
  object PopupMenu2: TPopupMenu
    Left = 419
    Top = 167
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
      'from dbDeposito a'
      '     left outer join dbPerkiraan b on b.perkiraan=a.Bank'
      '     left outer join dbValas c on c.kodevls=a.kodevls'
      'Order by a.Bank,a.NoDeposito,a.Tanggal')
    Left = 24
    Top = 184
    object QuMasterNoDEPOSITO: TStringField
      FieldName = 'NoDEPOSITO'
    end
    object QuMasterBank: TStringField
      FieldName = 'Bank'
      Size = 25
    end
    object QuMasterTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterTglJatuhTempo: TDateTimeField
      FieldName = 'TglJatuhTempo'
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
      Size = 30
    end
    object QuMasterUrutBuktiBuka: TIntegerField
      FieldName = 'UrutBuktiBuka'
    end
    object QuMasterTglCair: TDateTimeField
      FieldName = 'TglCair'
    end
    object QuMasterBuktiCair: TStringField
      FieldName = 'BuktiCair'
      Size = 30
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
    object QuMasterMyID: TBytesField
      FieldName = 'MyID'
      ReadOnly = True
      Size = 8
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
end
