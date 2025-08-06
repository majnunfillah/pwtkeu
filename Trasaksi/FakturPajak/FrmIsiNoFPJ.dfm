object FrIsiNoFPJ: TFrIsiNoFPJ
  Left = 216
  Top = 316
  BorderStyle = bsDialog
  Caption = 'Isi Data'
  ClientHeight = 142
  ClientWidth = 221
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 23
    Width = 54
    Height = 13
    Caption = 'Tgl Pajak : '
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 56
    Height = 13
    Caption = 'No. Pajak : '
  end
  object Label3: TLabel
    Left = 7
    Top = 73
    Width = 71
    Height = 13
    Caption = 'Tanda Tangan'
  end
  object NoFPJ: TEdit
    Left = 85
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object TglPajak: TDateEdit
    Left = 85
    Top = 19
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object Button1: TButton
    Left = 110
    Top = 115
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = Button1Click
  end
  object TandaTangan: TEdit
    Left = 85
    Top = 70
    Width = 121
    Height = 21
    TabOrder = 3
    OnEnter = TandaTanganEnter
    OnExit = TandaTanganExit
  end
end
