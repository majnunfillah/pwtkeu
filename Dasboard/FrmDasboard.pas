unit FrmDasboard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcTreeView, dxPageControl, ExtCtrls, DB, ADODB, StdCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridBandedTableView, cxGridDBBandedTableView, TeEngine, Series,
  TeeProcs, Chart, DbChart, GanttCh, jpeg;

type
  TFrDasboard = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    fctreeview1: TfcTreeView;
    Qumenurep2: TADOQuery;
    Qumenurep1: TADOQuery;
    Quview: TADOQuery;
    DsView: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Quviewkeynik: TIntegerField;
    Quviewnama: TStringField;
    qucustsales: TADOQuery;
    Dscustsales: TDataSource;
    qucustsaleskeynik: TIntegerField;
    qucustsalesNama: TStringField;
    qucustsalesmingguke1: TStringField;
    qucustsalesmingguke2: TStringField;
    qucustsalesmingguke3: TStringField;
    qucustsalesmingguke4: TStringField;
    Qutarget: TADOQuery;
    DsTarget: TDataSource;
    QuTargetDet: TADOQuery;
    DstargetDet: TDataSource;
    QutargetKodeSLS: TIntegerField;
    QutargetRpBulan1: TBCDField;
    QutargetRpBulan2: TBCDField;
    QutargetRpBulan3: TBCDField;
    QutargetRpBulan4: TBCDField;
    QutargetRpBulan5: TBCDField;
    QutargetRpBulan6: TBCDField;
    QutargetRpBulan7: TBCDField;
    QutargetRpBulan8: TBCDField;
    QutargetRpBulan9: TBCDField;
    QutargetRpBulan10: TBCDField;
    QutargetRpBulan11: TBCDField;
    QutargetRpBulan12: TBCDField;
    QutargetRpBulan1Lalu: TBCDField;
    QutargetRpBulan2Lalu: TBCDField;
    QutargetRpBulan3Lalu: TBCDField;
    QutargetRpBulan4Lalu: TBCDField;
    QutargetRpBulan5Lalu: TBCDField;
    QutargetRpBulan6Lalu: TBCDField;
    QutargetRpBulan7Lalu: TBCDField;
    QutargetRpBulan8Lalu: TBCDField;
    QutargetRpBulan9Lalu: TBCDField;
    QutargetRpBulan10Lalu: TBCDField;
    QutargetRpBulan11Lalu: TBCDField;
    QutargetRpBulan12Lalu: TBCDField;
    QutargetSelisih1: TBCDField;
    QutargetSelisih2: TBCDField;
    QutargetSelisih3: TBCDField;
    QutargetSelisih4: TBCDField;
    QutargetSelisih5: TBCDField;
    QutargetSelisih6: TBCDField;
    QutargetSelisih7: TBCDField;
    QutargetSelisih8: TBCDField;
    QutargetSelisih9: TBCDField;
    QutargetSelisih10: TBCDField;
    QutargetSelisih11: TBCDField;
    QutargetSelisih12: TBCDField;
    QutargetThn: TADOQuery;
    DsTargetThn: TDataSource;
    QutargetThnDet: TADOQuery;
    DsTargetThnDet: TDataSource;
    QutargetThnKeyNik: TStringField;
    QutargetThnRpBulan1: TBCDField;
    QutargetThnRp1: TBCDField;
    QutargetThnSelisih1: TBCDField;
    QutargetThnRpBulan2: TBCDField;
    QutargetThnRp2: TBCDField;
    QutargetThnSelisih2: TBCDField;
    QutargetThnRpBulan3: TBCDField;
    QutargetThnRp3: TBCDField;
    QutargetThnSelisih3: TBCDField;
    QutargetThnRpBulan4: TBCDField;
    QutargetThnRp4: TBCDField;
    QutargetThnSelisih4: TBCDField;
    QutargetThnRpBulan5: TBCDField;
    QutargetThnRp5: TBCDField;
    QutargetThnSelisih5: TBCDField;
    QutargetThnRpBulan6: TBCDField;
    QutargetThnRp6: TBCDField;
    QutargetThnSelisih6: TBCDField;
    QutargetThnRpBulan7: TBCDField;
    QutargetThnRp7: TBCDField;
    QutargetThnSelisih7: TBCDField;
    QutargetThnRpBulan8: TBCDField;
    QutargetThnRp8: TBCDField;
    QutargetThnSelisih8: TBCDField;
    QutargetThnRpBulan9: TBCDField;
    QutargetThnRp9: TBCDField;
    QutargetThnSelisih9: TBCDField;
    QutargetThnRpBulan10: TBCDField;
    QutargetThnRp10: TBCDField;
    QutargetThnSelisih10: TBCDField;
    QutargetThnRpBulan11: TBCDField;
    QutargetThnRp11: TBCDField;
    QutargetThnSelisih11: TBCDField;
    QutargetThnRpBulan12: TBCDField;
    QutargetThnRp12: TBCDField;
    QutargetThnSelisih12: TBCDField;
    QuOmset: TADOQuery;
    DsOmset: TDataSource;
    QuOmsetDet: TADOQuery;
    DsOmsetdet: TDataSource;
    QuOmsetKodeSLS: TIntegerField;
    QuOmsetTahun: TIntegerField;
    QuOmsetRpBulan1: TBCDField;
    QuOmsetRpBulan2: TBCDField;
    QuOmsetRpBulan3: TBCDField;
    QuOmsetRpBulan4: TBCDField;
    QuOmsetRpBulan5: TBCDField;
    QuOmsetRpBulan6: TBCDField;
    QuOmsetRpBulan7: TBCDField;
    QuOmsetRpBulan8: TBCDField;
    QuOmsetRpBulan9: TBCDField;
    QuOmsetRpBulan10: TBCDField;
    QuOmsetRpBulan11: TBCDField;
    QuOmsetRpBulan12: TBCDField;
    QuArea: TADOQuery;
    DsArea: TDataSource;
    QuAreaDet: TADOQuery;
    DsAreaDet: TDataSource;
    QuAreaKodeArea: TStringField;
    QuAreaRpBulan1: TBCDField;
    QuAreaRpBulan2: TBCDField;
    QuAreaRpBulan3: TBCDField;
    QuAreaRpBulan4: TBCDField;
    QuAreaRpBulan5: TBCDField;
    QuAreaRpBulan6: TBCDField;
    QuAreaRpBulan7: TBCDField;
    QuAreaRpBulan8: TBCDField;
    QuAreaRpBulan9: TBCDField;
    QuAreaRpBulan10: TBCDField;
    QuAreaRpBulan11: TBCDField;
    QuAreaRpBulan12: TBCDField;
    QuAreaKodeArea_1: TStringField;
    QuAreaRpBulan1Lalu: TBCDField;
    QuAreaRpBulan2Lalu: TBCDField;
    QuAreaRpBulan3Lalu: TBCDField;
    QuAreaRpBulan4Lalu: TBCDField;
    QuAreaRpBulan5Lalu: TBCDField;
    QuAreaRpBulan6Lalu: TBCDField;
    QuAreaRpBulan7Lalu: TBCDField;
    QuAreaRpBulan8Lalu: TBCDField;
    QuAreaRpBulan9Lalu: TBCDField;
    QuAreaRpBulan10Lalu: TBCDField;
    QuAreaRpBulan11Lalu: TBCDField;
    QuAreaRpBulan12Lalu: TBCDField;
    QuAreaSelisih1: TBCDField;
    QuAreaSelisih2: TBCDField;
    QuAreaSelisih3: TBCDField;
    QuAreaSelisih4: TBCDField;
    QuAreaSelisih5: TBCDField;
    QuAreaSelisih6: TBCDField;
    QuAreaSelisih7: TBCDField;
    QuAreaSelisih8: TBCDField;
    QuAreaSelisih9: TBCDField;
    QuAreaSelisih10: TBCDField;
    QuAreaSelisih11: TBCDField;
    QuAreaSelisih12: TBCDField;
    QuAreaThn: TADOQuery;
    DsAreathn: TDataSource;
    QuAreathnDet: TADOQuery;
    DsAreaThnDet: TDataSource;
    QuAreaThnKodeArea: TStringField;
    QuAreaThnTahun: TIntegerField;
    QuAreaThnRpBulan1: TBCDField;
    QuAreaThnRpBulan2: TBCDField;
    QuAreaThnRpBulan3: TBCDField;
    QuAreaThnRpBulan4: TBCDField;
    QuAreaThnRpBulan5: TBCDField;
    QuAreaThnRpBulan6: TBCDField;
    QuAreaThnRpBulan7: TBCDField;
    QuAreaThnRpBulan8: TBCDField;
    QuAreaThnRpBulan9: TBCDField;
    QuAreaThnRpBulan10: TBCDField;
    QuAreaThnRpBulan11: TBCDField;
    QuAreaThnRpBulan12: TBCDField;
    QuKota: TADOQuery;
    DsKota: TDataSource;
    QuKotaDet: TADOQuery;
    DskotaDet: TDataSource;
    QuKotaKodeKota: TStringField;
    QuKotaRpBulan1: TBCDField;
    QuKotaRpBulan2: TBCDField;
    QuKotaRpBulan3: TBCDField;
    QuKotaRpBulan4: TBCDField;
    QuKotaRpBulan5: TBCDField;
    QuKotaRpBulan6: TBCDField;
    QuKotaRpBulan7: TBCDField;
    QuKotaRpBulan8: TBCDField;
    QuKotaRpBulan9: TBCDField;
    QuKotaRpBulan10: TBCDField;
    QuKotaRpBulan11: TBCDField;
    QuKotaRpBulan12: TBCDField;
    QuKotaKodeKota_1: TStringField;
    QuKotaRpBulan1Lalu: TBCDField;
    QuKotaRpBulan2Lalu: TBCDField;
    QuKotaRpBulan3Lalu: TBCDField;
    QuKotaRpBulan4Lalu: TBCDField;
    QuKotaRpBulan5Lalu: TBCDField;
    QuKotaRpBulan6Lalu: TBCDField;
    QuKotaRpBulan7Lalu: TBCDField;
    QuKotaRpBulan8Lalu: TBCDField;
    QuKotaRpBulan9Lalu: TBCDField;
    QuKotaRpBulan10Lalu: TBCDField;
    QuKotaRpBulan11Lalu: TBCDField;
    QuKotaRpBulan12Lalu: TBCDField;
    QuKotaSelisih1: TBCDField;
    QuKotaSelisih2: TBCDField;
    QuKotaSelisih3: TBCDField;
    QuKotaSelisih4: TBCDField;
    QuKotaSelisih5: TBCDField;
    QuKotaSelisih6: TBCDField;
    QuKotaSelisih7: TBCDField;
    QuKotaSelisih8: TBCDField;
    QuKotaSelisih9: TBCDField;
    QuKotaSelisih10: TBCDField;
    QuKotaSelisih11: TBCDField;
    QuKotaSelisih12: TBCDField;
    QuKotaThn: TADOQuery;
    Dskotathn: TDataSource;
    QuKotaThnDet: TADOQuery;
    DskotaThnDet: TDataSource;
    QuStock: TADOQuery;
    Dstock: TDataSource;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1kodebrg: TStringField;
    ADOQuery1Qnt1f: TBCDField;
    QuOmsetDetKODESLS: TIntegerField;
    QuOmsetDetjan: TBCDField;
    QuOmsetDetFeb: TBCDField;
    QuOmsetDetmar: TBCDField;
    QuOmsetDetApr: TBCDField;
    QuOmsetDetMei: TBCDField;
    QuOmsetDetjuni: TBCDField;
    QuOmsetDetjuli: TBCDField;
    QuOmsetDetAgus: TBCDField;
    QuOmsetDetSept: TBCDField;
    QuOmsetDetokt: TBCDField;
    QuOmsetDetnov: TBCDField;
    QuOmsetDetdese: TBCDField;
    QuCust: TADOQuery;
    DsCustThn: TDataSource;
    QuCustThn: TADOQuery;
    DsCust: TDataSource;
    QuCustThnKodeCustSupp: TStringField;
    QuCustThnRpBulan1: TBCDField;
    QuCustThnRpBulan2: TBCDField;
    QuCustThnRpBulan3: TBCDField;
    QuCustThnRpBulan4: TBCDField;
    QuCustThnRpBulan5: TBCDField;
    QuCustThnRpBulan6: TBCDField;
    QuCustThnRpBulan7: TBCDField;
    QuCustThnRpBulan8: TBCDField;
    QuCustThnRpBulan9: TBCDField;
    QuCustThnRpBulan10: TBCDField;
    QuCustThnRpBulan11: TBCDField;
    QuCustThnRpBulan12: TBCDField;
    QuCustThnKodeCustSupp_1: TStringField;
    QuCustThnRpBulan1Lalu: TBCDField;
    QuCustThnRpBulan2Lalu: TBCDField;
    QuCustThnRpBulan3Lalu: TBCDField;
    QuCustThnRpBulan4Lalu: TBCDField;
    QuCustThnRpBulan5Lalu: TBCDField;
    QuCustThnRpBulan6Lalu: TBCDField;
    QuCustThnRpBulan7Lalu: TBCDField;
    QuCustThnRpBulan8Lalu: TBCDField;
    QuCustThnRpBulan9Lalu: TBCDField;
    QuCustThnRpBulan10Lalu: TBCDField;
    QuCustThnRpBulan11Lalu: TBCDField;
    QuCustThnRpBulan12Lalu: TBCDField;
    QuCustThnSelisih1: TBCDField;
    QuCustThnSelisih2: TBCDField;
    QuCustThnSelisih3: TBCDField;
    QuCustThnSelisih4: TBCDField;
    QuCustThnSelisih5: TBCDField;
    QuCustThnSelisih6: TBCDField;
    QuCustThnSelisih7: TBCDField;
    QuCustThnSelisih8: TBCDField;
    QuCustThnSelisih9: TBCDField;
    QuCustThnSelisih10: TBCDField;
    QuCustThnSelisih11: TBCDField;
    QuCustThnSelisih12: TBCDField;
    QuCustKodeCustSupp: TStringField;
    QuCustRpBulan1: TBCDField;
    QuCustRpBulan2: TBCDField;
    QuCustRpBulan3: TBCDField;
    QuCustRpBulan4: TBCDField;
    QuCustRpBulan5: TBCDField;
    QuCustRpBulan6: TBCDField;
    QuCustRpBulan7: TBCDField;
    QuCustRpBulan8: TBCDField;
    QuCustRpBulan9: TBCDField;
    QuCustRpBulan10: TBCDField;
    QuCustRpBulan11: TBCDField;
    QuCustRpBulan12: TBCDField;
    QuGrafikKota: TADOQuery;
    QuGrafikKotaBulan: TIntegerField;
    QuGrafikKotaKodeKota: TStringField;
    QuGrafikKotaNamaKota: TStringField;
    QuGrafikKotaRpBUlan: TBCDField;
    QuGrafikKotaQNTBULAN: TBCDField;
    Panel9: TPanel;
    PAGE: TdxPageControl;
    dxTabKunjunganSales: TdxTabSheet;
    cxGrid1: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvMasterKeynik: TcxGridDBColumn;
    tvMasterNama: TcxGridDBColumn;
    tvDetail: TcxGridDBTableView;
    tvDetailKeynik: TcxGridDBColumn;
    tvDetailMInggu1: TcxGridDBColumn;
    tvDetailMinggu2: TcxGridDBColumn;
    tvDetailMinggu3: TcxGridDBColumn;
    tvDetailMInggu4: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    dxTabSheet1: TdxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBMaster: TcxGridDBBandedTableView;
    cxGrid2DBMasterDBKodeSales: TcxGridDBBandedColumn;
    cxGrid2DBMasterDBjan: TcxGridDBBandedColumn;
    cxGrid2DBMasterDBJanLalu: TcxGridDBBandedColumn;
    cxGrid2DBMasterDBSeleisihJan: TcxGridDBBandedColumn;
    cxGrid2DBMasterDBFeb: TcxGridDBBandedColumn;
    cxGrid2DBMasterDBFebLalu: TcxGridDBBandedColumn;
    cxGrid2DBMasterDBSelisihlFebalu: TcxGridDBBandedColumn;
    cxGrid2DBMaret: TcxGridDBBandedColumn;
    cxGrid2DBmaretlalu: TcxGridDBBandedColumn;
    cxGrid2DBSelisih: TcxGridDBBandedColumn;
    cxGrid2DBApril: TcxGridDBBandedColumn;
    cxGrid2DBAprilLalu: TcxGridDBBandedColumn;
    cxGrid2DBSelisihApril: TcxGridDBBandedColumn;
    cxGrid2DBMei: TcxGridDBBandedColumn;
    cxGrid2DBmeilalu: TcxGridDBBandedColumn;
    cxGrid2DBselisihMei: TcxGridDBBandedColumn;
    cxGrid2DBMJuni: TcxGridDBBandedColumn;
    cxGrid2DBjunilalu: TcxGridDBBandedColumn;
    cxGrid2DBSelisihJuni: TcxGridDBBandedColumn;
    cxGrid2DBJuli: TcxGridDBBandedColumn;
    cxGrid2DBJuliLalu: TcxGridDBBandedColumn;
    cxGrid2DBSelIsihJuli: TcxGridDBBandedColumn;
    cxGrid2DBAgustus: TcxGridDBBandedColumn;
    cxGrid2DBAgusLalu: TcxGridDBBandedColumn;
    cxGrid2DBSelisihAgus: TcxGridDBBandedColumn;
    cxGrid2DBSptember: TcxGridDBBandedColumn;
    cxGrid2DBSeptlalu: TcxGridDBBandedColumn;
    cxGrid2DBSelisihSept: TcxGridDBBandedColumn;
    cxGrid2DBOktober: TcxGridDBBandedColumn;
    cxGrid2DBoktoberlalu: TcxGridDBBandedColumn;
    cxGrid2DBSeleishokt: TcxGridDBBandedColumn;
    cxGrid2DBNovember: TcxGridDBBandedColumn;
    cxGrid2DBNovemberlalu: TcxGridDBBandedColumn;
    cxGrid2DBSeleihNovember: TcxGridDBBandedColumn;
    cxGrid2DBDesember: TcxGridDBBandedColumn;
    cxGrid2DBDesemberlalu: TcxGridDBBandedColumn;
    cxGrid2DBSelisihDes: TcxGridDBBandedColumn;
    cxGrid2Detail: TcxGridBandedTableView;
    cxGrid2DetailKodeCust: TcxGridBandedColumn;
    cxGrid2Detailjan: TcxGridBandedColumn;
    cxGrid2DetailFeb: TcxGridBandedColumn;
    cxGrid2Detailmaret: TcxGridBandedColumn;
    cxGrid2DetailApril: TcxGridBandedColumn;
    cxGrid2DetailMei: TcxGridBandedColumn;
    cxGrid2DetailJuni: TcxGridBandedColumn;
    cxGrid2DetailJuli: TcxGridBandedColumn;
    cxGrid2DetailAgus: TcxGridBandedColumn;
    cxGrid2DetailSept: TcxGridBandedColumn;
    cxGrid2DetailNov: TcxGridBandedColumn;
    cxGrid2DetailDes: TcxGridBandedColumn;
    cxGridLevel1: TcxGridLevel;
    dxTabSheet2: TdxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBKodeSales: TcxGridDBBandedColumn;
    cxGridDBBJan: TcxGridDBBandedColumn;
    cxGridDBtargetJan: TcxGridDBBandedColumn;
    cxGridDBSelisihJan: TcxGridDBBandedColumn;
    cxGridDBFeb: TcxGridDBBandedColumn;
    cxGridDBtagetFeb: TcxGridDBBandedColumn;
    cxGridDBSelisihFeb: TcxGridDBBandedColumn;
    cxGridDBmaret: TcxGridDBBandedColumn;
    cxGridDBtargetMaret: TcxGridDBBandedColumn;
    cxGridDBSelsishMaret: TcxGridDBBandedColumn;
    cxGridDBApril: TcxGridDBBandedColumn;
    cxGridDBTargetApril: TcxGridDBBandedColumn;
    cxGridDBSelsihApril: TcxGridDBBandedColumn;
    cxGridDBMei: TcxGridDBBandedColumn;
    cxGridDBTargetMei: TcxGridDBBandedColumn;
    cxGridDBSelsihMei: TcxGridDBBandedColumn;
    cxGridDBJuni: TcxGridDBBandedColumn;
    cxGridDBtargetJuni: TcxGridDBBandedColumn;
    cxGridDBSelisihJuni: TcxGridDBBandedColumn;
    cxGridDBJuli: TcxGridDBBandedColumn;
    cxGridDBtargetJuli: TcxGridDBBandedColumn;
    cxGridDBSelsishJuli: TcxGridDBBandedColumn;
    cxGridDBAgus: TcxGridDBBandedColumn;
    cxGridDBTargetAgus: TcxGridDBBandedColumn;
    cxGridDBSelisihAgus: TcxGridDBBandedColumn;
    cxGridDBSept: TcxGridDBBandedColumn;
    cxGridDBtargetSept: TcxGridDBBandedColumn;
    cxGridDBSelsishSept: TcxGridDBBandedColumn;
    cxGridDBOkt: TcxGridDBBandedColumn;
    cxGridDBtargetOkt: TcxGridDBBandedColumn;
    cxGridDBSelsishOkt: TcxGridDBBandedColumn;
    cxGridDBnov: TcxGridDBBandedColumn;
    cxGridDtargetNov: TcxGridDBBandedColumn;
    cxGridDBSelsishNov: TcxGridDBBandedColumn;
    cxGridDBdes: TcxGridDBBandedColumn;
    cxGridDBTargetDes: TcxGridDBBandedColumn;
    cxGridDBBSelsishDes: TcxGridDBBandedColumn;
    cxGridBandedTableView1: TcxGridBandedTableView;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridBandedColumn3: TcxGridBandedColumn;
    cxGridBandedColumn4: TcxGridBandedColumn;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxGridBandedColumn7: TcxGridBandedColumn;
    cxGridBandedColumn8: TcxGridBandedColumn;
    cxGridBandedColumn9: TcxGridBandedColumn;
    cxGridBandedColumn10: TcxGridBandedColumn;
    cxGridBandedColumn11: TcxGridBandedColumn;
    cxGridBandedColumn12: TcxGridBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxGridLevel4: TcxGridLevel;
    dxTabSheet3: TdxTabSheet;
    dxTabSheet4: TdxTabSheet;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridDBBandedColumn27: TcxGridDBBandedColumn;
    cxGridDBBandedColumn28: TcxGridDBBandedColumn;
    cxGridDBBandedColumn29: TcxGridDBBandedColumn;
    cxGridDBBandedColumn30: TcxGridDBBandedColumn;
    cxGridDBBandedColumn31: TcxGridDBBandedColumn;
    cxGridDBBandedColumn32: TcxGridDBBandedColumn;
    cxGridDBBandedColumn33: TcxGridDBBandedColumn;
    cxGridDBBandedColumn34: TcxGridDBBandedColumn;
    cxGridDBBandedColumn35: TcxGridDBBandedColumn;
    cxGridDBBandedColumn36: TcxGridDBBandedColumn;
    cxGridDBBandedColumn37: TcxGridDBBandedColumn;
    cxGridBandedTableView2: TcxGridBandedTableView;
    cxGridBandedColumn13: TcxGridBandedColumn;
    cxGridBandedColumn14: TcxGridBandedColumn;
    cxGridBandedColumn15: TcxGridBandedColumn;
    cxGridBandedColumn16: TcxGridBandedColumn;
    cxGridBandedColumn17: TcxGridBandedColumn;
    cxGridBandedColumn18: TcxGridBandedColumn;
    cxGridBandedColumn19: TcxGridBandedColumn;
    cxGridBandedColumn20: TcxGridBandedColumn;
    cxGridBandedColumn21: TcxGridBandedColumn;
    cxGridBandedColumn22: TcxGridBandedColumn;
    cxGridBandedColumn23: TcxGridBandedColumn;
    cxGridBandedColumn24: TcxGridBandedColumn;
    cxGridLevel7: TcxGridLevel;
    cxGridLevel8: TcxGridLevel;
    dxTabSheet5: TdxTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    cxGridLevel10: TcxGridLevel;
    dxTabSheet6: TdxTabSheet;
    cxGrid7: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBBandedColumn38: TcxGridDBBandedColumn;
    cxGridDBBandedColumn39: TcxGridDBBandedColumn;
    cxGridDBBandedColumn40: TcxGridDBBandedColumn;
    cxGridDBBandedColumn41: TcxGridDBBandedColumn;
    cxGridDBBandedColumn42: TcxGridDBBandedColumn;
    cxGridDBBandedColumn43: TcxGridDBBandedColumn;
    cxGridDBBandedColumn44: TcxGridDBBandedColumn;
    cxGridDBBandedColumn45: TcxGridDBBandedColumn;
    cxGridDBBandedColumn46: TcxGridDBBandedColumn;
    cxGridDBBandedColumn47: TcxGridDBBandedColumn;
    cxGridDBBandedColumn48: TcxGridDBBandedColumn;
    cxGridDBBandedColumn49: TcxGridDBBandedColumn;
    cxGridDBBandedColumn50: TcxGridDBBandedColumn;
    cxGridDBBandedColumn51: TcxGridDBBandedColumn;
    cxGridDBBandedColumn52: TcxGridDBBandedColumn;
    cxGridDBBandedColumn53: TcxGridDBBandedColumn;
    cxGridDBBandedColumn54: TcxGridDBBandedColumn;
    cxGridDBBandedColumn55: TcxGridDBBandedColumn;
    cxGridDBBandedColumn56: TcxGridDBBandedColumn;
    cxGridDBBandedColumn57: TcxGridDBBandedColumn;
    cxGridDBBandedColumn58: TcxGridDBBandedColumn;
    cxGridDBBandedColumn59: TcxGridDBBandedColumn;
    cxGridDBBandedColumn60: TcxGridDBBandedColumn;
    cxGridDBBandedColumn61: TcxGridDBBandedColumn;
    cxGridDBBandedColumn62: TcxGridDBBandedColumn;
    cxGridDBBandedColumn63: TcxGridDBBandedColumn;
    cxGridDBBandedColumn64: TcxGridDBBandedColumn;
    cxGridDBBandedColumn65: TcxGridDBBandedColumn;
    cxGridDBBandedColumn66: TcxGridDBBandedColumn;
    cxGridDBBandedColumn67: TcxGridDBBandedColumn;
    cxGridDBBandedColumn68: TcxGridDBBandedColumn;
    cxGridDBBandedColumn69: TcxGridDBBandedColumn;
    cxGridDBBandedColumn70: TcxGridDBBandedColumn;
    cxGridDBBandedColumn71: TcxGridDBBandedColumn;
    cxGridDBBandedColumn72: TcxGridDBBandedColumn;
    cxGridDBBandedColumn73: TcxGridDBBandedColumn;
    cxGridDBBandedColumn74: TcxGridDBBandedColumn;
    cxGridBandedTableView3: TcxGridBandedTableView;
    cxGridBandedColumn25: TcxGridBandedColumn;
    cxGridBandedColumn26: TcxGridBandedColumn;
    cxGridBandedColumn27: TcxGridBandedColumn;
    cxGridBandedColumn28: TcxGridBandedColumn;
    cxGridBandedColumn29: TcxGridBandedColumn;
    cxGridBandedColumn30: TcxGridBandedColumn;
    cxGridBandedColumn31: TcxGridBandedColumn;
    cxGridBandedColumn32: TcxGridBandedColumn;
    cxGridBandedColumn33: TcxGridBandedColumn;
    cxGridBandedColumn34: TcxGridBandedColumn;
    cxGridBandedColumn35: TcxGridBandedColumn;
    cxGridBandedColumn36: TcxGridBandedColumn;
    cxGridLevel11: TcxGridLevel;
    cxGridLevel12: TcxGridLevel;
    dxTabSheet7: TdxTabSheet;
    cxGrid8: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridDBColumn69: TcxGridDBColumn;
    cxGridDBColumn70: TcxGridDBColumn;
    cxGridDBColumn71: TcxGridDBColumn;
    cxGridDBColumn72: TcxGridDBColumn;
    cxGridDBColumn73: TcxGridDBColumn;
    cxGridDBColumn74: TcxGridDBColumn;
    cxGridDBColumn75: TcxGridDBColumn;
    cxGridDBColumn76: TcxGridDBColumn;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBColumn77: TcxGridDBColumn;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridLevel13: TcxGridLevel;
    cxGridLevel14: TcxGridLevel;
    dxTabSheet8: TdxTabSheet;
    Panel5: TPanel;
    cxGrid9: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBKodeBrg: TcxGridDBColumn;
    cxGridDBNamaBrg: TcxGridDBColumn;
    cxGridDBSaldo1: TcxGridDBColumn;
    cxGridDBSO1: TcxGridDBColumn;
    cxGridDBPO1: TcxGridDBColumn;
    cxGridDBStockF1: TcxGridDBColumn;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBColumn95: TcxGridDBColumn;
    cxGridDBColumn96: TcxGridDBColumn;
    cxGridDBColumn97: TcxGridDBColumn;
    cxGridDBColumn98: TcxGridDBColumn;
    cxGridDBColumn99: TcxGridDBColumn;
    cxGridLevel15: TcxGridLevel;
    Panel6: TPanel;
    dxTabSheet9: TdxTabSheet;
    cxGrid10: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBBandedColumn75: TcxGridDBBandedColumn;
    cxGridDBBandedColumn76: TcxGridDBBandedColumn;
    cxGridDBBandedColumn77: TcxGridDBBandedColumn;
    cxGridDBBandedColumn78: TcxGridDBBandedColumn;
    cxGridDBBandedColumn79: TcxGridDBBandedColumn;
    cxGridDBBandedColumn80: TcxGridDBBandedColumn;
    cxGridDBBandedColumn81: TcxGridDBBandedColumn;
    cxGridDBBandedColumn82: TcxGridDBBandedColumn;
    cxGridDBBandedColumn83: TcxGridDBBandedColumn;
    cxGridDBBandedColumn84: TcxGridDBBandedColumn;
    cxGridDBBandedColumn85: TcxGridDBBandedColumn;
    cxGridDBBandedColumn86: TcxGridDBBandedColumn;
    cxGridDBBandedColumn87: TcxGridDBBandedColumn;
    cxGridDBBandedColumn88: TcxGridDBBandedColumn;
    cxGridDBBandedColumn89: TcxGridDBBandedColumn;
    cxGridDBBandedColumn90: TcxGridDBBandedColumn;
    cxGridDBBandedColumn91: TcxGridDBBandedColumn;
    cxGridDBBandedColumn92: TcxGridDBBandedColumn;
    cxGridDBBandedColumn93: TcxGridDBBandedColumn;
    cxGridDBBandedColumn94: TcxGridDBBandedColumn;
    cxGridDBBandedColumn95: TcxGridDBBandedColumn;
    cxGridDBBandedColumn96: TcxGridDBBandedColumn;
    cxGridDBBandedColumn97: TcxGridDBBandedColumn;
    cxGridDBBandedColumn98: TcxGridDBBandedColumn;
    cxGridDBBandedColumn99: TcxGridDBBandedColumn;
    cxGridDBBandedColumn100: TcxGridDBBandedColumn;
    cxGridDBBandedColumn101: TcxGridDBBandedColumn;
    cxGridDBBandedColumn102: TcxGridDBBandedColumn;
    cxGridDBBandedColumn103: TcxGridDBBandedColumn;
    cxGridDBBandedColumn104: TcxGridDBBandedColumn;
    cxGridDBBandedColumn105: TcxGridDBBandedColumn;
    cxGridDBBandedColumn106: TcxGridDBBandedColumn;
    cxGridDBBandedColumn107: TcxGridDBBandedColumn;
    cxGridDBBandedColumn108: TcxGridDBBandedColumn;
    cxGridDBBandedColumn109: TcxGridDBBandedColumn;
    cxGridDBBandedColumn110: TcxGridDBBandedColumn;
    cxGridDBBandedColumn111: TcxGridDBBandedColumn;
    cxGridBandedTableView4: TcxGridBandedTableView;
    cxGridBandedColumn37: TcxGridBandedColumn;
    cxGridBandedColumn38: TcxGridBandedColumn;
    cxGridBandedColumn39: TcxGridBandedColumn;
    cxGridBandedColumn40: TcxGridBandedColumn;
    cxGridBandedColumn41: TcxGridBandedColumn;
    cxGridBandedColumn42: TcxGridBandedColumn;
    cxGridBandedColumn43: TcxGridBandedColumn;
    cxGridBandedColumn44: TcxGridBandedColumn;
    cxGridBandedColumn45: TcxGridBandedColumn;
    cxGridBandedColumn46: TcxGridBandedColumn;
    cxGridBandedColumn47: TcxGridBandedColumn;
    cxGridBandedColumn48: TcxGridBandedColumn;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridDBColumn84: TcxGridDBColumn;
    cxGridDBColumn85: TcxGridDBColumn;
    cxGridDBColumn86: TcxGridDBColumn;
    cxGridDBColumn87: TcxGridDBColumn;
    cxGridDBColumn88: TcxGridDBColumn;
    cxGridDBColumn89: TcxGridDBColumn;
    cxGridDBColumn90: TcxGridDBColumn;
    cxGridDBColumn91: TcxGridDBColumn;
    cxGridDBColumn92: TcxGridDBColumn;
    cxGridDBColumn93: TcxGridDBColumn;
    cxGridDBColumn94: TcxGridDBColumn;
    cxGridLevel16: TcxGridLevel;
    dxTabSheet10: TdxTabSheet;
    cxGrid11: TcxGrid;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridDBColumn100: TcxGridDBColumn;
    cxGridDBColumn101: TcxGridDBColumn;
    cxGridDBColumn102: TcxGridDBColumn;
    cxGridDBColumn103: TcxGridDBColumn;
    cxGridDBColumn104: TcxGridDBColumn;
    cxGridDBColumn105: TcxGridDBColumn;
    cxGridDBColumn106: TcxGridDBColumn;
    cxGridDBColumn107: TcxGridDBColumn;
    cxGridDBColumn108: TcxGridDBColumn;
    cxGridDBColumn109: TcxGridDBColumn;
    cxGridDBColumn110: TcxGridDBColumn;
    cxGridDBColumn111: TcxGridDBColumn;
    cxGridDBColumn112: TcxGridDBColumn;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridDBColumn113: TcxGridDBColumn;
    cxGridDBColumn114: TcxGridDBColumn;
    cxGridDBColumn115: TcxGridDBColumn;
    cxGridDBColumn116: TcxGridDBColumn;
    cxGridDBColumn117: TcxGridDBColumn;
    cxGridLevel17: TcxGridLevel;
    dxTabSheet11: TdxTabSheet;
    QuKotaThnKodeKota: TStringField;
    QuKotaThnTahun: TIntegerField;
    QuKotaThnJanuari: TBCDField;
    QuKotaThnFebruari: TBCDField;
    QuKotaThnMaret: TBCDField;
    QuKotaThnApril: TBCDField;
    QuKotaThnMei: TBCDField;
    QuKotaThnJuni: TBCDField;
    QuKotaThnJuli: TBCDField;
    QuKotaThnAgustus: TBCDField;
    QuKotaThnSeptember: TBCDField;
    QuKotaThnoktober: TBCDField;
    QuKotaThnNovember: TBCDField;
    QuKotaThnDesember: TBCDField;
    Panel10: TPanel;
    CheckBox1: TCheckBox;
    cxGridDBTableView9DBColumn1: TcxGridDBColumn;
    cxGridDBTableView9DBColumn2: TcxGridDBColumn;
    cxGridDBTableView9DBColumn3: TcxGridDBColumn;
    cxGridDBTableView9DBColumn4: TcxGridDBColumn;
    cxGridDBTableView9DBColumn5: TcxGridDBColumn;
    cxGridDBTableView9DBColumn6: TcxGridDBColumn;
    cxGridDBTableView9DBColumn7: TcxGridDBColumn;
    cxGridDBTableView9DBColumn8: TcxGridDBColumn;
    cxGridDBTableView9DBColumn9: TcxGridDBColumn;
    cxGridDBTableView9DBColumn10: TcxGridDBColumn;
    QuAreaDetKodeArea: TStringField;
    QuAreaDetKodeKota: TStringField;
    QuAreaDetRpBulan1: TBCDField;
    QuAreaDetRpBulan2: TBCDField;
    QuAreaDetRpBulan3: TBCDField;
    QuAreaDetRpBulan4: TBCDField;
    QuAreaDetRpBulan5: TBCDField;
    QuAreaDetRpBulan6: TBCDField;
    QuAreaDetRpBulan7: TBCDField;
    QuAreaDetRpBulan8: TBCDField;
    QuAreaDetRpBulan9: TBCDField;
    QuAreaDetRpBulan10: TBCDField;
    QuAreaDetRpBulan11: TBCDField;
    QuAreaDetRpBulan12: TBCDField;
    QuAreaDetKodeArea_1: TStringField;
    QuAreaDetKodeKota_1: TStringField;
    QuAreaDetRpBulan1Lalu: TBCDField;
    QuAreaDetRpBulan2Lalu: TBCDField;
    QuAreaDetRpBulan3Lalu: TBCDField;
    QuAreaDetRpBulan4Lalu: TBCDField;
    QuAreaDetRpBulan5Lalu: TBCDField;
    QuAreaDetRpBulan6Lalu: TBCDField;
    QuAreaDetRpBulan7Lalu: TBCDField;
    QuAreaDetRpBulan8Lalu: TBCDField;
    QuAreaDetRpBulan9Lalu: TBCDField;
    QuAreaDetRpBulan10Lalu: TBCDField;
    QuAreaDetRpBulan11Lalu: TBCDField;
    QuAreaDetRpBulan12Lalu: TBCDField;
    QuAreaDetSelisih1: TBCDField;
    QuAreaDetSelisih2: TBCDField;
    QuAreaDetSelisih3: TBCDField;
    QuAreaDetSelisih4: TBCDField;
    QuAreaDetSelisih5: TBCDField;
    QuAreaDetSelisih6: TBCDField;
    QuAreaDetSelisih7: TBCDField;
    QuAreaDetSelisih8: TBCDField;
    QuAreaDetSelisih9: TBCDField;
    QuAreaDetSelisih10: TBCDField;
    QuAreaDetSelisih11: TBCDField;
    QuAreaDetSelisih12: TBCDField;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5DBBArea: TcxGridDBBandedColumn;
    cxGrid5DBkotaJanuari: TcxGridDBBandedColumn;
    cxGrid5DBKotaFeb: TcxGridDBBandedColumn;
    cxGrid5DBKotaMar: TcxGridDBBandedColumn;
    cxGrid5DBKotaApr: TcxGridDBBandedColumn;
    cxGrid5DBkotaMei: TcxGridDBBandedColumn;
    cxGrid5DBKotaJuni: TcxGridDBBandedColumn;
    cxGrid5DBkotaJuli: TcxGridDBBandedColumn;
    cxGrid5DBkotaAgus: TcxGridDBBandedColumn;
    cxGrid5DBKotaSept: TcxGridDBBandedColumn;
    cxGrid5DBKotaOkt: TcxGridDBBandedColumn;
    BandedTableView1DBKOtaNovember: TcxGridDBBandedColumn;
    cxGrid5DBKotaDes: TcxGridDBBandedColumn;
    cxGrid5DBLkotaJan: TcxGridDBBandedColumn;
    cxGrid5DBLKOTAFEB: TcxGridDBBandedColumn;
    cxGrid5DBLKOTAMAR: TcxGridDBBandedColumn;
    cxGrid5DBLKOTAAPR: TcxGridDBBandedColumn;
    cxGrid5DBLKOTAMEI: TcxGridDBBandedColumn;
    cxGrid5DBLKOTAJUNI: TcxGridDBBandedColumn;
    cxGrid5DBLKOTAJULI: TcxGridDBBandedColumn;
    cxGrid5DBLKOTAGUS: TcxGridDBBandedColumn;
    cxGrid5DBLKOTASEPT: TcxGridDBBandedColumn;
    cxGrid5DBLKOTAOKT: TcxGridDBBandedColumn;
    cxGrid5DBLKOTANOV: TcxGridDBBandedColumn;
    cxGrid5DBLKOTADES: TcxGridDBBandedColumn;
    cxGrid5DBSKOTAJAN: TcxGridDBBandedColumn;
    cxGrid5DBSKOTAFEB: TcxGridDBBandedColumn;
    cxGrid5DBSKOTAMAR: TcxGridDBBandedColumn;
    cxGrid5DBSKOTAAPR: TcxGridDBBandedColumn;
    cxGrid5DBSKOTAMEI: TcxGridDBBandedColumn;
    cxGrid5DBSKOTAJUNI: TcxGridDBBandedColumn;
    cxGrid5DBSKOTAJULI: TcxGridDBBandedColumn;
    cxGrid5DBSKOTAAGUS: TcxGridDBBandedColumn;
    cxGrid5DBSKOTASEPT: TcxGridDBBandedColumn;
    cxGrid5DBSKOTANOV: TcxGridDBBandedColumn;
    cxGrid5DBSKOTADES: TcxGridDBBandedColumn;
    cxGrid5DBSOKT: TcxGridDBBandedColumn;
    QuAreathnDetKodeArea: TStringField;
    QuAreathnDetkodekota: TStringField;
    QuAreathnDetJanuari: TBCDField;
    QuAreathnDetFebruari: TBCDField;
    QuAreathnDetMaret: TBCDField;
    QuAreathnDetApril: TBCDField;
    QuAreathnDetMei: TBCDField;
    QuAreathnDetJuni: TBCDField;
    QuAreathnDetjuli: TBCDField;
    QuAreathnDetAgustus: TBCDField;
    QuAreathnDetSeptember: TBCDField;
    QuAreathnDetoktober: TBCDField;
    QuAreathnDetNovember: TBCDField;
    QuAreathnDetDesember: TBCDField;
    cxGridDBTableView6DBColumn1: TcxGridDBColumn;
    cxGridDBTableView6DBColumn2: TcxGridDBColumn;
    cxGridDBTableView6DBColumn3: TcxGridDBColumn;
    cxGridDBTableView6DBColumn4: TcxGridDBColumn;
    cxGridDBTableView6DBColumn5: TcxGridDBColumn;
    cxGridDBTableView6DBColumn6: TcxGridDBColumn;
    cxGridDBTableView6DBColumn7: TcxGridDBColumn;
    cxGridDBTableView6DBColumn8: TcxGridDBColumn;
    QuKotaDetKota: TStringField;
    QuKotaDetKodeCustSupp: TStringField;
    QuKotaDetRpBulan1: TBCDField;
    QuKotaDetRpBulan2: TBCDField;
    QuKotaDetRpBulan3: TBCDField;
    QuKotaDetRpBulan4: TBCDField;
    QuKotaDetRpBulan5: TBCDField;
    QuKotaDetRpBulan6: TBCDField;
    QuKotaDetRpBulan7: TBCDField;
    QuKotaDetRpBulan8: TBCDField;
    QuKotaDetRpBulan9: TBCDField;
    QuKotaDetRpBulan10: TBCDField;
    QuKotaDetRpBulan11: TBCDField;
    QuKotaDetRpBulan12: TBCDField;
    QuKotaDetKodeCustSupp_1: TStringField;
    QuKotaDetRpBulan1Lalu: TBCDField;
    QuKotaDetRpBulan2Lalu: TBCDField;
    QuKotaDetRpBulan3Lalu: TBCDField;
    QuKotaDetRpBulan4Lalu: TBCDField;
    QuKotaDetRpBulan5Lalu: TBCDField;
    QuKotaDetRpBulan6Lalu: TBCDField;
    QuKotaDetRpBulan7Lalu: TBCDField;
    QuKotaDetRpBulan8Lalu: TBCDField;
    QuKotaDetRpBulan9Lalu: TBCDField;
    QuKotaDetRpBulan10Lalu: TBCDField;
    QuKotaDetRpBulan11Lalu: TBCDField;
    QuKotaDetRpBulan12Lalu: TBCDField;
    QuKotaDetSelisih1: TBCDField;
    QuKotaDetSelisih2: TBCDField;
    QuKotaDetSelisih3: TBCDField;
    QuKotaDetSelisih4: TBCDField;
    QuKotaDetSelisih5: TBCDField;
    QuKotaDetSelisih6: TBCDField;
    QuKotaDetSelisih7: TBCDField;
    QuKotaDetSelisih8: TBCDField;
    QuKotaDetSelisih9: TBCDField;
    QuKotaDetSelisih10: TBCDField;
    QuKotaDetSelisih11: TBCDField;
    QuKotaDetSelisih12: TBCDField;
    cxGrid7DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid7DBKOdecust: TcxGridDBBandedColumn;
    cxGrid7DBJan: TcxGridDBBandedColumn;
    cxGrid7DBFeb: TcxGridDBBandedColumn;
    cxGrid7DBmaret: TcxGridDBBandedColumn;
    cxGrid7DBApril: TcxGridDBBandedColumn;
    cxGrid7DBMei: TcxGridDBBandedColumn;
    cxGrid7DBJuni: TcxGridDBBandedColumn;
    cxGrid7DBJuli: TcxGridDBBandedColumn;
    cxGrid7DBAgustus: TcxGridDBBandedColumn;
    cxGrid7DBSeptember: TcxGridDBBandedColumn;
    cxGrid7DBnovember: TcxGridDBBandedColumn;
    cxGrid7DBoktober: TcxGridDBBandedColumn;
    cxGrid7DBdesember: TcxGridDBBandedColumn;
    cxGrid7DBLJan: TcxGridDBBandedColumn;
    cxGrid7DBLFEB: TcxGridDBBandedColumn;
    cxGrid7DBLMAR: TcxGridDBBandedColumn;
    cxGrid7DBLAPR: TcxGridDBBandedColumn;
    cxGrid7DBLMEI: TcxGridDBBandedColumn;
    cxGrid7DBLJUNI: TcxGridDBBandedColumn;
    cxGrid7DBLJULI: TcxGridDBBandedColumn;
    cxGrid7DBLAGUSTUS: TcxGridDBBandedColumn;
    cxGrid7DBLSEPT: TcxGridDBBandedColumn;
    cxGrid7DBLOKT: TcxGridDBBandedColumn;
    cxGrid7DBLNOV: TcxGridDBBandedColumn;
    cxGrid7DBLDES: TcxGridDBBandedColumn;
    cxGrid7DBSJAN: TcxGridDBBandedColumn;
    cxGrid7DBSFEB: TcxGridDBBandedColumn;
    cxGrid7DBSMAR: TcxGridDBBandedColumn;
    cxGrid7DBSAPRL: TcxGridDBBandedColumn;
    cxGrid7DBSMEI: TcxGridDBBandedColumn;
    cxGrid7DBSJUNI: TcxGridDBBandedColumn;
    cxGrid7DBSJULI: TcxGridDBBandedColumn;
    cxGrid7DBSAGUSTUS: TcxGridDBBandedColumn;
    cxGrid7DBSSEPT: TcxGridDBBandedColumn;
    cxGrid7DBSOKT: TcxGridDBBandedColumn;
    cxGrid7DBSNOV: TcxGridDBBandedColumn;
    cxGrid7DBSDES: TcxGridDBBandedColumn;
    QuKotaThnDetKodeCustSupp: TStringField;
    QuKotaThnDetKOTA: TStringField;
    QuKotaThnDetRpBulan1: TBCDField;
    QuKotaThnDetRpBulan2: TBCDField;
    QuKotaThnDetRpBulan3: TBCDField;
    QuKotaThnDetRpBulan4: TBCDField;
    QuKotaThnDetRpBulan5: TBCDField;
    QuKotaThnDetRpBulan6: TBCDField;
    QuKotaThnDetRpBulan7: TBCDField;
    QuKotaThnDetRpBulan8: TBCDField;
    QuKotaThnDetRpBulan9: TBCDField;
    QuKotaThnDetRpBulan10: TBCDField;
    QuKotaThnDetRpBulan11: TBCDField;
    QuKotaThnDetRpBulan12: TBCDField;
    Panel8: TPanel;
    Grafik2: TChart;
    Image1: TImage;
    Panel7: TPanel;
    CheckBox2: TCheckBox;
    QutargetThnDetKeyNik: TStringField;
    QutargetThnDetKodeCustSupp: TStringField;
    QutargetThnDetTahun: TIntegerField;
    QutargetThnDetRpBulan1: TBCDField;
    QutargetThnDetRp1: TBCDField;
    QutargetThnDetSelisih1: TBCDField;
    QutargetThnDetRpBulan2: TBCDField;
    QutargetThnDetRp2: TBCDField;
    QutargetThnDetSelisih2: TBCDField;
    QutargetThnDetRpBulan3: TBCDField;
    QutargetThnDetRp3: TBCDField;
    QutargetThnDetSelisih3: TBCDField;
    QutargetThnDetRpBulan4: TBCDField;
    QutargetThnDetRp4: TBCDField;
    QutargetThnDetSelisih4: TBCDField;
    QutargetThnDetRpBulan5: TBCDField;
    QutargetThnDetRp5: TBCDField;
    QutargetThnDetSelisih5: TBCDField;
    QutargetThnDetRpBulan6: TBCDField;
    QutargetThnDetRp6: TBCDField;
    QutargetThnDetSelisih6: TBCDField;
    QutargetThnDetRpBulan7: TBCDField;
    QutargetThnDetRp7: TBCDField;
    QutargetThnDetSelisih7: TBCDField;
    QutargetThnDetRpBulan8: TBCDField;
    QutargetThnDetRp8: TBCDField;
    QutargetThnDetSelisih8: TBCDField;
    QutargetThnDetRpBulan9: TBCDField;
    QutargetThnDetRp9: TBCDField;
    QutargetThnDetSelisih9: TBCDField;
    QutargetThnDetRpBulan10: TBCDField;
    QutargetThnDetRp10: TBCDField;
    QutargetThnDetSelisih10: TBCDField;
    QutargetThnDetRpBulan11: TBCDField;
    QutargetThnDetRp11: TBCDField;
    QutargetThnDetSelisih11: TBCDField;
    QutargetThnDetRpBulan12: TBCDField;
    QutargetThnDetRp12: TBCDField;
    QutargetThnDetSelisih12: TBCDField;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBKodeCustSupp: TcxGridDBBandedColumn;
    cxGrid2DBJan: TcxGridDBBandedColumn;
    cxGrid2DBFeb: TcxGridDBBandedColumn;
    cxGrid2DBNMar: TcxGridDBBandedColumn;
    cxGrid2DBBNApril: TcxGridDBBandedColumn;
    cxGrid2DBNMei: TcxGridDBBandedColumn;
    cxGrid2DBNJuni: TcxGridDBBandedColumn;
    cxGrid2DBNJuli: TcxGridDBBandedColumn;
    cxGrid2DBNAgus: TcxGridDBBandedColumn;
    cxGrid2DBNOkt: TcxGridDBBandedColumn;
    cxGrid2DBNSept: TcxGridDBBandedColumn;
    cxGrid2DBNNov: TcxGridDBBandedColumn;
    cxGrid2DBNDes: TcxGridDBBandedColumn;
    cxGrid2DBLJAN: TcxGridDBBandedColumn;
    cxGrid2DBLFEB: TcxGridDBBandedColumn;
    cxGrid2DBlMAR: TcxGridDBBandedColumn;
    cxGrid2DBLAPR: TcxGridDBBandedColumn;
    cxGrid2DBLMEI: TcxGridDBBandedColumn;
    cxGrid2DBLJUNI: TcxGridDBBandedColumn;
    cxGrid2DBLJULI: TcxGridDBBandedColumn;
    cxGrid2DBLAGUS: TcxGridDBBandedColumn;
    cxGrid2DBLSEPT: TcxGridDBBandedColumn;
    cxGrid2DBLOKT: TcxGridDBBandedColumn;
    cxGrid2DBLNOV: TcxGridDBBandedColumn;
    cxGrid2DBLDES: TcxGridDBBandedColumn;
    cxGrid2DBSJAN: TcxGridDBBandedColumn;
    cxGrid2DBSFEB: TcxGridDBBandedColumn;
    cxGrid2DBSMEI: TcxGridDBBandedColumn;
    cxGrid2DBSMAR: TcxGridDBBandedColumn;
    cxGrid2DBSAPR: TcxGridDBBandedColumn;
    cxGrid2DBASJUNI: TcxGridDBBandedColumn;
    cxGrid2DBSJULI: TcxGridDBBandedColumn;
    cxGrid2DBSAGUS: TcxGridDBBandedColumn;
    cxGrid2DBSSEPT: TcxGridDBBandedColumn;
    cxGrid2DBSOKT: TcxGridDBBandedColumn;
    cxGrid2DBSDES: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBNJan: TcxGridDBBandedColumn;
    cxGrid3DBnfeb: TcxGridDBBandedColumn;
    cxGrid3DBBNmar: TcxGridDBBandedColumn;
    cxGrid3DBnApr: TcxGridDBBandedColumn;
    cxGrid3DBNMei: TcxGridDBBandedColumn;
    cxGrid3DBNjuni: TcxGridDBBandedColumn;
    cxGrid3DBNjuli: TcxGridDBBandedColumn;
    cxGrid3DBNAgustus: TcxGridDBBandedColumn;
    cxGrid3DBNSept: TcxGridDBBandedColumn;
    cxGrid3DBNOkt: TcxGridDBBandedColumn;
    cxGrid3DBNnov: TcxGridDBBandedColumn;
    cxGrid3DBNdes: TcxGridDBBandedColumn;
    cxGrid3DBKodeCustSupp: TcxGridDBBandedColumn;
    cxGrid3DBLJAN: TcxGridDBBandedColumn;
    cxGrid3DBLFEB: TcxGridDBBandedColumn;
    cxGrid3DBLMAR: TcxGridDBBandedColumn;
    cxGrid3DBLAPRIL: TcxGridDBBandedColumn;
    cxGrid3DBLMEI: TcxGridDBBandedColumn;
    cxGrid3DBLJUNI: TcxGridDBBandedColumn;
    cxGrid3DBLJULI: TcxGridDBBandedColumn;
    cxGrid3DBLAGUS: TcxGridDBBandedColumn;
    cxGrid3DBLSEPT: TcxGridDBBandedColumn;
    cxGrid3DBLOKT: TcxGridDBBandedColumn;
    cxGrid3DBLNOV: TcxGridDBBandedColumn;
    cxGrid3DBLDES: TcxGridDBBandedColumn;
    cxGrid3DBSJAN: TcxGridDBBandedColumn;
    cxGrid3DBSFEB: TcxGridDBBandedColumn;
    cxGrid3DBSMAR: TcxGridDBBandedColumn;
    cxGrid3DBSAPR: TcxGridDBBandedColumn;
    cxGrid3DBSMEI: TcxGridDBBandedColumn;
    cxGrid3DBSJUNI: TcxGridDBBandedColumn;
    cxGrid3DBSJULI: TcxGridDBBandedColumn;
    cxGrid3DBSAGUSTUS: TcxGridDBBandedColumn;
    cxGrid3DBSSPET: TcxGridDBBandedColumn;
    cxGrid3DBSOKT: TcxGridDBBandedColumn;
    cxGrid3DBSNOV: TcxGridDBBandedColumn;
    cxGrid3DBSDES: TcxGridDBBandedColumn;
    QuTargetDetKodeSLS: TIntegerField;
    QuTargetDetKodeCustSupp: TStringField;
    QuTargetDetRpBulan1: TBCDField;
    QuTargetDetRpBulan2: TBCDField;
    QuTargetDetRpBulan3: TBCDField;
    QuTargetDetRpBulan4: TBCDField;
    QuTargetDetRpBulan5: TBCDField;
    QuTargetDetRpBulan6: TBCDField;
    QuTargetDetRpBulan7: TBCDField;
    QuTargetDetRpBulan8: TBCDField;
    QuTargetDetRpBulan9: TBCDField;
    QuTargetDetRpBulan10: TBCDField;
    QuTargetDetRpBulan11: TBCDField;
    QuTargetDetRpBulan12: TBCDField;
    QuTargetDetKodeSLS_1: TIntegerField;
    QuTargetDetKodeCustSupp_1: TStringField;
    QuTargetDetRpBulan1Lalu: TBCDField;
    QuTargetDetRpBulan2Lalu: TBCDField;
    QuTargetDetRpBulan3Lalu: TBCDField;
    QuTargetDetRpBulan4Lalu: TBCDField;
    QuTargetDetRpBulan5Lalu: TBCDField;
    QuTargetDetRpBulan6Lalu: TBCDField;
    QuTargetDetRpBulan7Lalu: TBCDField;
    QuTargetDetRpBulan8Lalu: TBCDField;
    QuTargetDetRpBulan9Lalu: TBCDField;
    QuTargetDetRpBulan10Lalu: TBCDField;
    QuTargetDetRpBulan11Lalu: TBCDField;
    QuTargetDetRpBulan12Lalu: TBCDField;
    QuTargetDetSelisih1: TBCDField;
    QuTargetDetSelisih2: TBCDField;
    QuTargetDetSelisih3: TBCDField;
    QuTargetDetSelisih4: TBCDField;
    QuTargetDetSelisih5: TBCDField;
    QuTargetDetSelisih6: TBCDField;
    QuTargetDetSelisih7: TBCDField;
    QuTargetDetSelisih8: TBCDField;
    QuTargetDetSelisih9: TBCDField;
    QuTargetDetSelisih10: TBCDField;
    QuTargetDetSelisih11: TBCDField;
    QuTargetDetSelisih12: TBCDField;
    cxGrid2DBSNov: TcxGridDBBandedColumn;
    SaveDialog: TSaveDialog;
    QuStockKODEBRG: TStringField;
    QuStockNamaBrg: TStringField;
    QuStockSALDO2QNT: TBCDField;
    QuStockSALDOQNT: TBCDField;
    QuStockQNT1SO: TBCDField;
    QuStockQNT2SO: TBCDField;
    QuStockQnt1PO: TBCDField;
    QuStockQnt2PO: TBCDField;
    QuStockQnt1F: TBCDField;
    QuStockQnt2F: TBCDField;
    QuStockBulan: TIntegerField;
    QuStockTahun: TIntegerField;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridLevel5: TcxGridLevel;
    Qutargetnama: TStringField;
    cxGrid2DBMasterDBNamaSls: TcxGridDBBandedColumn;
    cxGridDBBandedNama: TcxGridDBBandedColumn;
    QutargetThnNama: TStringField;
    QuOmsetNama: TStringField;
    cxGridDBNama: TcxGridDBColumn;
    QuAreaNamaArea: TStringField;
    cxGridDBBandedTableView2DBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBTableView5DBColumn1: TcxGridDBColumn;
    QuAreaThnNamaArea: TStringField;
    QuKotanamaKota: TStringField;
    cxGridDBBandedTableView3DBBandedColumn1: TcxGridDBBandedColumn;
    QuKotaThnNamakota: TStringField;
    cxGridDBTableView8DBColumn1: TcxGridDBColumn;
    QuCustThnNamaCustSupp: TStringField;
    cxGridDBBandedTableView4DBBandedColumn1: TcxGridDBBandedColumn;
    QuCustNamaCustSupp: TStringField;
    cxGridDBTableView13DBColumn1: TcxGridDBColumn;
    procedure FormActivate(Sender: TObject);
    procedure fctreeview1DblClick(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure GetMenuLevel1;
    procedure GetMenuLevel2(KdParent:string);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
      Kode : Integer;
    Nmreport :string;
    { Public declarations }
  end;

var
  FrDasboard: TFrDasboard;
    MyTreeNode1, MyTreeNode2, MyTreeNode3, MyTreeNode4, MyTreeNode5 : TfcTreeNode;
implementation

uses MyModul,Myglobal;

{$R *.dfm}

procedure TFrDasboard.FormActivate(Sender: TObject);
Var I,J : integer;
begin
fctreeview1.Items.Clear;
GetMenuLevel1;
qumenurep1.first;
   while not(QuMenuRep1.eof) do
   begin
      MyTreeNode1 := fctreeview1.Items.Add(nil, qumenurep1.Fieldbyname('nmreport').AsString);
      MyTreeNode1.StringData := qumenurep1.Fieldbyname('access').AsString;
      MyTreeNode1.StringData2 := inttostr(qumenurep1.Fieldbyname('kodereport').Asinteger);

      GetMenuLevel2(qumenurep1.fieldbyname('l1').asstring);
      qumenurep2.First;
      while not(qumenurep2.Eof) do
      begin
         MyTreeNode2 := fctreeview1.Items.AddChild(mytreenode1, qumenurep2.Fieldbyname('nmreport').AsString);
         MyTreeNode2.StringData := qumenurep2.Fieldbyname('access').AsString;
         MyTreeNode2.StringData2 := inttostr(qumenurep2.Fieldbyname('kodereport').Asinteger);
         qumenurep2.next;
      end;
      qumenurep1.next;
   end;
end;

procedure TFrDasboard.GetMenuLevel1;
begin
   with qumenurep1 do
   begin
      close;
      sql.clear;
      sql.add('select * from dbmenudasboard ');
      sql.add('where userid='+quotedstr(iduser)+' and access=1 and l0=1 ');
      sql.add('order by l1 ');
      open;
   end;
end;

procedure TFrDasboard.GetMenuLevel2(KdParent:string);
begin
   with qumenurep2 do
   begin
      close;
      sql.clear;
      sql.add('select * from dbmenudasboard ');
      sql.add('where userid='+quotedstr(iduser)+' and access=1 and l0=2 ');
      sql.add('and l1 like '+#39+KdParent+#37+#39);
      sql.add('order by l1 ');
      open;
   end;
end;

procedure TFrDasboard.fctreeview1DblClick(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
var nama : string;
  Var I,J,a,b,c,d,e,f,g,z,iSeries,iForDo  : integer;

  begin
   image1.Left:=0;
   image1.Top:=0;
   Kode:=StrToInt(Node.StringData2);
   Dm.Qucari.close;
   while Grafik2.SeriesList.Count>0 do
   begin
     Grafik2.RemoveSeries(Grafik2.Series[0]);
   end;
   with quview do
   begin
     case kode of
     101: begin
          PAGE.ActivePageIndex:=0;
           quview.close;
           Quview.open;
           QuCustSales.close;
           QuCustSales.open;
         end;
     102: begin
          PAGE.ActivePageIndex:=1;
           Qutarget.close;
           Qutarget.open;
           QuTargetDet.close;
           QuTargetDet.open;
           with Dm.Qucari do
           begin
             close;
             Sql.Clear;
             Sql.add('select C.Nama,A.KodeSls, '+
            ' A.RpBulan1-isnull(B.RpBulan1Lalu,0) Selisih1,A.RpBulan2-isnull(B.RpBulan2Lalu,0) Selisih2     ,    '+
            ' A.RpBulan3-isnull(B.RpBulan3Lalu,0) Selisih3,A.RpBulan4-isnull(B.RpBulan4Lalu,0) Selisih4   ,      '+
            ' A.RpBulan5-isnull(B.RpBulan5Lalu,0) Selisih5,A.RpBulan6-isnull(B.RpBulan6Lalu,0) Selisih6,         '+
            ' A.RpBulan7-isnull(B.RpBulan7Lalu,0) Selisih7,A.RpBulan8-isnull(B.RpBulan8Lalu,0) Selisih8    ,     '+
            ' A.RpBulan9-isnull(B.RpBulan9Lalu,0) Selisih9,A.RpBulan10-isnull(B.RpBulan10Lalu,0) Selisih10   ,   '+
            ' A.RpBulan11-isnull(B.RpBulan11Lalu,0) Selisih11,A.RpBulan12-isnull(B.RpBulan12Lalu,0) Selisih12    '+
            'from (       '+
            'select A.KodeSLS,   '+
            'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan2,  '+
            'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan4,  '+
            'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan6,   '+
            'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan8,   '+
            'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBulan10,  '+
            'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBulan12  '+
            'from DBSalesCustPrd A       '+
            'where A.Tahun =YEAR(getdate())Group by A.KodeSLS)A     '+
            'left outer join       '+
            '(select A.KodeSLS,    '+
            'Sum(isnull(A.RpBln1,0)) RpBulan1Lalu,Sum(isnull(A.RpBln2,0)) RpBulan2Lalu,  '+
            'Sum(isnull(A.RpBln3,0)) RpBulan3Lalu,Sum(isnull(A.RpBln4,0)) RpBulan4Lalu,   '+
            'Sum(isnull(A.RpBln5,0)) RpBulan5Lalu,Sum(isnull(A.RpBln6,0)) RpBulan6Lalu,  '+
            'Sum(isnull(A.RpBln7,0)) RpBulan7Lalu,Sum(isnull(A.RpBln8,0)) RpBulan8Lalu,  '+
            'Sum(isnull(A.RpBln9,0)) RpBulan9Lalu,Sum(isnull(A.RpBln10,0)) RpBulan10Lalu,  '+
            'Sum(isnull(A.RpBln11,0)) RpBulan11Lalu,Sum(isnull(A.RpBln12,0)) RpBulan12Lalu   '+
            'from DBSalesCustPrd A            '+
            'where A.Tahun =YEAR(getdate())-1 Group by A.KodeSLS   '+
            ' ) B on A.KodeSLS = B.KodeSLS    '+
            ' Left Outer Join DbKaryawan C on A.Kodesls = C.keyNik '+
            ' order by A.kodeSls,C.Nama   ');
             open;

           end;

         end;
     103: begin
          PAGE.ActivePageIndex:=2;
           QutargetThn.close;
           QutargetThn.open;
           QutargetThnDet.close;
           QutargetThnDet.open;
           with Dm.Qucari do
           begin
             close;
             Sql.Clear;
             Sql.add('select C.Nama,B.KeyNik       '+
                     ' ,Isnull(A.RpBulan1,0)-isnull(B.Rp1,0) Selisih1   '+
                     ' ,Isnull(A.RpBulan2,0)-isnull(B.Rp2,0) Selisih2   '+
                     ' ,Isnull(A.RpBulan3,0)-isnull(B.Rp3,0) Selisih3   '+
                     ' ,Isnull(A.RpBulan4,0)-isnull(B.Rp4,0) Selisih4   '+
                     ' ,Isnull(A.RpBulan5,0)-isnull(B.Rp5,0) Selisih5   '+
                     ' ,Isnull(A.RpBulan6,0)-isnull(B.Rp6,0) Selisih6   '+
                     ' ,Isnull(A.RpBulan7,0)-isnull(B.Rp7,0) Selisih7   '+
                     ' ,Isnull(A.RpBulan8,0)-isnull(B.Rp8,0) Selisih8   '+
                     ' ,B.Rp9,Isnull(A.RpBulan9,0)-isnull(B.Rp9,0) Selisih9  '+
                     ' ,Isnull(A.RpBulan10,0)-isnull(B.Rp10,0) Selisih10     '+
                     ' ,Isnull(A.RpBulan11,0)-isnull(B.Rp11,0) Selisih11     '+
                     ' ,B.Rp12,Isnull(A.RpBulan12,0)-isnull(B.Rp12,0) Selisih12  '+
                     ' from DBTARGETSALES B   '+
                     ' left Outer Join (      '+
                     ' select A.KodeSLS,A.Tahun,  '+
                     ' Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan2, '+
                     ' Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan4,  '+
                     ' Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan6,  '+
                     ' Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan8,  '+
                     ' Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBulan10, '+
                     ' Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBulan12  '+
                     ' from DBSalesCustPrd A       '+
                     ' where A.Tahun =YEAR(getdate())Group by A.KodeSLS,A.Tahun)A on A.KodeSLS = B.KeyNik and A.tahun = B.Tahun    '+
                     ' Left Outer Join DbKaryawan C on A.Kodesls = C.keyNik      '+
                     ' where B.Tahun=YEAR(getdate())    order by B.KeyNik,C.Nama    ');

            open;

           end;
         end;
     104: begin
          PAGE.ActivePageIndex:=3;
           QuOmset.close;
           Dm.QuCari.Close;
           Dm.QuCari.Sql.Clear;
           Dm.QuCari.SQL.Text := QuOmset.SQL.Text;
           QuOmset.open;
           Dm.Qucari.Open;
           QuOmsetdet.close;
           QuOmsetdet.open;
         end;
     201: begin
           PAGE.ActivePageIndex:=4;
           QuArea.close;
           QuArea.open;
           QuAreaDet.close;
           QuAreaDet.open;
           with Dm.Qucari do
           begin
             close;
             Sql.Clear; {
             sql.add('select A.kodearea,'''' xx     '+
                  ',A.RpBulan1-B.RpBulan1Lalu Januari,A.RpBulan2-B.RpBulan2Lalu Februari '+
                  ',A.RpBulan3-B.RpBulan3Lalu maret,A.RpBulan4-B.RpBulan4Lalu April '+
                  ',A.RpBulan5-B.RpBulan5Lalu Mei,A.RpBulan6-B.RpBulan6Lalu Juni '+
                  ',A.RpBulan7-B.RpBulan7Lalu Juli,A.RpBulan8-B.RpBulan8Lalu Agustus '+
                  ',A.RpBulan9-B.RpBulan9Lalu September,A.RpBulan10-B.RpBulan10Lalu Oktober '+
                  ',A.RpBulan11-B.RpBulan11Lalu November,A.RpBulan12-B.RpBulan12Lalu Desember  '+
                  'from (     '+
                  'select A.KodeArea,   '+
                  'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan2,  '+
                  'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan4,   '+
                  'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan6,  '+
                  'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan8,  '+
                  'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBulan10, '+
                  'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBulan12  '+
                  'from dbareakotaprd A   '+
                  'where A.Tahun =YEAR(getdate())Group by A.KodeArea)A   '+
                  'left outer join   '+
                  '(select A.KodeArea,  '+
                  'Sum(isnull(A.RpBln1,0)) RpBulan1Lalu,Sum(isnull(A.RpBln2,0)) RpBulan2Lalu,   '+
                  'Sum(isnull(A.RpBln3,0)) RpBulan3Lalu,Sum(isnull(A.RpBln4,0)) RpBulan4Lalu,   '+
                  'Sum(isnull(A.RpBln5,0)) RpBulan5Lalu,Sum(isnull(A.RpBln6,0)) RpBulan6Lalu,   '+
                  'Sum(isnull(A.RpBln7,0)) RpBulan7Lalu,Sum(isnull(A.RpBln8,0)) RpBulan8Lalu,   '+
                  'Sum(isnull(A.RpBln9,0)) RpBulan9Lalu,Sum(isnull(A.RpBln10,0)) RpBulan10Lalu,  '+
                  'Sum(isnull(A.RpBln11,0)) RpBulan11Lalu,Sum(isnull(A.RpBln12,0)) RpBulan12Lalu  '+
                  'from dbareakotaprd A  '+
                  'where A.Tahun =YEAR(getdate())-1 Group by A.KodeArea  '+
                  ') B on A.KodeArea = B.KodeArea');   }

                sql.add(' select A.KOdearea,B.NamaArea    ,A.RpBulan1 Januari,A.RpBulan2 Februari,A.RpBulan3 Maret,A.RpBulan4 April,A.RpBulan5 Mei, '+
                  ' A.RpBulan6 Juni,A.RpBulan7 Juli,A.RpBulan8 Agustus,A.RpBulan9 September,A.RpBulan10 Okteober, '+
                  ' A.RpBulan11 November,A.RpBulan12 Desember '+
                  ' from ( '+
                  ' select A.KodeArea, '+
                  ' Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan2, '+
                  ' Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan4, '+
                  ' Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan6, '+
                  ' Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan8, '+
                  ' Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBulan10, '+
                  ' Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBulan12 '+
                  ' from dbareakotaprd A where A.Tahun =YEAR(getdate())Group by A.KodeArea ) A'+
                  ' Left Outer Join DbArea B on A.kodeArea = B.KodeArea Order By A.KodeArea,B.NamaArea');
             open;
           end;
         end;
     202: begin
           PAGE.ActivePageIndex:=5;
           QuAreaThn.close;
           QuAreaThn.open;
           QuAreaThndet.close;
           QuAreaThndet.open;
            with Dm.Qucari do
           begin
             close;
             Sql.Clear;
             sql.add('select A.KodeArea,B.namaArea,  '+
              'Sum(isnull(A.RpBln1,0)) Januari,Sum(isnull(A.RpBln2,0)) Februari, '+
              'Sum(isnull(A.RpBln3,0)) maret,Sum(isnull(A.RpBln4,0)) April,  '+
              'Sum(isnull(A.RpBln5,0)) Mei,Sum(isnull(A.RpBln6,0)) Juni,  '+
              'Sum(isnull(A.RpBln7,0)) Juli,Sum(isnull(A.RpBln8,0)) Agustus,  '+
              'Sum(isnull(A.RpBln9,0)) September,Sum(isnull(A.RpBln10,0)) Oktober, '+
              'Sum(isnull(A.RpBln11,0)) November,Sum(isnull(A.RpBln12,0)) Desember '+
              'from dbareakotaprd A   '+
              ' left Outer Join Dbarea B On A.KOdeArea = B.KodeArea  '+
              'where A.Tahun =YEAR(getdate())Group by A.KodeArea,B.NamaArea  ');
             open;
           end;
         end;
     301: begin
           PAGE.ActivePageIndex:=6;
           QuKota.close;
           QuKota.open;
           QuKotadet.close;
           QuKotadet.open;
           with Dm.qucari do
           begin
             Close;
             Sql.Clear;
             Sql.Add('select A.KodeKota,C.NamaKOta '+
                ',isnull(A.RpBulan1,0)-isnull(B.RpBulan1Lalu,0) Januari,isnull(A.RpBulan2,0)-isnull(B.RpBulan2Lalu,0) Februari    '+
                ',isnull(A.RpBulan3,0)-isnull(B.RpBulan3Lalu,0) Maret,isnull(A.RpBulan4,0)-isnull(B.RpBulan4Lalu,0) April   '+
                ',isnull(A.RpBulan5,0)-isnull(B.RpBulan5Lalu,0) Mei,isnull(A.RpBulan6,0)-isnull(B.RpBulan6Lalu,0) Juni    '+
                ',isnull(A.RpBulan7,0)-isnull(B.RpBulan7Lalu,0) Juli,isnull(A.RpBulan8,0)-isnull(B.RpBulan8Lalu,0) Agustus   '+
                ',isnull(A.RpBulan9,0)-isnull(B.RpBulan9Lalu,0) September,isnull(A.RpBulan10,0)-isnull(B.RpBulan10Lalu,0) Oktober '+
                ',isnull(A.RpBulan11,0)-isnull(B.RpBulan11Lalu,0) November,isnull(A.RpBulan12,0)-isnull(B.RpBulan12Lalu,0) Desember '+
                'from (    '+
                'select A.KodeKota,   '+
                'Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan2, '+
                'Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan4, '+
                'Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan6,  '+
                'Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan8,   '+
                'Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBulan10, '+
                'Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBulan12  '+
                'from dbareakotaprd A     '+
                'where A.Tahun =YEAR(getdate())Group by A.KodeKota)A  '+
                'left outer join    '+
                '(select A.KodeKota,    '+
                'Sum(isnull(A.RpBln1,0)) RpBulan1Lalu,Sum(isnull(A.RpBln2,0)) RpBulan2Lalu, '+
                'Sum(isnull(A.RpBln3,0)) RpBulan3Lalu,Sum(isnull(A.RpBln4,0)) RpBulan4Lalu, '+
                'Sum(isnull(A.RpBln5,0)) RpBulan5Lalu,Sum(isnull(A.RpBln6,0)) RpBulan6Lalu, '+
                'Sum(isnull(A.RpBln7,0)) RpBulan7Lalu,Sum(isnull(A.RpBln8,0)) RpBulan8Lalu,  '+
                'Sum(isnull(A.RpBln9,0)) RpBulan9Lalu,Sum(isnull(A.RpBln10,0)) RpBulan10Lalu, '+
                'Sum(isnull(A.RpBln11,0)) RpBulan11Lalu,Sum(isnull(A.RpBln12,0)) RpBulan12Lalu '+
                'from dbareakotaprd A     '+
                'where A.Tahun =YEAR(getdate())-1 Group by A.KodeKota   '+
                ') B on A.KodeKota = B.KodeKota '+
                ' Left Outer Join DbKota C on A.KOdeKota = C.KodeKOta Order BY A.Kodekota,C.NamaKota');
                Open;
           end;
         end;
     302: begin
           PAGE.ActivePageIndex:=7;
           QuKotathn.close;
           Dm.QuCari.Close;
           Dm.QuCari.Sql.Clear;
           Dm.QuCari.SQL.Text := QuKotathn.SQL.Text;
           QuKotathn.open;
           Dm.QuCari.Open;
           QuKotathnDet.close;
           QuKotathnDet.open;

         end;
     701: begin
           PAGE.ActivePageIndex:=8;
           QuStock.close;
           Dm.Qucari.Close;
           Dm.QuCari.Sql.Clear;
           Dm.QuCari.SQL.Text:=QuStock.SQL.Text;
           DM.QuCari.Open;
           QuStock.open;

         end;
     401: begin
           PAGE.ActivePageIndex:=9;
           QuCustThn.close;
           QuCustThn.open;
           with Dm.Qucari do
           begin
             Close;
             Sql.Clear;
             Sql.add('declare @tahun Integer     '+
                      '  select @Tahun=year(getdate())   '+
                      '  select A.KodeCustSupp,C.NamaCustSupp      '+
                      '  ,isnull(A.RpBulan1,0)-isnull(B.RpBulan1Lalu,0) Januari,isnull(A.RpBulan2,0)-isnull(B.RpBulan2Lalu,0) Februari  '+
                      '  ,isnull(A.RpBulan3,0)-isnull(B.RpBulan3Lalu,0) Maret,isnull(A.RpBulan4,0)-isnull(B.RpBulan4Lalu,0) April    '+
                      '  ,isnull(A.RpBulan5,0)-isnull(B.RpBulan5Lalu,0) Mei,isnull(A.RpBulan6,0)-isnull(B.RpBulan6Lalu,0) Juni  '+
                      '  ,isnull(A.RpBulan7,0)-isnull(B.RpBulan7Lalu,0) Juli,isnull(A.RpBulan8,0)-isnull(B.RpBulan8Lalu,0) Agustus   '+
                      '  ,isnull(A.RpBulan9,0)-isnull(B.RpBulan9Lalu,0) September,isnull(A.RpBulan10,0)-isnull(B.RpBulan10Lalu,0) Oktober  '+
                      '  ,isnull(A.RpBulan11,0)-isnull(B.RpBulan11Lalu,0) Noovember,isnull(A.RpBulan12,0)-isnull(B.RpBulan12Lalu,0) Desember '+
                      '  from (          '+
                      '  select A.KodeCustSupp,   '+
                      '  Sum(isnull(A.RpBln1,0)) RpBulan1,Sum(isnull(A.RpBln2,0)) RpBulan2,      '+
                      '  Sum(isnull(A.RpBln3,0)) RpBulan3,Sum(isnull(A.RpBln4,0)) RpBulan4,    '+
                      '  Sum(isnull(A.RpBln5,0)) RpBulan5,Sum(isnull(A.RpBln6,0)) RpBulan6,   '+
                       ' Sum(isnull(A.RpBln7,0)) RpBulan7,Sum(isnull(A.RpBln8,0)) RpBulan8,   '+
                       ' Sum(isnull(A.RpBln9,0)) RpBulan9,Sum(isnull(A.RpBln10,0)) RpBulan10,   '+
                       ' Sum(isnull(A.RpBln11,0)) RpBulan11,Sum(isnull(A.RpBln12,0)) RpBulan12  '+
                       ' from DBSalesCustPrd A                 '+
                       ' where A.Tahun =YEAR(getdate())Group by A.KodeCustSupp)A       '+
                       ' left outer join    '+
                       ' (select A.KodeCustSupp,         '+
                       ' Sum(isnull(A.RpBln1,0)) RpBulan1Lalu,Sum(isnull(A.RpBln2,0)) RpBulan2Lalu,    '+
                       ' Sum(isnull(A.RpBln3,0)) RpBulan3Lalu,Sum(isnull(A.RpBln4,0)) RpBulan4Lalu,   '+
                       ' Sum(isnull(A.RpBln5,0)) RpBulan5Lalu,Sum(isnull(A.RpBln6,0)) RpBulan6Lalu,  '+
                       ' Sum(isnull(A.RpBln7,0)) RpBulan7Lalu,Sum(isnull(A.RpBln8,0)) RpBulan8Lalu,   '+
                       ' Sum(isnull(A.RpBln9,0)) RpBulan9Lalu,Sum(isnull(A.RpBln10,0)) RpBulan10Lalu,    '+
                       ' Sum(isnull(A.RpBln11,0)) RpBulan11Lalu,Sum(isnull(A.RpBln12,0)) RpBulan12Lalu    '+
                       ' from DBSalesCustPrd A     '+
                       ' where A.Tahun =YEAR(getdate())-1 Group by A.KodeCustSupp    '+
                       ' ) B on A.KodeCustSupp = B.KodeCustSupp '+
                       ' Left Outer Join DbCustSupp C on A.KodeCustSupp = C.KOdeCustSupp Order by A.KodeCustSUPP,C.NamaCustSupp');

              open;
           end;
         end;
     402: begin
           PAGE.ActivePageIndex:=10;
           QuCustThn.close;
           QuCustThn.open;
           with Dm.Qucari do
           begin
            Close;
            Sql.Clear;
            Sql.add('declare @tahun Integer              '+
                    '  select @Tahun=year(getdate())    '+
                    '  select A.KodeCustSupp,B.NamaCustSupp,          '+
                    '  Sum(isnull(A.RpBln1,0)) Januari,Sum(isnull(A.RpBln2,0)) Februari,    '+
                    '  Sum(isnull(A.RpBln3,0)) Maret,Sum(isnull(A.RpBln4,0)) April,   '+
                    '  Sum(isnull(A.RpBln5,0)) Mei,Sum(isnull(A.RpBln6,0)) Juni,      '+
                    '  Sum(isnull(A.RpBln7,0)) Juli,Sum(isnull(A.RpBln8,0)) Agustus,  '+
                    '  Sum(isnull(A.RpBln9,0)) September,Sum(isnull(A.RpBln10,0)) Oktober,  '+
                    '  Sum(isnull(A.RpBln11,0))November,Sum(isnull(A.RpBln12,0)) Desember   '+
                    '  from DBSalesCustPrd A     '+
                    '  Left Outer join DbCustSupp B On A.KodeCustSupp = B.KodeCustSupp '+
                    '  where A.Tahun =YEAR(getdate())Group by A.KodeCustSupp,B.namaCustSupp '+
                    ' Order by A.KodecustSupp,B.namaCustSupp');
            open;
           end;
         end;
     end;
   end;

   case kode of
   102,103,104,302,201,202,301,401,402,701:
       begin
         iSeries:=0;
         Dm.QuCari.First;

         while not Dm.QuCari.Eof do
         begin
           Grafik2.AddSeries(TLineSeries.Create(Self));
           for iForDo := 2 to Dm.QuCari.FieldCount-1 do
           begin
             Grafik2.Series[iSeries].Add(Dm.QuCari.Fields[iForDo].AsFloat,
               Dm.QuCari.Fields[iForDo].FieldName);
            // Grafik2.Series[iSeries].Marks.Visible:=True;
             //Grafik2.Series[iSeries].Marks.visible:=true;
            // case kode of
            // 301:grafik2.Series[iSeries].XLabelsSource :=FloatToStr(Dm.QuCari.Fields[iForDo].AsFloat);
            // end;
           end;
           (Grafik2.Series[iSeries] as TLineSeries).LinePen.Width:=2;
           case kode of
           102,103,104:(Grafik2.Series[iSeries] as TLineSeries).Title:=Dm.QuCari.Fieldbyname('Nama').AsString;
           201,202:(Grafik2.Series[iSeries] as TLineSeries).Title:=Dm.QuCari.Fieldbyname('NamaArea').AsString;
           301,302:(Grafik2.Series[iSeries] as TLineSeries).Title:=Dm.QuCari.Fieldbyname('Namakota').AsString;
           401,402:(Grafik2.Series[iSeries] as TLineSeries).Title:=Dm.QuCari.Fieldbyname('NamaCustSupp').AsString;
           701:(Grafik2.Series[iSeries] as TLineSeries).Title:=Dm.QuCari.Fieldbyname('NamaBrg').AsString;
           end;

           iSeries:=iSeries+1;
           Grafik2.View3D:=false;

           Dm.QuCari.Next;
         end;

         if Dm.Qucari.IsEmpty then panel8.Visible:=false
         else panel8.Visible:=true;

       end;
   101:begin
        panel8.Visible:=False;
       end;
   end;
   with dm.qucari do
   begin
      close;
      sql.clear;
      sql.add('select * from dbmenudasboard where Kodereport=:0');
      Parameters[0].Value:=node.StringData2;
      open;
      PAGE.ActivePage.Caption:=fieldbyname('nmreport').AsString;
      Grafik2.Title.Text.Clear;
      Grafik2.Title.Text.Add(fieldbyname('nmreport').AsString);
   end;
 end;



procedure TFrDasboard.Panel3Click(Sender: TObject);
begin
if panel1.Width>257 then
   panel1.Width:=257
else if panel1.Width<=257 then
   begin
   panel1.Width:=22;
   panel4.Caption:='>|';
   end;


end;

procedure TFrDasboard.Panel4Click(Sender: TObject);
begin
  if panel4.caption='>|' then
     begin
     panel4.Caption:='Menu Dasboard';
     panel1.Width:=257;
     end
end;

procedure TFrDasboard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrDasboard.FormDestroy(Sender: TObject);
begin
  FrDasboard:=nil;
end;

procedure TFrDasboard.CheckBox1Click(Sender: TObject);
begin
panel8.Visible:=CheckBox1.Checked;
if Page.Visible = true then
  begin
  page.Align:=Alclient ;
  panel8.Align:=alBottom ;
  panel8.Height:=300;
  end
else
  panel8.Align:=alClient;
end;

procedure TFrDasboard.CheckBox2Click(Sender: TObject);
begin
   PAGE.Visible:=CheckBox2.Checked;
   if page.visible=true then
     begin
     panel8.Align:=alBottom ;
     panel8.Height:=300;
     page.Align:=Alclient ;
     end
   else
     begin
     panel8.Align:=Alclient ;

     end;
end;

procedure TFrDasboard.Image1Click(Sender: TObject);
begin
  with TPrintDialog.Create(nil) do
    try
      if Execute then
        Grafik2.Print;
    finally
      Free;
    end;
end;

end.
