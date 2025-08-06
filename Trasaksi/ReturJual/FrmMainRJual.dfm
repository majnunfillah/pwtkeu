object FrMainRJual: TFrMainRJual
  Left = 63
  Top = 134
  Width = 1125
  Height = 480
  Caption = 'Bukti Retur Penjualan Barang (BRPJB)'
  Color = 16767411
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 39
    Width = 1117
    Height = 407
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    object tvMaster: TcxGridDBBandedTableView
      DataController.DataSource = DsMasterBP
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OnCellClick = tvMasterCellClick
      OnCustomDrawCell = tvMasterCustomDrawCell
      OnFocusedRecordChanged = tvMasterFocusedRecordChanged
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      OptionsView.FixedBandSeparatorWidth = 1
      Styles.StyleSheet = FrSetForm.cxGridBandStyleHd
      Styles.Header = FrSetForm.cxStyle8
      Styles.BandHeader = FrSetForm.cxStyle8
      Bands = <
        item
          Caption = 'Deskripsi'
          FixedKind = fkLeft
          Hidden = True
        end
        item
          Caption = 'Detail'
        end
        item
          Caption = 'Authorization'
        end
        item
          Caption = 'Pembatalan'
        end>
      object tvMasterNOBUKTI: TcxGridDBBandedColumn
        Caption = 'No. Bukti'
        DataBinding.FieldName = 'NOBUKTI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMasterTANGGAL: TcxGridDBBandedColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'TANGGAL'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMasterNamaCustSupp: TcxGridDBBandedColumn
        Caption = 'Nama Customer'
        DataBinding.FieldName = 'NamaCustSupp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 248
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvMasterNOSC: TcxGridDBBandedColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'NOSO'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 125
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMasterTglSC: TcxGridDBBandedColumn
        Caption = 'Tanggal SO'
        DataBinding.FieldName = 'TglSO'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 88
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMasterNOSPP: TcxGridDBBandedColumn
        Caption = 'No. SPP'
        DataBinding.FieldName = 'NOSPP'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 125
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvMasterTglSPP: TcxGridDBBandedColumn
        Caption = 'Tanggal SPP'
        DataBinding.FieldName = 'TglSPP'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvMasterNoInvoice: TcxGridDBBandedColumn
        Caption = 'No. Invoice'
        DataBinding.FieldName = 'NoInvoice'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 125
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tvMasterTglInvoice: TcxGridDBBandedColumn
        Caption = 'Tanggal Invoice'
        DataBinding.FieldName = 'TglInvoice'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        SortOrder = soAscending
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tvMasterNOSPB: TcxGridDBBandedColumn
        Caption = 'NO. SPB'
        DataBinding.FieldName = 'NOSPB'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 125
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tvMasterTGLSPB: TcxGridDBBandedColumn
        Caption = 'Tanggal SPB'
        DataBinding.FieldName = 'TGLSPB'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tvMasterIDUser: TcxGridDBBandedColumn
        Caption = 'Di Buat Oleh'
        DataBinding.FieldName = 'IDUser'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tvMasterIsOtorisasi1: TcxGridDBBandedColumn
        Caption = 'Authorized 1'
        DataBinding.FieldName = 'IsOtorisasi1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMasterOtoUser1: TcxGridDBBandedColumn
        Caption = 'Authorized User 1'
        DataBinding.FieldName = 'OtoUser1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMasterTglOto1: TcxGridDBBandedColumn
        Caption = 'Tanggal Authorized 1'
        DataBinding.FieldName = 'TglOto1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvMasterIsOtorisasi2: TcxGridDBBandedColumn
        Caption = 'Authorized 1'
        DataBinding.FieldName = 'IsOtorisasi2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvMasterOtoUser2: TcxGridDBBandedColumn
        Caption = 'Authorized User 2'
        DataBinding.FieldName = 'OtoUser2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tvMasterTglOto2: TcxGridDBBandedColumn
        Caption = 'Tanggal Authorized 2'
        DataBinding.FieldName = 'TglOto2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tvMasterIsOtorisasi3: TcxGridDBBandedColumn
        Caption = 'Authorized 3'
        DataBinding.FieldName = 'IsOtorisasi3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tvMasterOtoUser3: TcxGridDBBandedColumn
        Caption = 'Authorized User 3'
        DataBinding.FieldName = 'OtoUser3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tvMasterTglOto3: TcxGridDBBandedColumn
        Caption = 'Tanggal Authorized 3'
        DataBinding.FieldName = 'TglOto3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tvMasterIsOtorisasi4: TcxGridDBBandedColumn
        Caption = 'Authorized 4'
        DataBinding.FieldName = 'IsOtorisasi4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 2
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object tvMasterOtoUser4: TcxGridDBBandedColumn
        Caption = 'Authorized User 4'
        DataBinding.FieldName = 'OtoUser4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object tvMasterTglOto4: TcxGridDBBandedColumn
        Caption = 'Tanggal Authorized 4'
        DataBinding.FieldName = 'TglOto4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object tvMasterIsOtorisasi5: TcxGridDBBandedColumn
        Caption = 'Authorized 5'
        DataBinding.FieldName = 'IsOtorisasi5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 2
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object tvMasterOtoUser5: TcxGridDBBandedColumn
        Caption = 'Authorized User 5'
        DataBinding.FieldName = 'OtoUser5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object tvMasterTglOto5: TcxGridDBBandedColumn
        Caption = 'Tanggal Authorized 5'
        DataBinding.FieldName = 'TglOto5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object tvMasterDBIsbatal: TcxGridDBBandedColumn
        Caption = 'Batal'
        DataBinding.FieldName = 'IsBatal'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayUnchecked = 'False'
        Properties.NullStyle = nssUnchecked
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMasterDBUserbatal: TcxGridDBBandedColumn
        Caption = 'User Batal'
        DataBinding.FieldName = 'userbatal'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMasterDBTglBatal: TcxGridDBBandedColumn
        Caption = 'Tgl Batal'
        DataBinding.FieldName = 'Tglbatal'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object tvDetail: TcxGridDBBandedTableView
      DataController.DataSource = DsDetailBP
      DataController.DetailKeyFieldNames = 'Nobukti'
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.KeyFieldNames = 'urut'
      DataController.MasterKeyFieldNames = 'NoBukti'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.FixedBandSeparatorWidth = 1
      Styles.StyleSheet = FrSetForm.cxGridBandStyleDt
      Bands = <
        item
          FixedKind = fkLeft
        end
        item
          Caption = 'Satuan 2'
        end
        item
          Caption = 'Satuan 1'
        end
        item
          Caption = 'Weight'
        end
        item
        end>
      object tvDetailNOBUKTI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOBUKTI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailURUT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'URUT'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailKODEBRG: TcxGridDBBandedColumn
        Caption = 'Kode Barang'
        DataBinding.FieldName = 'KODEBRG'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvDetailNamaBrg: TcxGridDBBandedColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'NamaProduk'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 350
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvDetailQNT2: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'QNT2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvDetailSAT_2: TcxGridDBBandedColumn
        Caption = 'Sat'
        DataBinding.FieldName = 'SAT_2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 40
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvDetailQnt2Tukar: TcxGridDBBandedColumn
        Caption = 'Tukar'
        DataBinding.FieldName = 'Qnt2Tukar'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvDetailQNT: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'QNT'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvDetailQntTukar: TcxGridDBBandedColumn
        Caption = 'Tukar'
        DataBinding.FieldName = 'QntTukar'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvDetailSAT_1: TcxGridDBBandedColumn
        Caption = 'Sat'
        DataBinding.FieldName = 'SAT_1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 40
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvDetailPPN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PPN'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailDISC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DISC'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailKURS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KURS'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailISI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailHARGA: TcxGridDBBandedColumn
        Caption = 'Harga'
        DataBinding.FieldName = 'HARGA'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 90
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvDetailDISCTOT: TcxGridDBBandedColumn
        Caption = 'Diskon'
        DataBinding.FieldName = 'DISCTOT'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 90
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvDetailDiscP1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DiscP1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailDiscRp1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DiscRp1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailDiscP2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DiscP2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailDiscRp2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DiscRp2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailDiscP3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DiscP3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailDiscRp3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DiscRp3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailDiscP4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DiscP4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailDiscRp4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DiscRp4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailBYANGKUT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BYANGKUT'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailHRGNETTO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HRGNETTO'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailNDISKON: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NDISKON'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailSUBTOTAL: TcxGridDBBandedColumn
        Caption = 'Sub Total'
        DataBinding.FieldName = 'SUBTOTAL'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvDetailNDPP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NDPP'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailNPPN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NPPN'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailNNET: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NNET'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailSUBTOTALRp: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SUBTOTALRp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailNDPPRp: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NDPPRp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailNPPNRp: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NPPNRp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailNNETRp: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NNETRp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailNOPBL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOPBL'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailURUTPBL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'URUTPBL'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailNOPO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOPO'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailURUTPO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'URUTPO'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object tvDetailKeterangan: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Keterangan'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 300
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvDetailnetW: TcxGridDBBandedColumn
        Caption = 'Net'
        DataBinding.FieldName = 'netW'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvDetailGrossW: TcxGridDBBandedColumn
        Caption = 'Gross'
        DataBinding.FieldName = 'GrossW'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvDetailNamaProduk: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NamaProduk'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
    end
    object tvMaster1: TcxGridDBBandedTableView
      DataController.DataSource = dsQuMaster
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OnFocusedRecordChanged = tvMaster1FocusedRecordChanged
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
      Styles.StyleSheet = DM.cxGridBandStyleHd
      Styles.Header = DM.cxStyle8
      Styles.BandHeader = DM.cxStyle8
      Bands = <
        item
          Caption = 'Deskripsi'
          FixedKind = fkLeft
        end
        item
          Caption = 'Detail'
        end
        item
          Caption = 'Authorize'
        end>
      object tvMaster1NOBUKTI: TcxGridDBBandedColumn
        Caption = 'No. Bukti'
        DataBinding.FieldName = 'NOBUKTI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster1TANGGAL: TcxGridDBBandedColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'TANGGAL'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster1NamaCustSupp: TcxGridDBBandedColumn
        Caption = 'Nama Customer'
        DataBinding.FieldName = 'NamaCustSupp'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 248
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvMaster1NOSC: TcxGridDBBandedColumn
        Caption = 'No. Sales Contract'
        DataBinding.FieldName = 'NOSC'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 125
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster1TglSC: TcxGridDBBandedColumn
        Caption = 'Tanggal Sales Contract'
        DataBinding.FieldName = 'TglSC'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 88
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster1NOSPP: TcxGridDBBandedColumn
        Caption = 'No. SPP'
        DataBinding.FieldName = 'NOSPP'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 125
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvMaster1TglSPP: TcxGridDBBandedColumn
        Caption = 'Tanggal SPP'
        DataBinding.FieldName = 'TglSPP'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvMaster1NoInvoice: TcxGridDBBandedColumn
        Caption = 'No. Invoice'
        DataBinding.FieldName = 'NoInvoice'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 125
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tvMaster1TglInvoice: TcxGridDBBandedColumn
        Caption = 'Tanggal Invoice'
        DataBinding.FieldName = 'TglInvoice'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tvMaster1NOSPB: TcxGridDBBandedColumn
        Caption = 'No. SPB'
        DataBinding.FieldName = 'NOSPB'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 125
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tvMaster1TGLSPB: TcxGridDBBandedColumn
        Caption = 'Tanggal SPB'
        DataBinding.FieldName = 'TGLSPB'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tvMaster1IDUser: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IDUser'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tvMaster1IsOtorisasi1: TcxGridDBBandedColumn
        Caption = 'Authorized 1'
        DataBinding.FieldName = 'IsOtorisasi1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvMaster1OtoUser1: TcxGridDBBandedColumn
        Caption = 'Authorized User 1'
        DataBinding.FieldName = 'OtoUser1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvMaster1TglOto1: TcxGridDBBandedColumn
        Caption = 'Tanggal Authorized 1'
        DataBinding.FieldName = 'TglOto1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvMaster1IsOtorisasi2: TcxGridDBBandedColumn
        Caption = 'Authorized 2'
        DataBinding.FieldName = 'IsOtorisasi2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvMaster1OtoUser2: TcxGridDBBandedColumn
        Caption = 'Authorized User 2'
        DataBinding.FieldName = 'OtoUser2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tvMaster1TglOto2: TcxGridDBBandedColumn
        Caption = 'Tanggal Authorized 2'
        DataBinding.FieldName = 'TglOto2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tvMaster1IsOtorisasi3: TcxGridDBBandedColumn
        Caption = 'Authorized 3'
        DataBinding.FieldName = 'IsOtorisasi3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tvMaster1OtoUser3: TcxGridDBBandedColumn
        Caption = 'Authorized User 3'
        DataBinding.FieldName = 'OtoUser3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tvMaster1TglOto3: TcxGridDBBandedColumn
        Caption = 'Tanggal Authorized 3'
        DataBinding.FieldName = 'TglOto3'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tvMaster1IsOtorisasi4: TcxGridDBBandedColumn
        Caption = 'Authorized 4'
        DataBinding.FieldName = 'IsOtorisasi4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 2
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object tvMaster1OtoUser4: TcxGridDBBandedColumn
        Caption = 'Authorized User 4'
        DataBinding.FieldName = 'OtoUser4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object tvMaster1TglOto4: TcxGridDBBandedColumn
        Caption = 'Tanggal Authorized 4'
        DataBinding.FieldName = 'TglOto4'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object tvMaster1IsOtorisasi5: TcxGridDBBandedColumn
        Caption = 'Authorized 5'
        DataBinding.FieldName = 'IsOtorisasi5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 2
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object tvMaster1OtoUser5: TcxGridDBBandedColumn
        Caption = 'Authorized User 5'
        DataBinding.FieldName = 'OtoUser5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object tvMaster1TglOto5: TcxGridDBBandedColumn
        Caption = 'Tanggal Authorized 5'
        DataBinding.FieldName = 'TglOto5'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
    end
    object tvDetail1: TcxGridDBBandedTableView
      DataController.DataSource = dsQuDetail
      DataController.DetailKeyFieldNames = 'NOBUKTI'
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.MasterKeyFieldNames = 'NOBUKTI'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = 'Deskripsi'
          FixedKind = fkLeft
        end
        item
          Caption = 'Satuan 2'
        end
        item
          Caption = 'Satuan 1'
        end
        item
          Caption = 'Weight'
        end
        item
        end>
      object tvDetail1KODEBRG: TcxGridDBBandedColumn
        Caption = 'Kode Barang'
        DataBinding.FieldName = 'KODEBRG'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 140
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvDetail1NamaBrg: TcxGridDBBandedColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'NamaBrg'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvDetail1QNT2: TcxGridDBBandedColumn
        Caption = 'Qnt'
        DataBinding.FieldName = 'QNT2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvDetail1Qnt2Tukar: TcxGridDBBandedColumn
        Caption = 'Tukar'
        DataBinding.FieldName = 'Qnt2Tukar'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvDetail1SAT_2: TcxGridDBBandedColumn
        Caption = 'Sat'
        DataBinding.FieldName = 'SAT_2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvDetail1QNT: TcxGridDBBandedColumn
        Caption = 'Qnt'
        DataBinding.FieldName = 'QNT'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvDetail1QntTukar: TcxGridDBBandedColumn
        Caption = 'Tukar'
        DataBinding.FieldName = 'QntTukar'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvDetail1SAT_1: TcxGridDBBandedColumn
        Caption = 'Sat'
        DataBinding.FieldName = 'SAT_1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvDetail1netW: TcxGridDBBandedColumn
        Caption = 'Net'
        DataBinding.FieldName = 'netW'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvDetail1GrossW: TcxGridDBBandedColumn
        Caption = 'Gross'
        DataBinding.FieldName = 'GrossW'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvDetail1HARGA: TcxGridDBBandedColumn
        Caption = 'Harga'
        DataBinding.FieldName = 'HARGA'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvDetail1SUBTOTAL: TcxGridDBBandedColumn
        Caption = 'Sub Total'
        DataBinding.FieldName = 'SUBTOTAL'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvDetail1Keterangan: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Keterangan'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = 'Retur Penjualan'
      GridView = tvMaster
      object cxGrid1Level2: TcxGridLevel
        GridView = tvDetail
        Styles.Tab = DM.cxStyle6
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1117
    Height = 39
    ButtonHeight = 39
    ButtonWidth = 89
    Color = clBtnFace
    Customizable = True
    EdgeBorders = []
    EdgeInner = esNone
    EdgeOuter = esNone
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
    TabOrder = 1
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
    object ToolButton13: TToolButton
      Left = 571
      Top = 0
      Caption = 'Cetak'
      ImageIndex = 4
      OnClick = ToolButton13Click
    end
    object ToolButton11: TToolButton
      Left = 660
      Top = 0
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 16
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 668
      Top = 0
      Caption = 'Otorisasi'
      ImageIndex = 15
      OnClick = ToolButton4Click
    end
    object ToolButton12: TToolButton
      Left = 757
      Top = 0
      Caption = 'Batal Otorisasi'
      ImageIndex = 16
      OnClick = ToolButton12Click
    end
    object ToolButton14: TToolButton
      Left = 846
      Top = 0
      Caption = 'Batal'
      ImageIndex = 6
      OnClick = ToolButton14Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 443
    Top = 145
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
    Top = 128
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
    Left = 541
    Top = 127
  end
  object QuMasterBP: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int, @FLagmenu tinyint'
      ''
      'select @Tahun=2011, @Bulan=12, @Flagmenu=0'
      ''
      
        'select A.NOBUKTI, A.NOURUT, A.TANGGAL, A.TglJatuhTempo, A.NOSO, ' +
        'A.TglSO, A.NOSPP, A.TglSPP, A.NoInvoice, A.TglInvoice, A.KODECUS' +
        'TSUPP, B.NamaCustSupp,'
      '       A.NOSPB, A.TGLSPB, A.KODEVLS, A.IDUser, A.IsLokal,'
      
        #9'    A.IsOtorisasi1, A.OtoUser1, A.TglOto1, A.IsOtorisasi2, A.Ot' +
        'oUser2, A.TglOto2,'
      
        #9'    A.IsOtorisasi3, A.OtoUser3, A.TglOto3, A.IsOtorisasi4, A.Ot' +
        'oUser4, A.TglOto4,'
      #9'    A.IsOtorisasi5, A.OtoUser5, A.TglOto5,'
      
        '        Cast(Case when Case when A.IsOtorisasi1=1 then 1 else 0 ' +
        'end+'
      
        '                     Case when A.IsOtorisasi2=1 then 1 else 0 en' +
        'd+'
      
        '                     Case when A.IsOtorisasi3=1 then 1 else 0 en' +
        'd+'
      
        '                     Case when A.IsOtorisasi4=1 then 1 else 0 en' +
        'd+'
      
        '                     Case when A.IsOtorisasi5=1 then 1 else 0 en' +
        'd=A.MaxOL then 0'
      '                else 1'
      '           end As Bit) NeedOtorisasi,'
      '       Isnull(A.IsBatal,0) IsBatal,A.userbatal,A.Tglbatal'
      'from'#9'dbRInvoicePL A'
      'left outer join vwBrowsCust B on B.KodeCustSupp=A.KodeCustSupp'
      'where'#9'year(A.Tanggal)=@Tahun and month(A.Tanggal)=@Bulan  '
      'order by A.NoBukti')
    Left = 24
    Top = 248
    object QuMasterBPNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
      Size = 30
    end
    object QuMasterBPNOURUT: TStringField
      FieldName = 'NOURUT'
      Size = 5
    end
    object QuMasterBPTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QuMasterBPTglJatuhTempo: TDateTimeField
      FieldName = 'TglJatuhTempo'
    end
    object QuMasterBPNOSPP: TStringField
      FieldName = 'NOSPP'
      Size = 30
    end
    object QuMasterBPTglSPP: TDateTimeField
      FieldName = 'TglSPP'
    end
    object QuMasterBPNoInvoice: TStringField
      FieldName = 'NoInvoice'
      Size = 30
    end
    object QuMasterBPTglInvoice: TDateTimeField
      FieldName = 'TglInvoice'
    end
    object QuMasterBPKODECUSTSUPP: TStringField
      FieldName = 'KODECUSTSUPP'
      Size = 15
    end
    object QuMasterBPNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuMasterBPNOSPB: TStringField
      FieldName = 'NOSPB'
      Size = 30
    end
    object QuMasterBPTGLSPB: TDateTimeField
      FieldName = 'TGLSPB'
    end
    object QuMasterBPKODEVLS: TStringField
      FieldName = 'KODEVLS'
      Size = 15
    end
    object QuMasterBPIDUser: TStringField
      FieldName = 'IDUser'
      Size = 15
    end
    object QuMasterBPIsLokal: TBooleanField
      FieldName = 'IsLokal'
    end
    object QuMasterBPIsOtorisasi1: TBooleanField
      FieldName = 'IsOtorisasi1'
    end
    object QuMasterBPOtoUser1: TStringField
      FieldName = 'OtoUser1'
      Size = 15
    end
    object QuMasterBPTglOto1: TDateTimeField
      FieldName = 'TglOto1'
    end
    object QuMasterBPIsOtorisasi2: TBooleanField
      FieldName = 'IsOtorisasi2'
    end
    object QuMasterBPOtoUser2: TStringField
      FieldName = 'OtoUser2'
      Size = 15
    end
    object QuMasterBPTglOto2: TDateTimeField
      FieldName = 'TglOto2'
    end
    object QuMasterBPIsOtorisasi3: TBooleanField
      FieldName = 'IsOtorisasi3'
    end
    object QuMasterBPOtoUser3: TStringField
      FieldName = 'OtoUser3'
      Size = 15
    end
    object QuMasterBPTglOto3: TDateTimeField
      FieldName = 'TglOto3'
    end
    object QuMasterBPIsOtorisasi4: TBooleanField
      FieldName = 'IsOtorisasi4'
    end
    object QuMasterBPOtoUser4: TStringField
      FieldName = 'OtoUser4'
      Size = 15
    end
    object QuMasterBPTglOto4: TDateTimeField
      FieldName = 'TglOto4'
    end
    object QuMasterBPIsOtorisasi5: TBooleanField
      FieldName = 'IsOtorisasi5'
    end
    object QuMasterBPOtoUser5: TStringField
      FieldName = 'OtoUser5'
      Size = 15
    end
    object QuMasterBPTglOto5: TDateTimeField
      FieldName = 'TglOto5'
    end
    object QuMasterBPNOSO: TStringField
      FieldName = 'NOSO'
      Size = 30
    end
    object QuMasterBPTglSO: TDateTimeField
      FieldName = 'TglSO'
    end
    object QuMasterBPNeedOtorisasi: TBooleanField
      FieldName = 'NeedOtorisasi'
      ReadOnly = True
    end
    object QuMasterBPIsBatal: TBooleanField
      FieldName = 'IsBatal'
      ReadOnly = True
    end
    object QuMasterBPuserbatal: TStringField
      FieldName = 'userbatal'
      Size = 15
    end
    object QuMasterBPTglbatal: TDateTimeField
      FieldName = 'Tglbatal'
    end
  end
  object DsMasterBP: TDataSource
    DataSet = QuMasterBP
    Left = 56
    Top = 248
  end
  object QuDetailBP: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsMasterBP
    Parameters = <
      item
        Name = 'NoBukti'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = 'RPJ/1211/00001/SZZ'
      end>
    SQL.Strings = (
      'Declare @nobukti varchar(50)'
      'Set @Nobukti=:NoBukti'
      'select '#9'B.NOBUKTI, B.URUT, B.KODEBRG, B.PPN, B.DISC, B.KURS,'
      
        '        B.QNT, B.QNT2, B.SAT_1, B.SAT_2, B.ISI, B.HARGA, B.DiscP' +
        '1, B.DiscRp1,'
      
        '        B.DiscP2, B.DiscRp2, B.DiscP3, B.DiscRp3, B.DiscP4, B.Di' +
        'scRp4, B.DISCTOT,'
      
        '        B.BYANGKUT, B.HRGNETTO, B.NDISKON, B.SUBTOTAL, B.NDPP, B' +
        '.NPPN, B.NNET, B.SUBTOTALRp,'
      
        '        B.NDPPRp, B.NPPNRp, B.NNETRp, B.NOInvoice, B.URUTInvoice' +
        ', B.Keterangan,'
      '        C.NamaBrg, B.QntTukar, B.Qnt2Tukar, B.netW, B.GrossW,'
      
        '        '#39'Nama Produk : '#39'+c.Namabrg+'#39' '#39'+'#39'Nama Komersil : '#39'+ b.nam' +
        'abrg NamaProduk'
      'from'#9'dbRInvoicePLDet B'
      'left outer join dbBarang C on C.KodeBrg=B.KodeBrg'
      'where'#9'B.NoBukti=@NoBukti'
      'order by B.Urut'
      '')
    Left = 96
    Top = 248
    object QuDetailBPNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
      Size = 30
    end
    object QuDetailBPURUT: TIntegerField
      FieldName = 'URUT'
    end
    object QuDetailBPKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuDetailBPPPN: TWordField
      FieldName = 'PPN'
    end
    object QuDetailBPDISC: TBCDField
      FieldName = 'DISC'
      Precision = 18
      Size = 3
    end
    object QuDetailBPKURS: TBCDField
      FieldName = 'KURS'
      Precision = 18
      Size = 2
    end
    object QuDetailBPQNT: TBCDField
      FieldName = 'QNT'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailBPQNT2: TBCDField
      FieldName = 'QNT2'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailBPSAT_1: TStringField
      FieldName = 'SAT_1'
      Size = 5
    end
    object QuDetailBPSAT_2: TStringField
      FieldName = 'SAT_2'
      Size = 5
    end
    object QuDetailBPISI: TBCDField
      FieldName = 'ISI'
      Precision = 18
      Size = 2
    end
    object QuDetailBPHARGA: TBCDField
      FieldName = 'HARGA'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuDetailBPDiscP1: TBCDField
      FieldName = 'DiscP1'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailBPDiscRp1: TBCDField
      FieldName = 'DiscRp1'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailBPDiscP2: TBCDField
      FieldName = 'DiscP2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailBPDiscRp2: TBCDField
      FieldName = 'DiscRp2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailBPDiscP3: TBCDField
      FieldName = 'DiscP3'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailBPDiscRp3: TBCDField
      FieldName = 'DiscRp3'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailBPDiscP4: TBCDField
      FieldName = 'DiscP4'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailBPDiscRp4: TBCDField
      FieldName = 'DiscRp4'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailBPDISCTOT: TBCDField
      FieldName = 'DISCTOT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailBPBYANGKUT: TBCDField
      FieldName = 'BYANGKUT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailBPHRGNETTO: TBCDField
      FieldName = 'HRGNETTO'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 21
    end
    object QuDetailBPNDISKON: TBCDField
      FieldName = 'NDISKON'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailBPSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuDetailBPNDPP: TBCDField
      FieldName = 'NDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuDetailBPNPPN: TBCDField
      FieldName = 'NPPN'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailBPNNET: TBCDField
      FieldName = 'NNET'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuDetailBPSUBTOTALRp: TBCDField
      FieldName = 'SUBTOTALRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailBPNDPPRp: TBCDField
      FieldName = 'NDPPRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailBPNPPNRp: TBCDField
      FieldName = 'NPPNRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailBPNNETRp: TBCDField
      FieldName = 'NNETRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailBPNOInvoice: TStringField
      FieldName = 'NOInvoice'
      Size = 30
    end
    object QuDetailBPURUTInvoice: TIntegerField
      FieldName = 'URUTInvoice'
    end
    object QuDetailBPKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 800
    end
    object QuDetailBPNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 200
    end
    object QuDetailBPQntTukar: TBCDField
      FieldName = 'QntTukar'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailBPQnt2Tukar: TBCDField
      FieldName = 'Qnt2Tukar'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailBPnetW: TBCDField
      FieldName = 'netW'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailBPGrossW: TBCDField
      FieldName = 'GrossW'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailBPNamaProduk: TStringField
      FieldName = 'NamaProduk'
      ReadOnly = True
      Size = 1231
    end
  end
  object DsDetailBP: TDataSource
    DataSet = QuDetailBP
    Left = 128
    Top = 248
  end
  object QuMaster: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @Tahun int, @Bulan int, @FLagmenu tinyint'
      ''
      'select @Tahun=2011, @Bulan=12, @Flagmenu=0'
      ''
      
        'select A.NOBUKTI, A.NOURUT, A.TANGGAL, A.TglJatuhTempo, A.NOSC, ' +
        'A.TglSC, A.NOSPP, A.TglSPP, A.NoInvoice, A.TglInvoice, A.KODECUS' +
        'TSUPP, B.NamaCustSupp,'
      '       A.NOSPB, A.TGLSPB, A.KODEVLS, A.IDUser, A.IsLokal,'
      
        #9'    A.IsOtorisasi1, A.OtoUser1, A.TglOto1, A.IsOtorisasi2, A.Ot' +
        'oUser2, A.TglOto2,'
      
        #9'    A.IsOtorisasi3, A.OtoUser3, A.TglOto3, A.IsOtorisasi4, A.Ot' +
        'oUser4, A.TglOto4,'
      #9'    A.IsOtorisasi5, A.OtoUser5, A.TglOto5'
      'from'#9'dbRInvoicePL A'
      'left outer join vwBrowsCust B on B.KodeCustSupp=A.KodeCustSupp'
      'where'#9'year(A.Tanggal)=@Tahun and month(A.Tanggal)=@Bulan'
      'order by A.NoBukti')
    Left = 24
    Top = 280
    object QuMasterNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
      Size = 30
    end
    object QuMasterNOURUT: TStringField
      FieldName = 'NOURUT'
      Size = 5
    end
    object QuMasterTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QuMasterTglJatuhTempo: TDateTimeField
      FieldName = 'TglJatuhTempo'
    end
    object QuMasterNOSC: TStringField
      FieldName = 'NOSC'
      Size = 30
    end
    object QuMasterTglSC: TDateTimeField
      FieldName = 'TglSC'
    end
    object QuMasterNOSPP: TStringField
      FieldName = 'NOSPP'
      Size = 30
    end
    object QuMasterTglSPP: TDateTimeField
      FieldName = 'TglSPP'
    end
    object QuMasterNoInvoice: TStringField
      FieldName = 'NoInvoice'
      Size = 30
    end
    object QuMasterTglInvoice: TDateTimeField
      FieldName = 'TglInvoice'
    end
    object QuMasterKODECUSTSUPP: TStringField
      FieldName = 'KODECUSTSUPP'
      Size = 15
    end
    object QuMasterNamaCustSupp: TStringField
      FieldName = 'NamaCustSupp'
      Size = 100
    end
    object QuMasterNOSPB: TStringField
      FieldName = 'NOSPB'
      Size = 30
    end
    object QuMasterTGLSPB: TDateTimeField
      FieldName = 'TGLSPB'
    end
    object QuMasterKODEVLS: TStringField
      FieldName = 'KODEVLS'
      Size = 15
    end
    object QuMasterIDUser: TStringField
      FieldName = 'IDUser'
      Size = 15
    end
    object QuMasterIsLokal: TBooleanField
      FieldName = 'IsLokal'
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
  end
  object dsQuMaster: TDataSource
    DataSet = QuMaster
    Left = 56
    Top = 280
  end
  object QuDetail: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = dsQuMaster
    Parameters = <
      item
        Name = 'NoBukti'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = 'RPJ/1211/00001/SZZ'
      end>
    SQL.Strings = (
      'Declare @nobukti varchar(50)'
      'Set @Nobukti=:NoBukti'
      'select '#9'B.NOBUKTI, B.URUT, B.KODEBRG, B.PPN, B.DISC, B.KURS,'
      
        '        B.QNT, B.QNT2, B.SAT_1, B.SAT_2, B.ISI, B.HARGA, B.DiscP' +
        '1, B.DiscRp1,'
      
        '        B.DiscP2, B.DiscRp2, B.DiscP3, B.DiscRp3, B.DiscP4, B.Di' +
        'scRp4, B.DISCTOT,'
      
        '        B.BYANGKUT, B.HRGNETTO, B.NDISKON, B.SUBTOTAL, B.NDPP, B' +
        '.NPPN, B.NNET, B.SUBTOTALRp,'
      
        '        B.NDPPRp, B.NPPNRp, B.NNETRp, B.NOInvoice, B.URUTInvoice' +
        ', B.Keterangan,'
      '        C.NamaBrg, B.QntTukar, B.Qnt2Tukar, B.netW, B.GrossW,'
      
        '        '#39'Nama Produk : '#39'+c.Namabrg+'#39' '#39'+'#39'Nama Komersil : '#39'+ b.nam' +
        'abrg NamaProduk'
      'from'#9'dbRInvoicePLDet B'
      'left outer join dbBarang C on C.KodeBrg=B.KodeBrg'
      'where'#9'B.NoBukti=@NoBukti'
      'order by B.Urut'
      '')
    Left = 96
    Top = 280
    object QuDetailNOBUKTI: TStringField
      FieldName = 'NOBUKTI'
      Size = 30
    end
    object QuDetailURUT: TIntegerField
      FieldName = 'URUT'
    end
    object QuDetailKODEBRG: TStringField
      FieldName = 'KODEBRG'
      Size = 25
    end
    object QuDetailPPN: TWordField
      FieldName = 'PPN'
    end
    object QuDetailDISC: TBCDField
      FieldName = 'DISC'
      Precision = 18
      Size = 3
    end
    object QuDetailKURS: TBCDField
      FieldName = 'KURS'
      Precision = 18
      Size = 2
    end
    object QuDetailQNT: TBCDField
      FieldName = 'QNT'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailQNT2: TBCDField
      FieldName = 'QNT2'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailSAT_1: TStringField
      FieldName = 'SAT_1'
      Size = 5
    end
    object QuDetailSAT_2: TStringField
      FieldName = 'SAT_2'
      Size = 5
    end
    object QuDetailISI: TBCDField
      FieldName = 'ISI'
      Precision = 18
      Size = 2
    end
    object QuDetailHARGA: TBCDField
      FieldName = 'HARGA'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuDetailDiscP1: TBCDField
      FieldName = 'DiscP1'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailDiscRp1: TBCDField
      FieldName = 'DiscRp1'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailDiscP2: TBCDField
      FieldName = 'DiscP2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailDiscRp2: TBCDField
      FieldName = 'DiscRp2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailDiscP3: TBCDField
      FieldName = 'DiscP3'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailDiscRp3: TBCDField
      FieldName = 'DiscRp3'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailDiscP4: TBCDField
      FieldName = 'DiscP4'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailDiscRp4: TBCDField
      FieldName = 'DiscRp4'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailDISCTOT: TBCDField
      FieldName = 'DISCTOT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailBYANGKUT: TBCDField
      FieldName = 'BYANGKUT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailHRGNETTO: TBCDField
      FieldName = 'HRGNETTO'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 21
    end
    object QuDetailNDISKON: TBCDField
      FieldName = 'NDISKON'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuDetailNDPP: TBCDField
      FieldName = 'NDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuDetailNPPN: TBCDField
      FieldName = 'NPPN'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailNNET: TBCDField
      FieldName = 'NNET'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 5
    end
    object QuDetailSUBTOTALRp: TBCDField
      FieldName = 'SUBTOTALRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailNDPPRp: TBCDField
      FieldName = 'NDPPRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailNPPNRp: TBCDField
      FieldName = 'NPPNRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailNNETRp: TBCDField
      FieldName = 'NNETRp'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailNOInvoice: TStringField
      FieldName = 'NOInvoice'
      Size = 30
    end
    object QuDetailURUTInvoice: TIntegerField
      FieldName = 'URUTInvoice'
    end
    object QuDetailKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 800
    end
    object QuDetailNamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 200
    end
    object QuDetailQntTukar: TBCDField
      FieldName = 'QntTukar'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailQnt2Tukar: TBCDField
      FieldName = 'Qnt2Tukar'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailnetW: TBCDField
      FieldName = 'netW'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailGrossW: TBCDField
      FieldName = 'GrossW'
      DisplayFormat = ',0.##'
      Precision = 18
      Size = 2
    end
    object QuDetailNamaProduk: TStringField
      FieldName = 'NamaProduk'
      ReadOnly = True
      Size = 1231
    end
  end
  object dsQuDetail: TDataSource
    DataSet = QuDetail
    Left = 128
    Top = 280
  end
  object frxDBCetak: TfrxDBDataset
    UserName = 'frxDBCetak'
    CloseDataSource = False
    Left = 528
    Top = 208
  end
  object frxReport1: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40693.8264650232
    ReportOptions.LastChange = 40693.8264650232
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    OnAfterPrintReport = frxReport1AfterPrintReport
    Left = 528
    Top = 176
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBCetak'
    CloseDataSource = False
    Left = 528
    Top = 248
  end
end
