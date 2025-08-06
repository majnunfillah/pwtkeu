object FrSetSaldoAwal: TFrSetSaldoAwal
  Left = 127
  Top = 180
  BorderStyle = bsDialog
  Caption = 'Saldo Awal'
  ClientHeight = 473
  ClientWidth = 954
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
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 954
    Height = 326
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 954
      Height = 285
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      object tvAktiva: TcxGridDBTableView
        DataController.DataSource = DsQuSetStock
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Styles.StyleSheet = DM.cxGridStyleHd
        Styles.Header = DM.cxStyle8
        object tvAktivaBulan: TcxGridDBColumn
          DataBinding.FieldName = 'Bulan'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvAktivaTahun: TcxGridDBColumn
          DataBinding.FieldName = 'Tahun'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvAktivanamadevisi: TcxGridDBColumn
          Caption = 'Devisi'
          DataBinding.FieldName = 'namadevisi'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 88
        end
        object tvAktivaPerkiraan: TcxGridDBColumn
          Caption = 'Kode Aktiva'
          DataBinding.FieldName = 'Perkiraan'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 108
        end
        object tvAktivaKeterangan: TcxGridDBColumn
          DataBinding.FieldName = 'Keterangan'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 200
        end
        object tvAktivaAwalDRp: TcxGridDBColumn
          Caption = 'Awal Debet'
          DataBinding.FieldName = 'AwalDRp'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object tvAktivaAwalD: TcxGridDBColumn
          Caption = 'Awal Debet Valas'
          DataBinding.FieldName = 'AwalD'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object tvAktivaAwalKRp: TcxGridDBColumn
          Caption = 'Awal Kredit'
          DataBinding.FieldName = 'AwalKRp'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object tvAktivaAwalK: TcxGridDBColumn
          Caption = 'Awal Kredit Valas'
          DataBinding.FieldName = 'AwalK'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object tvAktivaDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'Valas'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 70
        end
        object tvAktivaDBColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'Kurs'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 68
        end
      end
      object tvDetail: TcxGridDBTableView
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvAktiva
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 285
      Width = 954
      Height = 41
      Align = alBottom
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 2
        Top = 8
        Width = 146
        Height = 25
        Hint = 'Tambah - INSERT'
        Caption = 'Set Saldo Awal'
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
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 361
    Width = 954
    Height = 112
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object Label3: TLabel
      Left = 10
      Top = 38
      Width = 56
      Height = 16
      Alignment = taRightJustify
      Caption = 'Nilai Awal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 10
      Top = 12
      Width = 31
      Height = 16
      Caption = 'Valas'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 151
      Top = 12
      Width = 25
      Height = 16
      Caption = 'Kurs'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 296
      Top = 11
      Width = 32
      Height = 13
      Caption = 'Label4'
      Visible = False
    end
    object Label5: TLabel
      Left = 12
      Top = 62
      Width = 91
      Height = 16
      Alignment = taRightJustify
      Caption = 'Nilai Awal Valas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 109
      Top = 84
      Width = 96
      Height = 25
      Caption = '&Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object NilaiAwal: TPBNumEdit
      Left = 110
      Top = 33
      Width = 155
      Height = 24
      Alignment = taRightJustify
      Decimals = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      ParentFont = False
      TabOrder = 2
    end
    object Valas: TEdit
      Left = 110
      Top = 8
      Width = 34
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 3
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = 'IDR'
      OnKeyDown = ValasKeyDown
    end
    object Kurs: TPBNumEdit
      Left = 187
      Top = 8
      Width = 78
      Height = 24
      Alignment = taRightJustify
      Ctl3D = True
      Decimals = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Value = 1
    end
    object NilaiSusut: TPBNumEdit
      Left = 110
      Top = 58
      Width = 155
      Height = 24
      Alignment = taRightJustify
      Decimals = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumberFormat = Thousands
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 954
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
  end
  object QuSetStock: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 25
        Value = '1'
      end
      item
        Name = '1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = '2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      
        'Select A.Perkiraan,a.Keterangan,c.NamaDevisi,a.DK,b.valas,b.kurs' +
        ','
      '       b.AwalD,b.AwalDRp,b.AwalK,b.AwalKRp,b.Devisi'
      'from DBPERKIRAAN a'
      '        left outer join dbNERACA b on b.perkiraan=a.perkiraan'
      '        left outer join dbdevisi c on c.devisi=b.Devisi'
      'where a.Perkiraan=:0 and Bulan=:1 and Tahun=:2 '
      'Order by a.Perkiraan')
    Left = 184
    Top = 9
    object QuSetStockPerkiraan: TStringField
      FieldName = 'Perkiraan'
      Size = 25
    end
    object QuSetStockKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 8000
    end
    object QuSetStockNamaDevisi: TStringField
      FieldName = 'NamaDevisi'
      Size = 30
    end
    object QuSetStockvalas: TStringField
      FieldName = 'valas'
      Size = 15
    end
    object QuSetStockkurs: TBCDField
      FieldName = 'kurs'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockAwalD: TBCDField
      FieldName = 'AwalD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockAwalDRp: TBCDField
      FieldName = 'AwalDRp'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockAwalK: TBCDField
      FieldName = 'AwalK'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockAwalKRp: TBCDField
      FieldName = 'AwalKRp'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockDK: TWordField
      FieldName = 'DK'
    end
    object QuSetStockDevisi: TStringField
      FieldName = 'Devisi'
      Size = 15
    end
  end
  object Sp_SetQnt: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_SetSaldoAwal;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Perkiraan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Bulan'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@Tahun'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DebetRp'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KreditRp'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@DebetD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KreditD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Devisi'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = Null
      end
      item
        Name = '@Valas'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Kurs'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 250
    Top = 19
  end
  object DsQuSetStock: TDataSource
    DataSet = QuSetStock
    Left = 147
    Top = 50
  end
end
