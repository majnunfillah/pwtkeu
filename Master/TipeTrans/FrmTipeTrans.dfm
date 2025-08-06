object FrTipeTrans: TFrTipeTrans
  Left = 280
  Top = 166
  Width = 696
  Height = 480
  Caption = 'Tipe Transaksi'
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 688
    Height = 46
    ButtonHeight = 39
    ButtonWidth = 69
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
      Left = 69
      Top = 0
      Hint = 'Koreksi Record'
      Caption = '&Koreksi'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 138
      Top = 0
      Hint = 'Hapus Record'
      Caption = '&Hapus'
      ImageIndex = 13
      OnClick = ToolButton3Click
    end
    object ToolButton5: TToolButton
      Left = 207
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 215
      Top = 0
      Caption = '&Cetak'
      ImageIndex = 4
      Visible = False
    end
    object ToolButton10: TToolButton
      Left = 284
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = ToolButton10Click
    end
    object ToolButton7: TToolButton
      Left = 353
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 361
      Top = 0
      Caption = 'Lain-lain'
      DropdownMenu = PopupMenu1
      ImageIndex = 10
      Style = tbsDropDown
    end
    object ToolButton8: TToolButton
      Left = 443
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 9
      Style = tbsSeparator
      Visible = False
    end
    object ToolButton9: TToolButton
      Left = 451
      Top = 0
      Caption = 'K&eluar'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
    object ToolButton11: TToolButton
      Left = 520
      Top = 0
      Caption = 'Detail Data'
      ImageIndex = 5
      OnClick = ToolButton11Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 46
    Width = 688
    Height = 400
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    object tvMaster: TcxGridDBBandedTableView
      DataController.DataSource = DsView
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
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
      OptionsView.BandHeaders = False
      Styles.StyleSheet = DM.cxGridBandStyleHd
      Styles.Header = DM.cxStyle8
      Styles.BandHeader = DM.cxStyle8
      Bands = <
        item
        end>
      object tvMasterKODETIPE: TcxGridDBBandedColumn
        Caption = 'Kode Tipe'
        DataBinding.FieldName = 'KODETIPE'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMasterNama: TcxGridDBBandedColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'Nama'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 288
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMasterMyJasa: TcxGridDBBandedColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'MyJasa'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object tvDetail: TcxGridDBBandedTableView
      DataController.DataSource = dsQuDetail
      DataController.DetailKeyFieldNames = 'KODETIPE'
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.KeyFieldNames = 'KODESUBTIPE'
      DataController.MasterKeyFieldNames = 'KODETIPE'
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
      OptionsView.HeaderEndEllipsis = True
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object tvDetailKODESUBTIPE: TcxGridDBBandedColumn
        Caption = 'Kode Sub Tipe'
        DataBinding.FieldName = 'KODESUBTIPE'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvDetailNama: TcxGridDBBandedColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'Nama'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvDetailPerk_Persediaan: TcxGridDBBandedColumn
        Caption = 'Persediaan'
        DataBinding.FieldName = 'Perk_Persediaan'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvDetailPerk_PPn: TcxGridDBBandedColumn
        Caption = 'PPn'
        DataBinding.FieldName = 'Perk_PPn'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvDetailPerk_HutPiut: TcxGridDBBandedColumn
        Caption = 'Hutang / Piutang'
        DataBinding.FieldName = 'Perk_HutPiut'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvMaster
      object cxGrid1Level2: TcxGridLevel
        GridView = tvDetail
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
      'Select a.*,'
      '      Case  when a.IsJasaBeliJual=1 then '#39'Beli'#39
      '                when a.IsJasaBeliJual=2 then '#39'Jual'#39
      '                else '#39#39
      '      end MyJasa'
      'from dbTipeTrans a     '
      'order by a.KodeTipe')
    Left = 50
    Top = 45
    object QuViewKODETIPE: TStringField
      FieldName = 'KODETIPE'
      Size = 15
    end
    object QuViewNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object QuViewIsJasaBeliJual: TWordField
      FieldName = 'IsJasaBeliJual'
    end
    object QuViewMyJasa: TStringField
      FieldName = 'MyJasa'
      ReadOnly = True
      Size = 4
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 78
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
    ProcedureName = 'Sp_TIPETRANS;1'
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
        Name = '@KodeTIPE'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Keterangan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Tipe'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@OldKode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Left = 529
    Top = 104
  end
  object QuDetail: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = DsView
    Parameters = <
      item
        Name = 'Kodetipe'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = 'BELI'
      end>
    SQL.Strings = (
      
        'Select a.*, b.Keterangan NamaPersediaan, c.Keterangan NamaPPN, d' +
        '.Keterangan NamaHutPiut,'
      '       b.Keterangan+'#39' ('#39'+b.Perkiraan+'#39')'#39' As Perk_Persediaan,'
      '       c.Keterangan+'#39' ('#39'+c.Perkiraan+'#39')'#39' As Perk_PPn,'
      '       d.Keterangan+'#39' ('#39'+d.Perkiraan+'#39')'#39' As Perk_HutPiut'
      'from dbsubtipetrans a'
      
        '     left outer join DBPERKIRAAN b on b.Perkiraan=a.persediaan a' +
        'nd b.Tipe=1'
      
        '     left outer join DBPERKIRAAN c on c.Perkiraan=a.ppn and c.Ti' +
        'pe=1'
      
        '     left outer join DBPERKIRAAN d on d.Perkiraan=a.HutPiut and ' +
        'd.Tipe=1'
      'where a.kodetipe=:Kodetipe'
      'Order by a.kodesubTipe     ')
    Left = 66
    Top = 93
    object QuDetailKODESUBTIPE: TStringField
      FieldName = 'KODESUBTIPE'
      Size = 15
    end
    object QuDetailNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object QuDetailKODETIPE: TStringField
      FieldName = 'KODETIPE'
      Size = 15
    end
    object QuDetailPersediaan: TStringField
      FieldName = 'Persediaan'
      Size = 25
    end
    object QuDetailPPn: TStringField
      FieldName = 'PPn'
      Size = 25
    end
    object QuDetailHutPiut: TStringField
      FieldName = 'HutPiut'
      Size = 25
    end
    object QuDetailNamaPersediaan: TStringField
      FieldName = 'NamaPersediaan'
      Size = 8000
    end
    object QuDetailNamaPPN: TStringField
      FieldName = 'NamaPPN'
      Size = 8000
    end
    object QuDetailNamaHutPiut: TStringField
      FieldName = 'NamaHutPiut'
      Size = 8000
    end
    object QuDetailPerk_Persediaan: TStringField
      FieldName = 'Perk_Persediaan'
      ReadOnly = True
      Size = 8000
    end
    object QuDetailPerk_PPn: TStringField
      FieldName = 'Perk_PPn'
      ReadOnly = True
      Size = 8000
    end
    object QuDetailPerk_HutPiut: TStringField
      FieldName = 'Perk_HutPiut'
      ReadOnly = True
      Size = 8000
    end
  end
  object dsQuDetail: TDataSource
    DataSet = QuDetail
    Left = 94
    Top = 93
  end
end
