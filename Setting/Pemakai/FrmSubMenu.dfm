object FrSubMenu: TFrSubMenu
  Left = 286
  Top = 323
  BorderStyle = bsDialog
  Caption = 'Koreksi Menu'
  ClientHeight = 89
  ClientWidth = 379
  Color = 16773589
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 6
    Top = 19
    Width = 368
    Height = 32
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 5
    Top = 5
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object CheckBox1: TCheckBox
    Left = 15
    Top = 25
    Width = 53
    Height = 17
    Caption = 'Tampil'
    TabOrder = 0
  end
  object CheckBox2: TCheckBox
    Left = 74
    Top = 25
    Width = 62
    Height = 17
    Caption = 'Tambah'
    TabOrder = 1
  end
  object CheckBox3: TCheckBox
    Left = 200
    Top = 25
    Width = 55
    Height = 17
    Caption = 'Hapus'
    TabOrder = 2
  end
  object CheckBox4: TCheckBox
    Left = 140
    Top = 25
    Width = 55
    Height = 17
    Caption = 'Koreksi'
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 294
    Top = 56
    Width = 75
    Height = 25
    Caption = '&OK'
    ModalResult = 1
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object CheckBox5: TCheckBox
    Left = 261
    Top = 25
    Width = 55
    Height = 17
    Caption = 'Cetak'
    TabOrder = 5
  end
  object CheckBox6: TCheckBox
    Left = 319
    Top = 25
    Width = 50
    Height = 17
    Caption = 'Excel'
    TabOrder = 6
  end
  object QuUpdate: TADOQuery
    Connection = DM.MyStock
    Parameters = <>
    Left = 5
    Top = 45
  end
end
