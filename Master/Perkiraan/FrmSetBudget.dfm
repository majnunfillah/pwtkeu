object FrSetBudGet: TFrSetBudGet
  Left = 257
  Top = 243
  BorderStyle = bsDialog
  Caption = 'Budget'
  ClientHeight = 309
  ClientWidth = 576
  Color = 16773589
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 4
    Top = 217
    Width = 570
    Height = 25
    Hint = 'Tambah - INSERT'
    Caption = 'Set Budget'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
      1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
      1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
      193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
      11155557F755F777777555000755033305555577755F75F77F55555555503335
      0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
      05555757F75F75557F5505000333555505557F777FF755557F55000000355557
      07557777777F55557F5555000005555707555577777FF5557F55553000075557
      0755557F7777FFF5755555335000005555555577577777555555}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object Label1: TLabel
    Left = 14
    Top = 251
    Width = 25
    Height = 13
    Caption = 'Divisi'
    Transparent = True
    Visible = False
  end
  object Label2: TLabel
    Left = 5
    Top = 274
    Width = 34
    Height = 13
    Caption = 'Budget'
    Transparent = True
    Visible = False
  end
  object Label3: TLabel
    Left = 150
    Top = 275
    Width = 27
    Height = 13
    Caption = 'Bulan'
    Visible = False
  end
  object Label4: TLabel
    Left = 224
    Top = 275
    Width = 31
    Height = 13
    Caption = 'Tahun'
    Visible = False
  end
  object wwDBGrid1: TwwDBGrid
    Left = 6
    Top = 8
    Width = 563
    Height = 201
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'Perkiraan'#9'15'#9'Perkiraan'#9#9
      'Bulan'#9'5'#9'BULAN'#9#9
      'Tahun'#9'5'#9'TAHUN'#9#9
      'Md'#9'15'#9'Debet'#9'F'
      'Mk'#9'15'#9'Kredit'#9'F'
      'Budget'#9'18'#9'Budget'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = 15395562
    DataSource = DsQuSetStock
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
    OnKeyDown = wwDBGrid1KeyDown
  end
  object AwalD: TPBNumEdit
    Left = 45
    Top = 271
    Width = 100
    Height = 21
    Alignment = taRightJustify
    Color = 14810109
    Enabled = False
    Decimals = 2
    NumberFormat = Thousands
    TabOrder = 2
    Visible = False
  end
  object Button1: TButton
    Left = 471
    Top = 278
    Width = 96
    Height = 25
    Caption = '&Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnClick = Button1Click
  end
  object Devisi: TEdit
    Left = 44
    Top = 248
    Width = 52
    Height = 21
    CharCase = ecUpperCase
    Color = 14810109
    Enabled = False
    TabOrder = 1
    Visible = False
  end
  object Bln: TPBNumEdit
    Left = 180
    Top = 271
    Width = 37
    Height = 21
    Alignment = taRightJustify
    Decimals = -1
    NumberFormat = Standard
    TabOrder = 3
    Visible = False
  end
  object Thn: TPBNumEdit
    Left = 262
    Top = 271
    Width = 45
    Height = 21
    Alignment = taRightJustify
    Decimals = -1
    NumberFormat = Standard
    TabOrder = 4
    Visible = False
  end
  object QuSetStock: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select Devisi,Perkiraan,Bulan,Tahun,Md,Mk,Budget from dbneraca')
    Left = 120
    Top = 49
    object QuSetStockPerkiraan: TStringField
      DisplayWidth = 15
      FieldName = 'Perkiraan'
      Size = 15
    end
    object QuSetStockBulan: TIntegerField
      DisplayLabel = 'BULAN'
      DisplayWidth = 5
      FieldName = 'Bulan'
    end
    object QuSetStockTahun: TIntegerField
      DisplayLabel = 'TAHUN'
      DisplayWidth = 5
      FieldName = 'Tahun'
    end
    object QuSetStockMd: TFloatField
      DisplayLabel = 'Debet'
      DisplayWidth = 15
      FieldName = 'Md'
    end
    object QuSetStockMk: TFloatField
      DisplayLabel = 'Kredit'
      DisplayWidth = 15
      FieldName = 'Mk'
    end
    object QuSetStockBudget: TFloatField
      DisplayWidth = 18
      FieldName = 'Budget'
    end
    object QuSetStockDevisi: TStringField
      DisplayWidth = 10
      FieldName = 'Devisi'
      Visible = False
      Size = 10
    end
  end
  object Sp_SetQnt: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_Budget;1'
    Parameters = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Perkiraan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@budget'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Bulan'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tahun'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 250
    Top = 51
  end
  object DsQuSetStock: TDataSource
    DataSet = QuSetStock
    Left = 147
    Top = 50
  end
end
