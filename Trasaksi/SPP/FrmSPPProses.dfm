object FrSPPProses: TFrSPPProses
  Left = 81
  Top = 138
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Proses Pembuatan Surat Perintah Pengiriman'
  ClientHeight = 432
  ClientWidth = 1090
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 6
    Width = 463
    Height = 16
    Caption = 
      'Sales Order (SO) yang akan dibuatkan Surat Perintah Kirim Dari G' +
      'udang'
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Cetak: TSpeedButton
    Left = 578
    Top = 322
    Width = 75
    Height = 28
    Caption = '&Cetak'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000C5C5C5C5C5C5
      C5C5C5CACACADBDBDBA0A09F9C9C9CD0D0D0CACACADBDBDB9C9C9CA0A0A0D0D0
      D0C5C5C5C5C5C5C5C5C5C5C5C5CACACADBDBDBA5A5A4120F0E000000161515A7
      A7A7A9A9A90707071A191A000000A8A8A8D0D0D0C5C5C5C5C5C5D5D5D5A5A5A4
      120F0E00000086919396A594A1AAA1161416000000B4B3B3FFFFFF848C840000
      00A8A8A8D0D0D0C5C5C55F5F5E0000008691939EAD9B2B2E29919092B5B8BA98
      A2983D322E5E62636668684B494A959D95000000A0A0A0CACACAA2A2A2232820
      3F433D89888AFFFFFFFFFFFFFFFFFFBBC0C2909D927D746FE6E6E77E817E4040
      40575957595959D0D0D0DBDBDB000000D8DDDDFFFFFFF9FFFFF8FFFFFAFFFFFF
      FFFFB0B3B5180809E1E2E28A898A5B665B000000656565D0D0D0C5C5C5ECECEC
      000000D1D7D7FFFFFFFFFFFFEEF2F2A6A7A8726B665E4E43D7D9DB7E7E7F656C
      65222722626262D0D0D0C5C5C5DBDBDB000000525050C1C8C9ABACAD6A635E55
      463A97918CE3EAECFDF9F6E1D9D68887892C2F2C616161D0D0D0C5C5C5DBDBDB
      000000ACB4B0160000695A51928E8AF7F2F1FFFBF9E9E1DEC1C2C2DADEDED8DB
      DB3938395F5F5FD0D0D0C5C5C5DBDBDB000000E9E9EA9CA3A2F3EEEEFFFFFFE5
      E0DDC2C4C4C6C7C7CACACAD0D0D0FAFCFC1118115C5C5CD0D0D0C5C5C5DBDBDB
      000000FFFDFBFFFFFDE5E0DDC1C3C4C6C7C7CACACAD3D4D4E1E1E16A6A693E48
      4E090008B4B5B4CACACAC5C5C5D5D5D5020406CCB5B0CCCFD0C6C7C7CACACAD3
      D4D4E1E2E36B615C2C322FAFABAFE7E7E6FFFBFF000000DBDBDBC5C5C5C5C5C5
      E6E6E6000000A7A7A7DBDBDBEAEBEB736A651F190FADB2B0E7E6E7F0F0F05F5F
      5F000000686868D0D0D0C5C5C5C5C5C5C5C5C5E6E6E600000071717100000074
      7876EEEFF0F0F0F05F5F5F0000005B5B5BE6E6E6D0D0D0C5C5C5C5C5C5C5C5C5
      C5C5C5C5C5C5E1E1E1434343F7F7F70000007171710000005B5B5BE6E6E6D0D0
      D0C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5D0D0D0C5C5C5E1
      E1E14F4F4FE6E6E6D0D0D0C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5}
    ParentFont = False
    Transparent = False
    Visible = False
    OnClick = CetakClick
  end
  object SpeedButton6: TSpeedButton
    Left = 654
    Top = 322
    Width = 23
    Height = 28
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
      1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
      1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
      193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
      11155557F755F777777555000755033305555577755F75F77F55555555503335
      0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
      05555757F75F75557F5505000333555505557F777FF755557F55000000355557
      07557777777F55557F5555000005555707555577777FF5557F55553000075557
      0755557F7777FFF5755555335000005555555577577777555555}
    NumGlyphs = 2
    Visible = False
    OnClick = SpeedButton6Click
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 68
    Height = 16
    Caption = 'Customer : '
  end
  object Label3: TLabel
    Left = 16
    Top = 328
    Width = 37
    Height = 16
    Caption = 'Label3'
    Visible = False
  end
  object Label4: TLabel
    Left = 632
    Top = 8
    Width = 30
    Height = 16
    Caption = '[     ]'
  end
  object BtnSimpan: TBitBtn
    Left = 412
    Top = 322
    Width = 80
    Height = 28
    Caption = '&OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnSimpanClick
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
  object BtnBatal: TBitBtn
    Left = 491
    Top = 322
    Width = 80
    Height = 28
    Caption = '&Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BtnBatalClick
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
  object dxDBGrid1: TdxDBGrid
    Left = 10
    Top = 52
    Width = 1071
    Height = 269
    TabStop = False
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'KeyUrut'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Color = 14811135
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = dsMemProsesSPP
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
    OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    RowFooterColor = 11202790
    OnEdited = dxDBGrid1Edited
    object dxDBGrid1KeSJ: TdxDBGridCheckColumn
      Caption = 'Buat SPP'
      HeaderAlignment = taCenter
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KeSJ'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dxDBGrid1NoSO: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NoSO'
    end
    object dxDBGrid1TglSO: TdxDBGridDateColumn
      Caption = 'Tgl SO'
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TglSO'
    end
    object dxDBGrid1RecId: TdxDBGridColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 69
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RecId'
    end
    object dxDBGrid1KodeBrg: TdxDBGridMaskColumn
      Caption = 'Kode Barang'
      HeaderAlignment = taCenter
      Width = 105
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KodeBrg'
    end
    object dxDBGrid1NamaBrg: TdxDBGridMaskColumn
      Caption = 'Nama Barang'
      HeaderAlignment = taCenter
      Width = 123
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NamaBrg'
    end
    object dxDBGrid1Satuan: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 46
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Satuan'
    end
    object dxDBGrid1Kodegdg: TdxDBGridMaskColumn
      Caption = 'Gudang'
      HeaderAlignment = taCenter
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Kodegdg'
    end
    object dxDBGrid1Qnt: TdxDBGridMaskColumn
      Caption = 'SO'
      HeaderAlignment = taCenter
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QntSO'
    end
    object dxDBGrid1QntSPP: TdxDBGridMaskColumn
      Caption = 'SPP ini'
      HeaderAlignment = taCenter
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QntSPP'
    end
    object dxDBGrid1QntTelahSPP: TdxDBGridMaskColumn
      Caption = 'Telah SPP'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QntTelahSPP'
    end
    object dxDBGrid1QntSisa: TdxDBGridMaskColumn
      Caption = 'Sisa'
      HeaderAlignment = taCenter
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QntSisa'
    end
    object dxDBGrid1QntStock: TdxDBGridMaskColumn
      Caption = 'Stock'
      HeaderAlignment = taCenter
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'QntStock'
    end
    object dxDBGrid1KeyUrut: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 230
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KeyUrut'
    end
  end
  object Kodegdg: TComboBox
    Left = 474
    Top = 3
    Width = 145
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 0
    Text = 'Kodegdg'
    OnCloseUp = KodegdgCloseUp
  end
  object BitBtn1: TBitBtn
    Left = 276
    Top = 322
    Width = 93
    Height = 28
    Caption = '&Lihat Detail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object Panel1: TPanel
    Left = 224
    Top = 80
    Width = 553
    Height = 225
    Caption = 'Panel1'
    TabOrder = 5
    Visible = False
    object Button1: TButton
      Left = 464
      Top = 192
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 553
      Height = 185
      Caption = 'Panel2'
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 551
        Height = 183
        Align = alClient
        TabOrder = 0
        object vwPiutang: TcxGridDBTableView
          DataController.DataSource = dsQucari
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object vwPiutangDBColumn1: TcxGridDBColumn
            Caption = 'No. Faktur'
            DataBinding.FieldName = 'NoFaktur'
            Width = 248
          end
          object vwPiutangDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Sisa'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = vwPiutang
        end
      end
    end
  end
  object BitBtn2: TBitBtn
    Left = 720
    Top = 354
    Width = 193
    Height = 28
    Caption = '&Lihat Detail Piutang JT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Visible = False
    OnClick = BitBtn2Click
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
  object BitBtn3: TBitBtn
    Left = 720
    Top = 386
    Width = 193
    Height = 28
    Caption = 'Lihat Detail Piutang JT(1 Thn)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Visible = False
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
  object Panel3: TPanel
    Left = 232
    Top = 80
    Width = 553
    Height = 225
    Caption = 'Panel1'
    TabOrder = 8
    Visible = False
    object Button2: TButton
      Left = 464
      Top = 192
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 553
      Height = 185
      Caption = 'Panel2'
      TabOrder = 1
      object cxGrid2: TcxGrid
        Left = 1
        Top = 1
        Width = 551
        Height = 183
        Align = alClient
        TabOrder = 0
        object vwPiutangJT: TcxGridDBTableView
          DataController.DataSource = dsQucari2
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'No. Faktur'
            DataBinding.FieldName = 'NoFaktur'
            Width = 180
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'Urut'
            OnGetDisplayText = cxGridDBColumn2GetDisplayText
            Width = 129
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = vwPiutangJT
        end
      end
    end
  end
  object QuSO: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        Size = 2
        Value = #39#39
      end>
    SQL.Strings = (
      'declare @NoBukti varchar(30), @Bulan int, @Tahun int'
      ''
      'select @NoBukti='#39#39', @Bulan=7, @Tahun=2012'
      ''
      
        'Select A.Nobukti, A.Tanggal, B.Kodebrg, C.NamaBrg, B.Satuan, B.N' +
        'osat,B.Isi, B.Qnt Qnt1, B.Qnt2,'
      '       Case when B.Nosat=1 then B.Qnt'
      '            when B.Nosat=2 then B.Qnt2'
      '            else 0'
      
        '       end Qnt, Isnull(D.Qnt1,0) Qnt1SPP, isnull(D.Qnt2,0) Qnt2S' +
        'PP, isnull(D.Qnt,0) QntSPP,'
      
        '       B.Qnt-isnull(D.Qnt1,0) Qnt1Sisa, B.Qnt2-Isnull(D.Qnt2,0) ' +
        'Qnt2Sisa,'
      '       Case when B.Nosat=1 then B.Qnt'
      '            when B.Nosat=2 then B.Qnt2'
      '            else 0'
      '       end-isnull(D.Qnt,0) QntSisa,'
      
        '       isnull(E.Qnt1,0) QntStock, A.nobukti+Cast(B.Urut as Varch' +
        'ar(5))+Isnull(E.Kodegdg,'#39#39') KeyUrut,'
      
        '       C.SAT1, C.SAT2, A.NoPesanan, A.TglKirim, A.NoAlamatKirim,' +
        ' A.KodeCust, B.Urut,'
      
        '       E.Qnt1 Stock1, E.Qnt2 Stock2, A.Catatan, E.kodegdg,B.NDPP' +
        ',B.NNET,Isnull(A.TipePPN,0) FlagTipe'
      'From DBSO A'
      '     Left Outer join dbSODet B on B.Nobukti=A.Nobukti'
      '     Left Outer join dbBarang C on C.kodebrg=B.Kodebrg'
      
        '     Left Outer join (Select y.Noso, y.UrutSO, Sum(y.Qnt) Qnt1, ' +
        'Sum(y.Qnt2) Qnt2,'
      '                             Sum(Case when y.Nosat=1 then y.Qnt'
      '                                      when y.Nosat=2 then y.Qnt2'
      '                                      else 0'
      '                                 end) Qnt'
      '                      from DBSPP x'
      
        '                           Left Outer Join DBSPPdet y on y.nobuk' +
        'ti=x.nobukti'
      
        '                      Group by  y.Noso, y.UrutSO) D on D.NoSO=A.' +
        'Nobukti and D.UrutSO=B.Urut'
      
        '     Left Outer join (Select Kodebrg, kodegdg, Sum(SaldoQnt) Qnt' +
        '1, Sum(Saldo2Qnt) Qnt2'
      '                      from dbstockBrg'
      '                      where Bulan=@bulan and Tahun=@Tahun'
      
        '                      Group by kodebrg, Kodegdg) E on E.Kodebrg=' +
        'B.Kodebrg and E.KodeGdg=:0'
      'Where A.Nobukti=@nobukti and'
      '       (Case when B.Nosat=1 then B.Qnt'
      '            when B.Nosat=2 then B.Qnt2'
      '            else 0'
      '       end-isnull(D.Qnt,0))>0    and Isnull(B.IsCLosedet,0)=0'
      ''
      'Order by B.Urut')
    Left = 187
    Top = 192
    object QuSONobukti: TStringField
      FieldName = 'Nobukti'
      Size = 30
    end
    object QuSOTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuSOKodebrg: TStringField
      FieldName = 'Kodebrg'
      Size = 25
    end
    object QuSONamaBrg: TStringField
      FieldName = 'NamaBrg'
      Size = 100
    end
    object QuSOSatuan: TStringField
      FieldName = 'Satuan'
      Size = 5
    end
    object QuSONosat: TWordField
      FieldName = 'Nosat'
    end
    object QuSOQnt1: TBCDField
      FieldName = 'Qnt1'
      Precision = 18
      Size = 2
    end
    object QuSOQnt2: TBCDField
      FieldName = 'Qnt2'
      Precision = 18
      Size = 2
    end
    object QuSOQnt: TBCDField
      FieldName = 'Qnt'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QuSOQnt1SPP: TBCDField
      FieldName = 'Qnt1SPP'
      Precision = 32
      Size = 2
    end
    object QuSOQnt2SPP: TBCDField
      FieldName = 'Qnt2SPP'
      Precision = 32
      Size = 2
    end
    object QuSOQntSPP: TBCDField
      FieldName = 'QntSPP'
      Precision = 32
      Size = 2
    end
    object QuSOQnt1Sisa: TBCDField
      FieldName = 'Qnt1Sisa'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuSOQnt2Sisa: TBCDField
      FieldName = 'Qnt2Sisa'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuSOQntSisa: TBCDField
      FieldName = 'QntSisa'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuSOQntStock: TBCDField
      FieldName = 'QntStock'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QuSOKeyUrut: TStringField
      FieldName = 'KeyUrut'
      ReadOnly = True
      Size = 35
    end
    object QuSOIsi: TBCDField
      FieldName = 'Isi'
      Precision = 18
      Size = 2
    end
    object QuSOSAT1: TStringField
      FieldName = 'SAT1'
      Size = 5
    end
    object QuSOSAT2: TStringField
      FieldName = 'SAT2'
      Size = 5
    end
    object QuSONoPesanan: TStringField
      FieldName = 'NoPesanan'
      Size = 150
    end
    object QuSOTglKirim: TDateTimeField
      FieldName = 'TglKirim'
    end
    object QuSONoAlamatKirim: TIntegerField
      FieldName = 'NoAlamatKirim'
    end
    object QuSOKodeCust: TStringField
      FieldName = 'KodeCust'
      Size = 15
    end
    object QuSOUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuSOStock1: TFloatField
      FieldName = 'Stock1'
      ReadOnly = True
    end
    object QuSOStock2: TFloatField
      FieldName = 'Stock2'
      ReadOnly = True
    end
    object QuSOCatatan: TStringField
      FieldName = 'Catatan'
      Size = 2000
    end
    object QuSOkodegdg: TStringField
      FieldName = 'kodegdg'
      Size = 15
    end
    object QuSONDPP: TFloatField
      FieldName = 'NDPP'
      ReadOnly = True
    end
    object QuSONNET: TFloatField
      FieldName = 'NNET'
      ReadOnly = True
    end
    object QuSOFlagTipe: TWordField
      FieldName = 'FlagTipe'
      ReadOnly = True
    end
  end
  object QuCetakSO: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select '#9'A.NoBukti, A.NOURUT, A.Tanggal, A.KodeCUST, C.NamaCUST, ' +
        'C.Alamat, J.AlamatKirim,'
      #9'A.NOSPB, A.KodeGdg, A.Keterangan, A.Catatan,'
      #9'B.Urut, B.UrutSPB, B.KodeBrg, H.NamaBrg, B.Qnt, H.Sat1 Satuan,'
      '        B.Qnt2, H.Sat2 SatuanRoll, A.KodeExp, M.NamaExp,'
      #9'case when B.Qnt2=0 then B.Qnt else B.Qnt2 end QntTampil,'
      #9'case when B.Qnt2=0 then H.Sat1 else H.Sat2 end SatuanTampil'
      'From dbSO A'
      'Left Outer join dbSODet B on B.NoBukti=a.NoBukti'
      'Left Outer Join vwBrowsCustomer C on c.KodeCust=a.KodeCust'
      'left outer join dbSalesman F on F.KodeSls=A.KodeSls'
      
        'Left Outer Join vwSatuanBrg H on H.KodeBrg=B.KodeBrg --and H.NoS' +
        'at=B.NoSat'
      
        'left outer join vwAlamatCust J on J.KodeCust=A.KodeCust and J.No' +
        'mor=A.NoAlamatKirim'
      'left outer join dbExpedisi M on M.KodeExp=A.KodeExp'
      
        'where'#9'A.NoBukti in ('#39'BIC/012010/00001/SO '#39','#39'BIC/012010/00003/SO ' +
        #39')'
      'order by A.NoBukti, B.Urut'
      '')
    Left = 115
    Top = 114
  end
  object DsCetakSO: TDataSource
    DataSet = QuCetakSO
    Left = 82
    Top = 112
  end
  object frxDBCetak: TfrxDBDataset
    UserName = 'frxDBCetak'
    CloseDataSource = False
    DataSet = QuCetakSO
    Left = 244
    Top = 146
  end
  object frxReport1: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38793.6507510417
    ReportOptions.LastChange = 40381.5454685648
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var AKTIVA,judul1:string;'
      'procedure GroupHeader2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<frxDBDataset3."grupAP2">='#39'A1'#39') then'
      '      judul1 := '#39'AKTIVA LANCAR'#39
      '   else'
      '   if (<frxDBDataset3."grupAP2">='#39'A2'#39') then'
      '      judul1 := '#39'AKTIVA TETAP'#39
      '   else'
      '   if (<frxDBDataset3."grupAP2">='#39'A3'#39') then'
      '     judul1 := '#39'AKTIVA LAIN-LAIN'#39';'
      '   if (<frxDBDataset3."grupAP2">='#39'P1'#39') then'
      '      judul1 := '#39'KEWAJIBAN'#39
      '   else'
      '   if (<frxDBDataset3."grupAP2">='#39'P2'#39') then'
      '     judul1 := '#39'PASIVA'#39
      '   else'
      '   if (<frxDBDataset3."grupAP2">='#39'P3'#39') then'
      '      judul1 := '#39'MODAL'#39';'
      'end;'
      ''
      ''
      ''
      'procedure GroupHeader4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<frxDBDataset4."grupAP2">='#39'A1'#39') then'
      '      judul1 := '#39'AKTIVA LANCAR'#39
      '   else'
      '   if (<frxDBDataset4."grupAP2">='#39'A2'#39') then'
      '      judul1 := '#39'AKTIVA TETAP'#39
      '   else'
      '   if (<frxDBDataset4."grupAP2">='#39'A3'#39') then'
      '     judul1 := '#39'AKTIVA LAIN-LAIN'#39';'
      '   if (<frxDBDataset3."grupAP2">='#39'P1'#39') then'
      '      judul1 := '#39'KEWAJIBAN'#39
      '   else'
      '   if (<frxDBDataset4."grupAP2">='#39'P2'#39') then'
      '     judul1 := '#39'PASIVA'#39
      '   else'
      '   if (<frxDBDataset4."grupAP2">='#39'P3'#39') then'
      '      judul1 := '#39'MODAL'#39';'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnAfterPrintReport = frxReport1AfterPrintReport
    Left = 274
    Top = 146
    Datasets = <
      item
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 110
      PaperHeight = 139.5
      PaperSize = 256
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 10
      BottomMargin = 10
      Columns = 1
      ColumnWidth = 277
      ColumnPositions.Strings = (
        '0')
      LargeDesignHeight = True
      object ReportTitle1: TfrxReportTitle
        Height = 37.79527559
        Top = 18.89765
        Width = 377.953
        Stretched = True
        object Memo12: TfrxMemoView
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          Memo.UTF8 = (
            '[frxDBCetak."NamaCUST"]')
        end
        object Memo13: TfrxMemoView
          Top = 18.8976378
          Width = 94.48825
          Height = 18.89765
          AutoWidth = True
          Memo.UTF8 = (
            '[frxDBCetak."AlamatKirim"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.67718
        Top = 117.16543
        Width = 377.953
        Condition = 'frxDBCetak."NoBukti"'
        object Memo9: TfrxMemoView
          Width = 377.953
          Height = 18.89765
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '[frxDBCetak."NoBukti"]')
        end
      end
      object MasterData3: TfrxMasterData
        Height = 15.11812
        Top = 162.51979
        Width = 377.953
        DataSet = frxDBCetak
        DataSetName = 'frxDBCetak'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 264.56692913
          Height = 15.11812
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."NamaBrg"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 226.77162913
          Width = 75.59055118
          Height = 15.11812
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetak."QntTampil"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 302.36218031
          Width = 37.79527559
          Height = 15.11812
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetak."SatuanTampil"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.67718
        Top = 200.31509
        Width = 377.953
        object Memo1: TfrxMemoView
          Width = 377.953
          Height = 18.89765
          Frame.Typ = [ftTop]
        end
        object Memo17: TfrxMemoView
          Width = 188.9765
          Height = 18.89765
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd-mm-yyyy hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal Cetak [<Date> #ddd-mm-yyyy] [<Time> #dhh:mm:ss]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    FileName = 'C:\DOCUME~1\admin\LOCALS~1\Temp\fr48.tmp'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 280
    Top = 110
  end
  object dxMemProsesSPP: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterPost = dxMemProsesSPPAfterPost
    Left = 192
    Top = 88
    object dxMemProsesSPPKeSJ: TBooleanField
      DisplayLabel = 'SPP'
      FieldName = 'KeSJ'
    end
    object dxMemProsesSPPNOSO: TStringField
      DisplayLabel = 'No. SO'
      FieldName = 'NOSO'
      ReadOnly = True
    end
    object dxMemProsesSPPTglSO: TDateField
      DisplayLabel = 'Tgl. SO'
      FieldName = 'TglSO'
      ReadOnly = True
    end
    object dxMemProsesSPPKodeBrg: TStringField
      FieldName = 'KodeBrg'
      ReadOnly = True
      Size = 25
    end
    object dxMemProsesSPPNamaBrg: TStringField
      FieldName = 'NamaBrg'
      ReadOnly = True
      Size = 200
    end
    object dxMemProsesSPPSatuan: TStringField
      FieldName = 'Satuan'
      ReadOnly = True
      Size = 5
    end
    object dxMemProsesSPPQntSO: TBCDField
      FieldName = 'QntSO'
      ReadOnly = True
    end
    object dxMemProsesSPPQntSPP: TBCDField
      FieldName = 'QntSPP'
      DisplayFormat = ',0.00'
    end
    object dxMemProsesSPPQntSisa: TBCDField
      FieldName = 'QntSisa'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object dxMemProsesSPPQntStock: TBCDField
      FieldName = 'QntStock'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object dxMemProsesSPPKeyUrut: TStringField
      FieldName = 'KeyUrut'
      ReadOnly = True
      Size = 35
    end
    object dxMemProsesSPPQnt1SO: TBCDField
      FieldName = 'Qnt1SO'
      ReadOnly = True
    end
    object dxMemProsesSPPQnt2SO: TBCDField
      FieldName = 'Qnt2SO'
      ReadOnly = True
    end
    object dxMemProsesSPPQnt1SPP: TBCDField
      FieldName = 'Qnt1SPP'
    end
    object dxMemProsesSPPQnt2SPP: TBCDField
      FieldName = 'Qnt2SPP'
    end
    object dxMemProsesSPPQnt1Sisa: TBCDField
      FieldName = 'Qnt1Sisa'
      ReadOnly = True
    end
    object dxMemProsesSPPQnt2Sisa: TBCDField
      FieldName = 'Qnt2Sisa'
      ReadOnly = True
    end
    object dxMemProsesSPPNosat: TIntegerField
      FieldName = 'Nosat'
      ReadOnly = True
    end
    object dxMemProsesSPPIsi: TBCDField
      FieldName = 'Isi'
      ReadOnly = True
    end
    object dxMemProsesSPPSat1: TStringField
      FieldName = 'Sat1'
      Size = 5
    end
    object dxMemProsesSPPSAT2: TStringField
      FieldName = 'SAT2'
      Size = 5
    end
    object dxMemProsesSPPNoPesanan: TStringField
      FieldName = 'NoPesanan'
      Size = 150
    end
    object dxMemProsesSPPTglKirim: TDateTimeField
      FieldName = 'TglKirim'
    end
    object dxMemProsesSPPNoAlamatKirim: TIntegerField
      FieldName = 'NoAlamatKirim'
    end
    object dxMemProsesSPPKodeCust: TStringField
      FieldName = 'KodeCust'
      Size = 30
    end
    object dxMemProsesSPPUrut: TIntegerField
      FieldName = 'Urut'
    end
    object dxMemProsesSPPStock1: TBCDField
      FieldName = 'Stock1'
    end
    object dxMemProsesSPPStock2: TBCDField
      FieldName = 'Stock2'
    end
    object dxMemProsesSPPCatatan: TStringField
      FieldName = 'Catatan'
      Size = 8000
    end
    object dxMemProsesSPPKodegdg: TStringField
      FieldName = 'Kodegdg'
      Size = 15
    end
    object dxMemProsesSPPQntTelahSPP: TBCDField
      FieldName = 'QntTelahSPP'
      DisplayFormat = ',0.00'
    end
    object dxMemProsesSPPNDPP: TFloatField
      FieldName = 'NDPP'
    end
    object dxMemProsesSPPNNET: TFloatField
      FieldName = 'NNET'
    end
    object dxMemProsesSPPFlagTipe: TSmallintField
      FieldName = 'FlagTipe'
    end
  end
  object dsMemProsesSPP: TDataSource
    DataSet = dxMemProsesSPP
    Left = 226
    Top = 92
  end
  object Sp_Beli: TADOStoredProc
    Connection = DM.MyStock
    CommandTimeout = 60
    ProcedureName = 'Sp_SPP;1'
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
        Name = '@NOBUKTI'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@NoUrut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 7
        Value = Null
      end
      item
        Name = '@TANGGAL'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@NoSHIP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@NoPesan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@KODECUSTSUPP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@TglKirim'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@ShippingMark'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
        Value = Null
      end
      item
        Name = '@NoLC'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Catatan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@URUT'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@UrutSHIP'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@KODEBRG'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@QNT'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@QNT2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@SAT_1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@SAT_2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@NoSat'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@ISI'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NetW'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@GrossW'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@KetDetail'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@IDUser'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@IsEmpty'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Namabrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = '@Mesurement'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@noAlamatKirim'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@NamaKirim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Alamatkirim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
        Value = Null
      end
      item
        Name = '@Flagmenu'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Kodegdg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@FlagTipe'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end>
    Left = 221
    Top = 193
  end
  object dsQucari: TDataSource
    DataSet = Qucari
    Left = 200
    Top = 336
  end
  object dsQucari2: TDataSource
    DataSet = Qucari2
    Left = 200
    Top = 368
  end
  object Qucari: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select '#9'A.NoBukti, A.NOURUT, A.Tanggal, A.KodeCUST, C.NamaCUST, ' +
        'C.Alamat, J.AlamatKirim,'
      #9'A.NOSPB, A.KodeGdg, A.Keterangan, A.Catatan,'
      #9'B.Urut, B.UrutSPB, B.KodeBrg, H.NamaBrg, B.Qnt, H.Sat1 Satuan,'
      '        B.Qnt2, H.Sat2 SatuanRoll, A.KodeExp, M.NamaExp,'
      #9'case when B.Qnt2=0 then B.Qnt else B.Qnt2 end QntTampil,'
      #9'case when B.Qnt2=0 then H.Sat1 else H.Sat2 end SatuanTampil'
      'From dbSO A'
      'Left Outer join dbSODet B on B.NoBukti=a.NoBukti'
      'Left Outer Join vwBrowsCustomer C on c.KodeCust=a.KodeCust'
      'left outer join dbSalesman F on F.KodeSls=A.KodeSls'
      
        'Left Outer Join vwSatuanBrg H on H.KodeBrg=B.KodeBrg --and H.NoS' +
        'at=B.NoSat'
      
        'left outer join vwAlamatCust J on J.KodeCust=A.KodeCust and J.No' +
        'mor=A.NoAlamatKirim'
      'left outer join dbExpedisi M on M.KodeExp=A.KodeExp'
      
        'where'#9'A.NoBukti in ('#39'BIC/012010/00001/SO '#39','#39'BIC/012010/00003/SO ' +
        #39')'
      'order by A.NoBukti, B.Urut'
      '')
    Left = 170
    Top = 336
  end
  object Qucari2: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select '#9'A.NoBukti, A.NOURUT, A.Tanggal, A.KodeCUST, C.NamaCUST, ' +
        'C.Alamat, J.AlamatKirim,'
      #9'A.NOSPB, A.KodeGdg, A.Keterangan, A.Catatan,'
      #9'B.Urut, B.UrutSPB, B.KodeBrg, H.NamaBrg, B.Qnt, H.Sat1 Satuan,'
      '        B.Qnt2, H.Sat2 SatuanRoll, A.KodeExp, M.NamaExp,'
      #9'case when B.Qnt2=0 then B.Qnt else B.Qnt2 end QntTampil,'
      #9'case when B.Qnt2=0 then H.Sat1 else H.Sat2 end SatuanTampil'
      'From dbSO A'
      'Left Outer join dbSODet B on B.NoBukti=a.NoBukti'
      'Left Outer Join vwBrowsCustomer C on c.KodeCust=a.KodeCust'
      'left outer join dbSalesman F on F.KodeSls=A.KodeSls'
      
        'Left Outer Join vwSatuanBrg H on H.KodeBrg=B.KodeBrg --and H.NoS' +
        'at=B.NoSat'
      
        'left outer join vwAlamatCust J on J.KodeCust=A.KodeCust and J.No' +
        'mor=A.NoAlamatKirim'
      'left outer join dbExpedisi M on M.KodeExp=A.KodeExp'
      
        'where'#9'A.NoBukti in ('#39'BIC/012010/00001/SO '#39','#39'BIC/012010/00003/SO ' +
        #39')'
      'order by A.NoBukti, B.Urut'
      '')
    Left = 169
    Top = 368
  end
end
