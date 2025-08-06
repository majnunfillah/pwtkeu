object FrMainLunas: TFrMainLunas
  Left = 15
  Top = -11
  Width = 1288
  Height = 755
  Caption = 'Pelunasan Hutang'
  Color = 16773589
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1272
    Height = 45
    ButtonHeight = 39
    ButtonWidth = 89
    Color = 16773589
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
      Left = 89
      Top = 0
      Hint = 'Koreksi Record'
      Caption = '&Koreksi'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton5: TToolButton
      Left = 178
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton10: TToolButton
      Left = 186
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 12
      OnClick = ToolButton10Click
    end
    object ToolButton7: TToolButton
      Left = 275
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 283
      Top = 0
      Caption = '  Lain - lain  '
      DropdownMenu = PopupMenu1
      ImageIndex = 10
      Style = tbsDropDown
    end
    object ToolButton8: TToolButton
      Left = 387
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 395
      Top = 0
      Caption = 'K&eluar'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
    object ToolButton4: TToolButton
      Left = 484
      Top = 0
      Caption = '&Cetak'
      ImageIndex = 4
      Visible = False
      OnClick = ToolButton4Click
    end
    object ToolButton3: TToolButton
      Left = 573
      Top = 0
      Caption = 'Otorisasi'
      ImageIndex = 15
      OnClick = ToolButton3Click
    end
    object ToolButton11: TToolButton
      Left = 662
      Top = 0
      Caption = 'Batal Otorisasi'
      ImageIndex = 16
      OnClick = ToolButton11Click
    end
  end
  object dxDBGrid1: TdxDBGrid
    Left = 48
    Top = 96
    Width = 686
    Height = 260
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'NoBukti'
    ShowSummaryFooter = True
    SummaryGroups = <
      item
        DefaultGroup = True
        SummaryItems = <
          item
            SummaryField = 'Debet'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            SummaryField = 'Kredit'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end>
        Name = 'dxDBGrid1SummaryGroup1'
      end>
    SummarySeparator = ', '
    Color = 14540253
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnDblClick = ToolButton2Click
    OnMouseUp = dxDBGrid1MouseUp
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = DsMaster
    Filter.Criteria = {00000000}
    FixedBandLineColor = clBlack
    GridLineColor = clBlack
    GroupPanelColor = clMoneyGreen
    GroupPanelFontColor = clBlack
    GroupNodeColor = clMoneyGreen
    GroupNodeTextColor = clBlack
    HeaderColor = 11441504
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -13
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    HideSelectionColor = 14216171
    HideSelectionTextColor = clBlack
    HighlightColor = 9629163
    HighlightTextColor = clBlack
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCollapsedReload, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    RowFooterColor = 10865880
    ShowRowFooter = True
    OnCustomDrawCell = dxDBGrid1CustomDrawCell
    OnCustomDrawFooter = dxDBGrid1CustomDrawFooter
    object dxDBGrid1NoBukti: TdxDBGridMaskColumn
      Sorted = csUp
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NoBukti'
    end
    object dxDBGrid1Tanggal: TdxDBGridDateColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tanggal'
    end
    object dxDBGrid1KodeCS: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KodeCS'
    end
    object dxDBGrid1NamaCS: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NamaCS'
    end
    object dxDBGrid1Jumlah: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Jumlah'
    end
    object dxDBGrid1NoGiro: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NoGiro'
    end
    object dxDBGrid1Bank: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Bank'
    end
    object dxDBGrid1NilaiGiro: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NilaiGiro'
    end
    object dxDBGrid1TglGiro: TdxDBGridDateColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TglGiro'
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 45
    Width = 1272
    Height = 672
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.Kind = lfFlat
    object tvMaster: TcxGridDBTableView
      DataController.DataSource = DsMaster
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0'
          Kind = skCount
          FieldName = 'NoBukti'
          Column = tvMasterNoBukti
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'Jumlah'
          Column = tvMasterJumlah
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'NilaiGiro'
          Column = tvMasterNilaiGiro
        end>
      DataController.Summary.SummaryGroups = <>
      OnFocusedRecordChanged = tvMasterFocusedRecordChanged
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.StyleSheet = cxGridStyleHd
      object tvMasterNoBukti: TcxGridDBColumn
        Caption = 'No. Bukti'
        DataBinding.FieldName = 'NoBukti'
        Width = 128
      end
      object tvMasterTanggal: TcxGridDBColumn
        DataBinding.FieldName = 'Tanggal'
        Width = 73
      end
      object tvMasterKodeCS: TcxGridDBColumn
        DataBinding.FieldName = 'KodeCS'
        Visible = False
      end
      object tvMasterNamaCS: TcxGridDBColumn
        DataBinding.FieldName = 'NamaCS'
        Width = 285
      end
      object tvMasterJumlah: TcxGridDBColumn
        DataBinding.FieldName = 'Jumlah'
        HeaderAlignmentHorz = taRightJustify
        Width = 110
      end
      object tvMasterNoGiro: TcxGridDBColumn
        Caption = 'No. Giro'
        DataBinding.FieldName = 'NoGiro'
        Width = 130
      end
      object tvMasterBank: TcxGridDBColumn
        DataBinding.FieldName = 'Bank'
        Width = 100
      end
      object tvMasterNilaiGiro: TcxGridDBColumn
        Caption = 'Nilai Giro'
        DataBinding.FieldName = 'NilaiGiro'
        HeaderAlignmentHorz = taRightJustify
        Width = 110
      end
      object tvMasterTglGiro: TcxGridDBColumn
        Caption = 'Tgl Giro'
        DataBinding.FieldName = 'TglGiro'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
      end
      object tvMasterOtorisasi1: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi1'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayUnchecked = 'False'
        Properties.NullStyle = nssUnchecked
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tvMasterUserOto1: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tvMasterTglOto1: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tvMasterOtorisasi2: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi2'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayUnchecked = 'False'
        Properties.NullStyle = nssUnchecked
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tvMasterUserOto2: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser2'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tvMasterTglOto2: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto2'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tvMasterOto3: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi3'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayUnchecked = 'False'
        Properties.NullStyle = nssUnchecked
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tvMasterUserOto3: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser3'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tvMasterTglOto3: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto3'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tvMasterOto4: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi4'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayUnchecked = 'False'
        Properties.NullStyle = nssUnchecked
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tvMasterUserOto4: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser4'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tvMasterTglOto4: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto4'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tvMasterOto5: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi5'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayUnchecked = 'False'
        Properties.NullStyle = nssUnchecked
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tvMasterUserOto5: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser5'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tvMasterTglOto5: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto5'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvMaster
    end
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
  object PopupMenu2: TPopupMenu
    Left = 459
    Top = 71
    object TampilValid: TMenuItem
      Caption = 'Tampil Valid'
      Checked = True
    end
    object TampilBatal: TMenuItem
      Caption = 'Tampil Batal'
    end
  end
  object QuMaster: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Bulan int, @Tahun int, @TipeTrans varchar(10)'
      ''
      'select  @Bulan=9, @Tahun=2009, @TipeTrans='#39'PT'#39
      ''
      
        'select '#9'h.NoBukti, h.Tanggal, h.KodeCustSupp KodeCS, s.NAMACUSTS' +
        'UPP NamaCS,'
      
        #9'sum(i.Debet)Jumlah, j.NoGiro, j.Bank ,j.DebetRp NilaiGiro,j.Tgl' +
        'Giro,'
      
        '        I.IsOtorisasi1, I.OtoUser1, I.TglOto1, I.IsOtorisasi2, I' +
        '.OtoUser2, I.TglOto2,'
      
        #9'I.IsOtorisasi3, I.OtoUser3, I.TglOto3, I.IsOtorisasi4, I.OtoUse' +
        'r4, I.TglOto4,'
      #9'I.IsOtorisasi5, I.OtoUser5, I.TglOto5 ,'
      
        '        Cast(Case when Case when I.IsOtorisasi1=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when I.IsOtorisasi2=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when I.IsOtorisasi3=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when I.IsOtorisasi4=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when I.IsOtorisasi5=1 then 1 else 0 ' +
        'end=I.MaxOL then 0'
      '                  else 1'
      '             end As Bit) NeedOtorisasi'
      'from '#9'vwHutPiut h'
      'left outer join DBCUSTSUPP s on s.KODECUSTSUPP=h.KodeCustSupp'
      'left outer join DBHUTPIUT i on h.NoBukti=i.NoBukti'
      'Left outer join DBGIRO j on j.BuktiCair=i.NoBukti'
      
        'where '#9'month(h.Tanggal)=@Bulan and year(h.Tanggal)=@Tahun and h.' +
        'NoBukti like @TipeTrans'
      
        'group by h.NoBukti, h.Tanggal, h.KodeCustSupp, s.NAMACUSTSUPP, j' +
        '.NoGiro, j.Bank ,j.DebetRp,j.TglGiro,'
      ''
      
        #9'I.IsOtorisasi1, I.OtoUser1, I.TglOto1, I.IsOtorisasi2, I.OtoUse' +
        'r2, I.TglOto2,'
      
        #9'I.IsOtorisasi3, I.OtoUser3, I.TglOto3, I.IsOtorisasi4, I.OtoUse' +
        'r4, I.TglOto4,'
      #9'I.IsOtorisasi5, I.OtoUser5, I.TglOto5,'
      
        '        Cast(Case when Case when I.IsOtorisasi1=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when I.IsOtorisasi2=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when I.IsOtorisasi3=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when I.IsOtorisasi4=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when I.IsOtorisasi5=1 then 1 else 0 ' +
        'end=I.MaxOL then 0'
      '                  else 1'
      '             end As Bit)'
      ''
      'order by h.Tanggal, h.NoBukti')
    Left = 24
    Top = 184
    object QuMasterNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuMasterTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterKodeCS: TStringField
      FieldName = 'KodeCS'
    end
    object QuMasterNamaCS: TStringField
      FieldName = 'NamaCS'
      Size = 40
    end
    object QuMasterJumlah: TBCDField
      FieldName = 'Jumlah'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterNoGiro: TStringField
      FieldName = 'NoGiro'
    end
    object QuMasterBank: TStringField
      FieldName = 'Bank'
    end
    object QuMasterNilaiGiro: TBCDField
      FieldName = 'NilaiGiro'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuMasterTglGiro: TDateTimeField
      FieldName = 'TglGiro'
    end
    object QuMasterIsOtorisasi1: TBooleanField
      FieldName = 'IsOtorisasi1'
    end
    object QuMasterOtoUser1: TStringField
      FieldName = 'OtoUser1'
      Size = 15
    end
    object QuMasterTglOto1: TDateTimeField
      FieldName = 'TglOto1'
    end
    object QuMasterIsOtorisasi2: TBooleanField
      FieldName = 'IsOtorisasi2'
    end
    object QuMasterOtoUser2: TStringField
      FieldName = 'OtoUser2'
      Size = 15
    end
    object QuMasterTglOto2: TDateTimeField
      FieldName = 'TglOto2'
    end
    object QuMasterIsOtorisasi3: TBooleanField
      FieldName = 'IsOtorisasi3'
    end
    object QuMasterOtoUser3: TStringField
      FieldName = 'OtoUser3'
      Size = 15
    end
    object QuMasterTglOto3: TDateTimeField
      FieldName = 'TglOto3'
    end
    object QuMasterIsOtorisasi4: TBooleanField
      FieldName = 'IsOtorisasi4'
    end
    object QuMasterOtoUser4: TStringField
      FieldName = 'OtoUser4'
      Size = 15
    end
    object QuMasterTglOto4: TDateTimeField
      FieldName = 'TglOto4'
    end
    object QuMasterIsOtorisasi5: TBooleanField
      FieldName = 'IsOtorisasi5'
    end
    object QuMasterOtoUser5: TStringField
      FieldName = 'OtoUser5'
      Size = 15
    end
    object QuMasterTglOto5: TDateTimeField
      FieldName = 'TglOto5'
    end
    object QuMasterNeedOtorisasi: TBooleanField
      FieldName = 'NeedOtorisasi'
      ReadOnly = True
    end
  end
  object DsMaster: TDataSource
    DataSet = QuMaster
    Left = 56
    Top = 184
  end
  object QuDetail1: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMaster
    Parameters = <>
    SQL.Strings = (
      'select * from dbHutPiut '
      'where NoBukti='#39#39
      'Order By NoBukti')
    Left = 96
    Top = 184
    object QuDetail1NoFaktur: TStringField
      FieldName = 'NoFaktur'
      Size = 30
    end
    object QuDetail1NoRetur: TStringField
      FieldName = 'NoRetur'
      Size = 30
    end
    object QuDetail1TipeTrans: TStringField
      FieldName = 'TipeTrans'
      Size = 3
    end
    object QuDetail1KodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 15
    end
    object QuDetail1NoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 30
    end
    object QuDetail1NoMsk: TIntegerField
      FieldName = 'NoMsk'
    end
    object QuDetail1Urut: TIntegerField
      FieldName = 'Urut'
    end
    object QuDetail1Tanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuDetail1JatuhTempo: TDateTimeField
      FieldName = 'JatuhTempo'
    end
    object QuDetail1Debet: TBCDField
      FieldName = 'Debet'
      Precision = 18
      Size = 2
    end
    object QuDetail1Kredit: TBCDField
      FieldName = 'Kredit'
      Precision = 18
      Size = 2
    end
    object QuDetail1Saldo: TBCDField
      FieldName = 'Saldo'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object QuDetail1Valas: TStringField
      FieldName = 'Valas'
      Size = 15
    end
    object QuDetail1Kurs: TBCDField
      FieldName = 'Kurs'
      Precision = 18
    end
    object QuDetail1DebetD: TBCDField
      FieldName = 'DebetD'
      Precision = 18
      Size = 2
    end
    object QuDetail1KreditD: TBCDField
      FieldName = 'KreditD'
      Precision = 18
      Size = 2
    end
    object QuDetail1SaldoD: TBCDField
      FieldName = 'SaldoD'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object QuDetail1KodeSales: TStringField
      FieldName = 'KodeSales'
      Size = 15
    end
    object QuDetail1Tipe: TStringField
      FieldName = 'Tipe'
      Size = 4
    end
    object QuDetail1Perkiraan: TStringField
      FieldName = 'Perkiraan'
      Size = 25
    end
    object QuDetail1Catatan: TStringField
      FieldName = 'Catatan'
      Size = 800
    end
    object QuDetail1MyID: TBytesField
      FieldName = 'MyID'
      ReadOnly = True
      Size = 8
    end
    object QuDetail1NOINVOICE: TStringField
      FieldName = 'NOINVOICE'
      Size = 50
    end
    object QuDetail1TGLINVOICE: TDateTimeField
      FieldName = 'TGLINVOICE'
    end
    object QuDetail1NOPAJAK: TStringField
      FieldName = 'NOPAJAK'
      Size = 50
    end
    object QuDetail1TGLFPJ: TDateTimeField
      FieldName = 'TGLFPJ'
    end
    object QuDetail1KodeVls_: TStringField
      FieldName = 'KodeVls_'
    end
    object QuDetail1Kurs_: TBCDField
      FieldName = 'Kurs_'
      Precision = 18
      Size = 2
    end
    object QuDetail1KursBayar: TBCDField
      FieldName = 'KursBayar'
      Precision = 18
      Size = 2
    end
    object QuDetail1FlagSimbol: TStringField
      FieldName = 'FlagSimbol'
      Size = 2
    end
  end
  object DsDetail1: TDataSource
    DataSet = QuDetail1
    Left = 128
    Top = 184
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 576
    Top = 72
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle8: TcxStyle
    end
    object cxGridStyleHd: TcxGridTableViewStyleSheet
      Styles.Background = cxStyle2
      Styles.Content = cxStyle3
      Styles.ContentEven = cxStyle4
      Styles.ContentOdd = cxStyle5
      Styles.Inactive = cxStyle7
      Styles.Selection = cxStyle8
      Styles.Footer = cxStyle6
      Styles.Header = cxStyle1
    end
    object cxGridStyleDt: TcxGridTableViewStyleSheet
    end
  end
  object QuView: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Bulan int, @Tahun int, @TipeTrans varchar(10)'
      ''
      'select  @Bulan=9, @Tahun=2009, @TipeTrans='#39'PT'#39
      ''
      
        'select '#9'h.NoBukti, h.Tanggal, h.KodeCustSupp KodeCS, s.NAMACUSTS' +
        'UPP NamaCS,'
      
        #9'sum(i.Debet)Jumlah, j.NoGiro, j.Bank ,j.DebetRp NilaiGiro,j.Tgl' +
        'Giro '
      'from '#9'vwHutPiut h'
      'left outer join DBCUSTSUPP s on s.KODECUSTSUPP=h.KodeCustSupp'
      'left outer join DBHUTPIUT i on h.NoBukti=i.NoBukti'
      'Left outer join DBGIRO j on j.BuktiCair=i.NoBukti'
      
        'where '#9'month(h.Tanggal)=@Bulan and year(h.Tanggal)=@Tahun and h.' +
        'NoBukti  Like @TipeTrans'
      
        'group by h.NoBukti, h.Tanggal, h.KodeCustSupp, s.NAMACUSTSUPP, j' +
        '.NoGiro, j.Bank ,j.DebetRp,j.TglGiro '
      ''
      'order by h.Tanggal, h.NoBukti')
    Left = 256
    Top = 296
    object StringField1: TStringField
      FieldName = 'NoBukti'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Tanggal'
    end
    object StringField3: TStringField
      FieldName = 'NamaCS'
      Size = 40
    end
    object BCDField1: TBCDField
      FieldName = 'Jumlah'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object StringField4: TStringField
      FieldName = 'NoGiro'
    end
    object StringField5: TStringField
      FieldName = 'Bank'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'TglGiro'
    end
    object QuViewNilaiGiro: TBCDField
      FieldName = 'NilaiGiro'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuViewKodeCS: TStringField
      FieldName = 'KodeCS'
      ReadOnly = True
      Size = 40
    end
  end
end
