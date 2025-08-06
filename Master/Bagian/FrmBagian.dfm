object FrBagian: TFrBagian
  Left = 169
  Top = 218
  Width = 891
  Height = 393
  Caption = 'Bagian'
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
    Width = 883
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
    Width = 883
    Height = 313
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
          Caption = 'Komputer'
        end
        item
          Caption = 'Peralatan'
        end>
      object tvMasterKodeBag: TcxGridDBBandedColumn
        Caption = 'Kode Bagian'
        DataBinding.FieldName = 'KodeBag'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMasterNamaBag: TcxGridDBBandedColumn
        Caption = 'Nama Bagian'
        DataBinding.FieldName = 'NamaBag'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMasterBiayaKom: TcxGridDBBandedColumn
        Caption = 'Biaya Persediaan'
        DataBinding.FieldName = 'BiayaKom'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 180
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMasterBiayaJasaKomputer: TcxGridDBBandedColumn
        Caption = 'Biaya Jasa'
        DataBinding.FieldName = 'BiayaJasaKomputer'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 180
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMasterBiayaPeralatan: TcxGridDBBandedColumn
        Caption = 'Biaya Persediaan'
        DataBinding.FieldName = 'BiayaPeralatan'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 180
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMasterBiayaJasaPeralatan: TcxGridDBBandedColumn
        Caption = 'Biaya Jasa'
        DataBinding.FieldName = 'BiayaJasaPeralatan'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 180
        Position.BandIndex = 2
        Position.ColIndex = 1
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
    Parameters = <>
    SQL.Strings = (
      'Select A.*, C.Keterangan NamaPerkiraan, d.Keterangan NamaBiaya,'
      
        '       e.Keterangan NamaBiayaJasaKom, f.Keterangan NamaBiayaJasa' +
        'Alat,'
      
        '       isnull(c.Keterangan,'#39#39')+Case when isnull(c.Keterangan,'#39#39')' +
        '<>'#39#39' then '#39' ('#39'+a.Perkiraan+'#39')'#39' else '#39#39' end BiayaKom,'
      
        '       isnull(d.Keterangan,'#39#39')+Case when isnull(d.Keterangan,'#39#39')' +
        '<>'#39#39' then '#39' ('#39'+a.Biaya+'#39')'#39' else '#39#39' end BiayaPeralatan,'
      
        '       isnull(e.Keterangan,'#39#39')+Case when isnull(e.Keterangan,'#39#39')' +
        '<>'#39#39' then '#39' ('#39'+a.BiayaJasaKom+'#39')'#39' else '#39#39' end BiayaJasaKomputer,'
      
        '       isnull(f.Keterangan,'#39#39')+Case when isnull(f.Keterangan,'#39#39')' +
        '<>'#39#39' then '#39' ('#39'+a.BiayaJasaALat+'#39')'#39' else '#39#39' end BiayaJasaPeralata' +
        'n'
      'from dbBagian A'
      
        '     left outer join dbPerkiraan c on c.perkiraan=a.perkiraan an' +
        'd c.tipe=1'
      
        '     left outer join dbPerkiraan d on d.perkiraan=a.Biaya and d.' +
        'tipe=1'
      
        '     left outer join dbPerkiraan e on e.perkiraan=a.BiayaJasaKom' +
        ' and e.tipe=1'
      
        '     left outer join dbPerkiraan f on f.perkiraan=a.BiayaJasaAla' +
        't and f.tipe=1'
      'order by KodeBag')
    Left = 50
    Top = 45
    object QuViewKodeBag: TStringField
      FieldName = 'KodeBag'
      Size = 15
    end
    object QuViewNamaBag: TStringField
      FieldName = 'NamaBag'
      Size = 100
    end
    object QuViewPerkiraan: TStringField
      FieldName = 'Perkiraan'
      Size = 25
    end
    object QuViewBiaya: TStringField
      FieldName = 'Biaya'
      Size = 25
    end
    object QuViewBiayaJasaKom: TStringField
      FieldName = 'BiayaJasaKom'
      Size = 25
    end
    object QuViewBiayaJasaAlat: TStringField
      FieldName = 'BiayaJasaAlat'
      Size = 25
    end
    object QuViewMyID: TBytesField
      FieldName = 'MyID'
      ReadOnly = True
      Size = 8
    end
    object QuViewNamaPerkiraan: TStringField
      FieldName = 'NamaPerkiraan'
      Size = 8000
    end
    object QuViewNamaBiaya: TStringField
      FieldName = 'NamaBiaya'
      Size = 8000
    end
    object QuViewBiayaKom: TStringField
      FieldName = 'BiayaKom'
      ReadOnly = True
      Size = 8000
    end
    object QuViewBiayaPeralatan: TStringField
      FieldName = 'BiayaPeralatan'
      ReadOnly = True
      Size = 8000
    end
    object QuViewBiayaJasaKomputer: TStringField
      FieldName = 'BiayaJasaKomputer'
      ReadOnly = True
      Size = 8000
    end
    object QuViewBiayaJasaPeralatan: TStringField
      FieldName = 'BiayaJasaPeralatan'
      ReadOnly = True
      Size = 8000
    end
    object QuViewNamaBiayaJasaKom: TStringField
      FieldName = 'NamaBiayaJasaKom'
      Size = 8000
    end
    object QuViewNamaBiayaJasaAlat: TStringField
      FieldName = 'NamaBiayaJasaAlat'
      Size = 8000
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 76
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
    ProcedureName = 'Sp_Bagian;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@Choice'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
      end
      item
        Name = '@KodeBag'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@NamaBag'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end
      item
        Name = '@Perkiraan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
      end
      item
        Name = '@Biaya'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
      end
      item
        Name = '@BiayaJasaKom'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
      end
      item
        Name = '@BiayaJasaALat'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
      end
      item
        Name = '@OldKode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end>
    Left = 529
    Top = 104
  end
end
