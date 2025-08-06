object FrTenaker: TFrTenaker
  Left = 1123
  Top = 327
  Width = 1120
  Height = 619
  Caption = 'Daftar Tenaker'
  Color = 16773589
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1112
    Height = 46
    ButtonHeight = 39
    ButtonWidth = 63
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
      Left = 63
      Top = 0
      Hint = 'Koreksi Record'
      Caption = '&Koreksi'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 126
      Top = 0
      Hint = 'Hapus Record'
      Caption = '&Hapus'
      ImageIndex = 13
      OnClick = ToolButton3Click
    end
    object ToolButton6: TToolButton
      Left = 189
      Top = 0
      Caption = 'Lain-lain'
      DropdownMenu = PopupMenu1
      ImageIndex = 10
      Style = tbsDropDown
    end
    object ToolButton5: TToolButton
      Left = 265
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 273
      Top = 0
      Caption = '&Cetak'
      ImageIndex = 4
      Visible = False
    end
    object ToolButton10: TToolButton
      Left = 336
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = ToolButton10Click
    end
    object ToolButton7: TToolButton
      Left = 399
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton11: TToolButton
      Left = 407
      Top = 0
      Caption = 'Tenaker'
      ImageIndex = 9
      Visible = False
    end
    object ToolButton8: TToolButton
      Left = 470
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 478
      Top = 0
      Caption = 'K&eluar'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 46
    Width = 1112
    Height = 539
    Align = alClient
    BevelKind = bkSoft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnMouseUp = dxDBGrid1MouseUp
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    object tvMaster: TcxGridDBBandedTableView
      DataController.DataSource = DsView
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
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
      Styles.StyleSheet = DM.cxGridBandStyleHd
      Styles.Header = DM.cxStyle8
      Styles.BandHeader = DM.cxStyle8
      Bands = <
        item
          Caption = 'Deskripsi'
          Width = 452
        end>
      object tvMasterKodeTarifTenaker: TcxGridDBBandedColumn
        Caption = 'Kode Tarif'
        DataBinding.FieldName = 'KodeTarifTenaker'
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMasterUrut: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Urut'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMasterNama: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nama'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tvMasterNIK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NIK'
        Width = 116
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvMasterKet: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Ket'
        Visible = False
        Width = 163
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tvMasterTarif: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tarif'
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvMaster
    end
  end
  object QuView: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'Select a.*, b.Tarif,b.Ket,'
      '       c.Nama'
      'from dbTenaker a'
      
        '     left outer join DBTarifTenaker  b on b.KodeTarifTenaker=a.k' +
        'odetariftenaker '
      '     left Outer join dbKaryawan  c on c.NIK  =a.nik'
      'where A.kodetariftenaker=:0'
      'Order by a.kodetariftenaker')
    Left = 39
    Top = 165
    object QuViewKodeTarifTenaker: TStringField
      FieldName = 'KodeTarifTenaker'
      Size = 15
    end
    object QuViewUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuViewNIK: TStringField
      FieldName = 'NIK'
      Size = 25
    end
    object QuViewTarif: TBCDField
      FieldName = 'Tarif'
      Precision = 18
      Size = 2
    end
    object QuViewKet: TStringField
      FieldName = 'Ket'
      Size = 50
    end
    object QuViewNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 91
    Top = 165
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
  object Sp_Merk: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_Tenaker;1'
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
        Name = '@KodeCustSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Urut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Perkiraan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@OldKodeCustSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@OldMUrut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 529
    Top = 104
  end
end
