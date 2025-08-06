object frSubBarangSJ: TfrSubBarangSJ
  Left = 321
  Top = 63
  BorderStyle = bsDialog
  Caption = 'Input Data'
  ClientHeight = 562
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 5
    Top = 48
    Width = 500
    Height = 513
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 13
    Top = 244
    Width = 72
    Height = 16
    Caption = 'Kode Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 13
    Top = 269
    Width = 77
    Height = 16
    Caption = 'Nama Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 13
    Top = 58
    Width = 72
    Height = 16
    Caption = 'Jenis Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label30: TLabel
    Left = 13
    Top = 214
    Width = 82
    Height = 16
    Caption = 'Warna Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object NamaGroup: TLabel
    Left = 182
    Top = 58
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object NamaBrd: TLabel
    Left = 182
    Top = 214
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Image1: TImage
    Left = 5
    Top = 3
    Width = 32
    Height = 32
    AutoSize = True
    Picture.Data = {
      055449636F6E0000010001002020000000000000A80C00001600000028000000
      2000000040000000010018000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFA5F7F700ADFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000A5F7F7A5F7F700FFFFA5F7F700ADFF00ADFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000A5F7F7A5F7F700FFFFA5F7F700ADFF00ADFF00
      000000FFFFA5F7F700ADFF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000A5F7F7A5F7F700FFFFA5F7F700ADFF00ADFF00
      000000FFFFA5F7F700ADFF00ADFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000A5F7F7A5F7F700FFFFA5F7F700ADFF00ADFF00
      000000FFFFA5F7F700ADFF00ADFF00000000FFFFA5F7F700ADFF000000000000
      7373737373737373737373730000000000000000000000000000000000000000
      00000000000000000000000000A5F7F7A5F7F700FFFFA5F7F700ADFF00ADFF00
      000000FFFFA5F7F700ADFF00ADFF00000000FFFFA5F7F700ADFF00ADFF000000
      7373737373737373737373737373730000000000000000000000000000000000
      00000000000000000000000000A5F7F7A5F7F700FFFFA5F7F700ADFF00ADFF00
      000000FFFFA5F7F700ADFF00ADFF00000000FFFFA5F7F700ADFF00ADFF000000
      C0C0C0C0C0C07373737373737373737373737373737373737373730000000000
      00000000000000000000000000A5F7F7A5F7F700FFFFA5F7F700ADFF00ADFF00
      000000FFFFA5F7F700ADFF00ADFF00000000FFFFA5F7F700ADFF00ADFF000000
      C0C0C0C0C0C07373737373737373737373737373737373737373737373730000
      00000000000000C6C6C6000000A5F7F7A5F7F700FFFFA5F7F700FFFF00FFFF00
      000000FFFFA5F7F700ADFF00ADFF00000000FFFFA5F7F700ADFF00ADFF000000
      C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373737373
      73000000000000737373000000A5F7F7A5F7F7A5F7F700FFFF00FFFF00ADFF00
      ADFF000000A5F7F700ADFF00ADFF00000000FFFFA5F7F700ADFF00ADFF000000
      C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373737373
      73000000000000000000A5F7F7A5F7F7A5F7F7A5F7F700FFFF00FFFF00ADFF00
      ADFF000000A5F7F700FFFF00FFFF00000000FFFFA5F7F700ADFF00ADFF000000
      C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373737373
      73000000000000000000A5F7F7A5F7F7A5F7F7A5F7F700FFFF00FFFF00ADFF00
      ADFF00000000FFFF00FFFF00ADFF00ADFF000000A5F7F700ADFF00ADFF000000
      C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373737373
      73000000000000000000A5F7F7A5F7F7A5F7F7A5F7F700FFFF00FFFF00ADFF00
      ADFF00000000FFFF00FFFF00ADFF00ADFF000000A5F7F700FFFF00FFFF000000
      C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373737373
      73000000000000000000A5F7F7A5F7F7A5F7F7A5F7F700FFFF00FFFF00ADFF00
      ADFF00000000FFFF00FFFF00ADFF00ADFF00000000FFFF00FFFF00ADFF00ADFF
      000000C0C0C0737373737373737373C0C0C0C0C0C07373737373737373737373
      73000000000000000000A5F7F7A5F7F7A5F7F7A5F7F700FFFF00FFFF00FFFF00
      FFFF00000000FFFF00FFFF00ADFF00ADFF00000000FFFF00FFFF00ADFF00ADFF
      000000C0C0C0C0C0C0C0C0C0737373C0C0C0C0C0C07373737373737373737373
      73000000000000000000A5F7F7A5F7F700FFFF00FFFF73737373737300000000
      0000A5F7F700FFFF00FFFF00ADFF00ADFF00000000FFFF00FFFF00ADFF00ADFF
      000000C0C0C0C0C0C0737373737373737373C0C0C07373737373737373737373
      73000000000000A59494000000737373000000000000000000000000737373A5
      F7F7A5F7F700FFFF00FFFF00FFFF00FFFF00000000FFFF00FFFF00ADFF00ADFF
      000000C0C0C0C0C0C0737373737373737373C0C0C0C0C0C0C0C0C07373737373
      7300000000000000000073000000000000ADFF00ADFF00ADFF00ADFF00000000
      FFFF00FFFF737373737373000000000000A5F7F700FFFF00FFFF00ADFF00ADFF
      000000C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373
      737373737373734A002173000000000042B5FF42B5FF00ADFF00ADFF00000000
      0000000000000000000000737373A5F7F7A5F7F700FFFF00FFFF00FFFF00FFFF
      000000C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373
      7373737331313100000073000000000042B5FF42B5FF42B5FF00ADFF00000000
      ADFF00ADFF00ADFF00ADFF00000000FFFF00FFFF737373737373000000000000
      C0C0C0C0C0C0C0C0C0737373737373737373C0C0C0C0C0C07373737373737373
      737373733131314A002173000094002900000042B5FF42B5FF00000073737342
      B5FF42B5FF00ADFF00ADFF000000000000000000000000000000737373C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0737373C0C0C0C0C0C07373737373737373
      737373733131314A0021730000940029FF000000000000000042FF4200000042
      B5FF42B5FF42B5FF00ADFF00000000ADFF00ADFF00ADFF00ADFF000000C0C0C0
      C0C0C0737373737373737373737373C0C0C0C0C0C0C0C0C07373737373737373
      737373733131314A002173000094002973000000B53942FF42FF5221B57B0000
      000042B5FF42B5FF00000073737342B5FF42B5FF00ADFF00ADFF000000737373
      737373737373737373737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07373
      737373737373734A0021940029730000007B0000FFA500FFA500942900DE4252
      FF21000000000000FFF7A500000042B5FF42B5FF42B5FF00ADFF000000C0C0C0
      C0C0C0737373737373737373C0C0C0C0C0C07373737373737373737373737373
      7300000000000000000094002973000000942900DE4200FFFF00FFFF00FFFF00
      FF528C9400FFF7D6FFF7D6FFC66300000042B5FF42B5FF000000737373C0C0C0
      C0C0C0C0C0C07373737373737373737373737373737373737373730000000000
      00000000000000A594944A0021730000007B0000B53900FFA500FFFFFFAD2142
      FF6B00DE42737300FFFF21FFC663FFC663000000000000000000737373C0C0C0
      C0C0C0C0C0C0C0C0C0737373C0C0C0C0C0C07373737373737373737373730000
      00000000000000000000000000FF00004A0021007B0000DE4200FFA5B5FF425A
      940000DE42009400FFAD00FFAD21FFAD00FFAD004A0021000000000000737373
      C0C0C0C0C0C0737373737373C0C0C0C0C0C0C0C0C07373737373737373730000
      00000000000000000000000000000000730000004A2900940000DE42007B0000
      7B0000DE42FFFF8CFFF7A5FF7342FFAD00313131004A29000000000000000000
      737373737373B5B5B5737373C0C0C0C0C0C0C0C0C0C0C0C07373737373730000
      00000000000000000000000000000000000000000000007B00007B00007B00FF
      C663FFFF8CFFF7D6FFF7D6B5FF42000000004A29000000000000000000000000
      000000000000000000000000737373C0C0C0C0C0C07373737373730000000000
      00000000000000000000000000000000000000A59494000000000000B5FF42FF
      F7A5FFF7D6EFC6ADB57B00000000A59494000000000000000000000000000000
      0000000000000000000000000000007373737373737373730000000000000000
      000000000000000000000000000000000000000000000000007373734A4A4A4A
      4A4A3131314A4A4A737373000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000F87FFFFFE03FFFFFC003FFFFC001FFFFC0001FFFC00000FFC000007F
      C0000007C0000003800000018000000180000001800000018000000180000001
      8000000180000001800000018000000000000000000000000000000000000000
      00000000000000018000000780000003C0002003E0007003F000FF07F801FF8F
      FE07FFFF}
    Transparent = True
  end
  object Label11: TLabel
    Left = 48
    Top = 5
    Width = 88
    Height = 19
    Caption = 'Input Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 48
    Top = 24
    Width = 142
    Height = 13
    Caption = 'Ketik item-item, Click Simpan !'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 5
    Top = 40
    Width = 500
    Height = 6
    Shape = bsTopLine
  end
  object Label7: TLabel
    Left = 13
    Top = 184
    Width = 76
    Height = 16
    Caption = 'Lebar Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object NamaTipe: TLabel
    Left = 182
    Top = 184
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel
    Left = 13
    Top = 432
    Width = 85
    Height = 16
    Caption = 'Aktif/ Non Aktif'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 215
    Top = 296
    Width = 45
    Height = 16
    Caption = 'Harga 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 311
    Top = 296
    Width = 41
    Height = 16
    Caption = 'Harga2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel
    Left = 407
    Top = 296
    Width = 45
    Height = 16
    Caption = 'Harga 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label18: TLabel
    Left = 233
    Top = 406
    Width = 74
    Height = 16
    Caption = 'Quantity Max'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label19: TLabel
    Left = 13
    Top = 406
    Width = 71
    Height = 16
    Caption = 'Quantity Min'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label35: TLabel
    Left = 13
    Top = 297
    Width = 38
    Height = 14
    Caption = 'Satuan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 60
    Top = 297
    Width = 11
    Height = 14
    Caption = 'Isi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 245
    Top = 43
    Width = 47
    Height = 16
    Caption = 'Supplier'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object NamaSupp: TLabel
    Left = 414
    Top = 43
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label5: TLabel
    Left = 13
    Top = 458
    Width = 65
    Height = 16
    Caption = 'Keterangan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 277
    Top = 244
    Width = 72
    Height = 16
    Caption = 'Part Number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label9: TLabel
    Left = 119
    Top = 296
    Width = 43
    Height = 16
    Caption = 'Volume'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label10: TLabel
    Left = 13
    Top = 161
    Width = 93
    Height = 16
    Caption = 'Kategori Benang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 182
    Top = 161
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label20: TLabel
    Left = 13
    Top = 85
    Width = 92
    Height = 16
    Caption = 'Produksi Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object NPrd: TLabel
    Left = 182
    Top = 84
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label22: TLabel
    Left = 245
    Top = 15
    Width = 68
    Height = 16
    Caption = 'Asal Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object NAsl: TLabel
    Left = 414
    Top = 15
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label24: TLabel
    Left = 13
    Top = 110
    Width = 77
    Height = 16
    Caption = 'Mesin Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object NMsn: TLabel
    Left = 182
    Top = 110
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label26: TLabel
    Left = 13
    Top = 135
    Width = 72
    Height = 16
    Caption = 'Motif Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object NMtf: TLabel
    Left = 182
    Top = 135
    Width = 38
    Height = 16
    Caption = '[ . . . ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object KodeBrg: TEdit
    Left = 109
    Top = 240
    Width = 164
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 25
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 9
    OnEnter = KodeBrgEnter
    OnExit = KodeBrgExit
  end
  object NamaBrg: TEdit
    Left = 109
    Top = 265
    Width = 388
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 70
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 11
  end
  object KodeGrp: TEdit
    Left = 109
    Top = 54
    Width = 66
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 7
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    Text = 'BSJ'
    OnEnter = KodeGrpEnter
    OnExit = Kodegrpxit
  end
  object BitBtn3: TBitBtn
    Left = 328
    Top = 520
    Width = 80
    Height = 27
    Caption = '&Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 34
    OnClick = BitBtn3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
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
  object KodeBrd: TEdit
    Left = 109
    Top = 210
    Width = 65
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 3
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
    OnEnter = KodeGrpEnter
    OnExit = KodeBrdExit
  end
  object Aktif: TComboBox
    Left = 109
    Top = 429
    Width = 116
    Height = 24
    BevelKind = bkFlat
    Style = csDropDownList
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 16
    ItemIndex = 1
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 32
    Text = 'Aktif'
    Items.Strings = (
      'Non Aktif'
      'Aktif')
  end
  object BitBtn2: TBitBtn
    Left = 408
    Top = 520
    Width = 80
    Height = 27
    Caption = '&Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 35
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
      993337777F777F3377F3393999707333993337F77737333337FF993399933333
      399377F3777FF333377F993339903333399377F33737FF33377F993333707333
      399377F333377FF3377F993333101933399377F333777FFF377F993333000993
      399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
      99333773FF777F777733339993707339933333773FF7FFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
  end
  object KodeTipe: TEdit
    Left = 109
    Top = 183
    Width = 66
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 7
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
    OnEnter = KodeTipeEnter
    OnExit = KodeTipeExit
  end
  object Hrg1_1: TPBNumEdit
    Left = 215
    Top = 313
    Width = 92
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 15
  end
  object Hrg2_1: TPBNumEdit
    Left = 311
    Top = 313
    Width = 92
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 16
  end
  object Hrg3_1: TPBNumEdit
    Left = 407
    Top = 313
    Width = 92
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 17
  end
  object QntMin: TPBNumEdit
    Left = 109
    Top = 402
    Width = 92
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 30
  end
  object QntMax: TPBNumEdit
    Left = 311
    Top = 402
    Width = 92
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 31
  end
  object Sat1: TEdit
    Left = 13
    Top = 313
    Width = 44
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 3
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 12
  end
  object Sat2: TEdit
    Left = 13
    Top = 338
    Width = 44
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 3
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 18
  end
  object Isi2: TPBNumEdit
    Left = 60
    Top = 338
    Width = 53
    Height = 22
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    OnChange = Isi2Change
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 19
    Value = 1
  end
  object Sat3: TEdit
    Left = 13
    Top = 363
    Width = 44
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 3
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 24
    Visible = False
  end
  object Isi3: TPBNumEdit
    Left = 60
    Top = 363
    Width = 53
    Height = 22
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 25
    Value = 1
    Visible = False
  end
  object Isi1: TPBNumEdit
    Left = 60
    Top = 313
    Width = 53
    Height = 22
    Alignment = taRightJustify
    DisabledColor = clWhite
    Enabled = False
    Ctl3D = True
    Decimals = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 1
    MinValue = 1
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 13
    Value = 1
  end
  object Hrg1_2: TPBNumEdit
    Left = 215
    Top = 338
    Width = 92
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 21
  end
  object Hrg2_2: TPBNumEdit
    Left = 311
    Top = 338
    Width = 92
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 22
  end
  object Hrg3_2: TPBNumEdit
    Left = 407
    Top = 338
    Width = 92
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 23
  end
  object Hrg1_3: TPBNumEdit
    Left = 215
    Top = 363
    Width = 92
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 27
    Visible = False
  end
  object Hrg2_3: TPBNumEdit
    Left = 311
    Top = 363
    Width = 92
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 28
    Visible = False
  end
  object Hrg3_3: TPBNumEdit
    Left = 407
    Top = 363
    Width = 92
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 29
    Visible = False
  end
  object KodeSupp: TEdit
    Left = 341
    Top = 39
    Width = 65
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
    Visible = False
    OnEnter = KodeSuppEnter
    OnKeyDown = KodeSuppKeyDown
  end
  object Keterangan: TEdit
    Left = 109
    Top = 454
    Width = 388
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 50
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 33
  end
  object PartNumber: TEdit
    Left = 357
    Top = 240
    Width = 140
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 25
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 10
    Visible = False
    OnEnter = KodeBrgEnter
    OnExit = KodeBrgExit
  end
  object VolumeBrg1: TPBNumEdit
    Left = 119
    Top = 313
    Width = 90
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 14
    Visible = False
  end
  object VolumeBrg2: TPBNumEdit
    Left = 119
    Top = 338
    Width = 90
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 20
    Visible = False
  end
  object VolumeBrg3: TPBNumEdit
    Left = 119
    Top = 363
    Width = 90
    Height = 24
    Alignment = taRightJustify
    Ctl3D = True
    Decimals = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumberFormat = Thousands
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 26
    Visible = False
  end
  object KdKategori: TEdit
    Left = 109
    Top = 157
    Width = 66
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 7
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    OnEnter = KodeTipeEnter
    OnExit = KdKategoriExit
  end
  object PBrg: TEdit
    Left = 109
    Top = 79
    Width = 66
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 7
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnEnter = KodeTipeEnter
    OnExit = PBrgExit
  end
  object ABrg: TEdit
    Left = 341
    Top = 9
    Width = 66
    Height = 25
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 7
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnEnter = KodeTipeEnter
    OnExit = ABrgExit
  end
  object MeBrg: TEdit
    Left = 109
    Top = 105
    Width = 66
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 7
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    OnEnter = KodeTipeEnter
    OnExit = MeBrgExit
  end
  object MBrg: TEdit
    Left = 109
    Top = 131
    Width = 66
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 7
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    OnEnter = KodeTipeEnter
    OnExit = MBrgExit
  end
end
