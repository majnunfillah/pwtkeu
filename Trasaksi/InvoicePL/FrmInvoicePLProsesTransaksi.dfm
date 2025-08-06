object FrInvoicePLProsesTransaksi: TFrInvoicePLProsesTransaksi
  Left = 429
  Top = 319
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tambah Item'
  ClientHeight = 340
  ClientWidth = 630
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 6
    Width = 288
    Height = 16
    Caption = 'Surat jalan yang akan dibuatkan Invoice Penjualan'
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Cetak: TSpeedButton
    Left = 10
    Top = 306
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
  end
  object SpeedButton6: TSpeedButton
    Left = 86
    Top = 306
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
  end
  object BtnSimpan: TBitBtn
    Left = 202
    Top = 306
    Width = 80
    Height = 27
    Caption = '&OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
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
    Left = 289
    Top = 306
    Width = 80
    Height = 27
    Caption = '&Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
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
    Top = 28
    Width = 607
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
    TabOrder = 2
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
    object dxDBGrid1KeSJ: TdxDBGridCheckColumn
      Caption = 'Buat Invoice'
      HeaderAlignment = taCenter
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KeSJ'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dxDBGrid1NoSPB: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOSPB'
    end
    object dxDBGrid1TglSPB: TdxDBGridDateColumn
      Caption = 'Tanggal SPB'
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TglSPB'
    end
    object dxDBGrid1RecId: TdxDBGridColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 69
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RecId'
    end
    object dxDBGrid1KeyUrut: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 230
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KeyUrut'
    end
    object dxDBGrid1Noso: TdxDBGridMaskColumn
      Caption = 'No. SO'
      HeaderAlignment = taCenter
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Noso'
    end
    object dxDBGrid1TglSO: TdxDBGridDateColumn
      Caption = 'Tanggal SO'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TglSO'
    end
  end
  object QuSO: TADOQuery
    CacheSize = 2000
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @NoBukti varchar(30), @Bulan int, @Tahun int'
      ''
      'select @NoBukti='#39'SJY/SO/0413/00005'#39', @Bulan=4, @Tahun=2013'
      ''
      'Select A.Nobukti, A.Tanggal,G.NOBUKTI Noso, G.TANGGAL TGLSO,'
      '       A.nobukti KeyUrut,kodecust'
      'From DBSPB A'
      '     Left Outer join dbSPBDet B on B.Nobukti=A.Nobukti'
      '     Left Outer join dbBarang C on C.kodebrg=B.Kodebrg'
      
        '     Left Outer join (Select y.NoSPB, y.UrutSPB, Sum(y.Qnt) Qnt1' +
        ', Sum(y.Qnt2) Qnt2,'
      '                             Sum(Case when y.Nosat=1 then y.Qnt'
      '                                      when y.Nosat=2 then y.Qnt2'
      '                                      else 0'
      '                                 end) Qnt'
      '                      from DBInvoicePL x'
      
        '                           Left Outer Join dbInvoicePLDet y on y' +
        '.nobukti=x.nobukti'
      
        '                      Group by  y.NoSPB, y.UrutSPB) D on D.NoSPB' +
        '=A.Nobukti and D.UrutSPB=B.Urut'
      
        '     Left Outer join (Select x.NoBukti, y.Urut, y.NoSO, y.UrutSO' +
        ', x.NoPesan, x.TglKirim, x.NoAlamatKirim, x.Tanggal'
      '                      From dbSPP x'
      
        '                           Left Outer join dbSPPDet y on y.NoBuk' +
        'ti=x.NoBukti) F on F.NoBukti=B.NoSPP and F.Urut=B.UrutSPP'
      
        '     Left Outer join (Select kodecust,x.NoBukti,x.Tanggal, y.Uru' +
        't, x.NoPesanan, x.TglKirim, x.NoAlamatKirim,'
      
        '                             y.HARGA, y.DISCP1, y.DISCRP1, y.DIS' +
        'CTOT, x.KODEVLS, x.KURS, x.TIPEBAYAR, x.PPN, x.HARI, x.Disc '
      '                      From dbSO x'
      
        '                           Left Outer join DBSODET y on y.NoBukt' +
        'i=x.NoBukti) G on G.NoBukti=F.NoSo and G.Urut=F.UrutSO'
      
        '     Left Outer join (Select x.NoSPB, x.UrutSPB, sum(Qnt) QntRSP' +
        'B, sum(Qnt2) Qnt2RSPB,'
      
        '                            SUM(x.NetW) NetWRSPB, SUM(x.GrossW) ' +
        'GrossWRSPB'
      '                      from DBRSPBDet x'
      
        '                      Group by  x.NoSPB, x.UrutSPB) H on H.NoSPB' +
        '=B.NoBukti and H.UrutSPB=B.Urut'
      'Where G.kodecust=@nobukti and'
      '      Case when B.Nosat=1 then B.Qnt'
      '           when B.Nosat=2 then B.Qnt2'
      '           else 0'
      '      end-isnull(D.Qnt,0)+'
      '      Case when B.Nosat=1 then isnull(H.QntRSPB,0)'
      '           when B.Nosat=2 then isnull(H.Qnt2RSPB,0)'
      '           else 0'
      '      end >0'
      'Group by A.Nobukti, A.Tanggal, G.NOBUKTI, G.TANGGAL,kodecust'
      'Order by A.NoBukti')
    Left = 187
    Top = 192
    object QuSONobukti: TStringField
      FieldName = 'Nobukti'
      Size = 30
    end
    object QuSOTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuSONoso: TStringField
      FieldName = 'Noso'
      Size = 30
    end
    object QuSOTGLSO: TDateTimeField
      FieldName = 'TGLSO'
    end
    object QuSOKeyUrut: TStringField
      FieldName = 'KeyUrut'
      Size = 30
    end
    object QuSOkodecust: TStringField
      FieldName = 'kodecust'
      Size = 15
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
    BCDToCurrency = False
    Left = 244
    Top = 146
  end
  object frxReport1: TfrxReport
    Version = '4.14'
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
          ShowHint = False
          AutoWidth = True
          Memo.UTF8 = (
            '[frxDBCetak."NamaCUST"]')
        end
        object Memo13: TfrxMemoView
          Top = 18.8976378
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo17: TfrxMemoView
          Width = 188.9765
          Height = 18.89765
          ShowHint = False
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
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 280
    Top = 110
  end
  object dxMemProsesSPP: TdxMemData
    Indexes = <
      item
        FieldName = 'KeyUrut'
      end>
    SortOptions = []
    SortedField = 'KeyUrut'
    Left = 192
    Top = 112
    object dxMemProsesSPPKeSJ: TBooleanField
      DisplayLabel = 'SPP'
      FieldName = 'KeSJ'
    end
    object dxMemProsesSPPNOSPB: TStringField
      DisplayLabel = 'No. SPB'
      FieldName = 'NOSPB'
      ReadOnly = True
    end
    object dxMemProsesSPPTglSPB: TDateField
      DisplayLabel = 'Tgl. SPB'
      FieldName = 'TglSPB'
      ReadOnly = True
    end
    object dxMemProsesSPPKeyUrut: TStringField
      FieldName = 'KeyUrut'
      ReadOnly = True
      Size = 35
    end
    object dxMemProsesSPPNoso: TStringField
      FieldName = 'Noso'
      Size = 30
    end
    object dxMemProsesSPPTglSO: TDateTimeField
      FieldName = 'TglSO'
    end
    object dxMemProsesSPPkodecust: TStringField
      FieldName = 'kodecust'
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
    ProcedureName = 'SP_InvoicePL;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@Choice'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
      end
      item
        Name = '@nobukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@nourut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@NoSPB'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@kodecustSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@Consignee'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@notifyParty'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@ContractNo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@PoNo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 800
      end
      item
        Name = '@PaymentTerm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@DocCreditNo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end
      item
        Name = '@PoL'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end
      item
        Name = '@PoD'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end
      item
        Name = '@NameOfVessel'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end
      item
        Name = '@ShipOnBoardDate'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@Packing'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@Others'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5000
      end
      item
        Name = '@IDUser'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@Urut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@UrutSPB'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@KodeBrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
      end
      item
        Name = '@Ppn'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@Disc'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Kurs'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
      end
      item
        Name = '@Qnt'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Qnt2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Sat_1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
      end
      item
        Name = '@Sat_2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
      end
      item
        Name = '@NoSat'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@isi'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@NetW'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@GrossW'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@harga'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
      end
      item
        Name = '@DiscP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@DiscRp'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@DiscTot'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@ketDetail'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
      end
      item
        Name = '@Valas'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
      end
      item
        Name = '@IsLokal'
        Attributes = [paNullable]
        DataType = ftBoolean
      end
      item
        Name = '@NoBL'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end
      item
        Name = '@NoteBeneficiary1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@NoteBeneficiary2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@NoteBeneficiary3'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@ShipmentAdvice1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@ShipmentAdvice2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@ShippingMark'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@meas'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@ETADestination'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@ToShipmentAdvice2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@FootNote'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@IssuingBank'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@Namabrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
      end
      item
        Name = '@NoSPP'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@TglSPP'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@NoSO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@TglSO'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@Discp2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Discp3'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Discp4'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Discp5'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@Flagtipe'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@DP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end
      item
        Name = '@ppnp'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
      end>
    Left = 221
    Top = 193
  end
end
