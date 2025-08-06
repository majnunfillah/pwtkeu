object FrTipeTrans_: TFrTipeTrans_
  Left = 118
  Top = 76
  Width = 1120
  Height = 619
  Caption = 'Sub Tipe'
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
    object ToolButton5: TToolButton
      Left = 189
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 197
      Top = 0
      Caption = '&Cetak'
      ImageIndex = 4
      Visible = False
    end
    object ToolButton10: TToolButton
      Left = 260
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = ToolButton10Click
    end
    object ToolButton7: TToolButton
      Left = 323
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 331
      Top = 0
      Caption = 'Lain-lain'
      DropdownMenu = PopupMenu1
      ImageIndex = 10
      Style = tbsDropDown
    end
    object ToolButton8: TToolButton
      Left = 407
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 415
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
        end
        item
        end>
      object tvMasterKodeSubKategori: TcxGridDBBandedColumn
        Caption = 'Kode Sub Tipe Trans'
        DataBinding.FieldName = 'KODESUBTIPE'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMasterKeterangan: TcxGridDBBandedColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'Nama'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMasterPerk_Persediaan: TcxGridDBBandedColumn
        Caption = 'Persediaan'
        DataBinding.FieldName = 'Perk_Persediaan'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMasterPerk_PPn: TcxGridDBBandedColumn
        Caption = 'PPn'
        DataBinding.FieldName = 'Perk_PPn'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMasterPerk_HutPiut: TcxGridDBBandedColumn
        Caption = 'Hutang / Piutang'
        DataBinding.FieldName = 'Perk_HutPiut'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
        Position.BandIndex = 1
        Position.ColIndex = 2
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
      
        'Select a.*, b.Keterangan NamaPersediaan, c.Keterangan NamaPPN, d' +
        '.Keterangan NamaHutPiut,'
      '       b.Keterangan+'#39' ('#39'+b.Perkiraan+'#39')'#39' As Perk_Persediaan,'
      '       c.Keterangan+'#39' ('#39'+c.Perkiraan+'#39')'#39' As Perk_PPn,'
      '       d.Keterangan+'#39' ('#39'+d.Perkiraan+'#39')'#39' As Perk_HutPiut,'
      '       e.Nama NamaTipe'
      'from dbsubtipetrans a'
      
        '     left outer join DBPERKIRAAN b on b.Perkiraan=a.persediaan a' +
        'nd b.Tipe=1'
      
        '     left outer join DBPERKIRAAN c on c.Perkiraan=a.ppn and c.Ti' +
        'pe=1'
      
        '     left outer join DBPERKIRAAN d on d.Perkiraan=a.HutPiut and ' +
        'd.Tipe=1'
      '     left Outer join dbTipeTrans e on e.KodeTipe=a.kodeTipe'
      'where A.kodetipe=:0'
      'Order by a.kodesubTipe')
    Left = 47
    Top = 45
    object QuViewKODESUBTIPE: TStringField
      FieldName = 'KODESUBTIPE'
      Size = 15
    end
    object QuViewNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object QuViewKODETIPE: TStringField
      FieldName = 'KODETIPE'
      Size = 15
    end
    object QuViewPersediaan: TStringField
      FieldName = 'Persediaan'
      Size = 25
    end
    object QuViewPPn: TStringField
      FieldName = 'PPn'
      Size = 25
    end
    object QuViewHutPiut: TStringField
      FieldName = 'HutPiut'
      Size = 25
    end
    object QuViewNamaPersediaan: TStringField
      FieldName = 'NamaPersediaan'
      Size = 8000
    end
    object QuViewNamaPPN: TStringField
      FieldName = 'NamaPPN'
      Size = 8000
    end
    object QuViewNamaHutPiut: TStringField
      FieldName = 'NamaHutPiut'
      Size = 8000
    end
    object QuViewPerk_Persediaan: TStringField
      FieldName = 'Perk_Persediaan'
      ReadOnly = True
      Size = 8000
    end
    object QuViewPerk_PPn: TStringField
      FieldName = 'Perk_PPn'
      ReadOnly = True
      Size = 8000
    end
    object QuViewPerk_HutPiut: TStringField
      FieldName = 'Perk_HutPiut'
      ReadOnly = True
      Size = 8000
    end
    object QuViewNamaTipe: TStringField
      FieldName = 'NamaTipe'
      Size = 50
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 75
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
  object Sp_Merk: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_SubTipeTrans;1'
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
        Name = '@KodeTipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@KodeSubTipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Nama'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Persediaan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Ppn'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@HutPiut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@OldKodeKateg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@OldKodeSubKateg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Left = 529
    Top = 104
  end
end
