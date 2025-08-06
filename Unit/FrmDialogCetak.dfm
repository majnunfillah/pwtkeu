object FrDialogCetak: TFrDialogCetak
  Left = 430
  Top = 198
  BorderStyle = bsDialog
  Caption = 'Dialog Cetak'
  ClientHeight = 107
  ClientWidth = 216
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object SpeedButton6: TSpeedButton
    Left = 90
    Top = 70
    Width = 23
    Height = 27
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
  end
  object BtnOK: TBitBtn
    Left = 9
    Top = 70
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
  object BtnCancel: TBitBtn
    Left = 129
    Top = 70
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
    OnClick = BtnCancelClick
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
  object QuReport: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'exec sp_CetakFakturPNJ '#39#39)
    Left = 42
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = QuReport
    Left = 75
    Top = 128
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QuReport
    Left = 104
    Top = 128
  end
  object frxDotMatrixExport2: TfrxDotMatrixExport
    FileName = 'C:\DOCUME~1\admin\LOCALS~1\Temp\fr48.tmp'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 144
    Top = 128
  end
  object frxReport1: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbZoom, pbFind, pbOutline, pbTools, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38793.6507510417
    ReportOptions.LastChange = 40305.7649987269
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'var AKTIVA,judul1:string;                                       ' +
        '                            '
      'procedure GroupHeader2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' '
      'end;'
      ''
      ''
      ''
      'procedure GroupHeader4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' '
      'end;'
      ''
      'procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <MyPage><><Page#> then'
      
        '     memo22.visible := True                                     ' +
        '                '
      '  else'
      
        '    memo22.visible := False                                     ' +
        '                                     '
      
        '                                                                ' +
        '        '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    OnAfterPrintReport = frxReport1AfterPrintReport
    Left = 10
    Top = 128
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 139.7
      PaperSize = 256
      LeftMargin = 10
      RightMargin = 10.9
      TopMargin = 10
      BottomMargin = 9.7
      Columns = 1
      ColumnWidth = 277
      ColumnPositions.Strings = (
        '0')
      object PageFooter1: TfrxPageFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'tahoma'
        Font.Style = []
        Height = 94.48818898
        ParentFont = False
        Top = 317.48052
        Width = 737.00835
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Memo15: TfrxMemoView
          Left = 529.13385827
          Top = 41.57480559
          Width = 75.59055118
          Height = 15.11812
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'P P N')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 529.13385827
          Top = 22.6771678
          Width = 75.59055118
          Height = 15.11812
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Disc. Nota')
          ParentFont = False
          WordWrap = False
        end
        object Memo27: TfrxMemoView
          Left = 529.13385827
          Top = 3.77953
          Width = 75.59055118
          Height = 15.11812
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sub Total')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 623.62204725
          Top = 41.57480559
          Width = 113.38582677
          Height = 15.11811024
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."TotPPN"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 623.62204725
          Top = 22.6771678
          Width = 113.38582677
          Height = 15.11811024
          OnBeforePrint = 'Memo20OnBeforePrint'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."TotDiskon"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 623.62204725
          Top = 3.77953
          Width = 113.38582677
          Height = 15.11811024
          AutoWidth = True
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."TotSubTotal"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 45.35433071
          Top = 52.91338827
          Width = 113.38582677
          Height = 18.8976378
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '(                          )')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 340.15748031
          Top = 52.91338827
          Width = 113.38582677
          Height = 18.8976378
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '(                          )')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 340.15748031
          Top = 3.77953
          Width = 113.38582677
          Height = 15.11812
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Customer')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 45.35433071
          Top = 3.77953
          Width = 113.38582677
          Height = 15.11812
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Sales Admin')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 188.97637795
          Top = 52.91338827
          Width = 113.38582677
          Height = 18.8976378
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '(                          )')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 188.97637795
          Top = 3.77953
          Width = 113.38582677
          Height = 15.11812
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kepala Gudang')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 623.62204725
          Top = 60.47244339
          Width = 113.38582677
          Height = 18.8976378
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."TotNet"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 529.13385827
          Top = 60.47244339
          Width = 75.59055118
          Height = 18.8976378
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 604.72440945
          Top = 41.57480559
          Width = 11.33858268
          Height = 15.11812
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 604.72440945
          Top = 22.6771678
          Width = 11.33858268
          Height = 15.11812
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          Left = 604.72440945
          Top = 3.77953
          Width = 11.33858268
          Height = 15.11812
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 604.72440945
          Top = 60.47244339
          Width = 11.33858268
          Height = 18.8976378
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Top = 79.37008118
          Width = 105.82684
          Height = 15.11811024
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            
              '[Page#]/[TotalPages#]   [MyUser]   [FormatDateTime('#39'dd-MMM-yyyy ' +
              '  hh:nn:ss'#39',<frxDBCetakPO."TglCetak">)]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Width = 737.00787402
          Height = 2.267718
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Top = 3.77953
          Width = 737.00835
          Height = 90.70872
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 113.38582677
        Top = 18.89765
        Width = 737.00835
        object Line4: TfrxLineView
          Left = 1179.21336
          Top = 30.13389
          Height = 548.03185
          Frame.Typ = [ftLeft]
        end
        object Memo3: TfrxMemoView
          Left = 262.67740335
          Top = 22.67716535
          Width = 211.65354331
          Height = 18.8976378
          AutoWidth = True
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBCetakPO."nobukti"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Width = 264.5671
          Height = 18.8976378
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBCetakPO."NamaPersh"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 491.33858268
          Width = 245.66929134
          Height = 15.11811024
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxDBCetakPO."KotaPersh"], [FormatDateTime('#39'dd MMMM yyyy'#39',<frxD' +
              'BCetakPO."Tanggal">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 491.33858268
          Top = 26.45669535
          Width = 245.66929134
          Height = 15.11811024
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Kepada Yth. :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baCenter
          Left = 292.91362382
          Width = 151.18110236
          Height = 22.67716535
          DataSetName = 'frxDataPerusahaan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'I N V O I C E')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 491.33858268
          Top = 56.69291583
          Width = 245.66929134
          Height = 30.23622047
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."Alamat1"]'
            '[frxDBCetakPO."Kota"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 15.11811024
          Width = 264.5671
          Height = 30.23622047
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."Alamat1Persh"]'
            '[frxDBCetakPO."KotaPersh"] Telp. [frxDBCetakPO."TelponPersh"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 491.33858268
          Top = 41.57480559
          Width = 245.66929134
          Height = 15.11811024
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBCetakPO."NamaCust"] ([frxDBCetakPO."kodeCust"])')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Top = 94.48825
          Width = 26.45669291
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 26.45669291
          Top = 94.48825
          Width = 75.59055118
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4
          Memo.UTF8 = (
            'Kode Brg')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 102.04724409
          Top = 94.48825
          Width = 283.46456693
          Height = 18.89765
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4
          Memo.UTF8 = (
            'Nama Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 480
          Top = 94.48825
          Width = 83.1496063
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            'Harga')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 563.1496063
          Top = 94.48825
          Width = 75.59055118
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            'Disc (Rp)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 638.74015748
          Top = 94.48825
          Width = 98.26771654
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 385.51181102
          Top = 94.48825
          Width = 56.69291339
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            'Qty')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 442.20472441
          Top = 94.48825
          Width = 37.79527559
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4
          Memo.UTF8 = (
            'Unit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 71.8110041
          Top = 56.69295
          Width = 98.26768236
          Height = 15.11811024
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."Hari"] Hari')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          Top = 56.69295
          Width = 60.47244094
          Height = 15.11811024
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'T O P')
          ParentFont = False
          WordWrap = False
        end
        object Memo32: TfrxMemoView
          Left = 71.8110041
          Top = 71.8110578
          Width = 98.26768236
          Height = 15.11811024
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd-mmm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."TglJatuhTempo"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Top = 71.81105779
          Width = 60.47244094
          Height = 15.11811024
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Jth Tempo')
          ParentFont = False
          WordWrap = False
        end
        object Memo59: TfrxMemoView
          Left = 60.47242142
          Top = 56.69295
          Width = 11.33858268
          Height = 15.11811024
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          WordWrap = False
        end
        object Memo60: TfrxMemoView
          Left = 60.47242142
          Top = 71.8110578
          Width = 11.33858268
          Height = 15.11811024
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 238.1103241
          Top = 71.81107
          Width = 98.26768236
          Height = 15.11811024
          AutoWidth = True
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBCetakPO."NamaSLS"] ([frxDBCetakPO."KodeSls"])')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          Left = 188.9765
          Top = 71.81107
          Width = 37.79527559
          Height = 15.11811024
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Sales')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 226.77174142
          Top = 71.81107
          Width = 11.33858268
          Height = 15.11811024
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          Left = 177.63791
          Top = 45.35436
          Width = 94.48825
          Height = 18.89765
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[MyPage]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        Height = 18.89765
        Top = 192.75603
        Width = 737.00835
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo38: TfrxMemoView
          Left = 563.1496063
          Width = 75.59055118
          Height = 18.8976378
          DataField = 'DiscTot'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."DiscTot"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 638.74015748
          Width = 98.26771654
          Height = 18.8976378
          DataField = 'SubTotal'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."SubTotal"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Width = 26.45669291
          Height = 18.8976378
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          GapX = 4
          HAlign = haCenter
          Memo.UTF8 = (
            '[FormatFloat('#39',0'#39',<Line#>)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 26.45669291
          Width = 75.59055118
          Height = 18.8976378
          DataField = 'Kodebrg'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          GapX = 4
          Memo.UTF8 = (
            '[frxDBCetakPO."Kodebrg"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 102.04724409
          Width = 283.46456693
          Height = 18.8976378
          DataField = 'NamaBrg'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          GapX = 4
          Memo.UTF8 = (
            '[frxDBCetakPO."NamaBrg"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 385.51181102
          Width = 56.69291339
          Height = 18.8976378
          DataField = 'Qnt'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."Qnt"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 442.20472441
          Width = 37.79527559
          Height = 18.8976378
          DataField = 'Satuan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          GapX = 4
          Memo.UTF8 = (
            '[frxDBCetakPO."Satuan"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 480
          Width = 83.1496063
          Height = 18.8976378
          DataField = 'Harga'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          GapX = 4
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBCetakPO."Harga"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.67718
        Top = 272.12616
        Width = 737.00835
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 232
    Top = 128
    object DesignCetak1: TMenuItem
      Caption = 'Design Cetak'
      OnClick = DesignCetak1Click
    end
  end
  object frxDBCetak: TfrxDBDataset
    UserName = 'frxDBCetak'
    CloseDataSource = False
    DataSet = QuReport
    Left = 108
    Top = 162
  end
  object frxDBCetakPO: TfrxDBDataset
    UserName = 'frxDBCetakPO'
    CloseDataSource = False
    DataSet = QuReport
    Left = 112
    Top = 208
  end
end
