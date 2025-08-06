object FrSetSaldoAktiva: TFrSetSaldoAktiva
  Left = 411
  Top = 260
  BorderStyle = bsDialog
  Caption = 'Saldo Awal'
  ClientHeight = 139
  ClientWidth = 497
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 497
    Height = 139
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label3: TLabel
      Left = 10
      Top = 62
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
    object Label5: TLabel
      Left = 10
      Top = 86
      Width = 93
      Height = 16
      Alignment = taRightJustify
      Caption = 'Nilai Penyusutan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 10
      Top = 36
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
      Top = 36
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
    object SpeedButton1: TSpeedButton
      Left = 186
      Top = 108
      Width = 75
      Height = 25
      Caption = '&Tutup'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      Transparent = False
      OnClick = SpeedButton1Click
    end
    object lDetail: TLabel
      Left = 10
      Top = 4
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
    object NilaiAwal: TPBNumEdit
      Left = 110
      Top = 57
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
    object NilaiSusut: TPBNumEdit
      Left = 110
      Top = 82
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
    object Valas: TEdit
      Left = 110
      Top = 32
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
      Top = 32
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
    object BitBtn1: TBitBtn
      Left = 110
      Top = 108
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
  object QuSetStock: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select a.*,b.Keterangan,c.Namabag,d.namadevisi'
      'from dbAktivadet a'
      '        left outer join dbaktiva b on b.perkiraan=a.perkiraan'
      '        left outer join dbbagian c on c.kodebag=b.kodebag'
      '        left outer join dbdevisi d on d.devisi=a.devisi'
      'Order by a.Perkiraan')
    Left = 184
    Top = 9
    object QuSetStockPerkiraan: TStringField
      FieldName = 'Perkiraan'
      Size = 30
    end
    object QuSetStockBulan: TIntegerField
      FieldName = 'Bulan'
    end
    object QuSetStockTahun: TIntegerField
      FieldName = 'Tahun'
    end
    object QuSetStockDevisi: TStringField
      FieldName = 'Devisi'
      Size = 15
    end
    object QuSetStockAwal: TBCDField
      FieldName = 'Awal'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockAwalSusut: TBCDField
      FieldName = 'AwalSusut'
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
    object QuSetStockAwalSusutD: TBCDField
      FieldName = 'AwalSusutD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockMD: TBCDField
      FieldName = 'MD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockDMD: TBCDField
      FieldName = 'DMD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockMK: TBCDField
      FieldName = 'MK'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockDMK: TBCDField
      FieldName = 'DMK'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockSD: TBCDField
      FieldName = 'SD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockDSD: TBCDField
      FieldName = 'DSD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockSK: TBCDField
      FieldName = 'SK'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockDSK: TBCDField
      FieldName = 'DSK'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockAkhir: TBCDField
      FieldName = 'Akhir'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockAkhirSusut: TBCDField
      FieldName = 'AkhirSusut'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockAkhirD: TBCDField
      FieldName = 'AkhirD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockAkhirSusutD: TBCDField
      FieldName = 'AkhirSusutD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuSetStockKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object QuSetStockNamabag: TStringField
      FieldName = 'Namabag'
      Size = 100
    end
    object QuSetStocknamadevisi: TStringField
      FieldName = 'namadevisi'
      Size = 30
    end
    object QuSetStockValas: TStringField
      FieldName = 'Valas'
      Size = 15
    end
    object QuSetStockKurs: TBCDField
      FieldName = 'Kurs'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object Sp_SetQnt: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'SP_AktivaDet;1'
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
        Name = '@Divisi'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
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
        Name = '@Bulan'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
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
        Name = '@Valas'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@kurs'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Awal'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@AwalSusut'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 306
    Top = 19
  end
  object DsQuSetStock: TDataSource
    DataSet = QuSetStock
    Left = 147
    Top = 50
  end
end
