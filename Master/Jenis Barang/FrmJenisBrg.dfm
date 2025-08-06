object frJenisBrg: TfrJenisBrg
  Left = 214
  Top = 210
  Width = 870
  Height = 500
  Caption = 'Master Jenis Barang'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 473
    Align = alClient
    TabOrder = 0
    object GRD: TcxGrid
      Left = 1
      Top = 1
      Width = 860
      Height = 471
      Align = alClient
      TabOrder = 0
      object vwJenisBrg: TcxGridDBTableView
        OnKeyDown = FormKeyDown
        DataController.DataSource = dsJenisBrg
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsData.Inserting = False
        OptionsView.Indicator = True
        object vwJenisBrgKODEJenisBrg: TcxGridDBColumn
          Caption = 'Kode Jenis Brg'
          DataBinding.FieldName = 'KODEJenisBrg'
          Width = 105
        end
        object vwJenisBrgKeterangan: TcxGridDBColumn
          DataBinding.FieldName = 'Keterangan'
        end
      end
      object GRDLevel1: TcxGridLevel
        GridView = vwJenisBrg
      end
    end
  end
  object QuJenisBrg: TADOQuery
    Connection = DM.MyGL
    Parameters = <>
    SQL.Strings = (
      'Select * from dbJenisBarang')
    Left = 136
    Top = 160
    object QuJenisBrgKODEJenisBrg: TStringField
      FieldName = 'KODEJenisBrg'
      Size = 2
    end
    object QuJenisBrgKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 40
    end
  end
  object dsJenisBrg: TDataSource
    DataSet = QuJenisBrg
    Left = 168
    Top = 160
  end
end
