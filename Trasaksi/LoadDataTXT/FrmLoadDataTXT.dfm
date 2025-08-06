object FrLoadDataTXT: TFrLoadDataTXT
  Left = 265
  Top = 152
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hasil Ambil Data *.XLS'
  ClientHeight = 546
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 493
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 0
    object dxPageControl1: TdxPageControl
      Left = 8
      Top = 8
      Width = 738
      Height = 477
      ActivePage = dxTSDafSJ
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HideButtons = True
      HotTrack = False
      MultiLine = False
      OwnerDraw = False
      ParentFont = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 0
      TabPosition = dxtpTop
      TabWidth = 0
      object dxTSDafSJ: TdxTabSheet
        Caption = 'Data Hasil Transfer'
        object dxDBGrid1: TdxDBGrid
          Left = 0
          Top = 0
          Width = 738
          Height = 477
          Bands = <
            item
              Fixed = bfLeft
            end
            item
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'KeyUrut'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnKeyDown = dxDBGrid1KeyDown
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = DsQuXLSPembelian
          Filter.Criteria = {00000000}
          FixedBandLineWidth = 1
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -13
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dxDBGrid1KeyUrut: TdxDBGridMaskColumn
            Caption = 'No.'
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KeyUrut'
          end
          object dxDBGrid1NoBukti: TdxDBGridMaskColumn
            Caption = 'No Bukti'
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoBukti'
          end
          object dxDBGrid1Urut: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Urut'
          end
          object dxDBGrid1Tanggal: TdxDBGridDateColumn
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Tanggal'
          end
          object dxDBGrid1JatuhTempo: TdxDBGridDateColumn
            Visible = False
            BandIndex = 1
            RowIndex = 0
            FieldName = 'JatuhTempo'
          end
          object dxDBGrid1PPn: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 1
            RowIndex = 0
            FieldName = 'PPn'
          end
          object dxDBGrid1KodeCustSupp: TdxDBGridMaskColumn
            Caption = 'Supplier'
            Width = 70
            BandIndex = 1
            RowIndex = 0
            FieldName = 'KodeCustSupp'
          end
          object dxDBGrid1NAMACUSTSUPP: TdxDBGridMaskColumn
            Width = 180
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NAMACUSTSUPP'
          end
          object dxDBGrid1KodeTipe: TdxDBGridMaskColumn
            Caption = 'Kode Tipe'
            Width = 70
            BandIndex = 1
            RowIndex = 0
            FieldName = 'KodeTipe'
          end
          object dxDBGrid1NamaTipe: TdxDBGridMaskColumn
            Caption = 'Nama Tipe'
            Width = 150
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NamaTipe'
          end
          object dxDBGrid1KodeSubTipe: TdxDBGridMaskColumn
            Caption = 'Sub Tipe'
            Width = 70
            BandIndex = 1
            RowIndex = 0
            FieldName = 'KodeSubTipe'
          end
          object dxDBGrid1NamaSubTipe: TdxDBGridMaskColumn
            Width = 150
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NamaSubTipe'
          end
          object dxDBGrid1Qnt: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Qnt'
          end
          object dxDBGrid1Harga: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Harga'
          end
          object dxDBGrid1KodeVls: TdxDBGridMaskColumn
            Caption = 'Valas'
            Width = 50
            BandIndex = 1
            RowIndex = 0
            FieldName = 'KodeVls'
          end
          object dxDBGrid1Kurs: TdxDBGridMaskColumn
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 1
            RowIndex = 0
            FieldName = 'Kurs'
          end
          object dxDBGrid1NDPP: TdxDBGridMaskColumn
            Caption = 'DPP Rp'
            HeaderAlignment = taRightJustify
            Width = 110
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NDPP'
            SummaryFooterType = cstSum
            SummaryFooterFormat = ',0.00'
          end
          object dxDBGrid1NPPN: TdxDBGridMaskColumn
            Caption = 'PPN Rp'
            HeaderAlignment = taRightJustify
            Width = 100
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NPPN'
            SummaryFooterType = cstSum
            SummaryFooterFormat = ',0.00'
          end
          object dxDBGrid1NNet: TdxDBGridMaskColumn
            Caption = 'Total Rp'
            HeaderAlignment = taRightJustify
            Width = 110
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NNet'
            SummaryFooterType = cstSum
            SummaryFooterFormat = ',0.00'
          end
          object dxDBGrid1NDPPD: TdxDBGridMaskColumn
            Caption = 'DPP $'
            HeaderAlignment = taRightJustify
            Width = 90
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NDPPD'
          end
          object dxDBGrid1NPPND: TdxDBGridMaskColumn
            Caption = 'PPN $'
            HeaderAlignment = taRightJustify
            Width = 90
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NPPND'
          end
          object dxDBGrid1NNetD: TdxDBGridMaskColumn
            Caption = 'Total $'
            HeaderAlignment = taRightJustify
            Width = 90
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NNetD'
          end
          object dxDBGrid1AccPersediaan: TdxDBGridMaskColumn
            Caption = 'Acc Persediaan'
            Width = 100
            BandIndex = 1
            RowIndex = 0
            FieldName = 'AccPersediaan'
          end
          object dxDBGrid1AccPPN: TdxDBGridMaskColumn
            Caption = 'Acc PPN'
            Width = 100
            BandIndex = 1
            RowIndex = 0
            FieldName = 'AccPPN'
          end
          object dxDBGrid1AccHutPiut: TdxDBGridMaskColumn
            Caption = 'Acc. Hutang/Piutang'
            Width = 120
            BandIndex = 1
            RowIndex = 0
            FieldName = 'AccHutPiut'
          end
          object dxDBGrid1IsExcel: TdxDBGridCheckColumn
            Visible = False
            Width = 100
            BandIndex = 1
            RowIndex = 0
            FieldName = 'IsExcel'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
      object dxTSDafSO: TdxTabSheet
        Caption = 'Konversi MaterialID dengan Kode Barang PH'
        TabVisible = False
      end
    end
    object FMemo: TMemo
      Left = 113
      Top = 88
      Width = 761
      Height = 321
      Lines.Strings = (
        'MemoXML')
      TabOrder = 1
      Visible = False
      WordWrap = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 493
    Width = 754
    Height = 53
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object LblKodeBrgBelumSesuai: TLabel
      Left = 48
      Top = 6
      Width = 169
      Height = 19
      Caption = 'LblKodeBrgBelumSesuai'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object PB: TProgressBar
      Left = 8
      Top = 0
      Width = 625
      Height = 25
      Min = 0
      Max = 100
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 733
      Top = 0
      Width = 80
      Height = 30
      Caption = '&Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
    object BitBtn1: TBitBtn
      Left = 653
      Top = 0
      Width = 80
      Height = 30
      Caption = '&Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
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
  end
  object dxData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 440
    Top = 80
    object dxDataMPI_No: TStringField
      DisplayWidth = 20
      FieldName = 'MPI_No'
    end
    object dxDataProduce_No: TStringField
      DisplayWidth = 22
      FieldName = 'Produce_No'
      Size = 25
    end
    object dxDataCCC_Code: TStringField
      DisplayWidth = 30
      FieldName = 'CCC_Code'
      Size = 100
    end
    object dxDataPurchase_DetailID: TStringField
      DisplayWidth = 28
      FieldName = 'Purchase_DetailID'
      Size = 15
    end
    object dxDataMaterialID: TStringField
      DisplayWidth = 18
      FieldName = 'MaterialID'
      Size = 15
    end
    object dxDataDescription: TStringField
      DisplayWidth = 34
      FieldName = 'Description'
      Size = 50
    end
    object dxDataUnit: TStringField
      DisplayWidth = 12
      FieldName = 'Unit'
      Size = 10
    end
    object dxDataCurrency: TStringField
      DisplayWidth = 9
      FieldName = 'Currency'
      Size = 3
    end
    object dxDataUnit_Price: TFloatField
      DisplayWidth = 12
      FieldName = 'Unit_Price'
    end
    object dxDataQTY: TFloatField
      FieldName = 'QTY'
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.XML'
    Filter = 'XML Document (*.XML)|*.XML'
    InitialDir = 'C:\'
    Left = 480
    Top = 80
  end
  object QuXML: TADOQuery
    Parameters = <>
    Left = 184
    Top = 72
  end
  object QuXLSPembelian: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select A.KeyUrut, A.NoBukti, A.Urut, A.Tanggal, A.JatuhTempo, A.' +
        'NoBukti_, A.PPn,'
      'A.KodeCustSupp, C.NAMACUSTSUPP, A.KodeTipe, T.Nama NamaTipe, '
      
        'A.KodeSubTipe, ST.Nama NamaSubTipe, A.Qnt, A.Harga, A.KodeVls, A' +
        '.Kurs,'
      'A.NDPP, A.NPPN, A.NNet, A.NDPPD, A.NPPND, A.NNetD,'
      
        'ST.Persediaan AccPersediaan, ST.PPn AccPPN, ST.HutPiut AccHutPiu' +
        't,'
      'A.IsExcel'
      'from XLSPembelian A'
      'Left Outer Join DBCUSTSUPP C on C.KODECUSTSUPP=A.KodeCustSupp'
      'Left Outer Join DBTIPETRANS T on T.KODETIPE=A.KodeTipe'
      
        'Left Outer Join DBSUBTIPETRANS ST on ST.KODETIPE=A.KodeTipe and ' +
        'ST.KODESUBTIPE=A.KodeSubTipe'
      'order by A.KeyUrut'
      '')
    Left = 200
    Top = 96
    object QuXLSPembelianKeyUrut: TAutoIncField
      FieldName = 'KeyUrut'
      ReadOnly = True
    end
    object QuXLSPembelianNoBukti: TStringField
      FieldName = 'NoBukti'
      Size = 50
    end
    object QuXLSPembelianUrut: TIntegerField
      FieldName = 'Urut'
    end
    object QuXLSPembelianTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object QuXLSPembelianJatuhTempo: TDateTimeField
      FieldName = 'JatuhTempo'
    end
    object QuXLSPembelianPPn: TWordField
      FieldName = 'PPn'
    end
    object QuXLSPembelianKodeCustSupp: TStringField
      FieldName = 'KodeCustSupp'
      Size = 25
    end
    object QuXLSPembelianKodeTipe: TStringField
      FieldName = 'KodeTipe'
      Size = 25
    end
    object QuXLSPembelianKodeSubTipe: TStringField
      FieldName = 'KodeSubTipe'
      Size = 25
    end
    object QuXLSPembelianQnt: TBCDField
      FieldName = 'Qnt'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuXLSPembelianHarga: TBCDField
      FieldName = 'Harga'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuXLSPembelianNDPP: TBCDField
      FieldName = 'NDPP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuXLSPembelianNPPN: TBCDField
      FieldName = 'NPPN'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuXLSPembelianNNet: TBCDField
      FieldName = 'NNet'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuXLSPembelianAccPersediaan: TStringField
      FieldName = 'AccPersediaan'
      Size = 25
    end
    object QuXLSPembelianAccPPN: TStringField
      FieldName = 'AccPPN'
      Size = 25
    end
    object QuXLSPembelianAccHutPiut: TStringField
      FieldName = 'AccHutPiut'
      Size = 25
    end
    object QuXLSPembelianIsExcel: TBooleanField
      FieldName = 'IsExcel'
    end
    object QuXLSPembelianNAMACUSTSUPP: TStringField
      FieldName = 'NAMACUSTSUPP'
      Size = 100
    end
    object QuXLSPembelianNamaTipe: TStringField
      FieldName = 'NamaTipe'
      Size = 50
    end
    object QuXLSPembelianNamaSubTipe: TStringField
      FieldName = 'NamaSubTipe'
      Size = 50
    end
    object QuXLSPembelianKodeVls: TStringField
      FieldName = 'KodeVls'
      Size = 25
    end
    object QuXLSPembelianKurs: TBCDField
      FieldName = 'Kurs'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuXLSPembelianNDPPD: TBCDField
      FieldName = 'NDPPD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuXLSPembelianNPPND: TBCDField
      FieldName = 'NPPND'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuXLSPembelianNNetD: TBCDField
      FieldName = 'NNetD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QuXLSPembelianNoBukti_: TStringField
      FieldName = 'NoBukti_'
      Size = 50
    end
  end
  object DsQuXLSPembelian: TDataSource
    DataSet = QuXLSPembelian
    Left = 352
    Top = 48
  end
  object QuKePOImport: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'#9'A.KeyUrut, A.MPI_No, A.Produce_No, A.CCC_Code, '
      #9'A.Purchase_DetailID, A.MaterialID, A.Description, A.NameXML, '
      
        #9'A.Unit, A.Currency, A.Unit_Price, A.QTY, B.KodeBrgPH, C.NamaBrg' +
        ' NamaBrgPH, C.SAT SatPH, D.QNT'
      'from'#9'dbTempXMLImport A'
      
        'left outer join dbBarangLuar B on B.KodeBrg=cast(A.MaterialID as' +
        ' varchar(20))'
      'left outer join dbBarang C on C.KodeBrg=B.KodeBrgPH'
      'left outer join'
      #9'(select'#9'MaterialID, sum(QTY) QNT from dbTempXMLImport'
      #9'group by MaterialID'
      #9') D on D.MaterialID=A.MaterialID'
      'order by B.KodeBrgPH, A.MaterialID, A.Produce_No'
      '')
    Left = 376
    Top = 144
    object QuKePOImportKeyUrut: TAutoIncField
      FieldName = 'KeyUrut'
      ReadOnly = True
    end
    object QuKePOImportMPI_No: TStringField
      FieldName = 'MPI_No'
    end
    object QuKePOImportProduce_No: TStringField
      FieldName = 'Produce_No'
    end
    object QuKePOImportCCC_Code: TStringField
      FieldName = 'CCC_Code'
    end
    object QuKePOImportPurchase_DetailID: TIntegerField
      FieldName = 'Purchase_DetailID'
    end
    object QuKePOImportMaterialID: TIntegerField
      FieldName = 'MaterialID'
    end
    object QuKePOImportDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object QuKePOImportUnit: TStringField
      FieldName = 'Unit'
      Size = 100
    end
    object QuKePOImportCurrency: TStringField
      FieldName = 'Currency'
      Size = 4
    end
    object QuKePOImportUnit_Price: TFloatField
      FieldName = 'Unit_Price'
    end
    object QuKePOImportQTY: TFloatField
      FieldName = 'QTY'
    end
    object QuKePOImportKodeBrgPH: TStringField
      FieldName = 'KodeBrgPH'
    end
    object QuKePOImportNamaBrgPH: TStringField
      FieldName = 'NamaBrgPH'
      Size = 70
    end
    object QuKePOImportSatPH: TStringField
      FieldName = 'SatPH'
      Size = 5
    end
    object QuKePOImportQNT: TFloatField
      FieldName = 'QNT'
    end
    object QuKePOImportNameXML: TStringField
      FieldName = 'NameXML'
      Size = 200
    end
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 499
    Top = 135
  end
  object OpenDialog2: TOpenDialog
    DefaultExt = '*.TXT'
    Filter = 'TXT Document (*.TXT)|*.TXT'
    InitialDir = 'C:\'
    Left = 520
    Top = 80
  end
  object QuExecD: TADOQuery
    Connection = DM.MyStock
    CursorType = ctStatic
    Parameters = <>
    Left = 112
    Top = 272
  end
  object sp_Pembelian: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_Pembelian;1'
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
        Name = '@NoBukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Urut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@JatuhTempo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@KodeCustSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@PPn'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@KodeTipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@KodeSubTipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Qnt'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Harga'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NDPP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NPPN'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NNET'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@AccPersediaan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@AccPPN'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@AccHutPiut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@IsExcel'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@KodeVls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@kurs'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NDPPD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NPPND'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NNETD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 41
    Top = 96
  end
  object sp_Penjualan: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_Penjualan;1'
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
        Name = '@NoBukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Urut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@JatuhTempo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@KodeCustSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@PPn'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@KodeTipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@KodeSubTipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Qnt'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Harga'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NDPP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NPPN'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NNET'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@AccPersediaan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@AccPPN'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@AccHutPiut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@IsExcel'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@KodeVls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@kurs'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NDPPD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NPPND'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NNETD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 81
    Top = 96
  end
  object sp_RPembelian: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_RPembelian;1'
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
        Name = '@NoBukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Urut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@JatuhTempo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@KodeCustSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@PPn'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@KodeTipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@KodeSubTipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Qnt'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Harga'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NDPP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NPPN'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NNET'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@AccPersediaan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@AccPPN'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@AccHutPiut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@IsExcel'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@KodeVls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@kurs'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NDPPD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NPPND'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NNETD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NoBukti_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 121
    Top = 96
  end
  object sp_RPenjualan: TADOStoredProc
    Connection = DM.MyStock
    ProcedureName = 'sp_RPenjualan;1'
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
        Name = '@NoBukti'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Urut'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Tanggal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@JatuhTempo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@KodeCustSupp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@PPn'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@KodeTipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@KodeSubTipe'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Qnt'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Harga'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NDPP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NPPN'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NNET'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@AccPersediaan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@AccPPN'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@AccHutPiut'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@IsExcel'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@KodeVls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@kurs'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NDPPD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NPPND'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NNETD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@NoBukti_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 161
    Top = 96
  end
end
