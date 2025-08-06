object FrHPPProduksi: TFrHPPProduksi
  Left = 344
  Top = 150
  Width = 967
  Height = 553
  Caption = 'Hpp Barang Jadi'
  Color = 16773589
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 951
    Height = 46
    ButtonHeight = 39
    ButtonWidth = 69
    Color = clBtnFace
    Customizable = True
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
      Left = 69
      Top = 0
      Hint = 'Koreksi Record'
      Caption = '&Koreksi'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 138
      Top = 0
      Hint = 'Hapus Record'
      Caption = '&Hapus'
      ImageIndex = 13
      OnClick = ToolButton3Click
    end
    object LokasiFileTxt: TEdit
      Left = 207
      Top = 0
      Width = 121
      Height = 39
      TabOrder = 0
      Visible = False
    end
    object ToolButton5: TToolButton
      Left = 328
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 336
      Top = 0
      Caption = '&Cetak'
      ImageIndex = 4
      Visible = False
    end
    object ToolButton10: TToolButton
      Left = 405
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = ToolButton10Click
    end
    object ToolButton7: TToolButton
      Left = 474
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 482
      Top = 0
      Caption = 'Lain-lain'
      DropdownMenu = PopupMenu1
      ImageIndex = 10
      Style = tbsDropDown
      Visible = False
    end
    object ToolButton11: TToolButton
      Left = 566
      Top = 0
      Caption = 'Ambil Data'
      DropdownMenu = PopupMenu2
      ImageIndex = 5
    end
    object ToolButton8: TToolButton
      Left = 635
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 9
      Style = tbsSeparator
      Visible = False
    end
    object ToolButton9: TToolButton
      Left = 643
      Top = 0
      Caption = 'K&eluar'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 46
    Width = 951
    Height = 469
    Hint = 'Untuk cari data ketik kata yang dicari di grid'
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'KOdeBrg'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Color = 14540253
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnMouseUp = dxDBGrid1MouseUp
    AutoExpandOnSearch = False
    BandColor = clBlack
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -13
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = DsView
    Filter.Criteria = {00000000}
    FixedBandLineColor = clBlack
    GridLineColor = clBlack
    GroupPanelColor = 13025469
    GroupPanelFontColor = clBlack
    GroupNodeColor = clMoneyGreen
    GroupNodeTextColor = clBlack
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -13
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    HideSelectionColor = clMoneyGreen
    HideSelectionTextColor = clBlack
    HighlightColor = 9629163
    HighlightTextColor = clBlack
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -13
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    RowFooterColor = 16763283
    RowFooterTextColor = clWindow
    ShowRowFooter = True
    OnCustomDrawCell = dxDBGrid1CustomDrawCell
    OnCustomDrawFooter = dxDBGrid1CustomDrawFooter
    object dxDBGrid1Bulan: TdxDBGridMaskColumn
      Caption = 'Bulan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'nmBulan'
    end
    object dxDBGrid1Tahun: TdxDBGridMaskColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderAlignment = taCenter
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tahun'
    end
    object dxDBGrid1KodeBrg: TdxDBGridColumn
      Caption = 'Kode Barang Jadi'
      HeaderAlignment = taCenter
      Width = 130
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KodeBrg'
    end
    object dxDBGrid1Namabrg: TdxDBGridMaskColumn
      Caption = 'Nama Barang'
      HeaderAlignment = taCenter
      Width = 300
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Namabrg'
    end
    object dxDBGrid1Jns_Kertas: TdxDBGridMaskColumn
      Caption = 'Jenis Kertas'
      HeaderAlignment = taCenter
      Visible = False
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Jns_Kertas'
    end
    object dxDBGrid1Ukr_Kertas: TdxDBGridMaskColumn
      Caption = 'Ukuran Kertas'
      HeaderAlignment = taCenter
      Visible = False
      Width = 114
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Ukr_Kertas'
    end
    object dxDBGrid1GSM: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 44
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GSM'
    end
    object dxDBGrid1HPP: TdxDBGridColumn
      HeaderAlignment = taCenter
      Width = 99
      BandIndex = 0
      RowIndex = 0
      FieldName = 'HPP'
    end
  end
  object mmDataAsli: TMemo
    Left = 184
    Top = 96
    Width = 217
    Height = 273
    ScrollBars = ssVertical
    TabOrder = 2
    Visible = False
    WordWrap = False
  end
  object PBProses: TProgressBar
    Left = -326
    Top = 0
    Width = 1014
    Height = 9
    Min = 0
    Max = 100
    TabOrder = 3
    Visible = False
  end
  object QuView: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'declare @bulan integer,@tahun integer'
      'select @bulan =1,@tahun =2012'
      'Select a.bulan,a.Tahun, a.KOdeBrg,a.HPPBrg Hpp,'
      'case when Bulan = 1 then '#39'Januari'#39
      'when Bulan =2 Then '#39'Februari'#39
      'when Bulan =3 Then '#39'Maret'#39
      'When Bulan =4 then '#39'April'#39
      'When Bulan =5 then '#39'Mei'#39
      'when Bulan =6 then '#39'Juni'#39
      'when Bulan =7 Then '#39'Juli'#39
      'when Bulan =8 Then '#39'Agustus'#39
      'When Bulan =9 then '#39'September'#39
      'When Bulan =10 then '#39'Oktober'#39
      'When Bulan =11 then '#39'November'#39
      'When Bulan =12 then '#39'Desember'#39' end nmBulan,'
      'B.Namabrg,'#39#39' Jns_Kertas, '#39#39' Ukr_Kertas, 0.00 GSM,'
      'B.SAT1, B.SAT2'
      'from dbHPPProduksi a'
      '     left Outer join dbBarang b on b.kodebrg=a.kodebrg'
      
        'where bulan =@bulan and tahun =@tahun and b.KodeGrp in ('#39'BJ'#39','#39'BU' +
        #39')'
      'order by a.KOdebrg,A.Bulan, A.Tahun')
    Left = 82
    Top = 85
    object QuViewbulan: TIntegerField
      FieldName = 'bulan'
    end
    object QuViewTahun: TIntegerField
      FieldName = 'Tahun'
    end
    object QuViewKOdeBrg: TStringField
      FieldName = 'KOdeBrg'
      Size = 25
    end
    object QuViewHpp: TBCDField
      FieldName = 'Hpp'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuViewnmBulan: TStringField
      FieldName = 'nmBulan'
      ReadOnly = True
      Size = 9
    end
    object QuViewNamabrg: TStringField
      FieldName = 'Namabrg'
      Size = 200
    end
    object QuViewJns_Kertas: TStringField
      FieldName = 'Jns_Kertas'
      Size = 50
    end
    object QuViewUkr_Kertas: TStringField
      FieldName = 'Ukr_Kertas'
      Size = 50
    end
    object QuViewGSM: TBCDField
      FieldName = 'GSM'
      Precision = 18
      Size = 2
    end
    object QuViewSAT1: TStringField
      FieldName = 'SAT1'
      Size = 5
    end
    object QuViewSAT2: TStringField
      FieldName = 'SAT2'
      Size = 5
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 139
    Top = 69
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
  object Sp_Merk: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'Sp_HPPJadi;1'
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
        Name = '@KOdeBrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@HPP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@OldBulan'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OldTahun'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OldKodeBrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end>
    Left = 529
    Top = 104
  end
  object QuSource: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'select A.*, B.NIK, B.Nama, B.KodeDept, B.KodeShf, B.KodeJab, B.K' +
        'odeESL, Ab.KeyNIK KeyNIKAbsensi, Ab.Urut UrutAbsensi, Ab.KodeTip' +
        'e KodeTipeAbsensi'
      'from dbTempAbsensi A'
      'left outer join dbKaryawan B on B.KeyNIK=A.KeyNIK'
      
        'left outer join dbAbsensi Ab on Ab.Tanggal=A.Tanggal and Ab.KeyN' +
        'IK=A.KeyNIK'
      'order by A.Tanggal, A.Urut')
    Left = 474
    Top = 141
    object QuSourceKeyUrut: TIntegerField
      FieldName = 'KeyUrut'
    end
    object QuSourceTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuSourceUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuSourceKeyNIK: TIntegerField
      FieldName = 'KeyNIK'
    end
    object QuSourceNoAbsen: TStringField
      FieldName = 'NoAbsen'
      Size = 10
    end
    object QuSourceJamMasuk: TDateTimeField
      FieldName = 'JamMasuk'
      DisplayFormat = 'hh:mm'
    end
    object QuSourceJamKeluar: TDateTimeField
      FieldName = 'JamKeluar'
      DisplayFormat = 'hh:mm'
    end
    object QuSourceNIK: TStringField
      FieldName = 'NIK'
      Size = 10
    end
    object QuSourceNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object QuSourceKodeDept: TStringField
      FieldName = 'KodeDept'
      Size = 50
    end
    object QuSourceKodeShf: TStringField
      FieldName = 'KodeShf'
      Size = 15
    end
    object QuSourceKodeJab: TStringField
      FieldName = 'KodeJab'
      Size = 50
    end
    object QuSourceKodeESL: TStringField
      FieldName = 'KodeESL'
      Size = 50
    end
    object QuSourceKeyNIKAbsensi: TIntegerField
      FieldName = 'KeyNIKAbsensi'
    end
    object QuSourceUrutAbsensi: TIntegerField
      FieldName = 'UrutAbsensi'
    end
    object QuSourceKodeTipeAbsensi: TStringField
      FieldName = 'KodeTipeAbsensi'
      Size = 2
    end
  end
  object DsSource: TDataSource
    DataSet = QuSource
    Left = 507
    Top = 141
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Text Document (*.txt)|*.txt'
    InitialDir = 'C:\'
    Left = 376
    Top = 176
  end
  object PopupMenu2: TPopupMenu
    Left = 483
    Top = 201
    object AmbilBulanLalu1: TMenuItem
      Caption = 'Ambil Data Bulan Lalu'
      OnClick = AmbilBulanLalu1Click
    end
    object AmbilDataDariFile1: TMenuItem
      Caption = 'Ambil Data Dari File *.txt'
      OnClick = AmbilDataDariFile1Click
    end
  end
end
