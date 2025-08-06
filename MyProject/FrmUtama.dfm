object FrUtama: TFrUtama
  Left = 0
  Top = 25
  AutoScroll = False
  Caption = 'TradeExchange'
  ClientHeight = 392
  ClientWidth = 632
  Color = 16432540
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 26
    Width = 632
    Height = 328
    Align = alClient
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    Caption = 
      'System Inventory Control                                        ' +
      '                                                                ' +
      '                                                                ' +
      '                                                               '
    Color = clGray
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 373
    Width = 632
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Panels = <
      item
        Width = 250
      end
      item
        Width = 200
      end
      item
        Width = 200
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
    SimplePanel = False
    UseSystemFont = False
  end
  object StatusBar2: TStatusBar
    Left = 0
    Top = 354
    Width = 632
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <
      item
        Text = 'Tekan Tombol ESC untuk Keluar'
        Width = 250
      end
      item
        Width = 50
      end>
    SimplePanel = False
    UseSystemFont = False
  end
  object QuMenu: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from dbFlmenu order by L1')
    Left = 15
    Top = 44
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 70
    Top = 85
  end
  object quGambar: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <
      item
        DataType = ftString
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Select NamaFile from dbBackGround where userid=:0')
    Left = 15
    Top = 84
  end
end
