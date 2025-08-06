object FrPemakai: TFrPemakai
  Left = 160
  Top = 124
  Width = 1382
  Height = 744
  Caption = 'Master Pemakai'
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
    Width = 1374
    Height = 46
    ButtonHeight = 39
    ButtonWidth = 87
    Caption = 'ToolBar1'
    Color = clBtnFace
    EdgeOuter = esRaised
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
      Left = 87
      Top = 0
      Hint = 'Koreksi Record'
      Caption = '&Koreksi'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 174
      Top = 0
      Hint = 'Hapus Record'
      Caption = '&Hapus'
      ImageIndex = 13
      OnClick = ToolButton3Click
    end
    object ToolButton5: TToolButton
      Left = 261
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 269
      Top = 0
      Caption = '&Cetak'
      ImageIndex = 4
      Visible = False
    end
    object ToolButton10: TToolButton
      Left = 356
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = ToolButton10Click
    end
    object ToolButton7: TToolButton
      Left = 443
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 451
      Top = 0
      Caption = 'Lain-lain'
      DropdownMenu = PopupMenu1
      ImageIndex = 10
      Style = tbsDropDown
    end
    object ToolButton11: TToolButton
      Left = 551
      Top = 0
      Caption = 'Menu'
      ImageIndex = 7
      OnClick = ToolButton11Click
    end
    object ToolButton12: TToolButton
      Left = 638
      Top = 0
      Caption = 'Set Report'
      ImageIndex = 5
      OnClick = ToolButton12Click
    end
    object ToolButton14: TToolButton
      Left = 725
      Top = 0
      Caption = 'Akses Gudang'
      ImageIndex = 5
      Visible = False
      OnClick = ToolButton14Click
    end
    object ToolButton13: TToolButton
      Left = 812
      Top = 0
      Caption = 'Akses COA'
      ImageIndex = 5
      OnClick = ToolButton13Click
    end
    object ToolButton8: TToolButton
      Left = 899
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 907
      Top = 0
      Caption = 'K&eluar'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 46
    Width = 1374
    Height = 664
    Hint = 'Untuk cari data ketik kata yang dicari di grid'
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'UserID'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Color = 14540253
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnMouseUp = dxDBGrid1MouseUp
    AutoExpandOnSearch = False
    BandColor = 11397086
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -13
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = DsView
    Filter.Criteria = {00000000}
    GroupPanelColor = 13025469
    GroupPanelFontColor = clBlack
    HeaderColor = 13025469
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -15
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    HideSelectionColor = clMoneyGreen
    HideSelectionTextColor = clBlack
    HighlightColor = 9629163
    HighlightTextColor = clBlack
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    ShowRowFooter = True
    OnCustomDrawCell = dxDBGrid1CustomDrawCell
    OnCustomDrawFooterNode = dxDBGrid1CustomDrawFooterNode
    object dxDBGrid1UserID: TdxDBGridMaskColumn
      Caption = 'User ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UserID'
    end
    object dxDBGrid1FullName: TdxDBGridMaskColumn
      Caption = 'Nama Lengkap'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 140
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FullName'
    end
    object dxDBGrid1Namabag: TdxDBGridMaskColumn
      Caption = 'Departemen'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Namabag'
    end
    object dxDBGrid1Namajab: TdxDBGridColumn
      Caption = 'Jabatan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'namajab'
    end
    object dxDBGrid1LevelUSER: TdxDBGridMaskColumn
      Caption = 'Level'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LevelUSER'
    end
    object dxDBGrid1StatusUSER: TdxDBGridMaskColumn
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'StatusUSER'
    end
    object dxDBGrid1HostID: TdxDBGridMaskColumn
      Caption = 'Online dari'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'HostID'
    end
    object dxDBGrid1KodeKasir: TdxDBGridMaskColumn
      Caption = 'Kode Kasir'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KodeKasir'
    end
    object dxDBGrid1Column9: TdxDBGridColumn
      Caption = 'Counter'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Kodegdg'
    end
  end
  object QuView: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'Select UserID,FullName,a.Kodegdg,'
      '       Case Tingkat when 0 then '#39'User'#39
      '                    when 1 then '#39'Supervisor'#39
      '                    when 2 then '#39'Administrator'#39
      '       end as '#39'LevelUSER'#39','
      '       Case Status when 0 then '#39'Offline'#39
      '                   else '#39'Online'#39
      
        '       end as '#39'StatusUSER'#39', HostID+Case when Hostid<>'#39#39' then '#39' (' +
        #39'+IPAddres+'#39')'#39' else '#39#39' end HostID,'
      '       a.kodebag,b.NmDep Namabag,a.kodejab,c.namajab,'
      
        '       UID,TINGKAT,STATUS,HOSTID,IPAddres, KodeKasir,gd.nama Nam' +
        'aGdg ,M1.Keynik,M1.Nama NamaKaryawan'
      'from dbflPASS a'
      '     left outer join dbDepart b on b.kdDep=a.kodebag'
      '     left outer join dbJabatan c on c.kodejab=a.kodejab'
      '     left Outer Join dbGudang gd On gd.KodeGdg=a.Kodegdg'
      '     Left Outer Join DbKaryawan M1 on A.Keynik=M1.Keynik'
      'order by userid')
    Left = 98
    Top = 125
    object QuViewUserID: TStringField
      FieldName = 'UserID'
      Size = 25
    end
    object QuViewFullName: TStringField
      FieldName = 'FullName'
      Size = 50
    end
    object QuViewLevelUSER: TStringField
      FieldName = 'LevelUSER'
      ReadOnly = True
      Size = 13
    end
    object QuViewStatusUSER: TStringField
      FieldName = 'StatusUSER'
      ReadOnly = True
      Size = 7
    end
    object QuViewHostID: TStringField
      FieldName = 'HostID'
      ReadOnly = True
      Size = 43
    end
    object QuViewkodebag: TStringField
      FieldName = 'kodebag'
      Size = 15
    end
    object QuViewNamabag: TStringField
      FieldName = 'Namabag'
      Size = 100
    end
    object QuViewkodejab: TStringField
      FieldName = 'kodejab'
      Size = 15
    end
    object QuViewnamajab: TStringField
      FieldName = 'namajab'
      Size = 50
    end
    object QuViewUID: TStringField
      FieldName = 'UID'
    end
    object QuViewTINGKAT: TWordField
      FieldName = 'TINGKAT'
    end
    object QuViewSTATUS: TWordField
      FieldName = 'STATUS'
    end
    object QuViewHOSTID_1: TStringField
      FieldName = 'HOSTID_1'
    end
    object QuViewIPAddres: TStringField
      FieldName = 'IPAddres'
    end
    object QuViewKodeKasir: TStringField
      FieldName = 'KodeKasir'
      Size = 3
    end
    object QuViewKodegdg: TStringField
      FieldName = 'Kodegdg'
      Size = 15
    end
    object QuViewNamaGdg: TStringField
      FieldName = 'NamaGdg'
      Size = 40
    end
    object QuViewKeynik: TIntegerField
      FieldName = 'Keynik'
    end
    object QuViewNamaKaryawan: TStringField
      FieldName = 'NamaKaryawan'
      Size = 50
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 123
    Top = 125
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
  object Sp_Pemakai: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_FLpass;1'
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
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@UID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Tingkat'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@status'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fullname'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@kodebag'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@kodejab'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@KodeKasir'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = Null
      end
      item
        Name = '@Kodegdg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Keynik'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 529
    Top = 104
  end
  object Sp_Update: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_updateMenu;1'
    Parameters = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@userid'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 415
    Top = 105
  end
  object sp_updateMenuReport: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_updateMenuReport;1'
    Parameters = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@userid'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 420
    Top = 132
  end
end
