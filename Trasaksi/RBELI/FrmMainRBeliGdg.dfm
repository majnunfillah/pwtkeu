object FrMainRBeliGdg: TFrMainRBeliGdg
  Left = 61
  Top = 197
  Width = 1204
  Height = 552
  Caption = 'Retur Pembelian Gudang'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1196
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1196
      Height = 40
      ButtonHeight = 39
      ButtonWidth = 89
      Color = clBtnFace
      Customizable = True
      EdgeBorders = []
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
      object ToolButton3: TToolButton
        Left = 178
        Top = 0
        Hint = 'Hapus Record'
        Caption = '&Batal'
        ImageIndex = 13
        Visible = False
      end
      object ToolButton5: TToolButton
        Left = 267
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 275
        Top = 0
        Caption = 'Refresh'
        ImageIndex = 12
        OnClick = ToolButton10Click
      end
      object ToolButton7: TToolButton
        Left = 364
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 372
        Top = 0
        Caption = '  Lain - lain  '
        DropdownMenu = PopupMenu1
        ImageIndex = 10
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton8: TToolButton
        Left = 474
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 9
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton9: TToolButton
        Left = 482
        Top = 0
        Caption = 'K&eluar'
        ImageIndex = 8
        OnClick = ToolButton9Click
      end
      object ToolButton11: TToolButton
        Left = 571
        Top = 0
        Caption = 'Tampil Valid'
        DropdownMenu = PopupMenu2
        ImageIndex = 7
        Style = tbsDropDown
        Visible = False
      end
      object ToolButton12: TToolButton
        Left = 673
        Top = 0
        Caption = 'Otorisasi'
        ImageIndex = 15
        OnClick = ToolButton12Click
      end
      object ToolButton4: TToolButton
        Left = 762
        Top = 0
        Caption = 'Batal Otorisasi'
        ImageIndex = 16
        OnClick = ToolButton4Click
      end
      object ToolButton13: TToolButton
        Left = 851
        Top = 0
        Caption = 'Batal'
        ImageIndex = 6
        OnClick = ToolButton13Click
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 48
    Width = 1196
    Height = 470
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
          Column = tvMasterNoBukti
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'TotNetRp'
          Column = tvMasterTotNetRp
        end>
      DataController.Summary.SummaryGroups = <>
      OnCellClick = tvMasterCellClick
      OnCustomDrawCell = tvMasterCustomDrawCell
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
      Styles.StyleSheet = FrSetForm.cxGridStyleHd
      object tvMasterNoBukti: TcxGridDBColumn
        Caption = 'No. Bukti'
        DataBinding.FieldName = 'NoBukti'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 150
      end
      object tvMasterTanggal: TcxGridDBColumn
        DataBinding.FieldName = 'Tanggal'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
      end
      object tvMasterNamaSupp: TcxGridDBColumn
        Caption = 'Nama Supplier'
        DataBinding.FieldName = 'NamaCustSupp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 280
      end
      object tvMasterNOBELI: TcxGridDBColumn
        Caption = 'No. Pembelian'
        DataBinding.FieldName = 'NOBELI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 140
      end
      object tvMasterDBColumn1: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'Kodegdg'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterTotDPPRp: TcxGridDBColumn
        Caption = 'DPP Rp'
        DataBinding.FieldName = 'TotDPPRp'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 110
      end
      object tvMasterTotPPNRp: TcxGridDBColumn
        Caption = 'PPN Rp'
        DataBinding.FieldName = 'TotPPNRp'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 110
      end
      object tvMasterTotNetRp: TcxGridDBColumn
        Caption = 'Grand Total Rp'
        DataBinding.FieldName = 'TotNetRp'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 110
      end
      object tvMasterIsOtorisasi1: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterOtoUser1: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterTglOto1: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterIsOtorisasi2: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterOtoUser2: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterTglOto2: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterIsOtorisasi3: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterOtoUser3: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterTglOto3: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterIsOtorisasi4: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterOtoUser4: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterTglOto4: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterIsOtorisasi5: TcxGridDBColumn
        DataBinding.FieldName = 'IsOtorisasi5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterOtoUser5: TcxGridDBColumn
        DataBinding.FieldName = 'OtoUser5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterTglOto5: TcxGridDBColumn
        DataBinding.FieldName = 'TglOto5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object tvMasterDBColumn2: TcxGridDBColumn
        Caption = 'Batal'
        DataBinding.FieldName = 'IsBatal'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayUnchecked = 'False'
        Properties.NullStyle = nssUnchecked
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
      end
      object tvMasterDBColumn3: TcxGridDBColumn
        Caption = 'User Batal'
        DataBinding.FieldName = 'Userbatal'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
      end
      object tvMasterDBColumn4: TcxGridDBColumn
        Caption = 'Tgl Batal'
        DataBinding.FieldName = 'Tglbatal'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
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
          FieldName = 'TotalIDR'
          Column = tvDetailTotalIDR
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'QNT'
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
      Styles.StyleSheet = FrSetForm.cxGridStyleDt
      object tvDetailKodeBrg: TcxGridDBColumn
        DataBinding.FieldName = 'KodeBrg'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
      end
      object tvDetailNamaBrg: TcxGridDBColumn
        DataBinding.FieldName = 'NamaBrg'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
      end
      object tvDetailSatuan: TcxGridDBColumn
        Caption = 'Sat'
        DataBinding.FieldName = 'Satuan'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 40
      end
      object tvDetailQnt: TcxGridDBColumn
        DataBinding.FieldName = 'Qnt'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
      end
      object tvDetailKodeGdg: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'KodeGdg'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 60
      end
      object tvDetailHarga: TcxGridDBColumn
        DataBinding.FieldName = 'Harga'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 90
      end
      object tvDetailDiscTot: TcxGridDBColumn
        Caption = 'Diskon'
        DataBinding.FieldName = 'DiscTot'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 90
      end
      object tvDetailTotalIDR: TcxGridDBColumn
        Caption = 'Sub Total Rp'
        DataBinding.FieldName = 'TotalIDR'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 90
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvMaster
      object cxGrid1Level2: TcxGridLevel
        GridView = tvDetail
      end
    end
  end
  object QuMaster: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2009, @Bulan=9'
      ''
      
        'Select '#9'A.NOBUKTI, A.NOURUT, A.TANGGAL, A.TGLJATUHTEMPO, A.KODES' +
        'UPP,'
      '        C.NamaCustSupp, C.Alamat1, C.Alamat2, C.Kota,'
      '        C.Alamat1+Char(13)+C.Alamat2+Char(13)+C.kota Alamat,'
      
        '        A.NOBELI, A.KodeGdg, A.KODEEXP, A.HANDLING, A.KETERANGAN' +
        ', A.FAKTURSUPP,'
      
        '        A.KODEVLS, A.KURS, A.PPN, A.TIPEBAYAR, A.HARI, A.TipeDis' +
        'c, A.DISC, A.DISCRP,'
      
        '        A.NILAIPOT, A.NILAIDPP, A.NILAIPPN, A.NILAINET, A.ISCETA' +
        'K, A.NilaiCetak,'
      
        '        A.IsOtorisasi1, A.OtoUser1, A.TglOto1, A.IsOtorisasi2, A' +
        '.OtoUser2, A.TglOto2, '
      
        #9'A.IsOtorisasi3, A.OtoUser3, A.TglOto3, A.IsOtorisasi4, A.OtoUse' +
        'r4, A.TglOto4,'
      #9'A.IsOtorisasi5, A.OtoUser5, A.TglOto5, A.MAXOL,'
      
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
      '        ,Isnull(A.isbatal,0) IsBatal,A.Userbatal,A.Tglbatal'
      'From dbRBeli A'
      'Left Outer Join dbCustSupp C on C.KodeCustSupp=A.KodeSupp'
      'Left Outer Join dbGudang F on F.KodeGdg=A.KodeGdg'
      'where year(A.Tanggal)=@Tahun and month(A.Tanggal)=@Bulan'
      'order by A.NoBukti'
      ''
      ''
      ''
      ''
      '')
    Left = 24
    Top = 184
    object QuMasterNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
    end
    object QuMasterNOURUT: TStringField
      FieldName = 'NOURUT'
      Size = 10
    end
    object QuMasterTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QuMasterTGLJATUHTEMPO: TDateTimeField
      FieldName = 'TGLJATUHTEMPO'
    end
    object QuMasterKODESUPP: TStringField
      FieldName = 'KODESUPP'
      Size = 15
    end
    object QuMasterNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuMasterAlamat1: TStringField
      FieldName = 'Alamat1'
      Size = 100
    end
    object QuMasterAlamat2: TStringField
      FieldName = 'Alamat2'
      Size = 100
    end
    object QuMasterKota: TStringField
      FieldName = 'Kota'
      Size = 100
    end
    object QuMasterAlamat: TStringField
      FieldName = 'Alamat'
      ReadOnly = True
      Size = 302
    end
    object QuMasterNOBELI: TStringField
      FieldName = 'NOBELI'
    end
    object QuMasterKodeGdg: TStringField
      FieldName = 'KodeGdg'
      Size = 15
    end
    object QuMasterKODEEXP: TStringField
      FieldName = 'KODEEXP'
      Size = 15
    end
    object QuMasterHANDLING: TBCDField
      FieldName = 'HANDLING'
      Precision = 18
      Size = 2
    end
    object QuMasterKETERANGAN: TWideStringField
      FieldName = 'KETERANGAN'
      Size = 200
    end
    object QuMasterFAKTURSUPP: TStringField
      FieldName = 'FAKTURSUPP'
      Size = 50
    end
    object QuMasterKODEVLS: TStringField
      FieldName = 'KODEVLS'
      Size = 15
    end
    object QuMasterKURS: TBCDField
      FieldName = 'KURS'
      Precision = 18
      Size = 2
    end
    object QuMasterPPN: TWordField
      FieldName = 'PPN'
    end
    object QuMasterTIPEBAYAR: TWordField
      FieldName = 'TIPEBAYAR'
    end
    object QuMasterHARI: TIntegerField
      FieldName = 'HARI'
    end
    object QuMasterTipeDisc: TWordField
      FieldName = 'TipeDisc'
    end
    object QuMasterDISC: TFloatField
      FieldName = 'DISC'
    end
    object QuMasterDISCRP: TBCDField
      FieldName = 'DISCRP'
      Precision = 18
      Size = 2
    end
    object QuMasterNILAIPOT: TBCDField
      FieldName = 'NILAIPOT'
      Precision = 18
      Size = 2
    end
    object QuMasterNILAIDPP: TBCDField
      FieldName = 'NILAIDPP'
      Precision = 18
      Size = 2
    end
    object QuMasterNILAIPPN: TBCDField
      FieldName = 'NILAIPPN'
      Precision = 18
      Size = 2
    end
    object QuMasterNILAINET: TBCDField
      FieldName = 'NILAINET'
      Precision = 18
      Size = 2
    end
    object QuMasterISCETAK: TBooleanField
      FieldName = 'ISCETAK'
    end
    object QuMasterNilaiCetak: TIntegerField
      FieldName = 'NilaiCetak'
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
    object QuMasterMAXOL: TIntegerField
      FieldName = 'MAXOL'
    end
    object QuMasterNeedOtorisasi: TBooleanField
      FieldName = 'NeedOtorisasi'
      ReadOnly = True
    end
    object QuMasterIsBatal: TBooleanField
      FieldName = 'IsBatal'
      ReadOnly = True
    end
    object QuMasterUserbatal: TStringField
      FieldName = 'Userbatal'
      Size = 15
    end
    object QuMasterTglbatal: TDateTimeField
      FieldName = 'Tglbatal'
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
    Parameters = <
      item
        Name = 'NoBukti'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = 'n'
      end>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int'
      ''
      'select @Tahun=2009, @Bulan=9'
      ''
      'Select '#9'B.NoBukti, B.UrutPBL,'
      #9'B.Urut, B.KodeBrg, H.NamaBrg, B.Qnt, B.NoSat, B.Isi, B.Satuan,'
      '        0.00 Qnt2, '#39#39' SatuanRoll, B.Harga,'
      '        B.DiscP DiscP1, B.DiscTot DiscRp1, B.DiscTot,'
      '        B.SubTotal TotalUSD, B.SubTotal TotalIDR, B.NDPP NDPP,'
      
        '        B.NPPN NPPN, B.BYAngkut Beban, B.SubTotal + B.BYAngkut T' +
        'otal'
      'From dbRBeliDet B'
      'Left Outer Join dbBarang H on H.KodeBrg=B.KodeBrg '
      'where B.NoBukti=:NoBukti'
      'order by B.NoBukti, B.Urut'
      ''
      '')
    Left = 96
    Top = 184
    object QuDetail1NoBukti: TStringField
      FieldName = 'NoBukti'
      Visible = False
    end
    object QuDetail1UrutPBL: TIntegerField
      FieldName = 'UrutPBL'
      Visible = False
    end
    object QuDetail1Urut: TSmallintField
      FieldName = 'Urut'
      Visible = False
    end
    object QuDetail1KodeBrg: TStringField
      DisplayLabel = 'Kode Barang'
      FieldName = 'KodeBrg'
      Size = 25
    end
    object QuDetail1NamaBrg: TStringField
      DisplayLabel = 'Nama Barang'
      FieldName = 'NamaBrg'
      Size = 100
    end
    object QuDetail1Qnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1NoSat: TWordField
      FieldName = 'NoSat'
    end
    object QuDetail1Isi: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object QuDetail1Satuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
    object QuDetail1Qnt2: TBCDField
      FieldName = 'Qnt2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1SatuanRoll: TStringField
      FieldName = 'SatuanRoll'
      Size = 4
    end
    object QuDetail1Harga: TBCDField
      FieldName = 'Harga'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuDetail1DiscP1: TBCDField
      FieldName = 'DiscP1'
      Visible = False
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1DiscRp1: TBCDField
      FieldName = 'DiscRp1'
      Visible = False
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuDetail1DiscTot: TBCDField
      FieldName = 'DiscTot'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuDetail1TotalUSD: TBCDField
      FieldName = 'TotalUSD'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetail1TotalIDR: TBCDField
      FieldName = 'TotalIDR'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetail1NDPP: TFloatField
      FieldName = 'NDPP'
      ReadOnly = True
      Visible = False
      DisplayFormat = ',0.00'
    end
    object QuDetail1NPPN: TFloatField
      FieldName = 'NPPN'
      ReadOnly = True
      Visible = False
      DisplayFormat = ',0.00'
    end
    object QuDetail1Beban: TBCDField
      FieldName = 'Beban'
      Visible = False
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetail1Total: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Visible = False
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
  end
  object DsDetail1: TDataSource
    DataSet = QuDetail1
    Left = 128
    Top = 184
  end
  object QuNavigator: TADOQuery
    CacheSize = 1000
    Connection = DM.MyStock
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'select NoBukti from dbBeli where month(tanggal)=1 and year(tangg' +
        'al)=1 and isbatal=0'
      'order by nobukti')
    Left = 170
    Top = 83
    object QuNavigatorNoBukti: TStringField
      FieldName = 'NoBukti'
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 459
    Top = 71
    object TampilValid: TMenuItem
      Caption = 'Tampil Valid'
      Checked = True
      OnClick = TampilValidClick
    end
    object TampilBatal: TMenuItem
      Caption = 'Tampil Batal'
      OnClick = TampilBatalClick
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
    end
    object ShowHeader1: TMenuItem
      Caption = 'Show Header'
      Checked = True
    end
    object Show1: TMenuItem
      Caption = 'Show Footer'
      Checked = True
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object AutoFilter1: TMenuItem
      Caption = 'Auto Filter'
      ImageIndex = 14
    end
    object MultiSelect1: TMenuItem
      Caption = 'Multi Select'
    end
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 503
    Top = 104
  end
end
