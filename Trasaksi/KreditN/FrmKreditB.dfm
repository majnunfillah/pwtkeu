object FrKreditB: TFrKreditB
  Left = 197
  Top = 171
  Width = 1082
  Height = 557
  Caption = 'Daftar Invoice Yang Belum Ada Kredit Note'
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
    Width = 1066
    Height = 0
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 519
    Width = 1066
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
    Width = 1066
    Height = 519
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object Panel4: TPanel
      Left = 5
      Top = 475
      Width = 1056
      Height = 39
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object PanelShow1: TPanel
        Left = 2
        Top = 4
        Width = 1052
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
    object dxDBGrid1: TdxDBGrid
      Left = 5
      Top = 5
      Width = 1056
      Height = 470
      TabStop = False
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'NoFaktur'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      Color = 14811135
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = []
      DataSource = DsQuBeli
      Filter.Criteria = {00000000}
      GridLineColor = 11202790
      GroupPanelColor = 13025469
      GroupPanelFontColor = clBlack
      GroupNodeColor = 10223615
      GroupNodeTextColor = 1912356
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
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowFooterColor = 11202790
      OnEdited = dxDBGrid1Edited
      object dxDBGrid1RecId: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RecId'
      end
      object dxDBGrid1Pilih: TdxDBGridCheckColumn
        HeaderAlignment = taCenter
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Pilih'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dxDBGrid1NoFaktur: TdxDBGridMaskColumn
        Caption = 'No. Faktur'
        HeaderAlignment = taCenter
        MinWidth = 30
        Width = 144
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoFaktur'
        SummaryFooterType = cstCount
      end
      object dxDBGrid1Tanggal: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tanggal'
      end
      object dxDBGrid1JatuhTempo: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JatuhTempo'
      end
      object dxDBGrid1KodeVls: TdxDBGridMaskColumn
        Caption = 'Valas'
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KodeVls'
      end
      object dxDBGrid1Nilai: TdxDBGridMaskColumn
        Caption = 'Nilai Kredit Note'
        HeaderAlignment = taCenter
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Nilai'
      end
      object dxDBGrid1Kurs: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Kurs'
      end
      object dxDBGrid1NilaiRp: TdxDBGridMaskColumn
        Caption = 'Nilai Kredit Note (Rp)'
        HeaderAlignment = taCenter
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NilaiRp'
      end
      object dxDBGrid1SaldoD: TdxDBGridMaskColumn
        Caption = 'Jumlah Piutang (Valas)'
        HeaderAlignment = taCenter
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SaldoD'
      end
      object dxDBGrid1Saldo: TdxDBGridMaskColumn
        Caption = 'Jumlah Piutang (Rp)'
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Saldo'
      end
      object dxDBGrid1Keterangan: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Keterangan'
      end
    end
  end
  object QuBeli: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @awal Varchar(15)'
      'Select @Awal='#39'T00054'#39
      
        'select Cast(1 as Bit) Pilih,Convert(Numeric(18,2),0) Nilai, a.Va' +
        'las KodeVls, a.Kurs, a.NoFaktur,Min(a.Tanggal) Tanggal, Min(a.Ja' +
        'tuhTempo) JatuhTempo,'
      '       SUM(a.Saldo) Saldo, SUM(A.SaldoD) SaldoD --, nomsk'
      'from dbo.vwHutPiut a'
      
        '     left outer join (select NoInv from dbkreditNoteDet) b on b.' +
        'NoInv=a.NoFaktur'
      'where a.KodeCustSupp=@Awal and B.NoInv is null and a.Tipe='#39'PT'#39
      'Group by a.NoFaktur,a.Valas, a.Kurs-- ,nomsk'
      'Having SUM(a.Saldo)<>0 or SUM(A.SaldoD)<>0'
      'Order by a.Nofaktur')
    Left = 11
    Top = 152
    object QuBeliPilih: TBooleanField
      FieldName = 'Pilih'
    end
    object QuBeliNilai: TBCDField
      FieldName = 'Nilai'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuBeliKodeVls: TStringField
      FieldName = 'KodeVls'
      ReadOnly = True
      Size = 15
    end
    object QuBeliKurs: TBCDField
      FieldName = 'Kurs'
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 20
    end
    object QuBeliNoFaktur: TStringField
      FieldName = 'NoFaktur'
      ReadOnly = True
      Size = 30
    end
    object QuBeliTanggal: TDateTimeField
      FieldName = 'Tanggal'
      ReadOnly = True
    end
    object QuBeliJatuhTempo: TDateTimeField
      FieldName = 'JatuhTempo'
      ReadOnly = True
    end
    object QuBeliSaldo: TFloatField
      FieldName = 'Saldo'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QuBeliSaldoD: TFloatField
      FieldName = 'SaldoD'
      ReadOnly = True
      DisplayFormat = ',0.00'
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
    object dxMemNoFaktur: TStringField
      DisplayWidth = 30
      FieldName = 'NoFaktur'
      ReadOnly = True
      Size = 30
    end
    object dxMemNilai: TFloatField
      FieldName = 'Nilai'
      DisplayFormat = ',0.00'
    end
    object dxMemNilaiRp: TBCDField
      FieldName = 'NilaiRp'
      DisplayFormat = ',0.00'
    end
    object dxMemKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 200
    end
    object dxMemKodeVls: TStringField
      FieldName = 'KodeVls'
      ReadOnly = True
      Size = 15
    end
    object dxMemKurs: TBCDField
      FieldName = 'Kurs'
      DisplayFormat = ',0.00'
    end
    object dxMemTanggal: TDateTimeField
      FieldName = 'Tanggal'
      ReadOnly = True
    end
    object dxMemJatuhTempo: TDateTimeField
      FieldName = 'JatuhTempo'
      ReadOnly = True
    end
    object dxMemSaldo: TBCDField
      FieldName = 'Saldo'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object dxMemSaldoD: TBCDField
      FieldName = 'SaldoD'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object dxMemUrutInvoice: TIntegerField
      FieldName = 'UrutInvoice'
    end
  end
end
