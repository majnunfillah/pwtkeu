object FrMainMemorial: TFrMainMemorial
  Left = 105
  Top = 221
  Width = 1283
  Height = 479
  Caption = 'Jurnal Memorial dan  Jurnal Koreksi'
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 45
    Width = 1275
    Height = 400
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'RpJumlah'
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'RpDiskon'
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'RpDPP'
        end
        item
          Format = ',0.00'
          FieldName = 'RpPPN'
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'RpNet'
        end>
      DataController.Summary.SummaryGroups = <>
      OnFocusedRecordChanged = tvMasterFocusedRecordChanged
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      Styles.StyleSheet = DM.cxGridStyleHd
      Styles.Header = DM.cxStyle8
      object tvMasterNoBukti: TcxGridDBColumn
        Caption = 'No Bukti'
        DataBinding.FieldName = 'NoBukti'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterTanggal: TcxGridDBColumn
        DataBinding.FieldName = 'Tanggal'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
      end
      object tvMasterNote: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'Note'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
      end
      object tvMasterDevisi: TcxGridDBColumn
        DataBinding.FieldName = 'Devisi'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterPerkiraan: TcxGridDBColumn
        DataBinding.FieldName = 'Perkiraan'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterTotalD: TcxGridDBColumn
        Caption = '     Jumlah       (Valas)'
        DataBinding.FieldName = 'TotalD'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
      end
      object tvMasterTotalRp: TcxGridDBColumn
        Caption = 'Jumlah (Rupiah)'
        DataBinding.FieldName = 'TotalRp'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 135
      end
      object tvMasterIsOtorisasi1: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi1'
      end
      object tvMasterOtoUser1: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser1'
      end
      object tvMasterTglOto1: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto1'
      end
      object tvMasterIsOtorisasi2: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi2'
      end
      object tvMasterOtoUser2: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser2'
      end
      object tvMasterTglOto2: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto2'
      end
      object tvMasterIsOtorisasi3: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi3'
      end
      object tvMasterOtoUser3: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser3'
      end
      object tvMasterTglOto3: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto3'
      end
      object tvMasterIsOtorisasi4: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi4'
      end
      object tvMasterOtoUser4: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser4'
      end
      object tvMasterTglOto4: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto4'
      end
      object tvMasterIsOtorisasi5: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi5'
      end
      object tvMasterOtoUser5: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser5'
      end
      object tvMasterTglOto5: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto5'
      end
    end
    object tvDetail: TcxGridDBTableView
      DataController.DataSource = DsDetail1
      DataController.DetailKeyFieldNames = 'NOBUKTI'
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.KeyFieldNames = 'URUT'
      DataController.MasterKeyFieldNames = 'NOBUKTI'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'JumlahD'
          Column = tvDetailJumlahD
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'JumlahRp'
          Column = tvDetailJumlahRp
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      Styles.StyleSheet = DM.cxGridStyleDt
      object tvDetailNoBukti: TcxGridDBColumn
        DataBinding.FieldName = 'NoBukti'
        Visible = False
      end
      object tvDetailTanggal: TcxGridDBColumn
        DataBinding.FieldName = 'Tanggal'
        Visible = False
      end
      object tvDetailDevisi: TcxGridDBColumn
        DataBinding.FieldName = 'Devisi'
        Visible = False
      end
      object tvDetailNote: TcxGridDBColumn
        DataBinding.FieldName = 'Note'
        Visible = False
      end
      object tvDetailLampiran: TcxGridDBColumn
        DataBinding.FieldName = 'Lampiran'
        Visible = False
      end
      object tvDetailPerkiraan: TcxGridDBColumn
        DataBinding.FieldName = 'Perkiraan'
        Width = 100
      end
      object tvDetailLawan: TcxGridDBColumn
        DataBinding.FieldName = 'Lawan'
        Width = 100
      end
      object tvDetailKeterangan: TcxGridDBColumn
        DataBinding.FieldName = 'Keterangan'
        Width = 300
      end
      object tvDetailKeterangan2: TcxGridDBColumn
        DataBinding.FieldName = 'Keterangan2'
        Visible = False
      end
      object tvDetailDebet: TcxGridDBColumn
        DataBinding.FieldName = 'Debet'
        Visible = False
        Width = 120
      end
      object tvDetailKredit: TcxGridDBColumn
        DataBinding.FieldName = 'Kredit'
        Visible = False
        Width = 120
      end
      object tvDetailTPHC: TcxGridDBColumn
        Caption = 'T'
        DataBinding.FieldName = 'TPHC'
      end
      object tvDetailValas: TcxGridDBColumn
        DataBinding.FieldName = 'Valas'
        Width = 40
      end
      object tvDetailKurs: TcxGridDBColumn
        DataBinding.FieldName = 'Kurs'
        Width = 90
      end
      object tvDetailDolar: TcxGridDBColumn
        DataBinding.FieldName = 'Dolar'
        Visible = False
      end
      object tvDetailTipeTrans: TcxGridDBColumn
        DataBinding.FieldName = 'TipeTrans'
        Visible = False
      end
      object tvDetailKodeRelasi: TcxGridDBColumn
        DataBinding.FieldName = 'KodeRelasi'
        Visible = False
      end
      object tvDetailNoAktiva: TcxGridDBColumn
        DataBinding.FieldName = 'NoAktiva'
        Visible = False
      end
      object tvDetailStatusAktiva: TcxGridDBColumn
        DataBinding.FieldName = 'StatusAktiva'
        Visible = False
      end
      object tvDetailKodeCust: TcxGridDBColumn
        DataBinding.FieldName = 'KodeCust'
        Visible = False
      end
      object tvDetailNoGiro: TcxGridDBColumn
        DataBinding.FieldName = 'NoGiro'
        Visible = False
      end
      object tvDetailBank: TcxGridDBColumn
        DataBinding.FieldName = 'Bank'
        Visible = False
      end
      object tvDetailNilaiGiro: TcxGridDBColumn
        DataBinding.FieldName = 'NilaiGiro'
        Visible = False
      end
      object tvDetailTglCair: TcxGridDBColumn
        DataBinding.FieldName = 'TglCair'
        Visible = False
      end
      object tvDetailTglGiro: TcxGridDBColumn
        DataBinding.FieldName = 'TglGiro'
        Visible = False
      end
      object tvDetailLock: TcxGridDBColumn
        DataBinding.FieldName = 'Lock'
        Visible = False
      end
      object tvDetailTglInput: TcxGridDBColumn
        DataBinding.FieldName = 'TglInput'
        Visible = False
      end
      object tvDetailUserID: TcxGridDBColumn
        DataBinding.FieldName = 'UserID'
        Visible = False
      end
      object tvDetailReg: TcxGridDBColumn
        DataBinding.FieldName = 'Reg'
        Visible = False
      end
      object tvDetailFlag: TcxGridDBColumn
        DataBinding.FieldName = 'Flag'
        Visible = False
      end
      object tvDetailUrut: TcxGridDBColumn
        DataBinding.FieldName = 'Urut'
        Visible = False
      end
      object tvDetailStatusGiro: TcxGridDBColumn
        DataBinding.FieldName = 'StatusGiro'
        Visible = False
      end
      object tvDetailPosAktivaPerkiraan: TcxGridDBColumn
        DataBinding.FieldName = 'PosAktivaPerkiraan'
        Visible = False
      end
      object tvDetailPosAktivaLawan: TcxGridDBColumn
        DataBinding.FieldName = 'PosAktivaLawan'
        Visible = False
      end
      object tvDetailNoAktivaLawan: TcxGridDBColumn
        DataBinding.FieldName = 'NoAktivaLawan'
        Visible = False
      end
      object tvDetailNoAcc: TcxGridDBColumn
        DataBinding.FieldName = 'NoAcc'
        Visible = False
      end
      object tvDetailNobon: TcxGridDBColumn
        DataBinding.FieldName = 'Nobon'
        Visible = False
      end
      object tvDetailKeyUrut: TcxGridDBColumn
        DataBinding.FieldName = 'KeyUrut'
        Visible = False
      end
      object tvDetailJumlahD: TcxGridDBColumn
        Caption = 'Jumlah $'
        DataBinding.FieldName = 'JumlahD'
        HeaderAlignmentHorz = taRightJustify
        Width = 120
      end
      object tvDetailJumlahRp: TcxGridDBColumn
        Caption = 'Jumlah Rp'
        DataBinding.FieldName = 'JumlahRp'
        HeaderAlignmentHorz = taRightJustify
        Width = 120
      end
    end
    object tvMaster2: TcxGridDBBandedTableView
      DataController.DataSource = DsMaster
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OnFocusedRecordChanged = tvMaster2FocusedRecordChanged
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      Styles.StyleSheet = DM.cxGridBandStyleHd
      Styles.Header = DM.cxStyle8
      Styles.BandHeader = DM.cxStyle8
      Bands = <
        item
          FixedKind = fkLeft
        end
        item
        end>
      object tvMaster2NoBukti: TcxGridDBBandedColumn
        Caption = 'No. Bukti'
        DataBinding.FieldName = 'NoBukti'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster2Tanggal: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tanggal'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster2Note: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Note'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvMaster2Devisi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Devisi'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvMaster2Perkiraan: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Perkiraan'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tvMaster2TotalD: TcxGridDBBandedColumn
        Caption = 'Jumlah (Valas)'
        DataBinding.FieldName = 'TotalD'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tvMaster2TotalRp: TcxGridDBBandedColumn
        Caption = 'Jumlah (Rupiah)'
        DataBinding.FieldName = 'TotalRp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tvMaster2IsOtorisasi1: TcxGridDBBandedColumn
        Caption = 'Authorized 1'
        DataBinding.FieldName = 'IsOtorisasi1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster2OtoUser1: TcxGridDBBandedColumn
        Caption = 'Otorisasi User 1'
        DataBinding.FieldName = 'OtoUser1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster2TglOto1: TcxGridDBBandedColumn
        Caption = 'Tanggal Otorisasi 1'
        DataBinding.FieldName = 'TglOto1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvMaster2IsOtorisasi2: TcxGridDBBandedColumn
        Caption = 'Authorized 2'
        DataBinding.FieldName = 'IsOtorisasi2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvMaster2OtoUser2: TcxGridDBBandedColumn
        Caption = 'Otorisasi User 2'
        DataBinding.FieldName = 'OtoUser2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tvMaster2TglOto2: TcxGridDBBandedColumn
        Caption = 'Tanggal Otorisasi 2'
        DataBinding.FieldName = 'TglOto2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tvMaster2IsOtorisasi3: TcxGridDBBandedColumn
        Caption = 'Authorized 3'
        DataBinding.FieldName = 'IsOtorisasi3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tvMaster2OtoUser3: TcxGridDBBandedColumn
        Caption = 'Otorisasi User 3'
        DataBinding.FieldName = 'OtoUser3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tvMaster2TglOto3: TcxGridDBBandedColumn
        Caption = 'Tanggal Otorisasi 3'
        DataBinding.FieldName = 'TglOto3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tvMaster2IsOtorisasi4: TcxGridDBBandedColumn
        Caption = 'Authorized 4'
        DataBinding.FieldName = 'IsOtorisasi4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object tvMaster2OtoUser4: TcxGridDBBandedColumn
        Caption = 'Otorisasi User 4'
        DataBinding.FieldName = 'OtoUser4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object tvMaster2TglOto4: TcxGridDBBandedColumn
        Caption = 'Tanggal Otorisasi 4'
        DataBinding.FieldName = 'TglOto4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object tvMaster2IsOtorisasi5: TcxGridDBBandedColumn
        Caption = 'Authorized 5'
        DataBinding.FieldName = 'IsOtorisasi5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object tvMaster2OtoUser5: TcxGridDBBandedColumn
        Caption = 'Otorisasi User 5'
        DataBinding.FieldName = 'OtoUser5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object tvMaster2TglOto5: TcxGridDBBandedColumn
        Caption = 'Tanggal Otorisasi 5'
        DataBinding.FieldName = 'TglOto5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvMaster
      object cxGrid1Level2: TcxGridLevel
        GridView = tvDetail
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1275
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
      Left = 385
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 393
      Top = 0
      Caption = 'K&eluar'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
    object ToolButton4: TToolButton
      Left = 482
      Top = 0
      Caption = '&Cetak'
      ImageIndex = 4
      OnClick = ToolButton4Click
    end
    object ToolButton3: TToolButton
      Left = 571
      Top = 0
      Caption = 'Otorisasi'
      ImageIndex = 15
      OnClick = ToolButton3Click
    end
    object ToolButton11: TToolButton
      Left = 660
      Top = 0
      Caption = 'Batal Otorisasi'
      ImageIndex = 16
      OnClick = ToolButton11Click
    end
  end
  object QuView: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'select substring(a.nobukti,9,3)+'#39' '#39'+a.NoBukti+'#39' '#39'+convert(varcha' +
        'r(10),a.tanggal,105) GroupNoBukti,a.Tanggal,a.NoBukti,a.Devisi,a' +
        '.Note,b.NamaDevisi,'
      
        'c.Perkiraan,c.Lawan,c.Keterangan,c.Debet,c.Kredit,c.Valas,c.Kurs' +
        ',c.Userid '
      'from dbtrans a'
      'left outer join dbDevisi b on b.Devisi=a.Devisi'
      'left outer join dbTransaksi c on c.NoBukti=a.NoBukti'
      
        'where month(a.tanggal)=1 and year(a.tanggal)=2008 and substring(' +
        'a.nobukti,9,3) in ('#39'BJK'#39','#39'BMM'#39','#39'PBL'#39','#39'PJL'#39')'
      'order by a.tanggal,a.devisi,substring(a.nobukti,9,3),a.nobukti')
    Left = 170
    Top = 45
    object QuViewGroupNoBukti: TStringField
      FieldName = 'GroupNoBukti'
      ReadOnly = True
      Size = 35
    end
    object QuViewTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuViewNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuViewDevisi: TStringField
      FieldName = 'Devisi'
      Size = 10
    end
    object QuViewNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object QuViewNamaDevisi: TStringField
      FieldName = 'NamaDevisi'
      Size = 30
    end
    object QuViewPerkiraan: TStringField
      FieldName = 'Perkiraan'
      Size = 15
    end
    object QuViewLawan: TStringField
      FieldName = 'Lawan'
      Size = 15
    end
    object QuViewKeterangan: TStringField
      DisplayWidth = 30
      FieldName = 'Keterangan'
      Size = 8000
    end
    object QuViewDebet: TBCDField
      FieldName = 'Debet'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuViewKredit: TBCDField
      FieldName = 'Kredit'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuViewValas: TStringField
      FieldName = 'Valas'
      Size = 3
    end
    object QuViewKurs: TBCDField
      DisplayWidth = 10
      FieldName = 'Kurs'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object DsView: TDataSource
    DataSet = QuView
    Left = 255
    Top = 45
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
  object Sp_Batal: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_BatalBlr;1'
    Parameters = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@mode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@kodet'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@nobukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@idUser'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@tgl'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 529
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
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2011, @Bulan=1'
      ''
      'select A.NoBukti, A.Tanggal, A.Note, '#39#39' Devisi, '#39#39' Perkiraan,'
      
        '        sum(case when B.Valas='#39'IDR'#39' then 0.00 else B.Debet+B.Kre' +
        'dit end) TotalD,'
      '        sum((B.Debet+B.Kredit)*B.Kurs) TotalRp,'
      
        #9'A.IsOtorisasi1, A.OtoUser1, A.TglOto1, A.IsOtorisasi2, A.OtoUse' +
        'r2, A.TglOto2, '
      
        #9'A.IsOtorisasi3, A.OtoUser3, A.TglOto3, A.IsOtorisasi4, A.OtoUse' +
        'r4, A.TglOto4,'
      #9'A.IsOtorisasi5, A.OtoUser5, A.TglOto5,'
      
        '        Cast(Case when Case when A.IsOtorisasi1=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when A.IsOtorisasi2=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when A.IsOtorisasi3=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when A.IsOtorisasi4=1 then 1 else 0 ' +
        'end+'
      
        '                       Case when A.IsOtorisasi5=1 then 1 else 0 ' +
        'end=A.MaxOL then 0'
      '                  else 1'
      '             end As Bit) NeedOtorisasi'
      'from dbTrans A'
      'left outer join dbTransaksi B on B.NoBukti=A.NoBukti'
      'where year(A.Tanggal)=@Tahun and month(A.Tanggal)=@Bulan'
      
        '        and B.TipeTrans in ('#39'BMM'#39','#39'BJK'#39','#39'PBL'#39','#39'PJL'#39')  and isnull' +
        '(flagtipe,0)=0'
      'group by A.NoBukti, A.Tanggal, A.Note,'
      
        #9'A.IsOtorisasi1, A.OtoUser1, A.TglOto1, A.IsOtorisasi2, A.OtoUse' +
        'r2, A.TglOto2, '
      
        #9'A.IsOtorisasi3, A.OtoUser3, A.TglOto3, A.IsOtorisasi4, A.OtoUse' +
        'r4, A.TglOto4,'
      #9'A.IsOtorisasi5, A.OtoUser5, A.TglOto5, MaxOL'
      'Order by A.Nobukti'
      ''
      ''
      ''
      '')
    Left = 208
    Top = 208
    object QuMasterNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuMasterTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuMasterNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object QuMasterDevisi: TStringField
      FieldName = 'Devisi'
      Size = 10
    end
    object QuMasterPerkiraan: TStringField
      FieldName = 'Perkiraan'
    end
    object QuMasterTotalD: TBCDField
      FieldName = 'TotalD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 2
    end
    object QuMasterTotalRp: TBCDField
      FieldName = 'TotalRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
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
    Left = 240
    Top = 208
  end
  object QuDetail1: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMaster
    Parameters = <
      item
        Name = 'NoBukti'
        DataType = ftString
        Size = 20
        Value = 'BKM/0110/00001/SZZ'
      end>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2009, @Bulan=9'
      ''
      
        'Select '#9'B.*, B.NoBukti+right('#39'000000'#39'+cast(B.Urut as varchar(6))' +
        ',6) KeyUrut,'
      
        '        case when B.Valas='#39'IDR'#39' then 0.00 else B.Debet+B.Kredit ' +
        'end JumlahD, (B.Debet+B.Kredit)*B.Kurs JumlahRp'
      'From dbTrans A'
      'left outer join dbTransaksi B on B.NoBukti=A.NoBukti'
      'where  A.NoBukti=:NoBukti'
      'order by B.NoBukti, B.Urut'
      ''
      '')
    Left = 280
    Top = 208
    object QuDetail1NoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 30
    end
    object QuDetail1Tanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuDetail1Devisi: TStringField
      FieldName = 'Devisi'
      Size = 15
    end
    object QuDetail1Note: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object QuDetail1Lampiran: TBCDField
      FieldName = 'Lampiran'
      Precision = 18
      Size = 0
    end
    object QuDetail1Perkiraan: TStringField
      FieldName = 'Perkiraan'
      Size = 25
    end
    object QuDetail1Lawan: TStringField
      FieldName = 'Lawan'
      Size = 25
    end
    object QuDetail1Keterangan: TStringField
      FieldName = 'Keterangan'
      Size = 8000
    end
    object QuDetail1Keterangan2: TStringField
      FieldName = 'Keterangan2'
      Size = 8000
    end
    object QuDetail1Debet: TBCDField
      FieldName = 'Debet'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1Kredit: TBCDField
      FieldName = 'Kredit'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1Valas: TStringField
      FieldName = 'Valas'
      Size = 15
    end
    object QuDetail1Kurs: TBCDField
      FieldName = 'Kurs'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuDetail1DebetRp: TBCDField
      FieldName = 'DebetRp'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1KreditRp: TBCDField
      FieldName = 'KreditRp'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1TipeTrans: TStringField
      FieldName = 'TipeTrans'
      Size = 3
    end
    object QuDetail1TPHC: TStringField
      FieldName = 'TPHC'
      Size = 1
    end
    object QuDetail1CustSuppP: TStringField
      FieldName = 'CustSuppP'
      Size = 15
    end
    object QuDetail1CustSuppL: TStringField
      FieldName = 'CustSuppL'
      Size = 15
    end
    object QuDetail1Urut: TIntegerField
      FieldName = 'Urut'
    end
    object QuDetail1NoAktivaP: TStringField
      FieldName = 'NoAktivaP'
      Size = 30
    end
    object QuDetail1NoAktivaL: TStringField
      FieldName = 'NoAktivaL'
      Size = 30
    end
    object QuDetail1StatusAktivaP: TStringField
      FieldName = 'StatusAktivaP'
      Size = 3
    end
    object QuDetail1StatusAktivaL: TStringField
      FieldName = 'StatusAktivaL'
      Size = 3
    end
    object QuDetail1Nobon: TStringField
      FieldName = 'Nobon'
    end
    object QuDetail1KodeBag: TStringField
      FieldName = 'KodeBag'
      Size = 15
    end
    object QuDetail1KeyUrut: TStringField
      FieldName = 'KeyUrut'
      ReadOnly = True
      Size = 36
    end
    object QuDetail1JumlahD: TBCDField
      FieldName = 'JumlahD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 19
      Size = 2
    end
    object QuDetail1JumlahRp: TBCDField
      FieldName = 'JumlahRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
  end
  object DsDetail1: TDataSource
    DataSet = QuDetail1
    Left = 312
    Top = 208
  end
end
