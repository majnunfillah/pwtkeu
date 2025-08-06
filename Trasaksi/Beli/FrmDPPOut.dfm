object FrDPPOut: TFrDPPOut
  Left = 233
  Top = 106
  Width = 1020
  Height = 557
  Caption = 'Daftar Pembelian Yang Belum Ada Invoice'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010002002020100000000000E80200002600000010101000000000002801
    00000E0300002800000020000000400000000100040000000000800200000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000F0F0000000000000000077
    777700088800088800077777700000700000888800F080088880000070000070
    88888000F8F0FF80008888807000007080000FF8FFF08FFFFF00008070000070
    80FFF8FFF8F0FF8FFFFFF0807000007080F8FFF8F7F0F7FFFFFFF08070000070
    90FFFF7FF8F0FF8F7FFFF090800000708097FFF8FFF08FFFFFF7F08080000070
    80FFF8FF77F0F77FFFFFF0808000007080F8F777FFF08FF777FFF0F080000070
    80F778FFF8F0FFFFFF77F0F08000007080F8FFF877F0877FFFFFF0F080000070
    80FFF777F8F0FFF777FFF0F080000070F0F77FF8FFF08FFFFF77F0F080000070
    F0FFF8FF77F0F77FFFFFF0F080000070F0F8F777FFF08FF777FFF0F080000070
    F0F778FFF8000FFFFF77F0F080000000F0F8FFF80000000FFFFFF0F000000000
    00FFF0000000000000FFF0000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFF83FFF8000000380000003800000038000000380000003800000038000
    0003800000038000000380000003800000038000000380000003800000038000
    000380000003800000038000000380038003E00FE00FF87FFC3FFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
    0000C00000000000000000000000000000000000000000000000000080000080
    00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000000
    000000000000000000F0F00000000008880008880000088800F0F00888000800
    FFF0FFF00800080FF7F0F7FF080008097FF0FF7F0800080FF7F0F7FF0800080F
    77F0F77F0800080F7FF0FF7F0800080FFFF0FFFF0800000FF00000FF00000000
    00000000000000000000000000000000000000000000FFFF0000FC7F0000E00F
    0000000100000001000000010000000100000001000000010000000100000001
    00000001000001010000C7C70000FFFF0000FFFF0000}
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1004
    Height = 0
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 519
    Width = 1004
    Height = 0
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1004
    Height = 519
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object Panel4: TPanel
      Left = 5
      Top = 475
      Width = 994
      Height = 39
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object PanelShow1: TPanel
        Left = 2
        Top = 4
        Width = 990
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object TambahBtn: TSpeedButton
          Left = 4
          Top = 2
          Width = 75
          Height = 28
          Caption = '&Proses'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000C5C5C5C5C5C5
            C5C5C5C5C5C5C3C2C18D8E8D9394946B6B6B4A4A4A2222224D4D4D4A4A4A4A4A
            4A4A4A4A444444868686C5C5C5C5C5C5C5C5C5D0CECD5566722E292C6C5F5B6E
            70714C4C4C0000004A4D4E353838373939373939454646444444C5C5C5C5C5C5
            C5C5C5D0CECD5867729B92972F37406F6565545758525556FFF2EBE6D7DAE9D8
            DBF4E1DC6D6361454646C5C5C5C5C5C5C5C5C5D0CECD5867728D8589747A86E7
            CDA1826D70404748FFF0F0B1984EB69C51D0C9CF766B69444545C5C5C5C5C5C5
            C5C5C5D1D0CF5F6F7A8F8689627380484B33F3DAB3393E43F5E5E8B69E5ABCA1
            5DBDC1C85F6060464646C5C5C5C5C5C5C7C7C7D0CECD000311968D9164748154
            553BEAD2AD393E43F7E6E9B69E5ABCA15DBFC2C9616161464646C5C5C5C7C7C7
            D0D0D038373683878D958B8F647481545335E8CFA73B3F43FFF2F4C1A358C6A7
            5BC8CAD0626160393939C7C7C7D4D4D40000001E1E1E08151B243646707D865C
            6E7CFFFBF71227393D535F576A7D647687606F7B5C6469B8B7B6D1D1D1000000
            0F1111A29A98FFF4ECFFFFFF1F2630424B574E6370FFFFFBFFFBF099908D0706
            046563622F2F2ED6D6D63A39388E8E8ED4D4D4D5D6D68689898F9394ACAAA81B
            2A361D2B368F9191C8CCCDD1D2D2919191080808686868D1D1D152636FE1DFDD
            CACACA8686869D9D9D4B4B4BA2A1A0A8AEB25C6B77989796878787CACACAD3D3
            D38E8D8C747372BABABADBD8D5374A57DBD8D5D0D0D0878787D1D0D04B545B98
            9796949392BCBCBCB6B6B6CBCBCAD5D3D299A0A43D4F5BD2D1D0C5C5C5DBD8D5
            374A57DBD8D5D0D0D0878787949493BCBCBCB6B6B6CDCDCCD6D4D391979C4454
            6091979CD5D4D2C5C5C5C5C5C5C5C5C5DBD8D5374A57DBD8D5CBCBCBB5B5B5CD
            CDCCD6D4D391979C44546091979CD5D3D2CAC9C8C5C5C5C5C5C5C5C5C5C5C5C5
            C5C5C5DBD8D5374A57DBD8D5D6D4D391979C44546091979CD5D3D2CAC9C8C5C5
            C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5DBD8D5505F6A56646E97
            9DA1D5D3D2CAC9C8C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5}
          ParentFont = False
          Transparent = False
          OnClick = TambahBtnClick
        end
      end
    end
    object GPiutang: TcxGrid
      Left = 5
      Top = 5
      Width = 994
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
      object vwPiutang: TcxGridDBTableView
        DataController.DataSource = DsQuBeli
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'NDPP'
            Column = vwPiutangNDPP
          end
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'NNET'
            Column = vwPiutangNNET
          end
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'NPPN'
            Column = vwPiutangNPPN
          end>
        DataController.Summary.SummaryGroups = <>
        OnFocusedRecordChanged = vwPiutangFocusedRecordChanged
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.StyleSheet = FrSetForm.cxGridStyleHd
        object vwPiutangPilih: TcxGridDBColumn
          DataBinding.FieldName = 'Pilih'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayUnchecked = 'False'
          Properties.DisplayGrayed = 'False'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueGrayed = 'False'
        end
        object vwPiutangNoBukti: TcxGridDBColumn
          Caption = 'No. Pembelian'
          DataBinding.FieldName = 'NoBukti'
          Options.Editing = False
          Width = 202
        end
        object vwPiutangDBColumn1: TcxGridDBColumn
          Caption = 'Surat Jalan'
          DataBinding.FieldName = 'FakturSupp'
          Options.Editing = False
          Width = 87
        end
        object vwPiutangNDPP: TcxGridDBColumn
          Caption = 'Nilai DPP'
          DataBinding.FieldName = 'NDPP'
          Options.Editing = False
          Width = 131
        end
        object vwPiutangNPPN: TcxGridDBColumn
          Caption = 'Nilai PPN'
          DataBinding.FieldName = 'NPPN'
          Options.Editing = False
          Width = 129
        end
        object vwPiutangNNET: TcxGridDBColumn
          Caption = 'Nilai NET'
          DataBinding.FieldName = 'NNET'
          Options.Editing = False
          Width = 130
        end
      end
      object tvDetail: TcxGridDBBandedTableView
        DataController.DataSource = DSDetail
        DataController.DetailKeyFieldNames = 'Nobukti'
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.MasterKeyFieldNames = 'NoBukti'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'TotalDPP'
            Column = tvDetailTotalDPP
          end
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'TotalPPn'
            Column = tvDetailTotalPPn
          end
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'TotalNetto'
            Column = tvDetailTotalNetto
          end>
        DataController.Summary.SummaryGroups = <>
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
        Bands = <
          item
            Caption = 'Deskripsi'
          end
          item
            Caption = 'Kuantum'
          end
          item
            Caption = 'Jumlah'
          end>
        object tvDetailKodebrg: TcxGridDBBandedColumn
          Caption = 'Kode Barang'
          DataBinding.FieldName = 'Kodebrg'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 117
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvDetailNAMABRG: TcxGridDBBandedColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'NAMABRG'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 190
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvDetailQnt: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Qnt'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 78
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvDetailSatuan: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Satuan'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 44
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvDetailHarga: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Harga'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 88
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvDetailDiscTot: TcxGridDBBandedColumn
          Caption = 'Diskon'
          DataBinding.FieldName = 'DiscTot'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 76
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvDetailTotal: TcxGridDBBandedColumn
          Caption = 'Sub Total'
          DataBinding.FieldName = 'Total'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 133
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object tvDetailTotalDPP: TcxGridDBBandedColumn
          Caption = 'Nilai DPP'
          DataBinding.FieldName = 'TotalDPP'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object tvDetailTotalPPn: TcxGridDBBandedColumn
          Caption = 'Nilai PPn'
          DataBinding.FieldName = 'TotalPPn'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object tvDetailTotalNetto: TcxGridDBBandedColumn
          Caption = 'Nilai Netto'
          DataBinding.FieldName = 'TotalNetto'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 2
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
      object LvlPiutang: TcxGridLevel
        GridView = vwPiutang
        object GPiutangLevel1: TcxGridLevel
          GridView = tvDetail
        end
      end
    end
  end
  object QuBeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @awal Varchar(15),@NoPO Varchar(20)'
      'Select @Awal='#39'C00001'#39',@NoPO='#39#39
      
        'select Cast( 1 as Bit)Pilih, a.NoBukti,Sum(NDPP)NDPP,Sum(NPPN)NP' +
        'PN,Sum(NNET)NNET'
      '        ,FakturSupp'
      '        from dbBeli a'
      '        Left Outer Join dbBeliDet b On a.NoBukti=b.noBukti'
      
        '        where a.NoBukti Not in(select NoBeli from dbInvoiceDet) ' +
        'and b.NoPO=@NoPO'
      '       and a.KodeSupp=@Awal '
      '        Group by a.NoBukti,FakturSupp'
      '')
    Left = 11
    Top = 152
    object QuBeliPilih: TBooleanField
      FieldName = 'Pilih'
      ReadOnly = True
    end
    object QuBeliNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object QuBeliNDPP: TFloatField
      FieldName = 'NDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QuBeliNPPN: TFloatField
      FieldName = 'NPPN'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QuBeliNNET: TFloatField
      FieldName = 'NNET'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QuBeliFakturSupp: TStringField
      FieldName = 'FakturSupp'
      Size = 50
    end
  end
  object DsQuBeli: TDataSource
    DataSet = dxMem
    Left = 49
    Top = 152
  end
  object dxMem: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 11
    Top = 184
    object dxMemPilih: TBooleanField
      FieldName = 'Pilih'
    end
    object dxMemNoBukti: TStringField
      FieldName = 'NoBukti'
    end
    object dxMemNDPP: TFloatField
      FieldName = 'NDPP'
      DisplayFormat = ',0.00'
    end
    object dxMemNPPN: TFloatField
      FieldName = 'NPPN'
      DisplayFormat = ',0.00'
    end
    object dxMemNNET: TFloatField
      FieldName = 'NNET'
      DisplayFormat = ',0.00'
    end
    object dxMemFakturSupp: TStringField
      DisplayWidth = 50
      FieldName = 'FakturSupp'
      Size = 50
    end
  end
  object QuDetail: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    DataSource = DsQuBeli
    Parameters = <
      item
        Name = 'NoBukti'
        DataType = ftString
        Size = 14
        Value = '              '
      end>
    SQL.Strings = (
      'declare @awal Varchar(15),@NoPO Varchar(30)'
      'Select @Awal='#39'C00001'#39',@NoPO=:NoBukti'
      
        'Select A.Nobukti,B.Kodebrg, B.Qnt, B.Satuan, B.Nosat, B.Isi, B.H' +
        'arga, B.DiscP, B.DiscTot,'
      
        '       Case when A.Kodevls='#39'IDR'#39' then B.SubTotalRp  else B.SubTo' +
        'tal end Total,       '
      
        '       Case when A.Kodevls='#39'IDR'#39' then B.nDPPRp  else B.NDPP end ' +
        'TotalDPP,'
      
        '       Case when A.Kodevls='#39'IDR'#39' then B.nPPnRp  else B.NPPN end ' +
        'TotalPPn,'
      
        '       Case when A.Kodevls='#39'IDR'#39' then b.nNetRp  else B.NNET end ' +
        'TotalNetto,'
      '       C.NAMABRG'
      'From DBBelidet B'
      '     Left Outer join DBBELI A on A.NOBUKTI=B.NOBUKTI'
      '     left Outer join DBBARANG C on C.KODEBRG=b.KODEBRG'
      'where A.NOBUKTI=@NoPO'
      'Order by A.NOBUKTI, B.URUT'
      '')
    Left = 43
    Top = 184
    object QuDetailKodebrg: TStringField
      FieldName = 'Kodebrg'
      Size = 25
    end
    object QuDetailQnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailSatuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
    object QuDetailNosat: TWordField
      FieldName = 'Nosat'
    end
    object QuDetailIsi: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object QuDetailHarga: TBCDField
      FieldName = 'Harga'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QuDetailDiscP: TBCDField
      FieldName = 'DiscP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailDiscTot: TBCDField
      FieldName = 'DiscTot'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuDetailTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 32
      Size = 6
    end
    object QuDetailTotalDPP: TFloatField
      FieldName = 'TotalDPP'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QuDetailTotalPPn: TFloatField
      FieldName = 'TotalPPn'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QuDetailTotalNetto: TFloatField
      FieldName = 'TotalNetto'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QuDetailNAMABRG: TStringField
      FieldName = 'NAMABRG'
      Size = 100
    end
    object QuDetailNobukti: TStringField
      FieldName = 'Nobukti'
    end
  end
  object DSDetail: TDataSource
    DataSet = QuDetail
    Left = 73
    Top = 184
  end
end
