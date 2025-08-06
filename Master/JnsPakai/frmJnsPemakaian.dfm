object FrJenisPemakaian: TFrJenisPemakaian
  Left = 214
  Top = 210
  Width = 870
  Height = 500
  Caption = 'Form Jenis Pemakaian'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 473
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GRD: TcxGrid
      Left = 1
      Top = 1
      Width = 860
      Height = 471
      Align = alClient
      TabOrder = 0
      object VWJenisPemakaian: TcxGridDBTableView
        OnKeyDown = FormKeyDown
        DataController.DataSource = dsJnsPemakaian
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsData.Inserting = False
        OptionsView.Indicator = True
        object VWJenisPemakaianKODEPemakaian: TcxGridDBColumn
          Caption = 'Kode Pemakaian'
          DataBinding.FieldName = 'KODEPemakaian'
          Width = 177
        end
        object VWJenisPemakaianPerkiraan: TcxGridDBColumn
          DataBinding.FieldName = 'Perkiraan'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Perkiraan'
          Properties.ListColumns = <
            item
              FieldName = 'Perkiraan'
            end>
          Properties.ListSource = dsPerkiraan
          Width = 144
        end
      end
      object GRDLevel1: TcxGridLevel
        GridView = VWJenisPemakaian
      end
    end
  end
  object QuJnsPemakaian: TADOQuery
    Connection = DM.MyGL
    Parameters = <>
    SQL.Strings = (
      'Select * from dbJenisPemakaian')
    Left = 240
    Top = 88
    object QuJnsPemakaianKODEPemakaian: TStringField
      FieldName = 'KODEPemakaian'
      Size = 10
    end
    object QuJnsPemakaianPerkiraan: TStringField
      FieldName = 'Perkiraan'
      Size = 15
    end
  end
  object dsJnsPemakaian: TDataSource
    DataSet = QuJnsPemakaian
    Left = 272
    Top = 89
  end
  object QuPerkiraan: TADOQuery
    Connection = DM.MyGL
    Parameters = <>
    SQL.Strings = (
      'Select * from dbPerkiraan')
    Left = 240
    Top = 128
    object QuPerkiraanPerkiraan: TStringField
      FieldName = 'Perkiraan'
    end
    object QuPerkiraanKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 8000
    end
    object QuPerkiraanKelompok: TIntegerField
      FieldName = 'Kelompok'
    end
    object QuPerkiraanTipe: TIntegerField
      FieldName = 'Tipe'
    end
    object QuPerkiraanValas: TStringField
      FieldName = 'Valas'
      Size = 10
    end
    object QuPerkiraanDK: TIntegerField
      FieldName = 'DK'
    end
    object QuPerkiraanNeraca: TStringField
      FieldName = 'Neraca'
      Size = 25
    end
    object QuPerkiraanFlagCashFlow: TStringField
      FieldName = 'FlagCashFlow'
      Size = 1
    end
    object QuPerkiraanSimbol: TStringField
      FieldName = 'Simbol'
      Size = 3
    end
    object QuPerkiraanIsPPN: TBooleanField
      FieldName = 'IsPPN'
    end
  end
  object dsPerkiraan: TDataSource
    DataSet = QuPerkiraan
    Left = 272
    Top = 128
  end
end
