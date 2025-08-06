CREATE TABLE [dbo].[DBInvoicePLLampiran](
	[Nobukti] [varchar](30) NOT NULL,
	[Urut] [int] NOT NULL,
	[Keterangan] [varchar](8000) NOT NULL,
	[KodeVls] [varchar](15) NOT NULL,
	[Kurs] [numeric](18, 2) NOT NULL,
	[Qnt] [numeric](18, 2) NOT NULL,
	[Qnt2] [numeric](18, 2) NOT NULL,
	[Nosat] [tinyint] NOT NULL,
	[Sat_1] [varchar](5) NOT NULL,
	[Sat_2] [varchar](5) NOT NULL,
	[Harga] [numeric](18, 2) NOT NULL,
	[NNet]  AS ([Qnt]*[Harga]),
	[NNetRp]  AS (([Qnt]*[Harga])*[Kurs]),
 CONSTRAINT [PK_DBInvoicePLLampiran] PRIMARY KEY CLUSTERED 
(
	[Nobukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPajakMasuk](
	[NoBukti] [varchar](30) NOT NULL,
	[Urut] [int] NOT NULL,
	[NOFPJ] [varchar](50) NOT NULL,
	[TGLFPJ] [datetime] NULL,
	[NPPn] [numeric](18, 2) NOT NULL,
	[TglLaporFPJ] [datetime] NULL,
	[TipePPh] [tinyint] NOT NULL,
	[NoPPh] [varchar](50) NOT NULL,
	[TglPPh] [datetime] NULL,
	[nPPh] [numeric](18, 2) NOT NULL,
	[TglLaporPPh] [datetime] NULL,
	[NPWP] [varchar](50) NOT NULL,
	[NamaPKP] [varchar](100) NOT NULL,
	[AlamatPKP1] [varchar](100) NOT NULL,
	[AlamatPKP2] [varchar](100) NOT NULL,
	[KotaPKP] [varchar](100) NOT NULL,
	[MyID] [timestamp] NULL,
	[UrutTrans] [int] NOT NULL,
 CONSTRAINT [PK_DBPajakMasuk] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBRBELIDET](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [smallint] NOT NULL,
	[KODEBRG] [varchar](25) NULL,
	[PPN] [tinyint] NULL,
	[KURS] [numeric](18, 2) NOT NULL,
	[DISC] [float] NULL,
	[QNT] [numeric](18, 2) NULL,
	[NOSAT] [tinyint] NULL,
	[SATUAN] [varchar](5) NULL,
	[ISI] [numeric](18, 2) NULL,
	[HARGA] [numeric](18, 6) NULL,
	[DISCP] [numeric](18, 2) NULL,
	[DISCTOT] [numeric](18, 2) NULL,
	[BYANGKUT] [numeric](18, 2) NULL,
	[NOPBL] [varchar](20) NULL,
	[URUTPBL] [int] NULL,
	[Qnt2] [numeric](18, 2) NULL,
	[Qnt1] [numeric](18, 2) NULL,
	[HPP] [numeric](18, 2) NULL,
	[HRGNETTO]  AS ([HARGA]-[DISCTOT]),
	[NDISKON]  AS (([Qnt]*([Harga]-[DISCTOT]))*([DISC]/(100))),
	[SUBTOTAL]  AS ([Qnt]*([HARGA]-[DiscTot])),
	[NDPP]  AS (case when [ppn]=(1) OR [ppn]=(0) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end),
	[NPPN]  AS (case when [ppn]=(1) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*(0.1)),
	[SUBTOTALRp]  AS (([Qnt]*([HARGA]-[Disctot]))*[Kurs]),
	[NDPPRp]  AS (case when [ppn]=(1) OR [ppn]=(0) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*[Kurs]),
	[NPPNRp]  AS ((case when [ppn]=(1) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*(0.1))*[Kurs]),
	[DiscP2] [numeric](18, 2) NULL,
	[DiscP3] [numeric](18, 2) NULL,
	[DiscP4] [numeric](18, 2) NULL,
	[DiscP5] [numeric](18, 2) NULL,
	[PPhP] [numeric](18, 2) NULL,
	[NPPHRP]  AS ((([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))*[PPhP])/(100)),
	[NPPH]  AS ((([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))*[PPhP])/(100)),
	[NNET]  AS (case when [ppn]=(1) OR [ppn]=(0) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end+(case when [ppn]=(1) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*(0.1)+([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))*(isnull([PPhP],(0))/(100)))),
	[NNETRP]  AS (((case when [ppn]=(1) OR [ppn]=(0) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end+case when [ppn]=(1) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*(0.1))+([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))*(isnull([PPhP],(0))/(100)))*[Kurs]),
 CONSTRAINT [PK_DBRBELIDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbSPBLampiran](
	[Urut] [int] NOT NULL,
	[NoSPB] [varchar](30) NOT NULL,
	[UrutSPB] [int] NOT NULL,
	[NOPALLET] [varchar](200) NOT NULL,
	[NOROLL] [varchar](200) NOT NULL,
	[NOLOT] [varchar](200) NOT NULL,
	[Sat_1] [varchar](5) NOT NULL,
	[Sat_2] [varchar](5) NOT NULL,
	[Qnt] [numeric](18, 2) NOT NULL,
	[Qnt2] [numeric](18, 2) NOT NULL,
	[Nosat] [tinyint] NOT NULL,
	[Isi] [numeric](18, 2) NOT NULL,
	[Keterangan] [varchar](200) NOT NULL,
	[NetW] [numeric](18, 2) NOT NULL,
	[GrossW] [numeric](18, 2) NOT NULL,
	[HPP] [numeric](18, 2) NOT NULL,
	[MyID] [timestamp] NULL,
 CONSTRAINT [PK_dbSPBLampiran] PRIMARY KEY CLUSTERED 
(
	[Urut] ASC,
	[NoSPB] ASC,
	[UrutSPB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBELI](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NOURUT] [varchar](10) NULL,
	[TANGGAL] [datetime] NULL,
	[TglJatuhTempo] [datetime] NULL,
	[KODESUPP] [varchar](15) NULL,
	[NoPOHd] [varchar](25) NULL,
	[KodeGdgHd] [varchar](20) NULL,
	[HANDLING] [numeric](18, 2) NULL,
	[KETERANGAN] [varchar](200) NULL,
	[FAKTURSUPP] [varchar](50) NULL,
	[KODEVLS] [varchar](15) NULL,
	[KURS] [numeric](18, 2) NULL,
	[PPN] [tinyint] NULL,
	[TIPEBAYAR] [tinyint] NULL,
	[HARI] [int] NULL,
	[TipeDisc] [tinyint] NULL,
	[DISC] [float] NULL,
	[DISCRP] [numeric](18, 2) NULL,
	[NILAIPOT] [numeric](18, 2) NULL,
	[NILAIDPP] [numeric](18, 0) NULL,
	[NILAIPPN] [numeric](18, 0) NULL,
	[NILAINET] [numeric](18, 0) NULL,
	[ISCETAK] [bit] NULL,
	[NilaiCetak] [int] NULL,
	[IsBatal] [bit] NULL,
	[UserBatal] [varchar](15) NULL,
	[KodeExp] [varchar](20) NULL,
	[cetakke] [smallint] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NOT NULL,
	[TglBatal] [datetime] NULL,
	[Flagtipe] [tinyint] NULL,
	[KETERANGAN1] [varchar](200) NULL,
 CONSTRAINT [PK_DBBELI] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbTransaksi](
	[NoBukti] [varchar](30) NOT NULL,
	[Tanggal] [datetime] NULL,
	[Devisi] [varchar](15) NOT NULL,
	[Note] [varchar](500) NOT NULL,
	[Lampiran] [numeric](18, 0) NOT NULL,
	[Perkiraan] [varchar](25) NOT NULL,
	[Lawan] [varchar](25) NOT NULL,
	[Keterangan] [varchar](8000) NOT NULL,
	[Keterangan2] [varchar](8000) NOT NULL,
	[Debet] [numeric](18, 2) NOT NULL,
	[Kredit] [numeric](18, 2) NOT NULL,
	[Valas] [varchar](15) NOT NULL,
	[Kurs] [numeric](18, 4) NOT NULL,
	[DebetRp] [numeric](18, 2) NOT NULL,
	[KreditRp] [numeric](18, 2) NOT NULL,
	[TipeTrans] [varchar](3) NOT NULL,
	[TPHC] [varchar](1) NOT NULL,
	[CustSuppP] [varchar](15) NOT NULL,
	[CustSuppL] [varchar](15) NOT NULL,
	[Urut] [int] NOT NULL,
	[KodeP] [varchar](15) NOT NULL,
	[KodeL] [varchar](15) NOT NULL,
	[NoAktivaP] [varchar](30) NOT NULL,
	[NoAktivaL] [varchar](30) NOT NULL,
	[StatusAktivaP] [varchar](5) NOT NULL,
	[StatusAktivaL] [varchar](5) NOT NULL,
	[Nobon] [varchar](20) NOT NULL,
	[KodeBag] [varchar](30) NULL,
	[StatusGiro] [varchar](2) NOT NULL,
	[MyID] [timestamp] NULL,
	[FlagSimbol] [varchar](2) NULL,
 CONSTRAINT [PK_dbTransaksi] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPenyerahanBhnDET](
	[Nobukti] [varchar](30) NOT NULL,
	[urut] [int] NOT NULL,
	[NoSPK] [varchar](25) NOT NULL,
	[UrutSPK] [int] NOT NULL,
	[NoSatSPK] [tinyint] NULL,
	[kodebrg] [varchar](25) NOT NULL,
	[Sat] [varchar](5) NOT NULL,
	[Nosat] [tinyint] NOT NULL,
	[Isi] [numeric](18, 2) NOT NULL,
	[Qnt] [numeric](18, 2) NOT NULL,
	[Qnt2] [numeric](18, 2) NULL,
	[HPP] [float] NULL,
	[Keterangan] [varchar](2000) NULL,
	[TglInput] [datetime] NULL,
 CONSTRAINT [PK_DBPenyerahanbrgDET] PRIMARY KEY CLUSTERED 
(
	[Nobukti] ASC,
	[urut] ASC,
	[NoSPK] ASC,
	[UrutSPK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBRPenyerahanBhnDET](
	[Nobukti] [varchar](30) NOT NULL,
	[urut] [int] NOT NULL,
	[kodebrg] [varchar](25) NOT NULL,
	[Sat] [varchar](5) NOT NULL,
	[Nosat] [tinyint] NOT NULL,
	[Isi] [numeric](18, 2) NOT NULL,
	[Qnt] [numeric](18, 2) NOT NULL,
	[Qnt2] [numeric](18, 2) NULL,
	[HPP] [float] NULL,
	[NoPenyerahanBHN] [varchar](30) NOT NULL,
	[UrutPenyerahanBHN] [int] NOT NULL,
	[Keterangan] [varchar](2000) NULL,
 CONSTRAINT [PK_DBRPenyerahanbrgDET] PRIMARY KEY CLUSTERED 
(
	[Nobukti] ASC,
	[urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSODET](
	[NOBUKTI] [varchar](30) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NOT NULL,
	[TGLKIRIM] [datetime] NULL,
	[PPN] [tinyint] NOT NULL,
	[DISC] [float] NOT NULL,
	[KURS] [numeric](18, 2) NOT NULL,
	[QNT] [numeric](18, 2) NOT NULL,
	[QNT2] [numeric](18, 2) NULL,
	[QNTBATAL] [numeric](18, 2) NOT NULL,
	[TGLBATAL] [datetime] NULL,
	[NOSAT] [tinyint] NOT NULL,
	[SATUAN] [varchar](5) NOT NULL,
	[ISI] [numeric](18, 2) NOT NULL,
	[HARGA] [numeric](18, 10) NOT NULL,
	[HPP] [numeric](18, 2) NOT NULL,
	[DISCP1] [numeric](18, 2) NULL,
	[DISCRP1] [numeric](18, 4) NULL,
	[DISCTOT] [numeric](18, 2) NOT NULL,
	[BYANGKUT] [numeric](18, 2) NULL,
	[HRGNETTO]  AS ([HARGA]-[DISCTOT]),
	[NDISKON]  AS ((case when [nosat]=(1) then [Qnt] when [NOSAT]=(2) then [QNT2] else (0) end*([Harga]-[DISCTOT]))*([DISC]/(100))),
	[SUBTOTAL]  AS (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DiscTot])),
	[SUBTOTALRp]  AS ((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[Disctot]))*[Kurs]),
	[NOSPB] [varchar](20) NULL,
	[UrutSPB] [int] NOT NULL,
	[Qnt3] [numeric](18, 2) NULL,
	[QntSisaSO] [numeric](18, 2) NULL,
	[Qnt2SisaSO] [numeric](18, 2) NULL,
	[QntSJln] [numeric](18, 2) NULL,
	[Qnt2SJln] [numeric](18, 2) NULL,
	[IsCetakKitir] [bit] NOT NULL,
	[DiscP2] [numeric](18, 2) NULL,
	[DiscP3] [numeric](18, 2) NULL,
	[DiscP4] [numeric](18, 2) NULL,
	[DiscP5] [numeric](18, 2) NULL,
	[IsCloseDet] [bit] NULL,
	[IsHSO] [bit] NULL,
	[IsLockMkt] [bit] NULL,
	[IsUpdate] [bit] NULL,
	[isReprosesRevisi] [bit] NULL,
	[PPnP] [numeric](18, 2) NULL,
	[NPPN]  AS (case when [PPN]=(0) then (0) when [PPN]=(1) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))*([ppnp]/(100)) when [PPN]=(2) then (((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/((1)+[ppnp]/(100)))*([ppnp]/(100))  end),
	[NPPNRp]  AS (case when [PPN]=(0) then (0) when [PPN]=(1) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))*([ppnp]/(100)) when [PPN]=(2) then (((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/((1)+[ppnp]/(100)))*([ppnp]/(100))  end*[Kurs]),
	[NNET]  AS (case when [PPN]=(0) then (case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100) when [PPN]=(1) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))+((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))*([ppnp]/(100)) when [PPN]=(2) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/((1)+[ppnp]/(100))+(((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/((1)+[ppnp]/(100)))*([ppnp]/(100))  end),
	[NNETRp]  AS (case when [PPN]=(0) then (case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100) when [PPN]=(1) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))+((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))*([ppnp]/(100)) when [PPN]=(2) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/((1)+[ppnp]/(100))+(((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/((1)+[ppnp]/(100)))*([ppnp]/(100))  end*[Kurs]),
	[NDPP]  AS (case when [PPN]=(0) OR [PPN]=(1) then (case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100) when [PPN]=(2) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/((1)+[ppnp]/(100))  end),
	[NDPPRp]  AS (case when [PPN]=(0) OR [PPN]=(1) then (case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100) when [PPN]=(2) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/((1)+[ppnp]/(100))  end*[Kurs]),
 CONSTRAINT [PK_DBSODET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBUBAHKEMASANDET](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NOT NULL,
	[KodeGdg] [varchar](15) NOT NULL,
	[SATUAN] [varchar](5) NOT NULL,
	[NOSAT] [tinyint] NOT NULL,
	[ISI] [numeric](18, 2) NOT NULL,
	[QNTDB] [numeric](18, 2) NOT NULL,
	[QNTCR] [numeric](18, 2) NOT NULL,
	[HARGA] [numeric](18, 2) NOT NULL,
	[HPP] [float] NOT NULL,
	[HPP2] [float] NOT NULL,
	[QntPRSI] [numeric](18, 0) NULL,
	[QntPRSO] [numeric](18, 0) NULL,
	[HrgPRSI] [numeric](18, 0) NULL,
	[HrgPRSO] [numeric](18, 0) NULL,
	[HargaIn] [numeric](18, 2) NOT NULL,
	[tglInput] [datetime] NULL,
	[UserID] [varchar](15) NULL,
 CONSTRAINT [PK_dbUBAHKEMASANDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBKOREKSIDET](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NULL,
	[KODEGDG] [varchar](15) NULL,
	[SATUAN] [varchar](5) NULL,
	[NOSAT] [tinyint] NULL,
	[ISI] [numeric](18, 2) NULL,
	[SaldoComp] [numeric](18, 2) NULL,
	[QntOpname] [numeric](18, 2) NULL,
	[Selisih] [numeric](18, 2) NULL,
	[QNTDB] [numeric](18, 2) NULL,
	[QNTCR] [numeric](18, 2) NULL,
	[HARGA] [float] NULL,
	[HPP] [float] NULL,
	[keterangan] [varchar](100) NULL,
	[Saldo2Comp] [numeric](18, 2) NULL,
	[Qnt2Opname] [numeric](18, 2) NULL,
	[Selisih2] [numeric](18, 2) NULL,
	[Qnt2DB] [numeric](18, 2) NULL,
	[Qnt2CR] [numeric](18, 2) NULL,
	[IsCek] [bit] NULL,
	[IsCek2] [bit] NULL,
 CONSTRAINT [PK_dbKOREKSIDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBKOREKSI](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NOURUT] [varchar](10) NOT NULL,
	[TANGGAL] [datetime] NULL,
	[KodeGdg] [varchar](15) NULL,
	[NOTE] [varchar](200) NULL,
	[IsCetak] [bit] NULL,
	[NilaiCetak] [int] NULL,
	[IsOtorisasi1] [bit] NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[DBKOREKSI] ADD [OtoUser1] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [TglOto1] [datetime] NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [IsOtorisasi2] [bit] NOT NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [OtoUser2] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [TglOto2] [datetime] NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [IsOtorisasi3] [bit] NOT NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [OtoUser3] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [TglOto3] [datetime] NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [IsOtorisasi4] [bit] NOT NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [OtoUser4] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [TglOto4] [datetime] NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [IsOtorisasi5] [bit] NOT NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [OtoUser5] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [TglOto5] [datetime] NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [NoJurnal] [varchar](30) NOT NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [NoUrutJurnal] [varchar](5) NOT NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [TglJurnal] [datetime] NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [MaxOL] [int] NOT NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD [FlagTipe] [tinyint] NULL
ALTER TABLE [dbo].[DBKOREKSI] ADD  CONSTRAINT [PK_dbKOREKSI] PRIMARY KEY NONCLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
ALTER TABLE [dbo].[DBKOREKSI] ADD  CONSTRAINT [IX_dbKOREKSI] UNIQUE CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBRPenyerahanBhn](
	[Nobukti] [varchar](30) NOT NULL,
	[Nourut] [varchar](5) NOT NULL,
	[Tanggal] [datetime] NULL,
	[Kodegdg] [varchar](15) NOT NULL,
	[NoPenyerahanBhn] [varchar](30) NULL,
	[IsOtorisasi1] [bit] NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [OtoUser1] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [TglOto1] [datetime] NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [IsOtorisasi2] [bit] NOT NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [OtoUser2] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [TglOto2] [datetime] NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [IsOtorisasi3] [bit] NOT NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [OtoUser3] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [TglOto3] [datetime] NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [IsOtorisasi4] [bit] NOT NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [OtoUser4] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [TglOto4] [datetime] NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [IsOtorisasi5] [bit] NOT NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [OtoUser5] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [TglOto5] [datetime] NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [NoJurnal] [varchar](30) NOT NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [NoUrutJurnal] [varchar](5) NOT NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [TglJurnal] [datetime] NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [MaxOL] [int] NOT NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [IsSampel] [bit] NOT NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD [FlagTipe] [tinyint] NULL
ALTER TABLE [dbo].[DBRPenyerahanBhn] ADD  CONSTRAINT [PK_DBRPenyerahanBhn] PRIMARY KEY CLUSTERED 
(
	[Nobukti] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPenyerahanBhn](
	[Nobukti] [varchar](30) NOT NULL,
	[Nourut] [varchar](6) NOT NULL,
	[Tanggal] [datetime] NULL,
	[Kodegdg] [varchar](15) NOT NULL,
	[NoBPPB] [varchar](50) NULL,
	[cetakke] [smallint] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](6) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NOT NULL,
	[IsSampel] [bit] NOT NULL,
	[Flagtipe] [tinyint] NULL,
	[Perkiraan] [varchar](10) NULL,
 CONSTRAINT [PK_DBPenyerahanBhn] PRIMARY KEY CLUSTERED 
(
	[Nobukti] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSPK](
	[NOBUKTI] [varchar](30) NOT NULL,
	[NoUrut] [varchar](10) NULL,
	[TANGGAL] [datetime] NULL,
	[KODEBRG] [varchar](25) NULL,
	[NoBatch] [varchar](30) NULL,
	[TglExpired] [datetime] NULL,
	[Qnt] [numeric](18, 2) NULL,
	[IsCLose] [bit] NULL,
	[Nosat] [tinyint] NULL,
	[Satuan] [varchar](5) NULL,
	[Isi] [numeric](18, 2) NULL,
	[KodeBOM] [varchar](30) NULL,
	[CetakKe] [smallint] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NULL,
	[NoSO] [varchar](30) NOT NULL,
	[UrutSO] [int] NOT NULL,
	[BiayaLain] [numeric](18, 2) NULL,
	[TglSelesai] [datetime] NULL,
	[QntCetak] [numeric](18, 2) NULL,
	[JenisSpk] [tinyint] NULL,
 CONSTRAINT [PK_DBSPK] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPOSTHUTPIUT](
	[Perkiraan] [varchar](25) NOT NULL,
	[Kode] [varchar](5) NOT NULL,
	[Persen] [numeric](18, 2) NOT NULL,
	[Tipe] [varchar](50) NOT NULL,
	[Akumulasi] [varchar](25) NOT NULL,
	[Biaya1] [varchar](25) NOT NULL,
	[Biaya2] [varchar](25) NOT NULL,
	[PersenBiaya1] [numeric](18, 2) NOT NULL,
	[PersenBiaya2] [numeric](18, 2) NOT NULL,
	[Urut] [tinyint] NOT NULL,
	[IsBeliJual] [bit] NOT NULL,
	[IsLokalorExim] [bit] NOT NULL,
 CONSTRAINT [PK_DBPOSTHUTPIUT] PRIMARY KEY CLUSTERED 
(
	[Perkiraan] ASC,
	[Kode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBARANG](
	[KODEBRG] [varchar](25) NOT NULL,
	[NAMABRG] [varchar](100) NOT NULL,
	[KODEGRP] [varchar](20) NOT NULL,
	[KODESUBGRP] [varchar](10) NOT NULL,
	[KODESUPP] [varchar](20) NULL,
	[SAT1] [varchar](5) NOT NULL,
	[ISI1] [numeric](18, 2) NOT NULL,
	[SAT2] [varchar](5) NULL,
	[ISI2] [numeric](18, 2) NULL,
	[SAT3] [varchar](5) NULL,
	[ISI3] [numeric](18, 2) NULL,
	[Hrg1_1] [numeric](18, 2) NULL,
	[Hrg2_1] [numeric](18, 2) NULL,
	[Hrg3_1] [numeric](18, 2) NULL,
	[Hrg1_2] [numeric](18, 2) NULL,
	[Hrg2_2] [numeric](18, 2) NULL,
	[Hrg3_2] [numeric](18, 2) NULL,
	[Hrg1_3] [numeric](18, 2) NULL,
	[Hrg2_3] [numeric](18, 2) NULL,
	[Hrg3_3] [numeric](18, 2) NULL,
	[QntMin] [numeric](18, 2) NULL,
	[QntMax] [numeric](18, 2) NULL,
	[ISAKTIF] [tinyint] NOT NULL,
	[Keterangan] [varchar](50) NULL,
	[NFix] [bit] NULL,
	[NamaBrg2] [varchar](100) NULL,
	[Tolerate] [numeric](5, 2) NULL,
	[Proses] [int] NOT NULL,
	[IsTakeIn] [bit] NOT NULL,
	[IsBarang] [tinyint] NULL,
	[KodeBag] [varchar](30) NULL,
	[KODEBhn] [varchar](30) NULL,
	[KODEBRGL] [varchar](25) NULL,
	[IsUpdate] [bit] NULL,
	[Qnt1] [numeric](10, 2) NULL,
	[HrgKhusus1] [numeric](18, 2) NULL,
 CONSTRAINT [PK__DBBARANG] PRIMARY KEY CLUSTERED 
(
	[KODEBRG] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbTrans](
	[NoBukti] [varchar](30) NOT NULL,
	[NOURUT] [varchar](5) NOT NULL,
	[Tanggal] [datetime] NULL,
	[Note] [varchar](500) NOT NULL,
	[Lampiran] [tinyint] NOT NULL,
	[MyID] [timestamp] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[Simbol] [varchar](10) NULL,
	[TipeTransHd] [varchar](10) NULL,
	[PerkiraanHd] [varchar](20) NULL,
	[FlagSimbol] [varchar](2) NULL,
	[MaxOL] [int] NOT NULL,
	[NoJurnal] [varchar](30) NULL,
	[NoUrutJurnal] [varchar](5) NULL,
	[TglJurnal] [datetime] NULL,
	[Flagtipe] [tinyint] NULL,
 CONSTRAINT [PK_dbTrans] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBGROUP](
	[KODEGRP] [varchar](15) NOT NULL,
	[NAMA] [varchar](40) NOT NULL,
 CONSTRAINT [PK_DBGROUP] PRIMARY KEY CLUSTERED 
(
	[KODEGRP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBJurnalOto](
	[NoBukti] [varchar](30) NOT NULL,
	[Tanggal] [datetime] NULL,
	[Devisi] [varchar](15) NOT NULL,
	[Note] [varchar](8000) NOT NULL,
	[Lampiran] [tinyint] NOT NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[Urut] [int] NOT NULL,
	[Perkiraan] [varchar](25) NOT NULL,
	[Lawan] [varchar](25) NOT NULL,
	[Keterangan] [varchar](8000) NOT NULL,
	[Keterangan2] [varchar](8000) NOT NULL,
	[Debet] [numeric](18, 2) NOT NULL,
	[Kredit] [numeric](18, 2) NOT NULL,
	[Valas] [varchar](15) NOT NULL,
	[Kurs] [numeric](18, 4) NOT NULL,
	[DebetRp] [numeric](18, 2) NOT NULL,
	[KreditRp] [numeric](18, 2) NOT NULL,
	[TipeTrans] [varchar](3) NOT NULL,
	[TPHC] [varchar](1) NOT NULL,
	[CustSuppP] [varchar](15) NOT NULL,
	[CustSuppL] [varchar](15) NOT NULL,
	[KodeP] [varchar](15) NOT NULL,
	[KodeL] [varchar](15) NOT NULL,
	[NoAktivaP] [varchar](30) NOT NULL,
	[NoAktivaL] [varchar](30) NOT NULL,
	[StatusAktivaP] [varchar](5) NOT NULL,
	[StatusAktivaL] [varchar](5) NOT NULL,
	[Nobon] [varchar](20) NOT NULL,
	[KodeBag] [varchar](15) NOT NULL,
	[StatusGiro] [varchar](100) NULL,
	[MyID] [timestamp] NULL,
	[Jenis] [varchar](50) NOT NULL,
	[NOURUT] [varchar](5) NULL,
	[NobuktiTrans] [varchar](30) NULL,
 CONSTRAINT [PK_DBJurnalOto] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBUBAHKEMASAN](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NOURUT] [varchar](10) NULL,
	[TANGGAL] [datetime] NULL,
	[NOTE] [varchar](200) NOT NULL,
	[IsCetak] [bit] NOT NULL,
	[NilaiCetak] [int] NULL,
	[FlagTipe] [int] NULL,
	[IndexMargin] [numeric](18, 2) NOT NULL,
	[Revisi] [tinyint] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NOT NULL,
 CONSTRAINT [PK_dbUBAHKEMASAN] PRIMARY KEY NONCLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_dbUBAHKEMASAN] UNIQUE CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbSubGroup](
	[KodeGrp] [varchar](20) NOT NULL,
	[KodeSubGrp] [varchar](10) NOT NULL,
	[NamaSubGrp] [varchar](50) NULL,
	[PerkPers] [varchar](25) NULL,
	[PerkH] [varchar](25) NULL,
	[PerkPPN] [varchar](25) NULL,
	[PerkBiaya] [varchar](30) NULL,
 CONSTRAINT [PK_dbSubGroup] PRIMARY KEY CLUSTERED 
(
	[KodeGrp] ASC,
	[KodeSubGrp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBLRHPP](
	[Bulan] [int] NOT NULL,
	[Tahun] [int] NOT NULL,
	[Devisi] [varchar](15) NOT NULL,
	[Perkiraan] [varchar](25) NOT NULL,
	[Nomor] [varchar](25) NOT NULL,
	[Keterangan] [varchar](800) NOT NULL,
	[Grup] [varchar](3) NOT NULL,
	[Tipe] [varchar](3) NOT NULL,
	[Tanda] [varchar](3) NOT NULL,
	[Persen] [varchar](3) NOT NULL,
	[Jumlah] [varchar](3) NOT NULL,
	[Tampil] [varchar](3) NOT NULL,
	[TotalA] [numeric](18, 2) NOT NULL,
	[TotalB] [numeric](18, 2) NOT NULL,
	[TotalC] [numeric](18, 2) NOT NULL,
	[IsLRHPP] [bit] NOT NULL,
 CONSTRAINT [PK_DBLRHPP] PRIMARY KEY CLUSTERED 
(
	[Bulan] ASC,
	[Tahun] ASC,
	[Devisi] ASC,
	[Perkiraan] ASC,
	[Nomor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPERKIRAAN](
	[Perkiraan] [varchar](25) NOT NULL,
	[Keterangan] [varchar](8000) NOT NULL,
	[Kelompok] [tinyint] NOT NULL,
	[Tipe] [tinyint] NOT NULL,
	[Valas] [varchar](10) NOT NULL,
	[DK] [tinyint] NOT NULL,
	[Neraca] [varchar](25) NOT NULL,
	[FlagCashFlow] [varchar](1) NOT NULL,
	[Simbol] [varchar](3) NOT NULL,
	[IsPPN] [bit] NOT NULL,
	[GroupPerkiraan] [varchar](25) NOT NULL,
	[MyID] [timestamp] NULL,
	[Lokasi] [tinyint] NOT NULL,
	[KodeAK] [varchar](15) NULL,
	[KodeSAK] [varchar](15) NULL,
 CONSTRAINT [PK_dbPerkiraan] PRIMARY KEY CLUSTERED 
(
	[Perkiraan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBMENU](
	[KODEMENU] [varchar](25) NOT NULL,
	[Keterangan] [varchar](500) NOT NULL,
	[L0] [tinyint] NOT NULL,
	[ACCESS] [int] NOT NULL,
	[OL] [tinyint] NOT NULL,
	[TipeTrans] [varchar](10) NOT NULL,
	[routename] [varchar](255) NULL,
	[icon] [varchar](50) NULL,
 CONSTRAINT [PK_DBMENU] PRIMARY KEY CLUSTERED 
(
	[KODEMENU] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBMENUREPORT](
	[KODEMENU] [varchar](25) NOT NULL,
	[Keterangan] [varchar](500) NOT NULL,
	[L0] [tinyint] NOT NULL,
	[ACCESS] [int] NOT NULL,
	[OL] [tinyint] NOT NULL,
 CONSTRAINT [PK_DBMENUREPORT] PRIMARY KEY CLUSTERED 
(
	[KODEMENU] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSUBKATEGORI](
	[KodeSubKategori] [varchar](15) NOT NULL,
	[Keterangan] [varchar](100) NOT NULL,
	[KodeKategori] [varchar](15) NOT NULL,
	[Persediaan] [varchar](25) NOT NULL,
 CONSTRAINT [PK_DBSUBKATEGORI] PRIMARY KEY CLUSTERED 
(
	[KodeSubKategori] ASC,
	[KodeKategori] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBRInvoicePLDET](
	[NOBUKTI] [varchar](30) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NOT NULL,
	[NamaBrg] [varchar](1000) NOT NULL,
	[PPN] [tinyint] NOT NULL,
	[DISC] [numeric](18, 3) NOT NULL,
	[KURS] [numeric](18, 2) NOT NULL,
	[QNT] [numeric](18, 2) NOT NULL,
	[QNT2] [numeric](18, 2) NOT NULL,
	[QNTTukar] [numeric](18, 2) NOT NULL,
	[QNT2Tukar] [numeric](18, 2) NOT NULL,
	[NetW] [numeric](18, 2) NOT NULL,
	[NetWTukar] [numeric](18, 2) NOT NULL,
	[GrossW] [numeric](18, 2) NOT NULL,
	[GrossWTukar] [numeric](18, 2) NOT NULL,
	[Mesurement] [numeric](18, 2) NOT NULL,
	[MesurementTukar] [numeric](18, 2) NOT NULL,
	[SAT_1] [varchar](5) NOT NULL,
	[SAT_2] [varchar](5) NOT NULL,
	[Nosat] [tinyint] NOT NULL,
	[ISI] [numeric](18, 2) NOT NULL,
	[HARGA] [numeric](18, 4) NOT NULL,
	[DiscP1] [numeric](18, 2) NOT NULL,
	[DiscRp1] [numeric](18, 2) NOT NULL,
	[DiscP2] [numeric](18, 2) NOT NULL,
	[DiscRp2] [numeric](18, 2) NOT NULL,
	[DiscP3] [numeric](18, 2) NOT NULL,
	[DiscRp3] [numeric](18, 2) NOT NULL,
	[DiscP4] [numeric](18, 2) NOT NULL,
	[DiscRp4] [numeric](18, 2) NOT NULL,
	[DISCTOT] [numeric](18, 2) NOT NULL,
	[BYANGKUT] [numeric](18, 2) NOT NULL,
	[HRGNETTO]  AS ([HARGA]-[DISCTOT]),
	[NDISKON]  AS ((([Qnt]*[harga]-[Qnt]*[DiscTot])*[Disc])/(100)),
	[SUBTOTAL]  AS (case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot]),
	[NDPP]  AS (case when [PPN]=(0) OR [PPN]=(1) then (case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100) when [PPN]=(2) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1)  end),
	[NPPN]  AS (case when [PPN]=(0) then (0) when [PPN]=(1) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))*(0.1) when [PPN]=(2) then (((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1))*(0.1)  end),
	[NNET]  AS (case when [PPN]=(0) then (case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100) when [PPN]=(1) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))+((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))*(0.1) when [PPN]=(2) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1)+(((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1))*(0.1)  end),
	[SUBTOTALRp]  AS ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[Kurs]),
	[NDPPRp]  AS (case when [PPN]=(0) OR [PPN]=(1) then (case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100) when [PPN]=(2) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1)  end*[Kurs]),
	[NPPNRp]  AS (case when [PPN]=(0) then (0) when [PPN]=(1) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))*(0.1) when [PPN]=(2) then (((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1))*(0.1)  end*[Kurs]),
	[NNETRp]  AS (case when [PPN]=(0) then (case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100) when [PPN]=(1) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))+((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))*(0.1) when [PPN]=(2) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1)+(((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1))*(0.1)  end*[Kurs]),
	[NoInvoice] [varchar](30) NOT NULL,
	[UrutInvoice] [int] NOT NULL,
	[Keterangan] [varchar](800) NOT NULL,
	[UrutTrans] [int] NOT NULL,
	[HPP] [numeric](18, 2) NOT NULL,
	[MyID] [timestamp] NULL,
	[NoSPB] [varchar](30) NOT NULL,
 CONSTRAINT [PK_DBRInvoicePLDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBRBELI](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NOURUT] [varchar](10) NOT NULL,
	[TANGGAL] [datetime] NULL,
	[TGLJATUHTEMPO] [datetime] NULL,
	[KODESUPP] [varchar](15) NULL,
	[NOBELI] [varchar](20) NULL,
	[KodeGdg] [varchar](15) NULL,
	[KODEEXP] [varchar](15) NULL,
	[HANDLING] [numeric](18, 2) NULL,
	[KETERANGAN] [nvarchar](200) NULL,
	[FAKTURSUPP] [varchar](50) NULL,
	[KODEVLS] [varchar](15) NULL,
	[KURS] [numeric](18, 2) NULL,
	[PPN] [tinyint] NULL,
	[TIPEBAYAR] [tinyint] NULL,
	[HARI] [int] NULL,
	[TipeDisc] [tinyint] NULL,
	[DISC] [float] NULL,
	[DISCRP] [numeric](18, 2) NULL,
	[NILAIPOT] [numeric](18, 2) NULL,
	[NILAIDPP] [numeric](18, 2) NULL,
	[NILAIPPN] [numeric](18, 2) NULL,
	[NILAINET] [numeric](18, 2) NULL,
	[ISCETAK] [bit] NULL,
	[NilaiCetak] [int] NULL,
	[Nopajak] [varchar](50) NULL,
	[TglFPJ] [datetime] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NOT NULL,
	[IsBatal] [bit] NULL,
	[UserBatal] [varchar](15) NULL,
	[TglBatal] [datetime] NULL,
	[FlagTipe] [tinyint] NULL,
 CONSTRAINT [PK_DBRBELI] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBAGIAN](
	[KodeBag] [varchar](15) NOT NULL,
	[NamaBag] [varchar](100) NOT NULL,
	[Perkiraan] [varchar](25) NOT NULL,
	[Biaya] [varchar](25) NOT NULL,
	[BiayaJasaKom] [varchar](25) NOT NULL,
	[BiayaJasaAlat] [varchar](25) NOT NULL,
	[MyID] [timestamp] NULL,
 CONSTRAINT [PK_DBBAGIAN] PRIMARY KEY CLUSTERED 
(
	[KodeBag] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBJNSPAKAI](
	[KodeJNSPakai] [varchar](15) NOT NULL,
	[Keterangan] [varchar](100) NOT NULL,
	[Perkiraan] [varchar](25) NOT NULL,
 CONSTRAINT [PK_DBJNSPAKAI] PRIMARY KEY CLUSTERED 
(
	[KodeJNSPakai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbInvoicePLDet](
	[NoBukti] [varchar](30) NOT NULL,
	[Urut] [int] NOT NULL,
	[NoSPB] [varchar](30) NOT NULL,
	[UrutSPB] [int] NOT NULL,
	[KodeBrg] [varchar](25) NULL,
	[Namabrg] [varchar](200) NOT NULL,
	[ShippingMark] [varchar](8000) NOT NULL,
	[PPN] [tinyint] NULL,
	[DISC] [numeric](18, 2) NULL,
	[KURS] [numeric](18, 2) NULL,
	[QNT] [numeric](18, 2) NULL,
	[QNT2] [numeric](18, 2) NULL,
	[SAT_1] [varchar](5) NULL,
	[SAT_2] [varchar](5) NULL,
	[NOSAT] [int] NULL,
	[ISI] [numeric](18, 2) NULL,
	[NetW] [numeric](18, 2) NULL,
	[GrossW] [numeric](18, 2) NULL,
	[Meas] [numeric](18, 2) NULL,
	[HARGA] [numeric](18, 6) NULL,
	[DiscP] [numeric](18, 2) NULL,
	[DiscRp] [numeric](18, 2) NULL,
	[DISCTOT] [numeric](18, 2) NULL,
	[HrgNetto]  AS ([Harga]-[DiscTot]),
	[NDISKON]  AS ((case when [nosat]=(1) then [Qnt] when [NOSAT]=(2) then [QNT2] else (0) end*([Harga]-[DISCTOT]))*([DISC]/(100))),
	[SUBTOTAL]  AS (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DiscTot])),
	[NDISKONRp]  AS (((case when [nosat]=(1) then [Qnt] when [NOSAT]=(2) then [QNT2] else (0) end*([Harga]-[DISCTOT]))*([DISC]/(100)))*[Kurs]),
	[SUBTOTALRp]  AS ((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[Disctot]))*[Kurs]),
	[KetDetail] [varchar](500) NULL,
	[MyID] [timestamp] NOT NULL,
	[HPP] [numeric](18, 2) NOT NULL,
	[NoSPP] [varchar](30) NOT NULL,
	[TGLSPP] [datetime] NULL,
	[NoSO] [varchar](30) NOT NULL,
	[TGLSO] [datetime] NULL,
	[PoNO] [varchar](500) NULL,
	[UrutTrans] [int] NOT NULL,
	[DiscP2] [numeric](18, 2) NULL,
	[DiscP3] [numeric](18, 2) NULL,
	[DiscP4] [numeric](18, 2) NULL,
	[DiscP5] [numeric](18, 2) NULL,
	[PPnP] [numeric](18, 2) NULL,
	[NDPP]  AS (case when [ppn]=(1) OR [ppn]=(0) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end),
	[NPPN]  AS (case when [ppn]=(1) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*([ppnp]/(100))),
	[NNET]  AS (case when [ppn]=(1) OR [ppn]=(0) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end+case when [ppn]=(1) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*([ppnp]/(100))),
	[NDPPRp]  AS (case when [ppn]=(1) OR [ppn]=(0) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*[Kurs]),
	[NPPNRp]  AS ((case when [ppn]=(1) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*([ppnp]/(100)))*[Kurs]),
	[NNETRp]  AS ((case when [ppn]=(1) OR [ppn]=(0) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end+case when [ppn]=(1) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*([ppnp]/(100)))*[Kurs]),
 CONSTRAINT [PK_dbInvoicePLDet] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbInvoiceUM](
	[NoBukti] [varchar](30) NOT NULL,
	[NoUrut] [varchar](8) NULL,
	[Tanggal] [datetime] NULL,
	[DISC] [numeric](18, 2) NOT NULL,
	[PPN] [tinyint] NOT NULL,
	[Valas] [varchar](15) NOT NULL,
	[Kurs] [numeric](18, 2) NOT NULL,
	[NoSPP] [varchar](30) NULL,
	[KodeCustSupp] [varchar](20) NULL,
	[Consignee] [varchar](4000) NULL,
	[NotifyParty] [varchar](4000) NULL,
	[StuffingDate] [datetime] NULL,
	[StuffingPlace] [varchar](100) NULL,
	[ContractNo] [varchar](50) NULL,
	[PONo] [varchar](50) NULL,
	[PaymentTerm] [varchar](4000) NULL,
	[DocCreditNo] [varchar](50) NULL,
	[PoL] [varchar](4000) NULL,
	[PoD] [varchar](4000) NULL,
	[NameOfVessel] [varchar](4000) NULL,
	[Feeder_Vessel] [varchar](4000) NULL,
	[Connect_Vessel] [varchar](4000) NULL,
	[ShipOnBoardDate] [datetime] NULL,
	[Packing] [varchar](4000) NULL,
	[Others] [varchar](7500) NULL,
	[IsCetak] [bit] NULL,
	[IDUser] [varchar](30) NULL,
	[IsLokal] [bit] NOT NULL,
	[NoBL] [varchar](50) NOT NULL,
	[NoteBeneficiary1] [varchar](8000) NOT NULL,
	[NoteBeneficiary2] [varchar](8000) NOT NULL,
	[NoteBeneficiary3] [varchar](8000) NOT NULL,
	[ShipmentAdvice1] [varchar](8000) NOT NULL,
	[ShipmentAdvice2] [varchar](8000) NOT NULL,
	[ETADestination] [datetime] NULL,
	[ToShipmentAdvice2] [varchar](8000) NOT NULL,
	[NoPajak] [varchar](50) NOT NULL,
	[TglFPJ] [datetime] NULL,
	[Footnote] [varchar](8000) NULL,
	[IssuingBank] [varchar](8000) NULL,
	[MyID] [timestamp] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[IsFLag] [bit] NOT NULL,
	[MAXOL] [int] NOT NULL,
	[NoKMK] [varchar](100) NOT NULL,
	[TglKMK] [datetime] NULL,
	[IsBatal] [bit] NULL,
	[UserBatal] [varchar](15) NULL,
	[TglBatal] [datetime] NULL,
	[FlagTipe] [tinyint] NULL,
	[DP] [numeric](18, 2) NULL,
 CONSTRAINT [PK_dbInvoiceUM] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbInvoiceUMDet](
	[NoBukti] [varchar](30) NOT NULL,
	[Urut] [int] NOT NULL,
	[NoSPB] [varchar](30) NOT NULL,
	[UrutSPB] [int] NOT NULL,
	[KodeBrg] [varchar](25) NULL,
	[Namabrg] [varchar](200) NOT NULL,
	[ShippingMark] [varchar](8000) NOT NULL,
	[PPN] [tinyint] NULL,
	[DISC] [numeric](18, 2) NULL,
	[KURS] [numeric](18, 2) NULL,
	[QNT] [numeric](18, 2) NULL,
	[QNT2] [numeric](18, 2) NULL,
	[SAT_1] [varchar](5) NULL,
	[SAT_2] [varchar](5) NULL,
	[NOSAT] [int] NULL,
	[ISI] [numeric](18, 2) NULL,
	[NetW] [numeric](18, 2) NULL,
	[GrossW] [numeric](18, 2) NULL,
	[Meas] [numeric](18, 2) NULL,
	[HARGA] [numeric](18, 4) NULL,
	[DiscP] [numeric](18, 2) NULL,
	[DiscRp] [numeric](18, 2) NULL,
	[DISCTOT] [numeric](18, 2) NULL,
	[HrgNetto]  AS ([Harga]-[DiscTot]),
	[NDISKON]  AS ((case when [nosat]=(1) then [Qnt] when [NOSAT]=(2) then [QNT2] else (0) end*([Harga]-[DISCTOT]))*([DISC]/(100))),
	[SUBTOTAL]  AS (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DiscTot])),
	[NDPP]  AS (case when [ppn]=(1) OR [ppn]=(0) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end),
	[NPPN]  AS (case when [ppn]=(1) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*(0.1)),
	[NNET]  AS (case when [ppn]=(1) OR [ppn]=(0) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end+case when [ppn]=(1) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*(0.1)),
	[NDISKONRp]  AS (((case when [nosat]=(1) then [Qnt] when [NOSAT]=(2) then [QNT2] else (0) end*([Harga]-[DISCTOT]))*([DISC]/(100)))*[Kurs]),
	[SUBTOTALRp]  AS ((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[Disctot]))*[Kurs]),
	[NDPPRp]  AS (case when [ppn]=(1) OR [ppn]=(0) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*[Kurs]),
	[NPPNRp]  AS ((case when [ppn]=(1) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*(0.1))*[Kurs]),
	[NNETRp]  AS ((case when [ppn]=(1) OR [ppn]=(0) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end+case when [ppn]=(1) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*(0.1))*[Kurs]),
	[KetDetail] [varchar](500) NULL,
	[MyID] [timestamp] NOT NULL,
	[HPP] [numeric](18, 2) NOT NULL,
	[NoSPP] [varchar](30) NOT NULL,
	[TGLSPP] [datetime] NULL,
	[NoSO] [varchar](30) NOT NULL,
	[TGLSO] [datetime] NULL,
	[PoNO] [varchar](500) NULL,
	[UrutTrans] [int] NOT NULL,
	[DiscP2] [numeric](18, 2) NULL,
	[DiscP3] [numeric](18, 2) NULL,
	[DiscP4] [numeric](18, 2) NULL,
	[DiscP5] [numeric](18, 2) NULL,
 CONSTRAINT [PK_dbInvoiceUMDet] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBINVOICERPJ](
	[NoBukti] [varchar](30) NOT NULL,
	[NoUrut] [varchar](5) NOT NULL,
	[Tanggal] [datetime] NULL,
	[TglJatuhTempo] [datetime] NULL,
	[KODECUSTSUPP] [varchar](15) NOT NULL,
	[NoInvoice] [varchar](50) NOT NULL,
	[TglInvoice] [datetime] NULL,
	[NORPJ] [varchar](30) NOT NULL,
	[KODEVLS] [varchar](15) NOT NULL,
	[KURS] [numeric](18, 4) NOT NULL,
	[PPN] [tinyint] NOT NULL,
	[TIPEBAYAR] [tinyint] NOT NULL,
	[HARI] [int] NOT NULL,
	[IDUser] [varchar](15) NOT NULL,
	[MyID] [timestamp] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[IsFlag] [bit] NOT NULL,
	[MaxOL] [int] NOT NULL,
	[IsBatal] [bit] NULL,
	[UserBatal] [varchar](15) NULL,
	[TglBatal] [datetime] NULL,
	[Flagtipe] [tinyint] NULL,
 CONSTRAINT [PK_DBINVOICERPJ] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBINVOICERPJDet](
	[NoBukti] [varchar](30) NOT NULL,
	[Urut] [int] NOT NULL,
	[Kodebrg] [varchar](25) NOT NULL,
	[NOSPR] [varchar](30) NOT NULL,
	[UrutSPR] [int] NOT NULL,
	[Disc] [numeric](18, 0) NOT NULL,
	[PPn] [tinyint] NOT NULL,
	[Kurs] [numeric](18, 2) NOT NULL,
	[SAT_1] [varchar](5) NOT NULL,
	[SAT_2] [varchar](5) NOT NULL,
	[Qnt] [numeric](18, 2) NOT NULL,
	[Qnt2] [numeric](18, 2) NOT NULL,
	[Nosat] [tinyint] NOT NULL,
	[Isi] [numeric](18, 2) NOT NULL,
	[Harga] [numeric](18, 2) NOT NULL,
	[DiscP] [numeric](18, 2) NOT NULL,
	[DiscRp] [numeric](18, 2) NOT NULL,
	[DISCTOT] [numeric](18, 2) NOT NULL,
	[HRGNETTO]  AS ([HARGA]-[DISCTOT]),
	[NDISKON]  AS ((([Qnt]*[harga]-[Qnt]*[DiscTot])*[Disc])/(100)),
	[SUBTOTAL]  AS (case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot]),
	[NDPP]  AS (case when [PPN]=(0) OR [PPN]=(1) then (case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100) when [PPN]=(2) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1)  end),
	[NPPN]  AS (case when [PPN]=(0) then (0) when [PPN]=(1) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))*(0.1) when [PPN]=(2) then (((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1))*(0.1)  end),
	[NNET]  AS (case when [PPN]=(0) then (case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100) when [PPN]=(1) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))+((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))*(0.1) when [PPN]=(2) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1)+(((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1))*(0.1)  end),
	[SUBTOTALRp]  AS ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[Kurs]),
	[NDPPRp]  AS (case when [PPN]=(0) OR [PPN]=(1) then (case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100) when [PPN]=(2) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1)  end*[Kurs]),
	[NPPNRp]  AS (case when [PPN]=(0) then (0) when [PPN]=(1) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))*(0.1) when [PPN]=(2) then (((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1))*(0.1)  end*[Kurs]),
	[NNETRp]  AS (case when [PPN]=(0) then (case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100) when [PPN]=(1) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))+((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))*(0.1) when [PPN]=(2) then ((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1)+(((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])-((case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[harga]-case when [NoSat]=(1) then [Qnt] else [Qnt2] end*[DiscTot])*[DISC])/(100))/(1.1))*(0.1)  end*[Kurs]),
	[Keterangan] [varchar](8000) NOT NULL,
	[UrutTrans] [int] NOT NULL,
	[MyID] [timestamp] NULL,
	[HPP] [numeric](18, 2) NOT NULL,
	[DiscP2] [numeric](18, 2) NULL,
	[DiscP3] [numeric](18, 2) NULL,
	[DiscP4] [numeric](18, 2) NULL,
	[DiscP5] [numeric](18, 2) NULL,
 CONSTRAINT [PK_INVOICERPJDet] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbInvoicePL](
	[NoBukti] [varchar](30) NOT NULL,
	[NoUrut] [varchar](8) NULL,
	[Tanggal] [datetime] NULL,
	[DISC] [numeric](18, 2) NOT NULL,
	[PPN] [tinyint] NOT NULL,
	[Valas] [varchar](15) NOT NULL,
	[Kurs] [numeric](18, 2) NOT NULL,
	[NoSPP] [varchar](30) NULL,
	[KodeCustSupp] [varchar](20) NULL,
	[Consignee] [varchar](4000) NULL,
	[NotifyParty] [varchar](4000) NULL,
	[StuffingDate] [datetime] NULL,
	[StuffingPlace] [varchar](100) NULL,
	[ContractNo] [varchar](50) NULL,
	[PONo] [varchar](50) NULL,
	[PaymentTerm] [varchar](4000) NULL,
	[DocCreditNo] [varchar](50) NULL,
	[PoL] [varchar](4000) NULL,
	[PoD] [varchar](4000) NULL,
	[NameOfVessel] [varchar](4000) NULL,
	[Feeder_Vessel] [varchar](4000) NULL,
	[Connect_Vessel] [varchar](4000) NULL,
	[ShipOnBoardDate] [datetime] NULL,
	[Packing] [varchar](4000) NULL,
	[Others] [varchar](7500) NULL,
	[IsCetak] [bit] NULL,
	[IDUser] [varchar](30) NULL,
	[IsLokal] [bit] NOT NULL,
	[NoBL] [varchar](50) NOT NULL,
	[NoteBeneficiary1] [varchar](8000) NOT NULL,
	[NoteBeneficiary2] [varchar](8000) NOT NULL,
	[NoteBeneficiary3] [varchar](8000) NOT NULL,
	[ShipmentAdvice1] [varchar](8000) NOT NULL,
	[ShipmentAdvice2] [varchar](8000) NOT NULL,
	[ETADestination] [datetime] NULL,
	[ToShipmentAdvice2] [varchar](8000) NOT NULL,
	[NoPajak] [varchar](50) NOT NULL,
	[TglFPJ] [datetime] NULL,
	[Footnote] [varchar](8000) NULL,
	[IssuingBank] [varchar](8000) NULL,
	[MyID] [timestamp] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[IsFLag] [bit] NOT NULL,
	[MAXOL] [int] NOT NULL,
	[NoKMK] [varchar](100) NOT NULL,
	[TglKMK] [datetime] NULL,
	[IsBatal] [bit] NULL,
	[UserBatal] [varchar](15) NULL,
	[TglBatal] [datetime] NULL,
	[FlagTipe] [tinyint] NULL,
	[DP] [numeric](18, 2) NULL,
	[keynik] [int] NULL,
 CONSTRAINT [PK_dbInvoicePL] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBInvoice](
	[NOBUKTI] [varchar](20) NOT NULL,
	[TANGGAL] [datetime] NULL,
	[KETERANGAN] [varchar](100) NULL,
	[KodeSupp] [varchar](15) NULL,
	[NoPO] [varchar](20) NULL,
	[NoFaktur] [varchar](50) NULL,
	[TglFaktur] [datetime] NULL,
	[KodeVls] [varchar](15) NULL,
	[Kurs] [numeric](18, 2) NULL,
	[PPN] [tinyint] NULL,
	[TipeBayar] [tinyint] NULL,
	[Hari] [int] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NULL,
	[NOURUT] [varchar](10) NULL,
	[Flagtipe] [tinyint] NULL,
 CONSTRAINT [PK_DBInvoice] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBInvoiceDET](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[NoBeli] [varchar](20) NOT NULL,
 CONSTRAINT [PK_DBInvoiceDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbSPB](
	[NoBukti] [varchar](30) NOT NULL,
	[NoUrut] [varchar](7) NOT NULL,
	[Tanggal] [datetime] NULL,
	[NoSPP] [varchar](30) NULL,
	[KodeCustSupp] [varchar](15) NOT NULL,
	[NoPolKend] [varchar](50) NULL,
	[Container] [varchar](50) NULL,
	[NoContainer] [varchar](50) NULL,
	[NoSeal] [varchar](50) NULL,
	[Sopir] [varchar](100) NULL,
	[Catatan] [varchar](4000) NULL,
	[IsCetak] [bit] NULL,
	[IDUser] [varchar](30) NULL,
	[IsClose] [bit] NOT NULL,
	[IsFlag] [bit] NOT NULL,
	[MyID] [timestamp] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NOT NULL,
	[KodeExp] [varchar](20) NOT NULL,
	[NoResi] [varchar](50) NOT NULL,
	[JumlahTagihan] [numeric](18, 2) NOT NULL,
	[IsBatal] [bit] NULL,
	[UserBatal] [varchar](15) NULL,
	[TglBatal] [datetime] NULL,
	[FlagTipe] [tinyint] NULL,
 CONSTRAINT [PK_dbSPB] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBKATEGORIBRGJADI](
	[KodeKategori] [varchar](15) NOT NULL,
	[Keterangan] [varchar](100) NOT NULL,
	[Kodegdg] [varchar](15) NOT NULL,
	[Perkiraan] [varchar](25) NOT NULL,
 CONSTRAINT [PK_DBKATEGORIBRGJADI] PRIMARY KEY CLUSTERED 
(
	[KodeKategori] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbSPBDet](
	[NoBukti] [varchar](30) NOT NULL,
	[Urut] [int] NOT NULL,
	[NoSPP] [varchar](30) NOT NULL,
	[UrutSPP] [int] NOT NULL,
	[KodeBrg] [varchar](25) NULL,
	[Namabrg] [varchar](200) NULL,
	[QNT] [numeric](18, 2) NULL,
	[QNT2] [numeric](18, 2) NULL,
	[SAT_1] [varchar](5) NOT NULL,
	[SAT_2] [varchar](5) NULL,
	[NOSAT] [int] NULL,
	[ISI] [numeric](18, 2) NULL,
	[NetW] [numeric](18, 2) NULL,
	[GrossW] [numeric](18, 2) NULL,
	[HPP] [float] NOT NULL,
	[KodeGdg] [varchar](15) NOT NULL,
	[isCetakKitir] [bit] NOT NULL,
 CONSTRAINT [PK_dbSPBDet] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBRSPBDet](
	[NoBukti] [varchar](30) NOT NULL,
	[Urut] [int] NOT NULL,
	[NoSPB] [varchar](30) NOT NULL,
	[UrutSPB] [int] NOT NULL,
	[KodeBrg] [varchar](25) NOT NULL,
	[Namabrg] [varchar](200) NOT NULL,
	[QNT] [numeric](18, 2) NOT NULL,
	[QNT2] [numeric](18, 2) NOT NULL,
	[SAT_1] [varchar](5) NOT NULL,
	[SAT_2] [varchar](5) NOT NULL,
	[NOSAT] [int] NOT NULL,
	[ISI] [numeric](18, 2) NOT NULL,
	[NetW] [numeric](18, 2) NOT NULL,
	[GrossW] [numeric](18, 2) NOT NULL,
	[HPP] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_DBRSPBDet] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSUBTIPETRANS](
	[KODESUBTIPE] [varchar](15) NOT NULL,
	[Nama] [varchar](50) NOT NULL,
	[KODETIPE] [varchar](15) NOT NULL,
	[Persediaan] [varchar](25) NOT NULL,
	[PPn] [varchar](25) NOT NULL,
	[HutPiut] [varchar](25) NOT NULL,
 CONSTRAINT [PK_DBSUBTIPETRANS] PRIMARY KEY CLUSTERED 
(
	[KODESUBTIPE] ASC,
	[KODETIPE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBELIDET](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NULL,
	[KodeGdg] [varchar](15) NULL,
	[PPN] [tinyint] NULL,
	[KURS] [numeric](18, 2) NULL,
	[DISC] [float] NULL,
	[QNT] [numeric](18, 2) NULL,
	[NOSAT] [tinyint] NULL,
	[SATUAN] [varchar](5) NULL,
	[ISI] [numeric](18, 2) NULL,
	[HARGA] [numeric](18, 6) NULL,
	[DISCP] [numeric](18, 2) NULL,
	[DISCTOT] [numeric](18, 2) NULL,
	[BYANGKUT] [numeric](18, 2) NULL,
	[NoPO] [varchar](20) NULL,
	[UrutPO] [int] NULL,
	[HPP] [numeric](18, 2) NULL,
	[QntTerima] [numeric](18, 2) NULL,
	[Qnt1Terima] [numeric](18, 2) NULL,
	[Qnt2Terima] [numeric](18, 2) NULL,
	[QntReject] [numeric](18, 2) NULL,
	[Qnt1Reject] [numeric](18, 2) NULL,
	[Qnt2Reject] [numeric](18, 2) NULL,
	[HRGNETTO]  AS ([HARGA]-[DISCTOT]),
	[NDISKON]  AS (([Qnt]*([Harga]-[DISCTOT]))*([DISC]/(100))),
	[SUBTOTAL]  AS ([Qnt]*([HARGA]-[DiscTot])),
	[SUBTOTALRp]  AS (([Qnt]*([HARGA]-[Disctot]))*[Kurs]),
	[UrutBeli] [int] NULL,
	[KetReject] [varchar](1000) NULL,
	[DiscP2] [numeric](18, 2) NULL,
	[DiscP3] [numeric](18, 2) NULL,
	[DiscP4] [numeric](18, 2) NULL,
	[DiscP5] [numeric](18, 2) NULL,
	[PPhP] [numeric](18, 2) NULL,
	[NPPHRP]  AS ((([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))*[PPhP])/(100)),
	[NPPH]  AS ((([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))*[PPhP])/(100)),
	[NamaBarang] [varchar](1000) NULL,
	[nospk] [varchar](50) NULL,
	[PPnP] [numeric](18, 2) NULL,
	[NDPP]  AS (case when [ppn]=(1) OR [ppn]=(0) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end),
	[NPPN]  AS (case when [ppn]=(1) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*([ppnp]/(100))),
	[NDPPRp]  AS (case when [ppn]=(1) OR [ppn]=(0) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*[Kurs]),
	[NPPNRp]  AS ((case when [ppn]=(1) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*([ppnp]/(100)))*[Kurs]),
	[NNET]  AS (case when [ppn]=(1) OR [ppn]=(0) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end+(case when [ppn]=(1) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*([ppnp]/(100))+([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))*(isnull([PPhP],(0))/(100)))),
	[NNETRP]  AS (((case when [ppn]=(1) OR [ppn]=(0) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end+case when [ppn]=(1) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*([ppnp]/(100)))+([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))*(isnull([PPhP],(0))/(100)))*[Kurs]),
 CONSTRAINT [PK_DBBELIDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBRInvoicePL](
	[NOBUKTI] [varchar](30) NOT NULL,
	[NOURUT] [varchar](5) NOT NULL,
	[TANGGAL] [datetime] NULL,
	[TGLJATUHTEMPO] [datetime] NULL,
	[KODECUSTSUPP] [varchar](15) NOT NULL,
	[NoInvoice] [varchar](30) NOT NULL,
	[TglInvoice] [datetime] NULL,
	[NoSO] [varchar](30) NOT NULL,
	[TglSO] [datetime] NULL,
	[NoSPP] [varchar](30) NOT NULL,
	[TglSPP] [datetime] NULL,
	[NOSPB] [varchar](30) NOT NULL,
	[TGLSPB] [datetime] NULL,
	[KODEVLS] [varchar](15) NOT NULL,
	[KURS] [numeric](18, 2) NOT NULL,
	[PPN] [tinyint] NOT NULL,
	[TIPEBAYAR] [tinyint] NOT NULL,
	[HARI] [int] NOT NULL,
	[Tipe] [tinyint] NOT NULL,
	[DISC] [float] NOT NULL,
	[DISCRP] [numeric](18, 4) NOT NULL,
	[NILAIPOT] [numeric](18, 2) NOT NULL,
	[NILAIDPP] [numeric](18, 2) NOT NULL,
	[NILAIPPN] [numeric](18, 2) NOT NULL,
	[NILAINET] [numeric](18, 2) NOT NULL,
	[NILAIPOTRp] [numeric](18, 2) NOT NULL,
	[NILAIDPPRp] [numeric](18, 2) NOT NULL,
	[NILAIPPNRp] [numeric](18, 2) NOT NULL,
	[NILAINETRp] [numeric](18, 2) NOT NULL,
	[FREIGHT] [numeric](18, 2) NOT NULL,
	[LAIN2] [numeric](18, 2) NOT NULL,
	[ISCETAK] [tinyint] NOT NULL,
	[ISCETAKGDG] [tinyint] NOT NULL,
	[ISBATAL] [bit] NOT NULL,
	[USERBATAL] [varchar](15) NOT NULL,
	[IDUser] [varchar](15) NOT NULL,
	[FlagRetur] [tinyint] NOT NULL,
	[IsLokal] [bit] NOT NULL,
	[MyID] [timestamp] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[IsFLag] [bit] NOT NULL,
	[NoLKP] [varchar](50) NULL,
	[TGLLKP] [datetime] NULL,
	[MaxOL] [int] NOT NULL,
	[TglBatal] [datetime] NULL,
 CONSTRAINT [PK_DBRInvoicePL] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbSPP](
	[NoBukti] [varchar](30) NOT NULL,
	[NoUrut] [varchar](7) NULL,
	[Tanggal] [datetime] NULL,
	[NoSHIP] [varchar](30) NULL,
	[NoPesan] [varchar](30) NULL,
	[KodeCustSupp] [varchar](15) NULL,
	[TglKirim] [datetime] NULL,
	[NoLC] [varchar](50) NULL,
	[NamaKirim] [varchar](100) NULL,
	[AlamatKirim] [varchar](4000) NULL,
	[Packing] [varchar](4000) NULL,
	[Catatan] [varchar](4000) NULL,
	[IsCetak] [bit] NULL,
	[IDUser] [varchar](30) NULL,
	[IsClose] [bit] NOT NULL,
	[IsFlag] [bit] NOT NULL,
	[MyID] [timestamp] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoAlamatKirim] [int] NOT NULL,
	[isCetakKitir] [bit] NOT NULL,
	[cetakke] [smallint] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NOT NULL,
	[IsBatal] [bit] NULL,
	[UserBatal] [varchar](15) NULL,
	[TglBatal] [datetime] NULL,
	[FlagTipe] [tinyint] NULL,
 CONSTRAINT [PK_dbSPP] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBCUSTSUPP](
	[KODECUSTSUPP] [varchar](15) NOT NULL,
	[NAMACUSTSUPP] [varchar](100) NOT NULL,
	[ALAMAT1] [varchar](100) NULL,
	[ALAMAT2] [varchar](100) NULL,
	[Kota] [varchar](100) NULL,
	[TELPON] [varchar](100) NULL,
	[FAX] [varchar](100) NULL,
	[EMAIL] [varchar](80) NULL,
	[KODEPOS] [varchar](30) NULL,
	[NEGARA] [varchar](30) NULL,
	[NPWP] [varchar](100) NULL,
	[Tanggal] [datetime] NULL,
	[PLAFON] [numeric](18, 2) NULL,
	[HARI] [int] NULL,
	[HARIHUTPIUT] [int] NULL,
	[BERIKAT] [bit] NULL,
	[USAHA] [varchar](20) NULL,
	[PERKIRAAN] [varchar](25) NULL,
	[JENIS] [int] NULL,
	[NAMAPKP] [varchar](40) NULL,
	[ALAMATPKP1] [varchar](100) NULL,
	[ALAMATPKP2] [varchar](100) NULL,
	[KOTAPKP] [varchar](30) NULL,
	[Sales] [varchar](20) NULL,
	[KodeVls] [varchar](15) NULL,
	[KodeExp] [varchar](20) NULL,
	[KodeTipe] [varchar](20) NULL,
	[IsPpn] [bit] NOT NULL,
	[IsAktif] [tinyint] NOT NULL,
	[Kind] [tinyint] NOT NULL,
	[ContactP] [varchar](100) NULL,
	[Alamat1ContP] [varchar](100) NULL,
	[Alamat2ContP] [varchar](100) NULL,
	[KotaContP] [varchar](100) NULL,
	[NegaraContP] [varchar](30) NULL,
	[TelpContP] [varchar](100) NULL,
	[FaxContP] [varchar](100) NULL,
	[EmailContP] [varchar](100) NULL,
	[KODEPOSContP] [varchar](7) NULL,
	[HPContP] [varchar](100) NULL,
	[SyaratPenerimaan] [varchar](8000) NULL,
	[SyaratPembayaran] [varchar](8000) NULL,
	[Agent] [varchar](40) NULL,
	[Alamat1A] [varchar](100) NULL,
	[Alamat2A] [varchar](100) NULL,
	[KotaA] [varchar](100) NULL,
	[NegaraA] [varchar](30) NULL,
	[ContactA] [varchar](100) NULL,
	[TelpA] [varchar](100) NULL,
	[FaxA] [varchar](100) NULL,
	[EmailA] [varchar](100) NULL,
	[KODEPOSA] [varchar](7) NULL,
	[HPA] [varchar](100) NULL,
	[EmailContA] [varchar](100) NULL,
	[MyID] [timestamp] NULL,
	[PortOfLoading] [varchar](4000) NULL,
	[CountryOfOrigin] [varchar](4000) NULL,
	[TglInput] [datetime] NULL,
	[iskontrak] [bit] NULL,
	[PPN] [tinyint] NULL,
	[HargaKe] [int] NOT NULL,
	[Att] [varchar](50) NULL,
	[bank] [varchar](100) NULL,
	[NoAcc] [varchar](1000) NULL,
	[IsMember] [bit] NOT NULL,
	[TanggalValid] [datetime] NULL,
	[DiscMember] [numeric](18, 2) NOT NULL,
	[AttPhone] [varchar](100) NOT NULL,
	[ket] [varchar](200) NULL,
	[JenisCustSupp] [varchar](15) NULL,
	[KODECUSTSUPPL] [varchar](15) NULL,
	[Tahun] [int] NULL,
	[IsUpdate] [bit] NULL,
 CONSTRAINT [PK_DBCUSTSUPP] PRIMARY KEY CLUSTERED 
(
	[KODECUSTSUPP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSALESCUSTOMER](
	[KeyNik] [int] NOT NULL,
	[KodeCustSupp] [varchar](15) NOT NULL,
	[NIK] [varchar](10) NULL,
	[MingguKe] [tinyint] NULL,
 CONSTRAINT [PK_DBSALESCUSTOMER] PRIMARY KEY CLUSTERED 
(
	[KeyNik] ASC,
	[KodeCustSupp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBEXPEDISI](
	[KODEEXP] [varchar](20) NOT NULL,
	[NAMAEXP] [varchar](40) NOT NULL,
	[ALAMAT1] [varchar](100) NULL,
	[ALAMAT2] [varchar](100) NULL,
	[KOTA] [varchar](30) NULL,
	[KODEPOS] [varchar](7) NULL,
	[TELPON] [varchar](30) NULL,
	[HP] [varchar](30) NULL,
	[FAX] [varchar](30) NULL,
	[EMAIL] [varchar](100) NULL,
	[Contact] [varchar](50) NULL,
	[Perkiraan] [varchar](15) NULL,
	[Aktif] [int] NULL,
 CONSTRAINT [PK_DBEXPEDISI] PRIMARY KEY CLUSTERED 
(
	[KODEEXP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbKaryawan](
	[KeyNIK] [int] NOT NULL,
	[TipeTrans] [varchar](10) NULL,
	[NoBukti] [varchar](30) NULL,
	[NIK] [varchar](10) NULL,
	[Nama] [varchar](50) NULL,
	[NamaPanggilan] [varchar](50) NULL,
	[Kelamin] [varchar](1) NULL,
	[TmpLahir] [varchar](30) NULL,
	[TglLahir] [datetime] NULL,
	[Agama] [varchar](20) NULL,
	[Tinggi] [numeric](18, 2) NULL,
	[Berat] [numeric](18, 2) NULL,
	[BerkacaMata] [tinyint] NULL,
	[Darah] [varchar](2) NULL,
	[NomorKTP] [varchar](50) NULL,
	[AlamatKTP] [varchar](100) NULL,
	[KecamatanKTP] [varchar](30) NULL,
	[KabupatenKTP] [varchar](30) NULL,
	[PropinsiKTP] [varchar](30) NULL,
	[KodePosKTP] [varchar](20) NULL,
	[AlamatRmh] [varchar](100) NULL,
	[KecamatanRmh] [varchar](30) NULL,
	[KabupatenRmh] [varchar](30) NULL,
	[PropinsiRmh] [varchar](30) NULL,
	[KodePosRmh] [varchar](20) NULL,
	[TeleponHP] [varchar](60) NULL,
	[KodePendAkhir] [varchar](20) NULL,
	[KetPendAkhir] [varchar](50) NULL,
	[StatusTempTinggal] [varchar](20) NULL,
	[Hubungan] [tinyint] NULL,
	[Referensi] [varchar](100) NULL,
	[Rekomendasi] [tinyint] NULL,
	[NamaR] [varchar](100) NULL,
	[JabatanR] [varchar](100) NULL,
	[NamaInstR] [varchar](100) NULL,
	[AlamatR] [varchar](100) NULL,
	[TglMasuk] [datetime] NULL,
	[TglKeluar] [datetime] NULL,
	[BankAccount] [varchar](50) NULL,
	[NomorAstek] [varchar](50) NULL,
	[TglAstek] [datetime] NULL,
	[KodeShf] [varchar](15) NULL,
	[KodeJab] [varchar](20) NULL,
	[KodeDept] [varchar](20) NULL,
	[KodeESL] [varchar](20) NULL,
	[KodeGrade] [varchar](20) NULL,
	[GajiPokok] [numeric](18, 2) NULL,
	[TnjJabatan] [numeric](18, 2) NULL,
	[TnjKehadiran] [numeric](18, 2) NULL,
	[TnjTransport] [numeric](18, 2) NULL,
	[TnjMakan] [numeric](18, 2) NULL,
	[TnjLain2] [numeric](18, 2) NULL,
	[TnjHaid] [numeric](18, 2) NULL,
	[JKK] [numeric](18, 2) NULL,
	[JHT] [numeric](18, 2) NULL,
	[JPK] [numeric](18, 2) NULL,
	[JKM] [numeric](18, 2) NULL,
	[Prima] [numeric](18, 2) NULL,
	[TnjPajak] [bit] NULL,
	[StsPJK] [varchar](20) NULL,
	[StsAST] [varchar](20) NULL,
	[Tanggung] [numeric](18, 2) NULL,
	[NPWP] [varchar](50) NULL,
	[Aktif] [tinyint] NULL,
	[LamaKontrak] [int] NULL,
	[TglAkhirKontrak] [datetime] NULL,
	[IDUserInput] [varchar](30) NULL,
	[TglInput] [datetime] NULL,
	[IsSales] [bit] NULL,
	[Produksi] [tinyint] NULL,
 CONSTRAINT [PK_dbKaryawan] PRIMARY KEY CLUSTERED 
(
	[KeyNIK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSO](
	[NOBUKTI] [varchar](30) NOT NULL,
	[NOURUT] [varchar](10) NULL,
	[TANGGAL] [datetime] NOT NULL,
	[TGLJATUHTEMPO] [datetime] NULL,
	[KODECUST] [varchar](15) NOT NULL,
	[NOSPB] [varchar](30) NULL,
	[NoAlamatKirim] [int] NULL,
	[AlamatKirim] [varchar](2000) NULL,
	[HANDLING] [numeric](18, 2) NULL,
	[KODESLS] [int] NOT NULL,
	[KETERANGAN] [varchar](200) NOT NULL,
	[KODEVLS] [varchar](15) NOT NULL,
	[KURS] [numeric](18, 2) NOT NULL,
	[PPN] [tinyint] NOT NULL,
	[TIPEBAYAR] [tinyint] NOT NULL,
	[HARI] [int] NOT NULL,
	[CATATAN] [varchar](2000) NULL,
	[TIPEDISC] [tinyint] NULL,
	[DISC] [float] NULL,
	[DISCRP] [numeric](18, 4) NULL,
	[NILAIPOT] [numeric](18, 2) NOT NULL,
	[NILAIDPP] [numeric](18, 2) NOT NULL,
	[NILAIPPN] [numeric](18, 2) NOT NULL,
	[NILAINET] [numeric](18, 2) NOT NULL,
	[ISCETAK] [tinyint] NOT NULL,
	[ISBATAL] [bit] NOT NULL,
	[USERBATAL] [varchar](15) NOT NULL,
	[KODEGDG] [varchar](15) NULL,
	[KodeExp] [varchar](20) NULL,
	[INSGdg] [varchar](30) NULL,
	[INSBrg] [varchar](3) NULL,
	[Jam] [datetime] NULL,
	[NewNo] [varchar](20) NOT NULL,
	[FLAGTIPE] [varchar](1) NOT NULL,
	[NOPI] [varchar](50) NOT NULL,
	[TIPESC] [tinyint] NOT NULL,
	[TERM1P] [numeric](18, 2) NOT NULL,
	[TERM1VLS] [varchar](15) NOT NULL,
	[TERM1KURS] [numeric](18, 2) NOT NULL,
	[TERM1KET] [varchar](50) NULL,
	[TERM2P] [numeric](18, 2) NOT NULL,
	[TERM2VLS] [varchar](15) NOT NULL,
	[TERM2KURS] [numeric](18, 2) NOT NULL,
	[TERM2KET] [varchar](50) NULL,
	[TERM3P] [numeric](18, 2) NOT NULL,
	[TERM3VLS] [varchar](15) NOT NULL,
	[TERM3KURS] [numeric](18, 2) NOT NULL,
	[TERM3KET] [varchar](50) NULL,
	[TERM4P] [numeric](18, 2) NOT NULL,
	[TERM4VLS] [varchar](15) NOT NULL,
	[TERM4KURS] [numeric](18, 2) NOT NULL,
	[TERM4KET] [varchar](50) NULL,
	[TERM5P] [numeric](18, 2) NOT NULL,
	[TERM5VLS] [varchar](15) NOT NULL,
	[TERM5KURS] [numeric](18, 2) NOT NULL,
	[TERM5KET] [varchar](50) NULL,
	[KetTipeEkspor] [varchar](50) NULL,
	[IsLengkap] [bit] NOT NULL,
	[userid] [varchar](15) NULL,
	[TglInput] [datetime] NULL,
	[NoPesanan] [varchar](150) NULL,
	[TglKirim] [datetime] NULL,
	[MasaBerlaku] [datetime] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[cetakke] [smallint] NULL,
	[MAXOL] [int] NOT NULL,
	[TglBatal] [datetime] NULL,
	[TipePPn] [tinyint] NULL,
	[numerator] [bit] NULL,
	[BahanKertas] [varchar](2000) NULL,
	[TeknikCetak] [varchar](2000) NULL,
	[Sekuriti] [varchar](2000) NULL,
	[Finsihing] [varchar](2000) NULL,
	[logo] [bit] NULL,
	[UrutNumerator1] [varchar](15) NULL,
	[UrutNumerator2] [varchar](15) NULL,
	[KodeSubCustomer] [varchar](30) NULL,
	[KetCustomer] [varchar](100) NULL,
	[UkuranKertas] [varchar](2000) NULL,
	[NoDesain] [varchar](30) NULL,
	[JenisSO] [tinyint] NULL,
	[Orientasi] [tinyint] NULL,
 CONSTRAINT [PK_DBSO] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbSPPDet](
	[NoBukti] [varchar](30) NOT NULL,
	[Urut] [int] NOT NULL,
	[NoSO] [varchar](30) NULL,
	[UrutSO] [int] NULL,
	[KodeBrg] [varchar](25) NULL,
	[NamaBrg] [varchar](200) NOT NULL,
	[QNT] [numeric](18, 2) NULL,
	[QNT2] [numeric](18, 2) NULL,
	[SAT_1] [varchar](5) NULL,
	[SAT_2] [varchar](5) NULL,
	[NOSAT] [int] NULL,
	[ISI] [numeric](18, 2) NULL,
	[NetW] [numeric](18, 2) NULL,
	[GrossW] [numeric](18, 2) NULL,
	[Mesurement] [numeric](18, 2) NOT NULL,
	[KetDetail] [varchar](4000) NULL,
	[ShippingMark] [varchar](8000) NOT NULL,
	[MyID] [timestamp] NOT NULL,
	[HPP] [numeric](18, 2) NOT NULL,
	[Kodegdg] [varchar](15) NOT NULL,
	[isCetakKitir] [bit] NOT NULL,
 CONSTRAINT [PK_dbSPPDet] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBHASILPRDDET](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NULL,
	[KodeGdg] [varchar](15) NULL,
	[QNT] [numeric](18, 2) NULL,
	[NOSAT] [tinyint] NULL,
	[SATUAN] [varchar](5) NULL,
	[ISI] [numeric](18, 2) NULL,
	[NoSPK] [varchar](50) NULL,
	[HPP] [numeric](18, 2) NULL,
	[NPR1] [numeric](18, 2) NULL,
	[NPR2] [numeric](18, 2) NULL,
	[NPR3] [numeric](18, 2) NULL,
	[NPR4] [numeric](18, 2) NULL,
	[PR1] [numeric](18, 2) NULL,
	[PR2] [numeric](18, 2) NULL,
	[PR3] [numeric](18, 2) NULL,
	[PR4] [numeric](18, 2) NULL,
	[KodeMsn] [varchar](15) NULL,
	[tglHasilP] [datetime] NULL,
	[TglSpkMsn] [datetime] NULL,
	[isclosespk] [bit] NULL,
	[TarifMesin] [numeric](18, 2) NULL,
	[JamProduksi]  AS ((([pr1]+[pr2])+[pr3])+[pr4]),
	[JmlTarifPrd]  AS (((([pr1]+[pr2])+[pr3])+[pr4])*[TarifMesin]),
	[urutmesin] [int] NULL,
 CONSTRAINT [PK_DBHASILPRDDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBHASILPRD](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NOURUT] [varchar](10) NULL,
	[TANGGAL] [datetime] NULL,
	[KETERANGAN] [varchar](200) NULL,
	[IsOtorisasi1] [bit] NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[DBHASILPRD] ADD [OtoUser1] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [TglOto1] [datetime] NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [IsOtorisasi2] [bit] NOT NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [OtoUser2] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [TglOto2] [datetime] NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [IsOtorisasi3] [bit] NOT NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [OtoUser3] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [TglOto3] [datetime] NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [IsOtorisasi4] [bit] NOT NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [OtoUser4] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [TglOto4] [datetime] NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [IsOtorisasi5] [bit] NOT NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [OtoUser5] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [TglOto5] [datetime] NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [NoJurnal] [varchar](30) NOT NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [NoUrutJurnal] [varchar](5) NOT NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [TglJurnal] [datetime] NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [CetakKe] [smallint] NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [MaxOL] [int] NOT NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [FlagTipe] [tinyint] NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [MyID] [timestamp] NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD [Shift] [tinyint] NULL
ALTER TABLE [dbo].[DBHASILPRD] ADD  CONSTRAINT [PK_DBHASILPRD] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBDebetNoteDET](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[NoInv] [varchar](20) NOT NULL,
	[Keterangan] [varchar](200) NULL,
	[Nilai] [numeric](18, 2) NULL,
	[KodeVLS] [varchar](15) NOT NULL,
	[Kurs] [numeric](18, 2) NOT NULL,
	[NilaiRp] [numeric](18, 2) NOT NULL,
	[PPN] [tinyint] NULL,
	[NDPP]  AS (case when [ppn]=(1) OR [ppn]=(0) then [NILAIRP]/(100) when [ppn]=(2) then ([NILAIRP]/(100))/(1.1) else (0) end),
	[NPPN]  AS (case when [ppn]=(1) then [NILAIRP]/(100) when [ppn]=(2) then ([NILAIRP]/(100))/(1.1) else (0) end*(0.1)),
	[NNET]  AS (case when [ppn]=(1) OR [ppn]=(0) then [NILAIRP]/(100) when [ppn]=(2) then ([NILAIRP]/(100))/(1.1) else (0) end+case when [ppn]=(1) then [NILAIRP]/(100) when [ppn]=(2) then ([NILAIRP]/(100))/(1.1) else (0) end*(0.1)),
	[NDPPRp]  AS (case when [ppn]=(1) OR [ppn]=(0) then [NILAIRP]/(100) when [ppn]=(2) then ([NILAIRP]/(100))/(1.1) else (0) end*[Kurs]),
	[NPPNRp]  AS ((case when [ppn]=(1) then [NILAIRP]/(100) when [ppn]=(2) then ([NILAIRP]/(100))/(1.1) else (0) end*(0.1))*[Kurs]),
	[NNETRp]  AS ((case when [ppn]=(1) OR [ppn]=(0) then [NILAIRP]/(100) when [ppn]=(2) then ([NILAIRP]/(100))/(1.1) else (0) end+case when [ppn]=(1) then [NILAIRP]/(100) when [ppn]=(2) then ([NILAIRP]/(100))/(1.1) else (0) end*(0.1))*[Kurs]),
 CONSTRAINT [PK_DBDebetNoteDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBDebetNote](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NoUrut] [varchar](5) NOT NULL,
	[TANGGAL] [datetime] NULL,
	[KodeSupp] [varchar](15) NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NOT NULL,
	[FlagTipe] [tinyint] NULL,
 CONSTRAINT [PK_DBDebetNote] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPPLDET](
	[Nobukti] [varchar](50) NOT NULL,
	[urut] [int] NOT NULL,
	[kodebrg] [varchar](25) NOT NULL,
	[Sat] [varchar](5) NOT NULL,
	[Nosat] [tinyint] NOT NULL,
	[Isi] [numeric](18, 2) NOT NULL,
	[Qnt] [numeric](18, 2) NOT NULL,
	[QntPO] [numeric](18, 2) NULL,
	[Keterangan] [varchar](500) NULL,
	[IsClose] [bit] NULL,
	[NoSPK] [varchar](30) NULL,
	[UrutSPK] [int] NULL,
	[NosatSPK] [int] NULL,
	[Isbatal] [bit] NULL,
	[Tglbatal] [datetime] NULL,
	[UserBatal] [varchar](30) NULL,
	[Qntbatal] [numeric](18, 2) NULL,
	[TglKirim] [datetime] NULL,
	[NamaBarang] [varchar](1000) NULL,
	[IsJasa] [bit] NULL,
	[UserID] [varchar](30) NULL,
 CONSTRAINT [PK_DBPPLDET] PRIMARY KEY CLUSTERED 
(
	[Nobukti] ASC,
	[urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPODET](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NOT NULL,
	[PPN] [tinyint] NOT NULL,
	[KURS] [numeric](18, 2) NOT NULL,
	[DISC] [float] NOT NULL,
	[QNT] [numeric](18, 2) NOT NULL,
	[QntBatal] [numeric](18, 2) NOT NULL,
	[TglBatal] [datetime] NULL,
	[NOSAT] [tinyint] NOT NULL,
	[SATUAN] [varchar](5) NOT NULL,
	[ISI] [numeric](18, 2) NOT NULL,
	[HARGA] [numeric](18, 6) NOT NULL,
	[DISCP] [numeric](18, 2) NULL,
	[DISCTOT] [numeric](18, 2) NOT NULL,
	[BYANGKUT] [numeric](18, 2) NOT NULL,
	[HRGNETTO]  AS ([HARGA]-[DISCTOT]),
	[NDISKON]  AS (([Qnt]*([Harga]-[DISCTOT]))*([DISC]/(100))),
	[SUBTOTAL]  AS ([Qnt]*([HARGA]-[DiscTot])),
	[SUBTOTALRp]  AS (([Qnt]*([HARGA]-[Disctot]))*[Kurs]),
	[NoPPL] [varchar](50) NULL,
	[UrutPPL] [int] NULL,
	[IsClose] [bit] NULL,
	[Tolerate] [numeric](5, 4) NULL,
	[DiscP2] [numeric](18, 2) NULL,
	[DiscP3] [numeric](18, 2) NULL,
	[DiscP4] [numeric](18, 2) NULL,
	[DiscP5] [numeric](18, 2) NULL,
	[Isbatal] [bit] NULL,
	[UserBatal] [varchar](30) NULL,
	[PPhP] [numeric](18, 2) NULL,
	[NPPHRP]  AS ((([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))*[PPhP])/(100)),
	[NPPH]  AS ((([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))*[PPhP])/(100)),
	[Ketbrg] [varchar](1000) NULL,
	[PPnP] [numeric](18, 2) NULL,
	[NDPP]  AS (case when [ppn]=(1) OR [ppn]=(0) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end),
	[NPPN]  AS (case when [ppn]=(1) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*([ppnp]/(100))),
	[NDPPRp]  AS (case when [ppn]=(1) OR [ppn]=(0) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*[Kurs]),
	[NPPNRp]  AS ((case when [ppn]=(1) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*([ppnp]/(100)))*[Kurs]),
	[NNET]  AS (case when [ppn]=(1) OR [ppn]=(0) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end+(case when [ppn]=(1) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*([ppnp]/(100))+([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))*(isnull([PPhP],(0))/(100)))),
	[NNETRP]  AS (((case when [ppn]=(1) OR [ppn]=(0) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end+case when [ppn]=(1) then [Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then ([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))/((1)+[ppnp]/(100)) else (0) end*([ppnp]/(100)))+([Qnt]*([HARGA]-[DISCTOT])-(([Qnt]*([HARGA]-[DISCTOT]))*[DISC])/(100))*(isnull([PPhP],(0))/(100)))*[Kurs]),
 CONSTRAINT [PK_DBPODET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPPL](
	[Nobukti] [varchar](50) NOT NULL,
	[Nourut] [varchar](5) NOT NULL,
	[Tanggal] [datetime] NULL,
	[IsClose] [bit] NULL,
	[KDDep] [varchar](20) NOT NULL,
	[cetakke] [smallint] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NOT NULL,
	[IsBatal] [bit] NULL,
	[UserBatal] [varchar](15) NULL,
	[TglBatal] [datetime] NULL,
 CONSTRAINT [PK_DBPPL] PRIMARY KEY CLUSTERED 
(
	[Nobukti] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPERKCUSTSUPP](
	[KodeCustSupp] [varchar](15) NOT NULL,
	[Urut] [int] NOT NULL,
	[Perkiraan] [varchar](25) NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBNERACA](
	[Perkiraan] [varchar](25) NOT NULL,
	[Bulan] [int] NOT NULL,
	[Tahun] [int] NOT NULL,
	[Devisi] [varchar](15) NOT NULL,
	[DK] [tinyint] NOT NULL,
	[Valas] [varchar](15) NOT NULL,
	[Kurs] [numeric](18, 2) NOT NULL,
	[AwalD] [numeric](18, 2) NOT NULL,
	[AwalK] [numeric](18, 2) NOT NULL,
	[AwalDRp] [numeric](18, 2) NOT NULL,
	[AwalKRp] [numeric](18, 2) NOT NULL,
	[MD] [numeric](18, 2) NOT NULL,
	[MK] [numeric](18, 2) NOT NULL,
	[MDRp] [numeric](18, 2) NOT NULL,
	[MKRp] [numeric](18, 2) NOT NULL,
	[JPD] [numeric](18, 2) NOT NULL,
	[JPK] [numeric](18, 2) NOT NULL,
	[JPDRp] [numeric](18, 2) NOT NULL,
	[JPKRp] [numeric](18, 2) NOT NULL,
	[RLD] [numeric](18, 2) NOT NULL,
	[RLK] [numeric](18, 2) NOT NULL,
	[RLDRp] [numeric](18, 2) NOT NULL,
	[RLKRp] [numeric](18, 2) NOT NULL,
	[Budget] [numeric](18, 2) NOT NULL,
	[AkhirD]  AS (case when [DK]=(0) then (([AwalD]+([MD]-[MK]))+([JPD]-[JPK]))+([RLD]-[RLK]) else (0) end),
	[AkhirDRp]  AS (case when [DK]=(0) then (([AwalDRp]+([MDRp]-[MKRp]))+([JPDRp]-[JPKRp]))+([RLDRp]-[RLKRp]) else (0) end),
	[AkhirK]  AS (case when [DK]=(1) then (([AwalK]+([MK]-[MD]))+([JPK]-[JPD]))+([RLK]-[RLD]) else (0) end),
	[AkhirKRp]  AS (case when [DK]=(1) then (([AwalKRp]+([MKRp]-[MDRp]))+([JPKRp]-[JPDRp]))+([RLKRp]-[RLDRp]) else (0) end),
 CONSTRAINT [PK_dbNeraca] PRIMARY KEY CLUSTERED 
(
	[Perkiraan] ASC,
	[Bulan] ASC,
	[Tahun] ASC,
	[Devisi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBAKTIVA](
	[Devisi] [varchar](15) NOT NULL,
	[Perkiraan] [varchar](30) NOT NULL,
	[Keterangan] [varchar](500) NOT NULL,
	[Quantity] [numeric](18, 2) NOT NULL,
	[Persen] [numeric](18, 2) NOT NULL,
	[Tanggal] [datetime] NULL,
	[Tipe] [varchar](50) NOT NULL,
	[Kodebag] [varchar](15) NOT NULL,
	[Akumulasi] [varchar](25) NOT NULL,
	[NoMuka] [varchar](25) NOT NULL,
	[NoBelakang] [varchar](20) NOT NULL,
	[Biaya] [varchar](25) NOT NULL,
	[PersenBiaya1] [numeric](18, 2) NOT NULL,
	[Biaya2] [varchar](25) NOT NULL,
	[PersenBiaya2] [numeric](18, 2) NOT NULL,
	[biaya3] [varchar](25) NOT NULL,
	[persenbiaya3] [numeric](18, 2) NOT NULL,
	[biaya4] [varchar](25) NOT NULL,
	[persenbiaya4] [numeric](18, 2) NOT NULL,
	[TipeAktiva] [tinyint] NOT NULL,
	[NoBelakang2] [varchar](20) NULL,
	[NoAktivaHd] [varchar](35) NULL,
	[Kelompok] [tinyint] NOT NULL,
	[GroupAktiva] [varchar](15) NOT NULL,
 CONSTRAINT [PK_dbAktiva] PRIMARY KEY CLUSTERED 
(
	[Devisi] ASC,
	[Perkiraan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBAKTIVADET](
	[Perkiraan] [varchar](30) NOT NULL,
	[Bulan] [int] NOT NULL,
	[Tahun] [int] NOT NULL,
	[Devisi] [varchar](15) NOT NULL,
	[Valas] [varchar](15) NOT NULL,
	[Kurs] [numeric](18, 2) NOT NULL,
	[Awal] [numeric](18, 2) NOT NULL,
	[AwalSusut] [numeric](18, 2) NOT NULL,
	[AwalD] [numeric](18, 2) NOT NULL,
	[AwalSusutD] [numeric](18, 2) NOT NULL,
	[MD] [numeric](18, 2) NOT NULL,
	[DMD] [numeric](18, 2) NOT NULL,
	[MK] [numeric](18, 2) NOT NULL,
	[DMK] [numeric](18, 2) NOT NULL,
	[SD] [numeric](18, 2) NOT NULL,
	[DSD] [numeric](18, 2) NOT NULL,
	[SK] [numeric](18, 2) NOT NULL,
	[DSK] [numeric](18, 2) NOT NULL,
	[Akhir]  AS (([Awal]+[MD])-[MK]),
	[AkhirD]  AS (([AwalD]+[DMD])-[DMK]),
	[AkhirSusutD]  AS (([AwalSusutD]+[DSD])-[DSK]),
	[MyID] [timestamp] NULL,
	[AkhirSusut]  AS (([AwalSusut]+[SK])-[SD]),
 CONSTRAINT [PK_dbAktivaDet] PRIMARY KEY CLUSTERED 
(
	[Perkiraan] ASC,
	[Bulan] ASC,
	[Tahun] ASC,
	[Devisi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBAKSESPERKIRAAN](
	[UserID] [varchar](25) NOT NULL,
	[Perkiraan] [varchar](25) NOT NULL,
 CONSTRAINT [PK_dbAksesPerkiraan] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[Perkiraan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBTRANSFERDET](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NOT NULL,
	[GDGASAL] [varchar](15) NOT NULL,
	[GDGTUJUAN] [varchar](15) NOT NULL,
	[SAT_1] [varchar](5) NOT NULL,
	[SAT_2] [varchar](5) NOT NULL,
	[NOSAT] [tinyint] NOT NULL,
	[ISI] [numeric](18, 2) NOT NULL,
	[QNT] [numeric](18, 2) NOT NULL,
	[QNT2] [numeric](18, 2) NOT NULL,
	[HARGA] [numeric](18, 2) NOT NULL,
	[HPP] [numeric](18, 2) NOT NULL,
	[MyID] [timestamp] NULL,
 CONSTRAINT [PK_DBTRANSFERDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbSPBRJual](
	[NoBukti] [varchar](30) NOT NULL,
	[NoUrut] [varchar](7) NOT NULL,
	[Tanggal] [datetime] NULL,
	[NoRPJ] [varchar](30) NULL,
	[KodeCustSupp] [varchar](15) NOT NULL,
	[NoPolKend] [varchar](50) NULL,
	[Container] [varchar](50) NULL,
	[NoContainer] [varchar](50) NULL,
	[NoSeal] [varchar](50) NULL,
	[Sopir] [varchar](100) NULL,
	[Catatan] [varchar](4000) NULL,
	[IsCetak] [bit] NULL,
	[IDUser] [varchar](30) NULL,
	[IsClose] [bit] NOT NULL,
	[IsFlag] [bit] NOT NULL,
	[MyID] [timestamp] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NOT NULL,
	[IsBatal] [bit] NULL,
	[UserBatal] [varchar](15) NULL,
	[TglBatal] [datetime] NULL,
	[Flagtipe] [tinyint] NULL,
 CONSTRAINT [PK_dbSPBRJual] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSTOCKBRG](
	[BULAN] [int] NOT NULL,
	[TAHUN] [int] NOT NULL,
	[KODEBRG] [varchar](25) NOT NULL,
	[KODEGDG] [varchar](15) NOT NULL,
	[QNTAWAL] [numeric](18, 2) NOT NULL,
	[QNT2AWAL] [numeric](18, 2) NOT NULL,
	[HRGAWAL] [numeric](18, 2) NOT NULL,
	[QNTPBL] [numeric](18, 2) NOT NULL,
	[QNT2PBL] [numeric](18, 2) NOT NULL,
	[HRGPBL] [numeric](18, 2) NOT NULL,
	[QNTRPB] [numeric](18, 2) NOT NULL,
	[QNT2RPB] [numeric](18, 2) NOT NULL,
	[HRGRPB] [numeric](18, 2) NOT NULL,
	[QNTPNJ] [numeric](18, 2) NOT NULL,
	[QNT2PNJ] [numeric](18, 2) NOT NULL,
	[HRGPNJ] [numeric](18, 2) NOT NULL,
	[QNTRPJ] [numeric](18, 2) NOT NULL,
	[QNT2RPJ] [numeric](18, 2) NOT NULL,
	[HRGRPJ] [numeric](18, 2) NOT NULL,
	[QNTPRJ] [numeric](18, 2) NOT NULL,
	[HRGPRJ] [numeric](18, 2) NOT NULL,
	[QNTADI] [numeric](18, 2) NOT NULL,
	[QNT2ADI] [numeric](18, 2) NOT NULL,
	[HRGADI] [numeric](18, 2) NOT NULL,
	[QNTADO] [numeric](18, 2) NOT NULL,
	[QNT2ADO] [numeric](18, 2) NOT NULL,
	[HRGADO] [numeric](18, 2) NOT NULL,
	[QNTUKI] [numeric](18, 2) NOT NULL,
	[QNT2UKI] [numeric](18, 2) NOT NULL,
	[HRGUKI] [numeric](18, 2) NOT NULL,
	[QNTUKO] [numeric](18, 2) NOT NULL,
	[QNT2UKO] [numeric](18, 2) NOT NULL,
	[HRGUKO] [numeric](18, 2) NOT NULL,
	[QNTTRI] [numeric](18, 2) NOT NULL,
	[HRGTRI] [numeric](18, 2) NOT NULL,
	[QNT2TRI] [numeric](18, 2) NOT NULL,
	[QNTTRO] [numeric](18, 2) NOT NULL,
	[QNT2TRO] [numeric](18, 2) NOT NULL,
	[HRGTRO] [numeric](18, 2) NOT NULL,
	[QNTPMK] [numeric](18, 2) NOT NULL,
	[QNT2PMK] [numeric](18, 2) NULL,
	[HRGPMK] [numeric](18, 2) NOT NULL,
	[QNTRPK] [numeric](18, 2) NOT NULL,
	[QNT2RPK] [numeric](18, 2) NOT NULL,
	[HRGRPK] [numeric](18, 2) NOT NULL,
	[QntHPrd] [numeric](18, 2) NOT NULL,
	[Qnt2HPrd] [numeric](18, 2) NOT NULL,
	[HRGHPrd] [numeric](18, 2) NOT NULL,
	[HRGRATA] [numeric](18, 2) NOT NULL,
	[QNTIN]  AS (((((([QNTPBL]+[QNTRPJ])+[QNTADI])+[QNTUKI])+[QNTTRI])+[QNTHPRD])+[QNTRPK]),
	[QNT2IN]  AS (((((([QNT2PBL]+[QNT2RPJ])+[QNT2ADI])+[QNT2UKI])+[QNT2TRI])+[QNT2HPRD])+[QNT2RPK]),
	[RPIN]  AS (((((([HRGPBL]+[HRGRPJ])+[HRGADI])+[HRGUKI])+[HRGTRI])+[HRGHPRD])+[HRGRPK]),
	[QNTOUT]  AS ((((([QNTRPB]+[QNTPNJ])+[QNTADO])+[QNTUKO])+[QNTTRO])+[QntPMK]),
	[QNT2OUT]  AS ((((([QNT2RPB]+[QNT2PNJ])+[QNT2ADO])+[QNT2UKO])+[QNT2TRO])+[QNT2PMK]),
	[RPOUT]  AS ((((([HRGRPB]+[HRGPNJ])+[HRGADO])+[HRGUKO])+[HRGTRO])+[HRGPMK]),
	[SALDOQNT]  AS (((((((([QNTAWAL]+[QNTPBL])+[QNTRPJ])+[QNTADI])+[QNTUKI])+[QNTTRI])+[QNTHPRD])+[QNTRPK])-((((([QNTRPB]+[QNTPNJ])+[QNTADO])+[QNTUKO])+[QNTTRO])+[QntPMK])),
	[SALDO2QNT]  AS (((((((([QNT2AWAL]+[QNT2PBL])+[QNT2RPJ])+[QNT2ADI])+[QNT2UKI])+[QNT2TRI])+[QNT2HPRD])+[QNT2RPK])-((((([QNT2RPB]+[QNT2PNJ])+[QNT2ADO])+[QNT2UKO])+[QNT2TRO])+[QNT2PMK])),
	[SALDORP]  AS (((((((([HRGAWAL]+[HRGPBL])+[HRGRPJ])+[HRGADI])+[HRGUKI])+[HRGTRI])+[HRGHPRD])+[HRGRPK])-((((([HRGRPB]+[HRGPNJ])+[HRGADO])+[HRGUKO])+[HRGTRO])+[HRGPMK])),
	[SaldoAV]  AS ((0)),
	[Saldo2AV]  AS ((0)),
 CONSTRAINT [PK_DBSTOCKBRG] PRIMARY KEY NONCLUSTERED 
(
	[BULAN] ASC,
	[TAHUN] ASC,
	[KODEBRG] ASC,
	[KODEGDG] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBTRANSFER](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NOURUT] [varchar](10) NULL,
	[TANGGAL] [datetime] NULL,
	[NOTE] [varchar](200) NULL,
	[IDUSER] [varchar](15) NOT NULL,
	[NoPenyerahan] [varchar](100) NOT NULL,
	[MyID] [timestamp] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NOT NULL,
	[FlagTipe] [tinyint] NULL,
 CONSTRAINT [PK_DBTRANSFER] PRIMARY KEY NONCLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [IX_DBTRANSFER] UNIQUE CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbSPBRJualDet](
	[NoBukti] [varchar](30) NOT NULL,
	[Urut] [int] NOT NULL,
	[Noinv] [varchar](30) NOT NULL,
	[UrutInv] [int] NOT NULL,
	[KodeBrg] [varchar](25) NULL,
	[Namabrg] [varchar](200) NULL,
	[QNT] [numeric](18, 2) NULL,
	[QNT2] [numeric](18, 2) NULL,
	[SAT_1] [varchar](5) NOT NULL,
	[SAT_2] [varchar](5) NULL,
	[NOSAT] [int] NULL,
	[ISI] [numeric](18, 2) NULL,
	[NetW] [numeric](18, 2) NULL,
	[GrossW] [numeric](18, 2) NULL,
	[HPP] [numeric](18, 2) NOT NULL,
	[KodeGdg] [varchar](15) NULL,
 CONSTRAINT [PK_dbSPBRJualDet] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBAREA](
	[KODEAREA] [varchar](20) NOT NULL,
	[NAMAAREA] [varchar](50) NULL,
 CONSTRAINT [PK_DBAREA] PRIMARY KEY CLUSTERED 
(
	[KODEAREA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBKOTA](
	[KodeKota] [varchar](15) NOT NULL,
	[NamaKota] [varchar](30) NULL,
	[KodeArea] [varchar](30) NULL,
 CONSTRAINT [PK_DBKOTA] PRIMARY KEY CLUSTERED 
(
	[KodeKota] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBFLMENUREPORT](
	[UserID] [varchar](25) NOT NULL,
	[L1] [varchar](25) NOT NULL,
	[Access] [bit] NOT NULL,
	[IsDesign] [bit] NOT NULL,
	[Isexport] [bit] NOT NULL,
 CONSTRAINT [PK_DBFLMENUREPORT_1] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[L1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBFLMENU](
	[USERID] [varchar](25) NOT NULL,
	[L1] [varchar](25) NOT NULL,
	[HASACCESS] [bit] NOT NULL,
	[ISTAMBAH] [bit] NOT NULL,
	[ISKOREKSI] [bit] NOT NULL,
	[ISHAPUS] [bit] NOT NULL,
	[ISCETAK] [bit] NOT NULL,
	[ISEXPORT] [bit] NOT NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[TIPE] [varchar](3) NOT NULL,
	[IsBatal] [bit] NOT NULL,
	[pembatalan] [bit] NULL,
 CONSTRAINT [PK_DBFLMENU_1] PRIMARY KEY CLUSTERED 
(
	[USERID] ASC,
	[L1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBHUTPIUT](
	[NoFaktur] [varchar](35) NOT NULL,
	[NoRetur] [varchar](35) NOT NULL,
	[TipeTrans] [varchar](3) NOT NULL,
	[KodeCustSupp] [varchar](15) NOT NULL,
	[NoBukti] [varchar](35) NOT NULL,
	[NoMsk] [int] NOT NULL,
	[Urut] [int] NOT NULL,
	[Tanggal] [datetime] NULL,
	[JatuhTempo] [datetime] NULL,
	[Debet] [numeric](18, 2) NOT NULL,
	[Kredit] [numeric](18, 2) NOT NULL,
	[Saldo]  AS (case when [Tipe]='HT' then [Kredit]-[Debet] when [Tipe]='PT' then [Debet]-[Kredit] else (0) end),
	[Valas] [varchar](15) NOT NULL,
	[Kurs] [numeric](18, 4) NOT NULL,
	[DebetD] [numeric](18, 2) NOT NULL,
	[KreditD] [numeric](18, 2) NOT NULL,
	[SaldoD]  AS (case when [Tipe]='HT' then [KreditD]-[DebetD] when [Tipe]='PT' then [DebetD]-[KreditD] else (0) end),
	[KodeSales] [varchar](15) NOT NULL,
	[Tipe] [varchar](4) NOT NULL,
	[Perkiraan] [varchar](25) NOT NULL,
	[Catatan] [varchar](800) NOT NULL,
	[MyID] [timestamp] NULL,
	[NOINVOICE] [varchar](50) NULL,
	[TGLINVOICE] [datetime] NULL,
	[NOPAJAK] [varchar](50) NULL,
	[TGLFPJ] [datetime] NULL,
	[KodeVls_] [varchar](20) NULL,
	[Kurs_] [numeric](18, 2) NULL,
	[KursBayar] [numeric](18, 2) NULL,
	[FlagSimbol] [varchar](2) NULL,
	[Tipebayar] [int] NULL,
	[IsOtorisasi1] [bit] NULL,
	[OtoUser1] [varchar](15) NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NULL,
	[OtoUser2] [varchar](15) NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NULL,
	[OtoUser3] [varchar](15) NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NULL,
	[OtoUser4] [varchar](15) NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NULL,
	[OtoUser5] [varchar](15) NULL,
	[TglOto5] [datetime] NULL,
	[IsClose] [bit] NULL,
	[NoJurnal] [varchar](30) NULL,
	[NoUrutJurnal] [varchar](5) NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NULL,
	[NOSO] [varchar](50) NULL,
	[NOSPB] [varchar](50) NULL,
	[KodeBrgCust] [varchar](50) NULL,
	[isClosing] [bit] NULL,
 CONSTRAINT [PK_dbHutang] PRIMARY KEY NONCLUSTERED 
(
	[NoFaktur] ASC,
	[NoRetur] ASC,
	[TipeTrans] ASC,
	[KodeCustSupp] ASC,
	[NoBukti] ASC,
	[NoMsk] ASC,
	[Urut] ASC,
	[Tipe] ASC,
	[Perkiraan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBTempHUTPIUT](
	[NoFaktur] [varchar](30) NOT NULL,
	[NoRetur] [varchar](30) NOT NULL,
	[TipeTrans] [varchar](3) NOT NULL,
	[KodeCustSupp] [varchar](15) NOT NULL,
	[NoBukti] [varchar](30) NOT NULL,
	[NoMsk] [int] NOT NULL,
	[Urut] [int] NOT NULL,
	[Tanggal] [datetime] NULL,
	[JatuhTempo] [datetime] NULL,
	[Debet] [numeric](18, 2) NOT NULL,
	[Kredit] [numeric](18, 2) NOT NULL,
	[Saldo]  AS (case when [Tipe]='HT' then [Kredit]-[Debet] when [Tipe]='PT' then [Debet]-[Kredit] else (0) end),
	[Valas] [varchar](15) NOT NULL,
	[Kurs] [numeric](18, 4) NOT NULL,
	[DebetD] [numeric](18, 2) NOT NULL,
	[KreditD] [numeric](18, 2) NOT NULL,
	[SaldoD]  AS (case when [Tipe]='HT' then [KreditD]-[DebetD] when [Tipe]='PT' then [DebetD]-[KreditD] else (0) end),
	[KodeSales] [varchar](15) NOT NULL,
	[Tipe] [varchar](4) NOT NULL,
	[Perkiraan] [varchar](25) NOT NULL,
	[Catatan] [varchar](800) NOT NULL,
	[MyID] [timestamp] NULL,
	[IDUser] [varchar](30) NULL,
	[StatusUID] [varchar](1) NULL,
	[JumlahSaldo] [numeric](18, 4) NULL,
	[JumlahSaldoD] [numeric](18, 4) NULL,
	[TipeDK] [varchar](1) NULL,
	[NoInvoice] [varchar](25) NULL,
	[Valas_] [varchar](15) NULL,
	[Kurs_] [numeric](18, 4) NULL,
	[KursBayar] [numeric](18, 4) NULL,
	[NOSO] [varchar](50) NULL,
	[NOSPB] [varchar](50) NULL,
	[KodeBrgCust] [varchar](50) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPRODUKSITenaker](
	[Nobukti] [varchar](20) NOT NULL,
	[Urut] [int] NOT NULL,
	[Nik] [varchar](10) NULL,
	[UrutNiK] [int] NULL,
	[Jam] [numeric](18, 2) NULL,
	[TrfTenaker] [numeric](18, 2) NULL,
	[QntAktualTK] [numeric](18, 2) NULL,
	[KeteranganTK] [varchar](1000) NULL,
	[JamL] [numeric](18, 2) NULL,
	[JmLTrfTenaker]  AS ((isnull([jam],(0))+isnull([JamL],(0)))*[TrfTenaker]),
	[JamTenaker]  AS (isnull([Jam],(0))+isnull([jaml],(0)))
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPRODUKSIDET](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NULL,
	[QNT] [numeric](18, 2) NULL,
	[NOSAT] [tinyint] NULL,
	[SATUAN] [varchar](5) NULL,
	[ISI] [numeric](18, 2) NULL,
	[NoSPK] [varchar](50) NULL,
	[HPP] [numeric](18, 2) NULL,
	[NPR1] [numeric](18, 2) NULL,
	[NPR2] [numeric](18, 2) NULL,
	[NPR3] [numeric](18, 2) NULL,
	[NPR4] [numeric](18, 2) NULL,
	[PR1] [numeric](18, 2) NULL,
	[PR2] [numeric](18, 2) NULL,
	[PR3] [numeric](18, 2) NULL,
	[PR4] [numeric](18, 2) NULL,
	[KodeMsn] [varchar](15) NULL,
	[tglHasilP] [datetime] NULL,
	[TglSpkMsn] [datetime] NULL,
	[isclosespk] [bit] NULL,
	[TarifMesin] [numeric](18, 2) NULL,
	[urutmesin] [int] NULL,
	[PR5] [numeric](18, 2) NULL,
	[PR6] [numeric](18, 2) NULL,
	[QntAktual] [numeric](18, 2) NULL,
	[Keterangan] [varchar](1000) NULL,
	[NPR5] [numeric](18, 2) NULL,
	[PR7] [numeric](18, 2) NULL,
	[PR8] [numeric](18, 2) NULL,
	[JamProduksi]  AS (((((([pr1]+[pr2])+[pr3])+[pr4])+[pr5])+[pr6])+[pr7]),
	[JmlTarifPrd]  AS ((((((([pr1]+[pr2])+[pr3])+[pr4])+[pr5])+[pr6])+[pr7])*[TarifMesin]),
	[Lintasan] [tinyint] NULL,
	[HasilBaik] [numeric](18, 2) NULL,
	[HasilRusak] [numeric](18, 2) NULL,
 CONSTRAINT [PK_DBPRODUKSIDDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBProduksi](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NOURUT] [varchar](10) NULL,
	[TANGGAL] [datetime] NULL,
	[KETERANGAN] [varchar](200) NULL,
	[IsOtorisasi1] [bit] NULL,
	[OtoUser1] [varchar](15) NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NULL,
	[OtoUser2] [varchar](15) NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NULL,
	[OtoUser3] [varchar](15) NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NULL,
	[OtoUser4] [varchar](15) NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NULL,
	[OtoUser5] [varchar](15) NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NULL,
	[NoUrutJurnal] [varchar](5) NULL,
	[TglJurnal] [datetime] NULL,
	[CetakKe] [smallint] NULL,
	[MaxOL] [int] NULL,
	[FlagTipe] [tinyint] NULL,
	[MyID] [timestamp] NULL,
	[Shift] [tinyint] NULL,
 CONSTRAINT [PK_DBProduksi] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempHPD](
	[NoBukti] [varchar](50) NULL,
	[Urut] [int] NULL,
	[Tanggal] [datetime] NULL,
	[NoSPK] [varchar](50) NULL,
	[Kodebrg] [varchar](50) NULL,
	[Qnt] [int] NULL,
	[SisaHpd] [int] NULL,
	[RpBahan] [numeric](18, 2) NULL,
	[RpBiaya] [numeric](18, 2) NULL,
	[RpMesin] [numeric](18, 2) NULL,
	[RpTenaker] [numeric](18, 2) NULL,
	[Hpp] [float] NULL,
	[NoJurnal] [varchar](50) NULL,
	[RpReturBahan] [numeric](18, 2) NULL,
	[HppA] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DbWipMasuk](
	[Nospk] [nvarchar](255) NULL,
	[Tanggal] [datetime] NULL,
	[Kodebrg] [nvarchar](255) NULL,
	[Bulan] [nvarchar](255) NULL,
	[Tahun] [nvarchar](255) NULL,
	[Rpbahan] [float] NULL,
	[Rpmesin] [float] NULL,
	[Rptenaker] [float] NULL,
	[rpbiaya] [float] NULL,
	[RpRbiaya] [float] NULL,
	[wip] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBTarifTenaker](
	[KodeTarifTenaker] [varchar](15) NOT NULL,
	[Ket] [varchar](50) NULL,
	[Tarif] [numeric](18, 2) NULL,
	[Nik] [varchar](25) NULL,
 CONSTRAINT [PK_DBTarifTenaker] PRIMARY KEY CLUSTERED 
(
	[KodeTarifTenaker] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBMesin](
	[KodeMsn] [varchar](15) NULL,
	[Ket] [varchar](50) NULL,
	[KodePrs] [varchar](10) NULL,
	[Kapasitas] [numeric](18, 2) NULL,
	[Tarif] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempRepProduksi](
	[NoBukti] [varchar](50) NULL,
	[NobuktiPrd] [varchar](50) NULL,
	[Tanggal] [datetime] NULL,
	[NeedOtorisasi] [int] NULL,
	[UrutPrd] [int] NULL,
	[NoSPK] [varchar](50) NULL,
	[NoSPKPrd] [varchar](50) NULL,
	[UrutX] [int] NULL,
	[KP] [nchar](10) NULL,
	[KodeBrg] [varchar](50) NULL,
	[NamaBrg] [varchar](150) NULL,
	[Qnt] [numeric](18, 2) NULL,
	[Satuan] [varchar](50) NULL,
	[NoIncoice] [varchar](50) NULL,
	[QntInvoice] [numeric](18, 2) NULL,
	[RpInvoice] [numeric](18, 2) NULL,
	[NoPenyerahan] [varchar](50) NULL,
	[TglPenyerahan] [datetime] NULL,
	[KodeBhn] [varchar](50) NULL,
	[NamaBhn] [varchar](150) NULL,
	[RpBahan] [numeric](18, 2) NULL,
	[KodeMsn] [varchar](50) NULL,
	[NamaMesin] [varchar](50) NULL,
	[JamPrd] [numeric](18, 2) NULL,
	[JmlTarifPrd] [numeric](18, 2) NULL,
	[NIK] [varchar](50) NULL,
	[JamTenaker] [numeric](18, 2) NULL,
	[JmlTarifTenaker] [numeric](18, 2) NULL,
	[NoBiaya] [varchar](50) NULL,
	[TglBiaya] [datetime] NULL,
	[RpBiaya] [numeric](18, 2) NULL,
	[UrutBahan] [int] NULL,
	[NOSO] [varchar](50) NULL,
	[Urutan] [int] NULL,
	[UrutMesin] [int] NULL,
	[NamaTenaker] [varchar](50) NULL,
	[Qntbahan] [numeric](18, 2) NULL,
	[NoRPenyerahan] [varchar](50) NULL,
	[TglRPenyerahan] [datetime] NULL,
	[RKodeBhn] [varchar](50) NULL,
	[RNamaBhn] [varchar](150) NULL,
	[RRpBahan] [numeric](18, 2) NULL,
	[RQntBahan] [numeric](18, 2) NULL,
	[pemesan] [varchar](200) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempRepProduksiProff](
	[NoBukti] [varchar](50) NULL,
	[NobuktiPrd] [varchar](50) NULL,
	[Tanggal] [datetime] NULL,
	[NeedOtorisasi] [int] NULL,
	[UrutPrd] [int] NULL,
	[NoSPK] [varchar](50) NULL,
	[NoSPKPrd] [varchar](50) NULL,
	[UrutX] [int] NULL,
	[KodeBrg] [varchar](50) NULL,
	[NamaBrg] [varchar](150) NULL,
	[Qnt] [numeric](18, 2) NULL,
	[Satuan] [varchar](50) NULL,
	[NoPenyerahan] [varchar](50) NULL,
	[TglPenyerahan] [datetime] NULL,
	[KodeBhn] [varchar](50) NULL,
	[NamaBhn] [varchar](150) NULL,
	[RpBahan] [numeric](18, 2) NULL,
	[KodeMsn] [varchar](50) NULL,
	[NamaMesin] [varchar](50) NULL,
	[JamPrd] [numeric](18, 2) NULL,
	[JmlTarifPrd] [numeric](18, 2) NULL,
	[NIK] [varchar](50) NULL,
	[JamTenaker] [numeric](18, 2) NULL,
	[JmlTarifTenaker] [numeric](18, 2) NULL,
	[NoBiaya] [varchar](50) NULL,
	[TglBiaya] [datetime] NULL,
	[RpBiaya] [numeric](18, 2) NULL,
	[UrutBahan] [int] NULL,
	[NOSO] [varchar](50) NULL,
	[Urutan] [int] NULL,
	[UrutMesin] [int] NULL,
	[NamaTenaker] [varchar](50) NULL,
	[Qntbahan] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBKreditNote](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NoUrut] [varchar](5) NOT NULL,
	[TANGGAL] [datetime] NULL,
	[KodeSupp] [varchar](15) NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NOT NULL,
	[FlagTipe] [tinyint] NULL,
 CONSTRAINT [PK_DBKreditNote] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBKreditNoteDET](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[NoInv] [varchar](30) NOT NULL,
	[Keterangan] [varchar](200) NULL,
	[Nilai] [numeric](18, 2) NULL,
	[KodeVLS] [varchar](15) NOT NULL,
	[Kurs] [numeric](18, 2) NOT NULL,
	[NilaiRp] [numeric](18, 2) NOT NULL,
	[URUTInvoicepl] [int] NULL,
	[PPN] [tinyint] NULL,
	[NDPP]  AS (case when [ppn]=(1) OR [ppn]=(0) then [NILAIRP] when [ppn]=(2) then ([NILAIRP]/(100))/(1.1) else (0) end),
	[NPPN]  AS (case when [ppn]=(1) then [NILAIRP] when [ppn]=(2) then ([NILAIRP]/(100))/(1.1) else (0) end*(0.1)),
	[NNET]  AS (case when [ppn]=(1) OR [ppn]=(0) then [NILAIRP] when [ppn]=(2) then [NILAIRP]/(1.1) else (0) end+case when [ppn]=(1) then [NILAIRP] when [ppn]=(2) then [NILAIRP]/(1.1) else (0) end*(0.1)),
	[NDPPRp]  AS (case when [ppn]=(1) OR [ppn]=(0) then [NILAIRP] when [ppn]=(2) then ([NILAIRP]/(100))/(1.1) else (0) end*[Kurs]),
	[NPPNRp]  AS ((case when [ppn]=(1) then [NILAIRP] when [ppn]=(2) then ([NILAIRP]/(100))/(1.1) else (0) end*(0.1))*[Kurs]),
	[NNETRp]  AS ((case when [ppn]=(1) OR [ppn]=(0) then [NILAIRP] when [ppn]=(2) then [NILAIRP]/(1.1) else (0) end+case when [ppn]=(1) then [NILAIRP] when [ppn]=(2) then [NILAIRP]/(1.1) else (0) end*(0.1))*[Kurs]),
 CONSTRAINT [PK_DBKreditNoteDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HrgSo](
	[Noso] [nvarchar](255) NULL,
	[Qnt] [float] NULL,
	[Dpp] [float] NULL,
	[HrgPwt] [float] NULL,
	[Hrgso] [float] NULL,
	[F6] [nvarchar](255) NULL,
	[F7] [nvarchar](255) NULL,
	[F8] [nvarchar](255) NULL,
	[F9] [nvarchar](255) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBKomisiCustomer](
	[KodeCustSupp] [varchar](15) NOT NULL,
	[KodeBrg] [varchar](25) NOT NULL,
	[Urut] [int] NOT NULL,
	[Nama] [varchar](50) NULL,
	[Kurir] [numeric](18, 0) NULL,
	[Kurir_2] [numeric](18, 0) NULL,
	[islunas] [bit] NOT NULL,
 CONSTRAINT [PK_DBKomisiCustomer_1] PRIMARY KEY CLUSTERED 
(
	[KodeCustSupp] ASC,
	[KodeBrg] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBKirimDET](
	[NoBukti] [varchar](30) NOT NULL,
	[KodeBrg] [varchar](25) NOT NULL,
	[NoSat] [int] NULL,
	[Urut] [int] NULL,
	[Tanggal] [datetime] NOT NULL,
	[Qnt] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBKELOMPOK](
	[KodeKelompok] [varchar](15) NOT NULL,
	[Keterangan] [varchar](100) NOT NULL,
	[Perkiraan] [varchar](25) NOT NULL,
 CONSTRAINT [PK_DBKELOMPOK] PRIMARY KEY CLUSTERED 
(
	[KodeKelompok] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[personal_access_tokens](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[tokenable_type] [nvarchar](255) NOT NULL,
	[tokenable_id] [bigint] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[token] [nvarchar](64) NOT NULL,
	[abilities] [nvarchar](max) NULL,
	[last_used_at] [datetime] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PBJ1](
	[Kode Barang] [nvarchar](255) NULL,
	[Nama] [nvarchar](255) NULL,
	[KodeGroup] [nvarchar](255) NULL,
	[KodesubGroup] [nvarchar](255) NULL,
	[Satuan 1] [nvarchar](255) NULL,
	[Satuan 2] [nvarchar](255) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[migrations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[migration] [nvarchar](255) NOT NULL,
	[batch] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[So2010](
	[Tanggal] [datetime] NULL,
	[Nobukti] [nvarchar](255) NULL,
	[Kodebrg] [nvarchar](255) NULL,
	[Kodecustsupp] [nvarchar](255) NULL,
	[qnt] [float] NULL,
	[sat] [nvarchar](255) NULL,
	[harga] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[so](
	[Noso] [nvarchar](255) NULL,
	[Kodecust] [nvarchar](255) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Sheet2$](
	[Urut] [float] NULL,
	[KODEBRG] [nvarchar](255) NULL,
	[NAMABRG] [nvarchar](255) NULL,
	[KODEGDG] [nvarchar](255) NULL,
	[SATUAN] [nvarchar](255) NULL,
	[NOSAT] [float] NULL,
	[isi] [nvarchar](255) NULL,
	[QntOpname] [float] NULL,
	[HARGA] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Sheet2](
	[Kode] [nvarchar](255) NULL,
	[SUPLIYER] [nvarchar](255) NULL,
	[ALAMAT] [nvarchar](255) NULL,
	[TELPON] [nvarchar](255) NULL,
	[FAX] [nvarchar](255) NULL,
	[jenis] [float] NULL,
	[Ket] [nvarchar](255) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SG](
	[F1] [nvarchar](255) NULL,
	[F2] [nvarchar](255) NULL,
	[F3] [nvarchar](255) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[G1$](
	[NOAWAL] [nvarchar](255) NULL,
	[URUTLAMA] [nvarchar](255) NULL,
	[URUT] [nvarchar](255) NULL,
	[F4] [nvarchar](255) NOT NULL,
	[NOBUKTI] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NOT NULL,
	[F7] [float] NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[G01$](
	[nowal] [nvarchar](255) NULL,
	[Urut] [nvarchar](255) NULL,
	[Nobukti] [nvarchar](255) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[G004$](
	[No ] [float] NULL,
	[Kodebrg] [nvarchar](255) NULL,
	[NamaBrg] [nvarchar](255) NULL,
	[F4] [nvarchar](255) NULL,
	[F5] [nvarchar](255) NULL,
	[Qnt] [float] NULL,
	[Harga] [float] NULL,
	[F8] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[G003$](
	[no] [float] NULL,
	[Kodebrg] [nvarchar](255) NULL,
	[Namabrg] [nvarchar](255) NULL,
	[Qnt] [float] NULL,
	[Harga] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[G002$](
	[no] [float] NULL,
	[Kodebrg] [nvarchar](255) NULL,
	[Namabrg] [nvarchar](255) NULL,
	[Qnt] [float] NULL,
	[Harga] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempHPDAll](
	[NoBukti] [varchar](50) NULL,
	[Urut] [int] NULL,
	[Tanggal] [datetime] NULL,
	[NoSPK] [varchar](50) NULL,
	[Kodebrg] [varchar](50) NULL,
	[Qnt] [int] NULL,
	[SisaHpd] [int] NULL,
	[RpBahan] [numeric](18, 2) NULL,
	[RpBiaya] [numeric](18, 2) NULL,
	[RpMesin] [numeric](18, 2) NULL,
	[RpTenaker] [numeric](18, 2) NULL,
	[Hpp] [float] NULL,
	[NoJurnal] [varchar](50) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Stockopname](
	[Urut] [float] NULL,
	[KODEBRG] [nvarchar](255) NULL,
	[NAMABRG] [nvarchar](255) NULL,
	[KODEGDG] [nvarchar](255) NULL,
	[SATUAN] [nvarchar](255) NULL,
	[NOSAT] [float] NULL,
	[isi] [nvarchar](255) NULL,
	[QntOpname] [float] NULL,
	[HARGA] [float] NULL,
	[F10] [nvarchar](255) NULL,
	[F11] [nvarchar](255) NULL,
	[F12] [nvarchar](255) NULL,
	[F13] [nvarchar](255) NULL,
	[F14] [nvarchar](255) NULL,
	[F15] [nvarchar](255) NULL,
	[F16] [nvarchar](255) NULL,
	[F17] [nvarchar](255) NULL
) ON [PRIMARY]
GO

			CREATE TABLE [dbo].[SQLStatementsForJSONOutput](
				[ID] [int] IDENTITY(1,1) NOT NULL,
				--[StatementOrder] [int] NULL,
				[Descriptor] [nvarchar](50) NULL,
				[StatementString] [nvarchar](max) NULL,
			PRIMARY KEY CLUSTERED 
			(
				[ID] ASC
			)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
			) ON [PRIMARY]
		END
	IF OBJECT_ID (N'dbo.StringsForOutput', N'U') IS NULL
		BEGIN
			PRINT '<><><><><><><><><><> StringsForOutput does not exist. It will be created. <><><><><><><><><><>'
			CREATE TABLE [dbo].[StringsForOutput](
				ID INT IDENTITY(1,1) PRIMARY KEY,
				[String] [nvarchar](max) NULL
			) ON [PRIMARY]
		END
PRINT 'Finished creating tables needed for SQL bits and output'
--*******************************************************************


CREATE TABLE [dbo].[DBSUBCUSTOMER](
	[KodeSubCustomer] [varchar](30) NOT NULL,
	[NamaSubCustomer] [varchar](200) NULL,
	[kodecust] [varchar](15) NULL,
	[IsUpdate] [bit] NULL,
 CONSTRAINT [PK_DBSUBCUSTOMER] PRIMARY KEY CLUSTERED 
(
	[KodeSubCustomer] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CUSTOMEREVA](
	[KDPLG] [varchar](50) NULL,
	[NMPLG] [varchar](50) NULL,
	[ALAMAT] [varchar](50) NULL,
	[KOTA] [varchar](50) NULL,
	[KODEPOS] [varchar](50) NULL,
	[TELP] [varchar](50) NULL,
	[FAX] [varchar](50) NULL,
	[TGL] [varchar](50) NULL,
	[USERAPP] [varchar](50) NULL,
	[Negara] [varchar](50) NULL,
	[perkiraan] [varchar](50) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CustomerBaru](
	[Kodecustsupp] [nvarchar](255) NULL,
	[Thn] [float] NULL,
	[Noso] [nvarchar](255) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBNOMORPK](
	[Tipe] [varchar](5) NOT NULL,
	[NOURUT] [varchar](50) NULL,
	[NOBUKTI] [varchar](50) NOT NULL,
	[USERID] [varchar](15) NOT NULL,
	[Bulan] [int] NOT NULL,
	[Tahun] [int] NOT NULL,
	[flagtipe] [tinyint] NULL,
	[KodeGdg] [varchar](5) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBNOMOR](
	[BKK] [varchar](5) NOT NULL,
	[NOBKK] [varchar](25) NULL,
	[BKM] [varchar](5) NOT NULL,
	[NOBKM] [varchar](25) NULL,
	[BBM] [varchar](5) NOT NULL,
	[NOBBM] [varchar](25) NULL,
	[BBK] [varchar](5) NOT NULL,
	[NOBBK] [varchar](25) NULL,
	[BMM] [varchar](5) NOT NULL,
	[NOBMM] [varchar](25) NULL,
	[BJK] [varchar](5) NOT NULL,
	[NOBJK] [varchar](25) NULL,
	[PJL] [varchar](5) NOT NULL,
	[NoPJL] [varchar](25) NULL,
	[PBL] [varchar](5) NOT NULL,
	[NOPBL] [varchar](25) NULL,
	[BPPB] [varchar](5) NOT NULL,
	[NOBPPB] [varchar](25) NULL,
	[BPSB] [varchar](5) NULL,
	[NOBPSB] [varchar](25) NULL,
	[BBP] [varchar](5) NULL,
	[NOBBP] [varchar](25) NULL,
	[BPB] [varchar](5) NOT NULL,
	[NOBPB] [varchar](25) NULL,
	[SPRK] [varchar](5) NOT NULL,
	[NOSPRK] [varchar](25) NULL,
	[BSPRK] [varchar](5) NOT NULL,
	[NOBSPRK] [varchar](25) NULL,
	[PPL] [varchar](5) NOT NULL,
	[NOPPL] [varchar](25) NULL,
	[BPL] [varchar](5) NOT NULL,
	[NOBPL] [varchar](25) NULL,
	[PO] [varchar](5) NOT NULL,
	[NOPO] [varchar](25) NULL,
	[BPO] [varchar](5) NOT NULL,
	[NOBPO] [varchar](25) NULL,
	[BP] [varchar](5) NOT NULL,
	[NOBP] [varchar](25) NULL,
	[BPSPRK] [varchar](5) NOT NULL,
	[NOBPSPRK] [varchar](25) NULL,
	[INS] [varchar](5) NOT NULL,
	[NOINS] [varchar](25) NULL,
	[KNS] [varchar](5) NOT NULL,
	[NOKNS] [varchar](25) NULL,
	[RPB] [varchar](5) NOT NULL,
	[NORPB] [varchar](25) NULL,
	[SPG] [varchar](5) NOT NULL,
	[NOSPG] [varchar](25) NULL,
	[OPN] [varchar](5) NOT NULL,
	[NOOPN] [varchar](25) NULL,
	[KMS] [varchar](5) NOT NULL,
	[NOKMS] [varchar](25) NULL,
	[RBPB] [varchar](5) NOT NULL,
	[NORBPB] [varchar](25) NULL,
	[ENQ] [varchar](5) NOT NULL,
	[NOENQ] [varchar](25) NULL,
	[CR] [varchar](5) NOT NULL,
	[NOCR] [varchar](25) NULL,
	[SO] [varchar](5) NOT NULL,
	[NOSO] [varchar](25) NULL,
	[RKL] [varchar](5) NOT NULL,
	[NORKL] [varchar](25) NULL,
	[SC] [varchar](5) NOT NULL,
	[NOSC] [varchar](25) NULL,
	[SPP] [varchar](5) NOT NULL,
	[NOSPP] [varchar](25) NULL,
	[SPB] [varchar](5) NOT NULL,
	[NOSPB] [varchar](25) NULL,
	[RSPB] [varchar](5) NOT NULL,
	[NORSPB] [varchar](25) NULL,
	[INV] [varchar](5) NOT NULL,
	[NOINV] [varchar](25) NULL,
	[PNJ] [varchar](5) NOT NULL,
	[NOPNJ] [varchar](25) NULL,
	[TRC] [varchar](5) NOT NULL,
	[NOTRC] [varchar](25) NULL,
	[SHIP] [varchar](5) NOT NULL,
	[NOSHIP] [varchar](25) NULL,
	[TBJ] [varchar](5) NOT NULL,
	[NOTBJ] [varchar](25) NULL,
	[RBJ] [varchar](5) NOT NULL,
	[NORBJ] [varchar](25) NULL,
	[TRS] [varchar](5) NOT NULL,
	[NOTRS] [varchar](25) NULL,
	[AKM] [varchar](5) NOT NULL,
	[RPJ] [varchar](5) NOT NULL,
	[NORPJ] [varchar](25) NULL,
	[BHN] [varchar](5) NOT NULL,
	[NOBHN] [varchar](25) NULL,
	[ALIAS] [varchar](5) NOT NULL,
	[PEMISAH] [varchar](1) NOT NULL,
	[FORMAT1] [tinyint] NOT NULL,
	[FORMAT2] [tinyint] NOT NULL,
	[FORMAT3] [tinyint] NOT NULL,
	[FORMAT4] [tinyint] NOT NULL,
	[Contoh] [varchar](20) NOT NULL,
	[Reset] [tinyint] NOT NULL,
	[NOSERI] [varchar](50) NOT NULL,
	[INICAB] [varchar](4) NOT NULL,
	[DigitNomor] [varchar](10) NOT NULL,
	[SPK] [varchar](3) NULL,
	[RBP] [varchar](3) NULL,
	[PR] [varchar](2) NULL,
	[DN] [varchar](2) NULL,
	[OPBJ] [varchar](4) NULL,
	[KMBJ] [varchar](4) NULL,
	[INVC] [varchar](5) NULL,
	[NoINVC] [varchar](25) NULL,
	[SPR] [varchar](5) NULL,
	[NoSPR] [varchar](25) NULL,
	[KN] [varchar](5) NULL,
	[NoKN] [varchar](25) NULL,
	[HPD] [varchar](3) NULL,
	[PBS] [varchar](5) NOT NULL,
	[RPBS] [varchar](5) NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[DBNOMOR] ADD [POS] [varchar](25) NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[DBNOMOR] ADD [HT] [varchar](10) NULL
ALTER TABLE [dbo].[DBNOMOR] ADD [PT] [varchar](5) NULL
ALTER TABLE [dbo].[DBNOMOR] ADD [TT] [varchar](3) NULL
ALTER TABLE [dbo].[DBNOMOR] ADD [KRS] [varchar](5) NULL
ALTER TABLE [dbo].[DBNOMOR] ADD [PRD] [varchar](5) NULL
ALTER TABLE [dbo].[DBNOMOR] ADD [FNS] [varchar](5) NULL
ALTER TABLE [dbo].[DBNOMOR] ADD [SOI] [varchar](5) NULL
ALTER TABLE [dbo].[DBNOMOR] ADD [BPPBT] [varchar](5) NULL
GO

CREATE TABLE [dbo].[dbMyUrutan](
	[KodeData] [varchar](50) NULL,
	[Urutan] [int] NULL,
	[KodeUrutan] [varchar](50) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBDEVISI](
	[Devisi] [varchar](15) NOT NULL,
	[NamaDevisi] [varchar](30) NOT NULL,
	[MyID] [timestamp] NULL,
 CONSTRAINT [PK_dbDevisi] PRIMARY KEY CLUSTERED 
(
	[Devisi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBAKTIVAFK](
	[Devisi] [varchar](15) NOT NULL,
	[Perkiraan] [varchar](30) NOT NULL,
	[Keterangan] [varchar](500) NOT NULL,
	[Quantity] [numeric](18, 2) NOT NULL,
	[Persen] [numeric](18, 2) NOT NULL,
	[Tanggal] [datetime] NULL,
	[Tipe] [varchar](50) NOT NULL,
	[Kodebag] [varchar](15) NOT NULL,
	[Akumulasi] [varchar](25) NOT NULL,
	[NoMuka] [varchar](25) NOT NULL,
	[NoBelakang] [varchar](20) NOT NULL,
	[Biaya] [varchar](25) NOT NULL,
	[PersenBiaya1] [numeric](18, 2) NOT NULL,
	[Biaya2] [varchar](25) NOT NULL,
	[PersenBiaya2] [numeric](18, 2) NOT NULL,
	[biaya3] [varchar](25) NOT NULL,
	[persenbiaya3] [numeric](18, 2) NOT NULL,
	[biaya4] [varchar](25) NOT NULL,
	[persenbiaya4] [numeric](18, 2) NOT NULL,
	[TipeAktiva] [tinyint] NOT NULL,
	[NoBelakang2] [varchar](20) NULL,
	[NoAktivaHd] [varchar](35) NULL,
	[Kelompok] [tinyint] NOT NULL,
	[GroupAktiva] [varchar](15) NOT NULL,
 CONSTRAINT [PK_dbAktivaFK] PRIMARY KEY CLUSTERED 
(
	[Devisi] ASC,
	[Perkiraan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DbDevGudang](
	[Devisi] [varchar](15) NULL,
	[KodeGdg] [varchar](15) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBDEPOSITO](
	[NoDEPOSITO] [varchar](20) NOT NULL,
	[Bank] [varchar](25) NOT NULL,
	[Tanggal] [datetime] NULL,
	[TglJatuhTempo] [datetime] NULL,
	[Debet] [numeric](18, 2) NOT NULL,
	[Kredit] [numeric](18, 2) NOT NULL,
	[DebetRp] [numeric](18, 2) NOT NULL,
	[KreditRp] [numeric](18, 2) NOT NULL,
	[Keterangan] [varchar](200) NOT NULL,
	[TglBuka] [datetime] NULL,
	[BuktiBuka] [varchar](30) NOT NULL,
	[UrutBuktiBuka] [int] NOT NULL,
	[TglCair] [datetime] NULL,
	[BuktiCair] [varchar](30) NOT NULL,
	[KeteranganCair] [varchar](200) NOT NULL,
	[UrutBuktiCair] [int] NOT NULL,
	[Kodevls] [varchar](15) NOT NULL,
	[Kurs] [numeric](18, 2) NOT NULL,
	[Jumlah] [numeric](18, 2) NOT NULL,
	[Tipe] [varchar](2) NOT NULL,
	[MyID] [timestamp] NULL,
 CONSTRAINT [PK_DBDEPOSITO_1] PRIMARY KEY CLUSTERED 
(
	[NoDEPOSITO] ASC,
	[Bank] ASC,
	[Tipe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBDEPART](
	[KDDEP] [varchar](20) NOT NULL,
	[NMDEP] [varchar](40) NOT NULL,
	[PerkBiaya] [varchar](25) NULL,
 CONSTRAINT [PK__DBDEPART] PRIMARY KEY CLUSTERED 
(
	[KDDEP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempRepProduksiInvoiceRek](
	[NoBukti] [varchar](50) NULL,
	[NobuktiPrd] [varchar](50) NULL,
	[Tanggal] [datetime] NULL,
	[NeedOtorisasi] [int] NULL,
	[UrutPrd] [int] NULL,
	[NoSPK] [varchar](50) NULL,
	[NoSPKPrd] [varchar](50) NULL,
	[UrutX] [int] NULL,
	[KP] [nchar](10) NULL,
	[NamaKP] [varchar](50) NULL,
	[KodeBrg] [varchar](50) NULL,
	[NamaBrg] [varchar](150) NULL,
	[Qnt] [numeric](18, 2) NULL,
	[Satuan] [varchar](50) NULL,
	[NoInvoice] [varchar](50) NULL,
	[QntInvoice] [numeric](18, 2) NULL,
	[RpInvoice] [numeric](18, 2) NULL,
	[NoPenyerahan] [varchar](50) NULL,
	[RpBahan] [numeric](18, 2) NULL,
	[TKL] [numeric](18, 2) NULL,
	[OVH] [numeric](18, 2) NULL,
	[BiayaLain] [numeric](18, 2) NULL,
	[UrutXBahan] [int] NULL,
	[NoPenyerahanKertas] [varchar](50) NULL,
	[TglPenyerahanKertas] [datetime] NULL,
	[KodeBhnKertas] [varchar](50) NULL,
	[NamaBhnKertas] [varchar](150) NULL,
	[QntBahanKertas] [numeric](18, 2) NULL,
	[RpBahanKertas] [numeric](18, 2) NULL,
	[NoPenyerahanPenolong] [varchar](50) NULL,
	[TglPenyerahanPenolong] [datetime] NULL,
	[KodeBhnPenolong] [varchar](50) NULL,
	[NamaBhnPenolong] [varchar](150) NULL,
	[QntBahanPenolong] [numeric](18, 2) NULL,
	[RpBahanPenolong] [numeric](18, 2) NULL,
	[NoPenyerahanTinta] [varchar](50) NULL,
	[TglPenyerahanTinta] [datetime] NULL,
	[KodeBhnTinta] [varchar](50) NULL,
	[NamaBhnTinta] [varchar](150) NULL,
	[QntBahanTinta] [numeric](18, 2) NULL,
	[RpBahanTinta] [numeric](18, 2) NULL,
	[NoPenyerahanJadiBeli] [varchar](50) NULL,
	[TglPenyerahanJadiBeli] [datetime] NULL,
	[KodeBhnJadiBeli] [varchar](50) NULL,
	[NamaBhnJadiBeli] [varchar](150) NULL,
	[QntBahanJadiBeli] [numeric](18, 2) NULL,
	[RpBahanJadiBeli] [numeric](18, 2) NULL,
	[KodeMsn] [varchar](50) NULL,
	[NamaMesin] [varchar](50) NULL,
	[JamPrd] [numeric](18, 2) NULL,
	[JmlTarifPrd] [numeric](18, 2) NULL,
	[NIK] [varchar](50) NULL,
	[JamTenaker] [numeric](18, 2) NULL,
	[JmlTarifTenaker] [numeric](18, 2) NULL,
	[NoBiaya] [varchar](50) NULL,
	[TglBiaya] [datetime] NULL,
	[RpBiaya] [numeric](18, 2) NULL,
	[UrutBahan] [int] NULL,
	[NOSO] [varchar](50) NULL,
	[Urutan] [int] NULL,
	[UrutMesin] [int] NULL,
	[NamaTenaker] [varchar](50) NULL,
	[Qntbahan] [numeric](18, 2) NULL,
	[NoRPenyerahan] [varchar](50) NULL,
	[TglRPenyerahan] [datetime] NULL,
	[RKodeBhn] [varchar](50) NULL,
	[RNamaBhn] [varchar](150) NULL,
	[RRpBahan] [numeric](18, 2) NULL,
	[RQntBahan] [numeric](18, 2) NULL,
	[pemesan] [varchar](200) NULL,
	[NamaPemesan] [varchar](200) NULL,
	[Jenis] [varchar](50) NULL,
	[UrutXJKMO] [int] NULL,
	[UrutXKertas] [int] NULL,
	[UrutXPenolong] [int] NULL,
	[UrutXTinta] [int] NULL,
	[UrutXBL] [int] NULL,
	[RpWipSusulan] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempRepProduksiInvoice](
	[NoBukti] [varchar](50) NULL,
	[NobuktiPrd] [varchar](50) NULL,
	[Tanggal] [datetime] NULL,
	[NeedOtorisasi] [int] NULL,
	[UrutPrd] [int] NULL,
	[NoSPK] [varchar](50) NULL,
	[NoSPKPrd] [varchar](50) NULL,
	[UrutX] [int] NULL,
	[KP] [nchar](10) NULL,
	[NamaKP] [varchar](50) NULL,
	[KodeBrg] [varchar](50) NULL,
	[NamaBrg] [varchar](150) NULL,
	[Qnt] [numeric](18, 2) NULL,
	[Satuan] [varchar](50) NULL,
	[NoInvoice] [varchar](50) NULL,
	[QntInvoice] [numeric](18, 2) NULL,
	[RpInvoice] [numeric](18, 2) NULL,
	[NoPenyerahan] [varchar](50) NULL,
	[RpBahan] [numeric](18, 2) NULL,
	[TKL] [numeric](18, 2) NULL,
	[OVH] [numeric](18, 2) NULL,
	[BiayaLain] [numeric](18, 2) NULL,
	[UrutXBahan] [int] NULL,
	[NoPenyerahanKertas] [varchar](50) NULL,
	[TglPenyerahanKertas] [datetime] NULL,
	[KodeBhnKertas] [varchar](50) NULL,
	[NamaBhnKertas] [varchar](150) NULL,
	[QntBahanKertas] [numeric](18, 2) NULL,
	[RpBahanKertas] [numeric](18, 2) NULL,
	[NoPenyerahanPenolong] [varchar](50) NULL,
	[TglPenyerahanPenolong] [datetime] NULL,
	[KodeBhnPenolong] [varchar](50) NULL,
	[NamaBhnPenolong] [varchar](150) NULL,
	[QntBahanPenolong] [numeric](18, 2) NULL,
	[RpBahanPenolong] [numeric](18, 2) NULL,
	[NoPenyerahanTinta] [varchar](50) NULL,
	[TglPenyerahanTinta] [datetime] NULL,
	[KodeBhnTinta] [varchar](50) NULL,
	[NamaBhnTinta] [varchar](150) NULL,
	[QntBahanTinta] [numeric](18, 2) NULL,
	[RpBahanTinta] [numeric](18, 2) NULL,
	[NoPenyerahanJadiBeli] [varchar](50) NULL,
	[TglPenyerahanJadiBeli] [datetime] NULL,
	[KodeBhnJadiBeli] [varchar](50) NULL,
	[NamaBhnJadiBeli] [varchar](150) NULL,
	[QntBahanJadiBeli] [numeric](18, 2) NULL,
	[RpBahanJadiBeli] [numeric](18, 2) NULL,
	[KodeMsn] [varchar](50) NULL,
	[NamaMesin] [varchar](50) NULL,
	[JamPrd] [numeric](18, 2) NULL,
	[JmlTarifPrd] [numeric](18, 2) NULL,
	[NIK] [varchar](50) NULL,
	[JamTenaker] [numeric](18, 2) NULL,
	[JmlTarifTenaker] [numeric](18, 2) NULL,
	[NoBiaya] [varchar](50) NULL,
	[TglBiaya] [datetime] NULL,
	[RpBiaya] [numeric](18, 2) NULL,
	[UrutBahan] [int] NULL,
	[NOSO] [varchar](50) NULL,
	[Urutan] [int] NULL,
	[UrutMesin] [int] NULL,
	[NamaTenaker] [varchar](50) NULL,
	[Qntbahan] [numeric](18, 2) NULL,
	[NoRPenyerahan] [varchar](50) NULL,
	[TglRPenyerahan] [datetime] NULL,
	[RKodeBhn] [varchar](50) NULL,
	[RNamaBhn] [varchar](150) NULL,
	[RRpBahan] [numeric](18, 2) NULL,
	[RQntBahan] [numeric](18, 2) NULL,
	[pemesan] [varchar](200) NULL,
	[NamaPemesan] [varchar](200) NULL,
	[Jenis] [varchar](50) NULL,
	[UrutXJKMO] [int] NULL,
	[UrutXKertas] [int] NULL,
	[UrutXPenolong] [int] NULL,
	[UrutXTinta] [int] NULL,
	[UrutXBL] [int] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempRepHasilPrd](
	[NoBukti] [varchar](50) NULL,
	[NobuktiPrd] [varchar](50) NULL,
	[Tanggal] [datetime] NULL,
	[NeedOtorisasi] [int] NULL,
	[UrutPrd] [int] NULL,
	[NoSPK] [varchar](50) NULL,
	[NoSPKPrd] [varchar](50) NULL,
	[UrutX] [int] NULL,
	[KodeBrg] [varchar](50) NULL,
	[NamaBrg] [varchar](150) NULL,
	[Qnt] [numeric](18, 2) NULL,
	[Satuan] [varchar](50) NULL,
	[UrutBahan] [int] NULL,
	[NoPenyerahan] [varchar](50) NULL,
	[TglPenyerahan] [datetime] NULL,
	[KodeBhn] [varchar](50) NULL,
	[NamaBhn] [varchar](150) NULL,
	[RpBahan] [numeric](18, 2) NULL,
	[KodeMsn] [varchar](50) NULL,
	[NamaMesin] [varchar](50) NULL,
	[JamPrd] [numeric](18, 2) NULL,
	[JmlTarifPrd] [numeric](18, 2) NULL,
	[NIK] [varchar](50) NULL,
	[JamTenaker] [numeric](18, 2) NULL,
	[JmlTarifTenaker] [numeric](18, 2) NULL,
	[NoBiaya] [varchar](50) NULL,
	[TglBiaya] [datetime] NULL,
	[RpBiaya] [numeric](18, 2) NULL,
	[QntBahan] [numeric](18, 2) NULL,
	[NamaTenaker] [varchar](50) NULL,
	[urutmesin] [int] NULL,
	[urutan] [int] NULL,
	[TglPrd] [datetime] NULL,
	[kodegdg] [varchar](10) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempRepAnggaranRealiasasi](
	[KeyUrut] [int] IDENTITY(1,1) NOT NULL,
	[UrutX] [int] NULL,
	[KodeSubGrp] [varchar](3) NULL,
	[NamaSubGrp] [varchar](100) NULL,
	[NoSPK] [varchar](50) NULL,
	[KODEBRG] [varchar](50) NULL,
	[spkbiaya] [numeric](18, 2) NULL,
	[MesinSPK] [numeric](18, 2) NULL,
	[TenakerSPK] [numeric](18, 2) NULL,
	[bahanspk] [numeric](18, 2) NULL,
	[KodeGdg] [varchar](5) NULL,
	[bahanprd] [numeric](18, 2) NULL,
	[biayabeliprd] [numeric](18, 2) NULL,
	[mesinprd] [numeric](18, 2) NULL,
	[tenakerprd] [numeric](18, 2) NULL,
	[NAMABRG] [varchar](200) NULL,
	[pelanggan] [varchar](100) NULL,
	[rpsj] [numeric](18, 2) NULL,
	[rpinv] [numeric](18, 2) NULL,
	[qnthpd] [int] NULL,
	[qntinv] [int] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempOutstandingPO](
	[IDUser] [varchar](30) NOT NULL,
	[IsTerima] [bit] NOT NULL,
	[NOBUKTI] [varchar](20) NOT NULL,
	[Tanggal] [datetime] NULL,
	[KeyNoBukti] [varchar](30) NULL,
	[URUT] [int] NULL,
	[FlagTipe] [varchar](1) NULL,
	[KODEBRG] [varchar](25) NULL,
	[KodeWarna] [varchar](20) NULL,
	[NAMABRG] [varchar](50) NULL,
	[PPN] [tinyint] NULL,
	[DISC] [float] NULL,
	[Kurs] [numeric](18, 2) NULL,
	[QNT] [numeric](18, 2) NULL,
	[NOSAT] [tinyint] NULL,
	[SATUAN] [varchar](5) NULL,
	[ISI] [numeric](18, 2) NULL,
	[HARGA] [numeric](18, 6) NULL,
	[DISCP] [numeric](18, 2) NULL,
	[DISCTOT] [numeric](18, 4) NULL,
	[BYANGKUT] [numeric](18, 2) NULL,
	[KetDetail] [varchar](200) NULL,
	[QntSisa] [numeric](18, 3) NULL,
	[CollyTerima] [numeric](18, 2) NULL,
	[QntTerima] [numeric](18, 3) NULL,
	[DiscP2] [numeric](18, 2) NULL,
	[DiscP3] [numeric](18, 2) NULL,
	[DiscP4] [numeric](18, 2) NULL,
	[DiscP5] [numeric](18, 2) NULL,
	[KodeCustSupp] [varchar](15) NULL,
	[PPhP] [numeric](18, 2) NULL,
	[KetBrg] [varchar](1000) NULL,
	[PPnP] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempJurnalOtoError](
	[IDUser] [varchar](30) NULL,
	[Urut] [int] NULL,
	[JurnalOrHP] [varchar](50) NULL,
	[JenisTrans] [varchar](10) NULL,
	[NoBuktiTrans] [varchar](30) NULL,
	[NoBukti] [varchar](30) NULL,
	[Perkiraan] [varchar](25) NULL,
	[Lawan] [varchar](25) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbVALAS](
	[KODEVLS] [varchar](15) NOT NULL,
	[NAMAVLS] [varchar](40) NOT NULL,
	[KURS] [decimal](18, 4) NOT NULL,
	[Simbol] [varchar](5) NOT NULL,
 CONSTRAINT [PK_dbVALAS] PRIMARY KEY CLUSTERED 
(
	[KODEVLS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbJualTunai](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NoUrut] [int] NULL,
	[TANGGAL] [datetime] NULL,
	[KODECUST] [varchar](15) NOT NULL,
	[ISCETAK] [bit] NOT NULL,
	[BayarTunai] [numeric](18, 2) NULL,
	[BayarDebet] [numeric](18, 2) NULL,
	[NoDebet] [varchar](30) NULL,
	[BankDebet] [varchar](30) NULL,
	[BayarKredit] [numeric](18, 2) NULL,
	[TipeKartuKredit] [tinyint] NULL,
	[NoKredit] [varchar](30) NULL,
	[BankKredit] [varchar](30) NULL,
	[BayarVoucher] [numeric](18, 2) NULL,
	[VoucherRp] [numeric](18, 2) NOT NULL,
	[TglInput] [datetime] NULL,
	[UserID] [varchar](15) NULL,
	[DiscMember] [numeric](18, 2) NULL,
	[DiscHarian] [numeric](18, 2) NULL,
	[Keterangan] [varchar](30) NULL,
	[KodeRekan] [varchar](15) NULL,
	[NoKartuRekan] [varchar](50) NULL,
	[DiscRekan] [numeric](18, 2) NULL,
	[Pemesan] [varchar](50) NULL,
	[IsOrder] [bit] NULL,
	[Alamat] [varchar](100) NULL,
	[Telepon] [varchar](20) NULL,
	[TanggalAmbil] [datetime] NULL,
	[DP] [numeric](18, 2) NULL,
	[Piutang] [numeric](18, 2) NULL,
	[Tunai] [numeric](18, 2) NOT NULL,
	[Potongan] [numeric](18, 2) NOT NULL,
	[Debit] [numeric](18, 2) NOT NULL,
	[BankDebit] [varchar](50) NOT NULL,
	[NoKartuDebit] [varchar](50) NOT NULL,
	[CC] [numeric](18, 2) NOT NULL,
	[TipeCC] [tinyint] NOT NULL,
	[BankCC] [varchar](50) NOT NULL,
	[NoCC] [varchar](50) NOT NULL,
	[Voucher] [numeric](18, 2) NOT NULL,
	[Kembali] [numeric](18, 2) NOT NULL,
	[KodePiutCustomer] [varchar](15) NOT NULL,
	[TGLJATUHTEMPO] [datetime] NULL,
 CONSTRAINT [PK_dbJualTunai] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBJNSTambahan](
	[KodeJnsTambahan] [varchar](20) NOT NULL,
	[NAMA] [varchar](40) NOT NULL,
 CONSTRAINT [PK_DBJNSTambahan] PRIMARY KEY CLUSTERED 
(
	[KodeJnsTambahan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBAKTIVADETFK](
	[Perkiraan] [varchar](30) NOT NULL,
	[Bulan] [int] NOT NULL,
	[Tahun] [int] NOT NULL,
	[Devisi] [varchar](15) NOT NULL,
	[Valas] [varchar](15) NOT NULL,
	[Kurs] [numeric](18, 2) NOT NULL,
	[Awal] [numeric](18, 2) NOT NULL,
	[AwalSusut] [numeric](18, 2) NOT NULL,
	[AwalD] [numeric](18, 2) NOT NULL,
	[AwalSusutD] [numeric](18, 2) NOT NULL,
	[MD] [numeric](18, 2) NOT NULL,
	[DMD] [numeric](18, 2) NOT NULL,
	[MK] [numeric](18, 2) NOT NULL,
	[DMK] [numeric](18, 2) NOT NULL,
	[SD] [numeric](18, 2) NOT NULL,
	[DSD] [numeric](18, 2) NOT NULL,
	[SK] [numeric](18, 2) NOT NULL,
	[DSK] [numeric](18, 2) NOT NULL,
	[Akhir]  AS (([Awal]+[MD])-[MK]),
	[AkhirD]  AS (([AwalD]+[DMD])-[DMK]),
	[AkhirSusutD]  AS (([AwalSusutD]+[DSD])-[DSK]),
	[MyID] [timestamp] NULL,
	[AkhirSusut]  AS (([AwalSusut]+[SK])-[SD]),
 CONSTRAINT [PK_dbAktivaDetFK] PRIMARY KEY CLUSTERED 
(
	[Perkiraan] ASC,
	[Bulan] ASC,
	[Tahun] ASC,
	[Devisi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[BJP](
	[kodeBrg] [nvarchar](255) NULL,
	[NamaBrg] [nvarchar](255) NULL,
	[Kodegrup] [nvarchar](255) NULL,
	[Kodesubgroup] [nvarchar](255) NULL,
	[isi1] [float] NULL,
	[Sat1] [nvarchar](255) NULL,
	[proses] [float] NULL,
	[Isi2] [float] NULL,
	[iskaktif] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[BJ](
	[Kode Barang] [nvarchar](255) NULL,
	[Nama] [nvarchar](255) NULL,
	[KodeGroup] [nvarchar](255) NULL,
	[KodesubGroup] [nvarchar](255) NULL,
	[Satuan 1] [nvarchar](255) NULL,
	[Satuan 2] [nvarchar](255) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[BarangJadiBEli](
	[Kode Barang] [nvarchar](255) NULL,
	[Nama Barang] [nvarchar](255) NULL,
	[Kode Sub] [nvarchar](255) NULL,
	[Kode Sub Group] [float] NULL,
	[Sat 1] [nvarchar](255) NULL,
	[Sat2] [nvarchar](255) NULL,
	[satuan] [float] NULL,
	[harga sat] [float] NULL,
	[haga] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[apjb](
	[KodeBrg] [nvarchar](255) NULL,
	[Nama] [nvarchar](255) NULL,
	[KodeGrp] [nvarchar](255) NULL,
	[KodeSubGrp] [nvarchar](255) NULL,
	[KodeSupp] [nvarchar](255) NULL,
	[Sat1] [nvarchar](255) NULL,
	[isi1] [float] NULL,
	[isaktif] [float] NULL,
	[KodeBrgL] [nvarchar](255) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBJENISCUSTSUPP](
	[KodeJenis] [varchar](15) NULL,
	[NamaJenis] [varchar](30) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBJENISBRGJADI](
	[KodeJnsBrg] [varchar](15) NOT NULL,
	[Keterangan] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DBJENISBRGJADI] PRIMARY KEY CLUSTERED 
(
	[KodeJnsBrg] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBJenis](
	[KodeJnsBrg] [varchar](15) NOT NULL,
	[Keterangan] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DBJenis] PRIMARY KEY CLUSTERED 
(
	[KodeJnsBrg] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBASM](
	[KeyNIK] [int] NULL,
	[Area] [varchar](10) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBArusKasKonfig](
	[KodeAK] [varchar](15) NULL,
	[KodeSAK] [varchar](15) NULL,
	[Tipe] [tinyint] NULL,
	[Keterangan] [varchar](100) NULL,
	[Nomor] [varchar](25) NOT NULL,
	[Urutan] [varchar](25) NULL,
 CONSTRAINT [PK_DBArusKasKonfig] PRIMARY KEY CLUSTERED 
(
	[Nomor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBArusKasDet](
	[KodeSubAK] [varchar](15) NOT NULL,
	[KodeAK] [varchar](15) NULL,
	[NamaSubAK] [varchar](50) NULL,
 CONSTRAINT [PK_DBArusKasDet] PRIMARY KEY CLUSTERED 
(
	[KodeSubAK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBArusKas](
	[KodeAK] [varchar](15) NOT NULL,
	[NamaAK] [varchar](50) NULL,
 CONSTRAINT [PK_DBArusKas] PRIMARY KEY CLUSTERED 
(
	[KodeAK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DbProsesProduksi](
	[NoBukti] [varchar](50) NOT NULL,
	[Proses] [tinyint] NULL,
	[KodeMesin] [varchar](15) NULL,
	[TglUpdate] [datetime] NULL,
 CONSTRAINT [PK_DbProsesProduksi] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBProses](
	[KodePrs] [varchar](10) NULL,
	[Keterangan] [varchar](50) NULL,
	[KodeGdg] [varchar](15) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DbPromoSupplier](
	[KodePromo] [varchar](20) NOT NULL,
	[KodeSupp] [varchar](20) NOT NULL,
 CONSTRAINT [PK_DbPromoSupplier] PRIMARY KEY CLUSTERED 
(
	[KodePromo] ASC,
	[KodeSupp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DbPromoSubGroup](
	[KodePromo] [varchar](20) NOT NULL,
	[KodeSubGrp] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DbPromoSubGroup] PRIMARY KEY CLUSTERED 
(
	[KodePromo] ASC,
	[KodeSubGrp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSUBKATEGORIBRGJADI](
	[KodeSubKategori] [varchar](15) NOT NULL,
	[Keterangan] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DBSUBKATEGORIBRGJADI] PRIMARY KEY CLUSTERED 
(
	[KodeSubKategori] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSUBJENISBRGJADI](
	[kodesubJnsBrg] [varchar](15) NOT NULL,
	[Keterangan] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DBSUBJENISBRGJADI_1] PRIMARY KEY CLUSTERED 
(
	[kodesubJnsBrg] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSUBJENIS](
	[kodesubJnsBrg] [varchar](15) NOT NULL,
	[Keterangan] [varchar](100) NOT NULL,
	[KodeJnsBrg] [varchar](15) NOT NULL,
 CONSTRAINT [PK_DBSUBJENIS] PRIMARY KEY CLUSTERED 
(
	[kodesubJnsBrg] ASC,
	[KodeJnsBrg] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBMENUDASBOARD](
	[UserID] [varchar](15) NOT NULL,
	[L0] [tinyint] NOT NULL,
	[L1] [varchar](20) NOT NULL,
	[NmReport] [varchar](100) NOT NULL,
	[KodeReport] [int] NOT NULL,
	[Access] [int] NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBMasterPajak](
	[Bulan] [int] NOT NULL,
	[Tahun] [int] NOT NULL,
	[PPn] [int] NOT NULL,
	[Service] [int] NOT NULL,
 CONSTRAINT [PK_DBMasterPPn] PRIMARY KEY CLUSTERED 
(
	[Bulan] ASC,
	[Tahun] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBLOKASI](
	[KodeGdg] [varchar](15) NULL,
	[Lokasi] [varchar](15) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBLOGFILE](
	[Tahun] [int] NOT NULL,
	[Bulan] [int] NOT NULL,
	[Tanggal] [datetime] NULL,
	[Pemakai] [varchar](20) NOT NULL,
	[Aktivitas] [varchar](200) NOT NULL,
	[Sumber] [varchar](200) NOT NULL,
	[NoBukti] [varchar](30) NOT NULL,
	[Keterangan] [varchar](4000) NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBLOCKPERIODE](
	[BULAN] [tinyint] NOT NULL,
	[TAHUN] [int] NOT NULL,
	[NKBULAN] [tinyint] NULL,
	[NKTAHUN] [int] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBGIRO](
	[NoGiro] [varchar](20) NOT NULL,
	[Bank] [varchar](25) NOT NULL,
	[TglGiro] [datetime] NULL,
	[Debet] [numeric](18, 2) NOT NULL,
	[Kredit] [numeric](18, 2) NOT NULL,
	[DebetRp] [numeric](18, 2) NOT NULL,
	[KreditRp] [numeric](18, 2) NOT NULL,
	[Keterangan] [varchar](200) NOT NULL,
	[TglBuka] [datetime] NULL,
	[BuktiBuka] [varchar](30) NOT NULL,
	[UrutBuktiBuka] [int] NOT NULL,
	[TglCair] [datetime] NULL,
	[BuktiCair] [varchar](30) NOT NULL,
	[KeteranganCair] [varchar](200) NOT NULL,
	[UrutBuktiCair] [int] NOT NULL,
	[Kodevls] [varchar](15) NOT NULL,
	[Kurs] [numeric](18, 2) NOT NULL,
	[Jumlah] [numeric](18, 2) NOT NULL,
	[Tipe] [varchar](2) NOT NULL,
	[MyID] [timestamp] NULL,
	[FlagSimbol] [varchar](2) NULL,
	[Kas] [varchar](25) NULL,
 CONSTRAINT [PK_DBGIRO_1] PRIMARY KEY CLUSTERED 
(
	[NoGiro] ASC,
	[Bank] ASC,
	[Tipe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBDATA](
	[KODETAB] [varchar](15) NOT NULL,
	[KODEDATA] [varchar](50) NOT NULL,
	[Nama] [varchar](8000) NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DbPromoGroup](
	[KodePromo] [varchar](20) NOT NULL,
	[KodeGrp] [varchar](20) NOT NULL,
 CONSTRAINT [PK_DbPromoKelompok] PRIMARY KEY CLUSTERED 
(
	[KodePromo] ASC,
	[KodeGrp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPromoDet](
	[KodePromo] [varchar](20) NOT NULL,
	[Urut] [varchar](5) NOT NULL,
	[KodeBrg] [varchar](25) NOT NULL,
	[KodeSupp] [varchar](20) NOT NULL,
	[KodeGrp] [varchar](20) NOT NULL,
	[KodeBrd] [varchar](20) NOT NULL,
	[Diskon] [float] NOT NULL,
	[Tipe] [varchar](5) NOT NULL,
 CONSTRAINT [PK_DBPromoDet] PRIMARY KEY CLUSTERED 
(
	[KodePromo] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPromoBrand](
	[KodePromo] [varchar](20) NOT NULL,
	[KodeBrd] [varchar](20) NOT NULL,
 CONSTRAINT [PK_DBPromoBrand] PRIMARY KEY CLUSTERED 
(
	[KodePromo] ASC,
	[KodeBrd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DbPromoBarang](
	[KodePromo] [varchar](20) NOT NULL,
	[KodeBrg] [varchar](20) NOT NULL,
 CONSTRAINT [PK_DbPromoBarang] PRIMARY KEY CLUSTERED 
(
	[KodePromo] ASC,
	[KodeBrg] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPromo](
	[KodePromo] [varchar](20) NOT NULL,
	[NamaPromo] [varchar](50) NOT NULL,
	[TglMulai] [datetime] NOT NULL,
	[TglAkhir] [datetime] NOT NULL,
	[Diskon] [float] NOT NULL,
	[TipeDiskon] [varchar](2) NOT NULL,
	[NoUrut] [varchar](10) NOT NULL,
	[Tanggal] [datetime] NOT NULL,
	[TglInput] [datetime] NULL,
	[TglSinkronisasi] [datetime] NULL,
 CONSTRAINT [PK_DBPromo] PRIMARY KEY CLUSTERED 
(
	[KodePromo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[xxxSupplier](
	[KodeSupp] [nvarchar](255) NULL,
	[NamaSupp] [nvarchar](255) NULL,
	[Alamat] [nvarchar](255) NULL,
	[alamat2] [nvarchar](255) NULL,
	[telp] [nvarchar](255) NULL,
	[fax] [nvarchar](255) NULL,
	[att] [nvarchar](255) NULL,
	[attphone] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[perkiraan] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[xxxBarangJadi](
	[KodeBrg] [nvarchar](255) NULL,
	[NamaBrg] [nvarchar](255) NULL,
	[KodeSubGrp] [nvarchar](255) NULL,
	[Sat1] [nvarchar](255) NULL,
	[Isi1] [float] NULL,
	[Hj1] [float] NULL,
	[Sat2] [nvarchar](255) NULL,
	[Isi2] [float] NULL,
	[Hj2] [float] NULL,
	[Sat3] [nvarchar](255) NULL,
	[Isi3] [nvarchar](255) NULL,
	[Hj3] [nvarchar](255) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[xxxBahanBaku](
	[kode barang] [nvarchar](255) NULL,
	[NAMA BARANG] [nvarchar](255) NULL,
	[Sat1] [nvarchar](255) NULL,
	[Isi1] [float] NULL,
	[Sat2] [nvarchar](255) NULL,
	[Isi2] [float] NULL,
	[Sat3] [nvarchar](255) NULL,
	[Isi3] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XLSPembelian](
	[KeyUrut] [int] IDENTITY(1,1) NOT NULL,
	[NoBukti] [varchar](50) NULL,
	[Urut] [int] NULL,
	[Tanggal] [datetime] NULL,
	[JatuhTempo] [datetime] NULL,
	[NoBukti_] [varchar](50) NULL,
	[PPn] [tinyint] NULL,
	[KodeCustSupp] [varchar](25) NULL,
	[KodeTipe] [varchar](25) NULL,
	[KodeSubTipe] [varchar](25) NULL,
	[Qnt] [numeric](18, 2) NULL,
	[Harga] [numeric](18, 2) NULL,
	[KodeVls] [varchar](25) NULL,
	[Kurs] [numeric](18, 2) NULL,
	[NDPP] [numeric](18, 2) NULL,
	[NPPN] [numeric](18, 2) NULL,
	[NNet] [numeric](18, 2) NULL,
	[NDPPD] [numeric](18, 2) NULL,
	[NPPND] [numeric](18, 2) NULL,
	[NNetD] [numeric](18, 2) NULL,
	[AccPersediaan] [varchar](25) NULL,
	[AccPPN] [varchar](25) NULL,
	[AccHutPiut] [varchar](25) NULL,
	[IsExcel] [bit] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[xKertasKerja20211](
	[Urut_Excel] [float] NULL,
	[Kategori_Produk] [nvarchar](255) NULL,
	[Kode] [float] NULL,
	[Kode_PD] [nvarchar](255) NULL,
	[Pemesan ] [nvarchar](255) NULL,
	[Jenis_Pesanan ] [nvarchar](255) NULL,
	[sat] [nvarchar](255) NULL,
	[Jumlah] [float] NULL,
	[Harga_Jual_Exclude] [float] NULL,
	[Total_Exclude] [float] NULL,
	[Bulan_Pendapatan_(RKAP)] [float] NULL,
	[Jenis_Kertas] [nvarchar](255) NULL,
	[Keterangan_Kertas] [nvarchar](255) NULL,
	[Kode_Sales] [float] NULL,
	[Nama_Sales] [nvarchar](255) NULL,
	[Keterangan_Customer] [nvarchar](255) NULL,
	[F17] [nvarchar](255) NULL,
	[F18] [nvarchar](255) NULL,
	[F19] [nvarchar](255) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbHPPProduksi](
	[Tahun] [int] NULL,
	[Bulan] [int] NULL,
	[KodeBrg] [varchar](30) NULL,
	[HPPBrg] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBHasilPrdTenaker](
	[Nobukti] [varchar](20) NOT NULL,
	[Urut] [int] NOT NULL,
	[Nik] [varchar](10) NULL,
	[UrutNiK] [int] NULL,
	[Jam] [numeric](18, 2) NULL,
	[TrfTenaker] [numeric](18, 2) NULL,
	[JmLTrfTenaker]  AS ([Jam]*[TrfTenaker])
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TransferData](
	[KeyUrut] [int] IDENTITY(1,1) NOT NULL,
	[NamaTabel] [varchar](50) NULL,
	[KeyField] [varchar](100) NULL,
	[SelectTabel] [varchar](2000) NULL,
	[IsTransfer] [tinyint] NULL,
	[PrimaryKey] [varchar](100) NULL,
 CONSTRAINT [PK_AjcTransfer] PRIMARY KEY CLUSTERED 
(
	[KeyUrut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DbSaldoBarangJadi](
	[Nospk] [nvarchar](255) NULL,
	[Tanggal] [datetime] NULL,
	[Bulan] [nvarchar](255) NULL,
	[Tahun] [nvarchar](255) NULL,
	[Qnt] [int] NULL,
	[Rpbahan] [float] NULL,
	[Rpmesin] [float] NULL,
	[Rptenaker] [float] NULL,
	[rpbiaya] [float] NULL,
	[wip] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBTIPETRANS](
	[KODETIPE] [varchar](15) NOT NULL,
	[Nama] [varchar](50) NOT NULL,
	[IsJasaBeliJual] [tinyint] NOT NULL,
 CONSTRAINT [PK_DBJASA] PRIMARY KEY CLUSTERED 
(
	[KODETIPE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBTenaker](
	[KodeTarifTenaker] [varchar](15) NOT NULL,
	[Urut] [int] NOT NULL,
	[NIK] [varchar](25) NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbTempRata2](
	[KodeGdg] [varchar](20) NULL,
	[QntSaldo] [numeric](18, 2) NULL,
	[HrgSaldo] [float] NULL,
	[HrgRata]  AS (case when [QntSaldo]=(0) then (0) else [HrgSaldo]/[QntSaldo] end)
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBTempBlThn](
	[Bulan] [int] NULL,
	[Tahun] [int] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbTempBKBesar](
	[Devisi] [varchar](10) NOT NULL,
	[NoACC] [varchar](25) NOT NULL,
	[NamaACC] [varchar](50) NOT NULL,
	[Transaksi] [varchar](1) NOT NULL,
	[NoBukti] [varchar](30) NOT NULL,
	[Tanggal] [datetime] NOT NULL,
	[Keterangan] [varchar](500) NOT NULL,
	[Perkiraan] [varchar](25) NOT NULL,
	[Lawan] [varchar](25) NOT NULL,
	[Debet] [float] NOT NULL,
	[Kredit] [float] NOT NULL,
	[Saldo] [float] NOT NULL,
	[SaldoAwal] [float] NOT NULL,
	[Bulan] [int] NOT NULL,
	[Tahun] [int] NOT NULL,
	[Urut] [int] NOT NULL,
	[DebetD] [float] NOT NULL,
	[KreditD] [float] NOT NULL,
	[SaldoAwalD] [float] NOT NULL,
	[Valas] [varchar](3) NOT NULL,
	[Kurs] [float] NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBTARGETSALES](
	[KeyNik] [varchar](15) NOT NULL,
	[Tahun] [int] NOT NULL,
	[Rp1] [numeric](18, 2) NULL,
	[Rp2] [numeric](18, 2) NULL,
	[Rp3] [numeric](18, 2) NULL,
	[Rp4] [numeric](18, 2) NULL,
	[Rp5] [numeric](18, 2) NULL,
	[Rp6] [numeric](18, 2) NULL,
	[Rp7] [numeric](18, 2) NULL,
	[Rp8] [numeric](18, 2) NULL,
	[Rp9] [numeric](18, 2) NULL,
	[Rp10] [numeric](18, 2) NULL,
	[Rp11] [numeric](18, 2) NULL,
	[Rp12] [numeric](18, 2) NULL,
	[QNT1] [numeric](18, 2) NULL,
	[QNT2] [numeric](18, 2) NULL,
	[QNT3] [numeric](18, 2) NULL,
	[QNT4] [numeric](18, 2) NULL,
	[QNT5] [numeric](18, 2) NULL,
	[QNT6] [numeric](18, 2) NULL,
	[QNT7] [numeric](18, 2) NULL,
	[QNT8] [numeric](18, 2) NULL,
	[QNT9] [numeric](18, 2) NULL,
	[QNT10] [numeric](18, 2) NULL,
	[QNT11] [numeric](18, 2) NULL,
	[QNT12] [numeric](18, 2) NULL,
 CONSTRAINT [PK_DBTARGETSALES] PRIMARY KEY CLUSTERED 
(
	[KeyNik] ASC,
	[Tahun] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbSuratJlnDet2](
	[NoBukti] [varchar](20) NULL,
	[Urut] [int] NULL,
	[Qnt] [numeric](18, 2) NULL,
	[Satuan] [varchar](20) NULL,
	[Isi] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBCUSTOMIZE](
	[ID] [varchar](50) NULL,
	[IDuser] [varchar](20) NULL,
	[Tipe] [varchar](10) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPBIAYA](
	[Kodebiaya] [varchar](15) NOT NULL,
	[Keterangan] [varchar](200) NULL,
	[Nilai] [numeric](18, 2) NULL,
	[KodeVls] [varchar](15) NULL,
	[Kurs] [numeric](18, 2) NULL,
	[NoBuktiInv] [varchar](30) NULL,
	[Urut] [int] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSORevisi](
	[NOBUKTI] [varchar](30) NOT NULL,
	[RevisiKe] [int] NOT NULL,
	[NOURUT] [varchar](10) NULL,
	[TANGGAL] [datetime] NULL,
	[TGLJATUHTEMPO] [datetime] NULL,
	[KODECUST] [varchar](15) NULL,
	[NOSPB] [varchar](20) NULL,
	[NoAlamatKirim] [int] NULL,
	[AlamatKirim] [varchar](2000) NULL,
	[HANDLING] [numeric](18, 2) NULL,
	[KODESLS] [int] NULL,
	[KETERANGAN] [varchar](200) NULL,
	[KODEVLS] [varchar](15) NULL,
	[KURS] [numeric](18, 2) NULL,
	[PPN] [tinyint] NULL,
	[TIPEBAYAR] [tinyint] NULL,
	[HARI] [int] NULL,
	[CATATAN] [varchar](2000) NULL,
	[TIPEDISC] [tinyint] NULL,
	[DISC] [float] NULL,
	[DISCRP] [numeric](18, 4) NULL,
	[NILAIPOT] [numeric](18, 2) NULL,
	[NILAIDPP] [numeric](18, 2) NULL,
	[NILAIPPN] [numeric](18, 2) NULL,
	[NILAINET] [numeric](18, 2) NULL,
	[ISCETAK] [tinyint] NULL,
	[ISBATAL] [bit] NULL,
	[USERBATAL] [varchar](15) NULL,
	[KODEGDG] [varchar](15) NULL,
	[KodeExp] [varchar](20) NULL,
	[INSGdg] [varchar](3) NULL,
	[INSBrg] [varchar](3) NULL,
	[Jam] [datetime] NULL,
	[NewNo] [varchar](20) NULL,
	[FLAGTIPE] [varchar](1) NULL,
	[NOPI] [varchar](50) NULL,
	[TIPESC] [tinyint] NULL,
	[TERM1P] [numeric](18, 2) NULL,
	[TERM1VLS] [varchar](15) NULL,
	[TERM1KURS] [numeric](18, 2) NULL,
	[TERM1KET] [varchar](50) NULL,
	[TERM2P] [numeric](18, 2) NULL,
	[TERM2VLS] [varchar](15) NULL,
	[TERM2KURS] [numeric](18, 2) NULL,
	[TERM2KET] [varchar](50) NULL,
	[TERM3P] [numeric](18, 2) NULL,
	[TERM3VLS] [varchar](15) NULL,
	[TERM3KURS] [numeric](18, 2) NULL,
	[TERM3KET] [varchar](50) NULL,
	[TERM4P] [numeric](18, 2) NULL,
	[TERM4VLS] [varchar](15) NULL,
	[TERM4KURS] [numeric](18, 2) NULL,
	[TERM4KET] [varchar](50) NULL,
	[TERM5P] [numeric](18, 2) NULL,
	[TERM5VLS] [varchar](15) NULL,
	[TERM5KURS] [numeric](18, 2) NULL,
	[TERM5KET] [varchar](50) NULL,
	[KetTipeEkspor] [varchar](50) NULL,
	[IsLengkap] [bit] NULL,
	[userid] [varchar](15) NULL,
	[TglInput] [datetime] NULL,
	[NoPesanan] [varchar](150) NULL,
	[TglKirim] [datetime] NULL,
	[MasaBerlaku] [datetime] NULL,
	[IsOtorisasi1] [bit] NULL,
	[OtoUser1] [varchar](15) NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NULL,
	[OtoUser2] [varchar](15) NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NULL,
	[OtoUser3] [varchar](15) NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NULL,
	[OtoUser4] [varchar](15) NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NULL,
	[OtoUser5] [varchar](15) NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NULL,
	[NoUrutJurnal] [varchar](5) NULL,
	[TglJurnal] [datetime] NULL,
	[cetakke] [smallint] NULL,
	[MAXOL] [int] NULL,
	[tglRevisi] [datetime] NULL,
 CONSTRAINT [PK_DBSORevisi] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[RevisiKe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPenjualan](
	[NoBukti] [varchar](50) NOT NULL,
	[Urut] [int] NOT NULL,
	[Tanggal] [datetime] NULL,
	[JatuhTempo] [datetime] NULL,
	[PPn] [tinyint] NULL,
	[KodeCustSupp] [varchar](25) NULL,
	[KodeTipe] [varchar](25) NULL,
	[KodeSubTipe] [varchar](25) NULL,
	[Qnt] [numeric](18, 2) NULL,
	[Harga] [numeric](18, 2) NULL,
	[NDPP] [numeric](18, 2) NULL,
	[NPPN] [numeric](18, 2) NULL,
	[NNet] [numeric](18, 2) NULL,
	[AccPersediaan] [varchar](25) NULL,
	[AccPPN] [varchar](25) NULL,
	[AccHutPiut] [varchar](25) NULL,
	[IsExcel] [bit] NULL,
	[KodeVls] [varchar](20) NULL,
	[Kurs] [numeric](18, 2) NULL,
	[NDPPD] [numeric](18, 2) NULL,
	[NPPND] [numeric](18, 2) NULL,
	[NNetD] [numeric](18, 2) NULL,
	[FlagSimbol] [varchar](2) NULL,
 CONSTRAINT [PK_DBPenjualan] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPembelian](
	[NoBukti] [varchar](50) NOT NULL,
	[Urut] [int] NOT NULL,
	[Tanggal] [datetime] NULL,
	[JatuhTempo] [datetime] NULL,
	[PPn] [tinyint] NULL,
	[KodeCustSupp] [varchar](25) NULL,
	[KodeTipe] [varchar](25) NULL,
	[KodeSubTipe] [varchar](25) NULL,
	[Qnt] [numeric](18, 2) NULL,
	[Harga] [numeric](18, 2) NULL,
	[NDPP] [numeric](18, 2) NULL,
	[NPPN] [numeric](18, 2) NULL,
	[NNet] [numeric](18, 2) NULL,
	[AccPersediaan] [varchar](25) NULL,
	[AccPPN] [varchar](25) NULL,
	[AccHutPiut] [varchar](25) NULL,
	[IsExcel] [bit] NULL,
	[KodeVls] [varchar](20) NULL,
	[Kurs] [numeric](18, 2) NULL,
	[NDPPD] [numeric](18, 2) NULL,
	[NPPND] [numeric](18, 2) NULL,
	[NNetD] [numeric](18, 2) NULL,
	[FlagSimbol] [varchar](2) NULL,
 CONSTRAINT [PK_DBPembelian] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPembayaranPO](
	[NoBukti] [varchar](20) NOT NULL,
	[Keterangan] [varchar](200) NULL,
	[DP] [bit] NULL,
	[Persentase] [numeric](5, 2) NULL,
	[KodeVls] [varchar](15) NULL,
	[Nilai] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempStockMinus](
	[IDUser] [varchar](30) NULL,
	[Urut] [int] NULL,
	[JenisBahan] [varchar](50) NULL,
	[KodeGdg] [varchar](20) NULL,
	[KodeBrg] [varchar](25) NULL,
	[KodeBng] [varchar](25) NULL,
	[KodeJenis] [varchar](20) NULL,
	[KodeWarna] [varchar](20) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempStockBOM2](
	[IDUser] [varchar](30) NULL,
	[KodeBrg] [varchar](25) NULL,
	[KodeBOM] [varchar](30) NULL,
	[StrLevelBOM] [varchar](50) NULL,
	[IntLevelBOM] [int] NULL,
	[Urut1] [int] NULL,
	[Urut2] [int] NULL,
	[QntBOM_] [float] NULL,
	[QntBOMX] [numeric](18, 2) NULL,
	[QntBOM] [numeric](18, 2) NULL,
	[IsBarang] [int] NULL,
	[QntStockR] [numeric](18, 2) NULL,
	[QntOutPO] [numeric](18, 2) NULL,
	[QntOutPrd] [numeric](18, 2) NULL,
	[QntOutSPK] [numeric](18, 2) NULL,
	[QntStock] [numeric](18, 2) NULL,
	[QntSisaStock] [numeric](18, 2) NULL,
	[QntProduksi] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempStockBOM_](
	[IDUser] [varchar](30) NULL,
	[KodeBrg] [varchar](25) NULL,
	[KodeBOM] [varchar](30) NULL,
	[StrLevelBOM] [varchar](50) NULL,
	[IntLevelBOM] [int] NULL,
	[Urut1] [int] NULL,
	[Urut2] [int] NULL,
	[QntBOM_] [float] NULL,
	[QntBOMX] [numeric](18, 2) NULL,
	[QntBOM] [numeric](18, 2) NULL,
	[IsBarang] [int] NULL,
	[QntStockR] [numeric](18, 2) NULL,
	[QntOutPO] [numeric](18, 2) NULL,
	[QntOutPrd] [numeric](18, 2) NULL,
	[QntOutSPK] [numeric](18, 2) NULL,
	[QntStock] [numeric](18, 2) NULL,
	[QntSisaStock] [numeric](18, 2) NULL,
	[QntProduksi] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempStockBOM](
	[IDUser] [varchar](30) NULL,
	[KodeBrg] [varchar](25) NULL,
	[KodeBOM] [varchar](30) NULL,
	[StrLevelBOM] [varchar](50) NULL,
	[IntLevelBOM] [int] NULL,
	[Urut1] [int] NULL,
	[Urut2] [int] NULL,
	[QntBOM_] [float] NULL,
	[QntBOMX] [numeric](18, 2) NULL,
	[QntBOM] [numeric](18, 2) NULL,
	[IsBarang] [int] NULL,
	[QntStockR] [numeric](18, 2) NULL,
	[QntOutPO] [numeric](18, 2) NULL,
	[QntOutPrd] [numeric](18, 2) NULL,
	[QntOutSPK] [numeric](18, 2) NULL,
	[QntStock] [numeric](18, 2) NULL,
	[QntSisaStock] [numeric](18, 2) NULL,
	[QntProduksi] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempRincianProduksi](
	[NoBukti] [varchar](50) NULL,
	[NobuktiPrd] [varchar](50) NULL,
	[Tanggal] [datetime] NULL,
	[NeedOtorisasi] [int] NULL,
	[UrutPrd] [int] NULL,
	[NoSPK] [varchar](50) NULL,
	[NoSPKPrd] [varchar](50) NULL,
	[UrutX] [int] NULL,
	[KodeBrg] [varchar](50) NULL,
	[NamaBrg] [varchar](150) NULL,
	[Qnt] [numeric](18, 2) NULL,
	[Satuan] [varchar](50) NULL,
	[NoPenyerahan] [varchar](50) NULL,
	[TglPenyerahan] [datetime] NULL,
	[KodeBhn] [varchar](50) NULL,
	[NamaBhn] [varchar](150) NULL,
	[RpBahan] [numeric](18, 2) NULL,
	[KodeMsn] [varchar](50) NULL,
	[NamaMesin] [varchar](50) NULL,
	[JamPrd] [numeric](18, 2) NULL,
	[JmlTarifPrd] [numeric](18, 2) NULL,
	[NIK] [varchar](50) NULL,
	[JamTenaker] [numeric](18, 2) NULL,
	[JmlTarifTenaker] [numeric](18, 2) NULL,
	[NoBiaya] [varchar](50) NULL,
	[TglBiaya] [datetime] NULL,
	[RpBiaya] [numeric](18, 2) NULL,
	[UrutBahan] [int] NULL,
	[NOSO] [varchar](50) NULL,
	[Urutan] [int] NULL,
	[UrutMesin] [int] NULL,
	[NamaTenaker] [varchar](50) NULL,
	[Qntbahan] [numeric](18, 2) NULL,
	[NoRPenyerahan] [varchar](50) NULL,
	[TglRPenyerahan] [datetime] NULL,
	[RKodeBhn] [varchar](50) NULL,
	[RNamaBhn] [varchar](150) NULL,
	[RRpBahan] [numeric](18, 2) NULL,
	[RQntBahan] [numeric](18, 2) NULL,
	[pemesan] [varchar](200) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempRincianHutPiut](
	[KodeCustSupp] [varchar](50) NULL,
	[NamaCustSupp] [varchar](100) NULL,
	[NoFaktur] [varchar](50) NULL,
	[GroupNofaktur] [varchar](50) NULL,
	[TglFaktur] [datetime] NULL,
	[UrutX] [int] NULL,
	[NoSPK] [varchar](50) NULL,
	[KodeBrg] [varchar](50) NULL,
	[NamaBrg] [varchar](150) NULL,
	[Qnt] [numeric](18, 2) NULL,
	[Satuan] [varchar](10) NULL,
	[Harga] [numeric](18, 2) NULL,
	[NNet] [numeric](18, 2) NULL,
	[JumlahRpFaktur] [numeric](18, 2) NULL,
	[Nobukti] [varchar](50) NULL,
	[TglBukti] [datetime] NULL,
	[JumlahRpBukti] [numeric](18, 2) NULL,
	[Dibayar] [numeric](18, 2) NULL,
	[BlmDibayar] [numeric](18, 2) NULL,
	[UrutTrans] [int] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TempRepSPKInvoice](
	[NoBukti] [varchar](50) NULL,
	[NobuktiPrd] [varchar](50) NULL,
	[RpWip] [numeric](18, 0) NULL,
	[Tanggal] [datetime] NULL,
	[TglAwalReport] [datetime] NULL,
	[TglAkhirReport] [datetime] NULL,
	[TglHpdTerakhir] [datetime] NULL,
	[TglInvoiceTerakhir] [datetime] NULL,
	[NeedOtorisasi] [int] NULL,
	[UrutPrd] [int] NULL,
	[NoSPK] [varchar](50) NULL,
	[TGlAwalSPK] [date] NULL,
	[TGlAKhirSPK] [date] NULL,
	[UrutProses] [int] NULL,
	[UrutInv] [int] NULL,
	[RpWipSusulan] [numeric](18, 0) NULL,
	[Noso] [varchar](50) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBIAYA](
	[Kodebiaya] [varchar](15) NOT NULL,
	[Keterangan] [varchar](100) NOT NULL,
	[MyID] [timestamp] NULL,
	[Perkiraan] [varchar](15) NULL,
 CONSTRAINT [PK_DBBIAYA] PRIMARY KEY CLUSTERED 
(
	[Kodebiaya] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBTUJUANTRANSFER](
	[IDTUJUAN] [int] NULL,
	[NAMATUJUAN] [varchar](50) NULL,
	[CONNSTR] [varchar](200) NULL,
	[SIMBOLTUJUAN] [varchar](25) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBARCODE](
	[NomorUrut] [int] NOT NULL,
	[KodeBarang] [varchar](50) NOT NULL,
	[PLU] [varchar](50) NOT NULL,
 CONSTRAINT [PK__DBBARCODE__284EBFAA] PRIMARY KEY CLUSTERED 
(
	[NomorUrut] ASC,
	[KodeBarang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBarangOlah](
	[KodeBrgOlah] [varchar](25) NOT NULL,
	[Urut] [int] NOT NULL,
	[KODEBRG] [varchar](25) NOT NULL,
 CONSTRAINT [PK_DBBarangProses] PRIMARY KEY CLUSTERED 
(
	[KodeBrgOlah] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBARANGLOKASI](
	[KodeGdg] [varchar](15) NULL,
	[Lokasi] [varchar](10) NULL,
	[KodeBrg] [varchar](25) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSPKOrder](
	[NOBUKTI] [varchar](30) NOT NULL,
	[URUTSPK] [int] NOT NULL,
	[URUT] [int] NOT NULL,
	[NOBUKTIORDER] [varchar](30) NOT NULL,
	[URUTORDER] [int] NOT NULL,
	[QTY] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_DBSPKOrder_1] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUTSPK] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBKATEGORI](
	[KodeKategori] [varchar](15) NOT NULL,
	[Keterangan] [varchar](100) NOT NULL,
	[Kodegdg] [varchar](15) NOT NULL,
 CONSTRAINT [PK_DBKATEGORI] PRIMARY KEY CLUSTERED 
(
	[KodeKategori] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DbSaldoWipPenyesuaian](
	[Nospk] [nvarchar](255) NULL,
	[Tanggal] [datetime] NULL,
	[Bulan] [nvarchar](255) NULL,
	[Tahun] [nvarchar](255) NULL,
	[Rpbahan] [float] NULL,
	[Rpmesin] [float] NULL,
	[Rptenaker] [float] NULL,
	[rpbiaya] [float] NULL,
	[wip] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DbSaldoWip](
	[Nospk] [nvarchar](255) NULL,
	[Tanggal] [datetime] NULL,
	[Bulan] [nvarchar](255) NULL,
	[Tahun] [nvarchar](255) NULL,
	[Rpbahan] [float] NULL,
	[Rpmesin] [float] NULL,
	[Rptenaker] [float] NULL,
	[rpbiaya] [float] NULL,
	[wip] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DbSaldoHasilProduksi](
	[NamaCustSupp] [nvarchar](255) NULL,
	[JenisBrg] [nvarchar](255) NULL,
	[NamaSubGrp] [nvarchar](255) NULL,
	[NoSPK] [nvarchar](255) NULL,
	[HppSaldoAwal] [float] NULL,
	[Hpd] [float] NULL,
	[Spb] [float] NULL,
	[sisa] [float] NULL,
	[Kategori] [nvarchar](255) NULL,
	[Tanggal] [datetime] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBRPenjualan](
	[NoBukti] [varchar](50) NOT NULL,
	[Urut] [int] NOT NULL,
	[Tanggal] [datetime] NULL,
	[JatuhTempo] [datetime] NULL,
	[PPn] [tinyint] NULL,
	[KodeCustSupp] [varchar](25) NULL,
	[KodeTipe] [varchar](25) NULL,
	[KodeSubTipe] [varchar](25) NULL,
	[Qnt] [numeric](18, 2) NULL,
	[Harga] [numeric](18, 2) NULL,
	[NDPP] [numeric](18, 2) NULL,
	[NPPN] [numeric](18, 2) NULL,
	[NNet] [numeric](18, 2) NULL,
	[AccPersediaan] [varchar](25) NULL,
	[AccPPN] [varchar](25) NULL,
	[AccHutPiut] [varchar](25) NULL,
	[IsExcel] [bit] NULL,
	[KodeVls] [varchar](20) NULL,
	[Kurs] [numeric](18, 2) NULL,
	[NDPPD] [numeric](18, 2) NULL,
	[NPPND] [numeric](18, 2) NULL,
	[NNetD] [numeric](18, 2) NULL,
	[NoBukti_] [varchar](50) NULL,
	[FlagSimbol] [varchar](2) NULL,
 CONSTRAINT [PK_DBRPenjualan] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBRPembelian](
	[NoBukti] [varchar](50) NOT NULL,
	[Urut] [int] NOT NULL,
	[Tanggal] [datetime] NULL,
	[JatuhTempo] [datetime] NULL,
	[PPn] [tinyint] NULL,
	[KodeCustSupp] [varchar](25) NULL,
	[KodeTipe] [varchar](25) NULL,
	[KodeSubTipe] [varchar](25) NULL,
	[Qnt] [numeric](18, 2) NULL,
	[Harga] [numeric](18, 2) NULL,
	[NDPP] [numeric](18, 2) NULL,
	[NPPN] [numeric](18, 2) NULL,
	[NNet] [numeric](18, 2) NULL,
	[AccPersediaan] [varchar](25) NULL,
	[AccPPN] [varchar](25) NULL,
	[AccHutPiut] [varchar](25) NULL,
	[IsExcel] [bit] NULL,
	[KodeVls] [varchar](20) NULL,
	[Kurs] [numeric](18, 2) NULL,
	[NDPPD] [numeric](18, 2) NULL,
	[NPPND] [numeric](18, 2) NULL,
	[NNetD] [numeric](18, 2) NULL,
	[NoBukti_] [varchar](50) NULL,
	[FlagSimbol] [varchar](2) NULL,
 CONSTRAINT [PK_DBRPembelian] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBOMDET](
	[KodeBOM] [varchar](25) NOT NULL,
	[Urut] [int] NULL,
	[KodeBrg] [varchar](25) NULL,
	[Qnt] [float] NULL,
	[Numerator] [numeric](18, 2) NULL,
	[Denominator] [numeric](18, 2) NULL,
	[LossRatio] [numeric](18, 2) NULL,
	[PlaceCD] [varchar](20) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBOM](
	[KodeBOM] [varchar](25) NOT NULL,
	[KodeBrg] [varchar](25) NULL,
	[NoUrut] [varchar](10) NULL,
	[IsDefault] [bit] NULL,
	[TglAwal] [datetime] NULL,
	[TglAkhir] [datetime] NULL,
 CONSTRAINT [PK_DBBOM] PRIMARY KEY CLUSTERED 
(
	[KodeBOM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBPPBT](
	[NOBUKTI] [varchar](50) NOT NULL,
	[NOURUT] [varchar](10) NULL,
	[TANGGAL] [datetime] NULL,
	[KDDEP] [varchar](20) NULL,
	[KodeGdg] [varchar](15) NULL,
	[NoBPPB] [varchar](20) NULL,
	[KodeGdgT] [varchar](15) NULL,
	[CetakKe] [smallint] NULL,
	[IsOtorisasi1] [bit] NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[DBBPPBT] ADD [OtoUser1] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [TglOto1] [datetime] NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [IsOtorisasi2] [bit] NOT NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [OtoUser2] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [TglOto2] [datetime] NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [IsOtorisasi3] [bit] NOT NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [OtoUser3] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [TglOto3] [datetime] NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [IsOtorisasi4] [bit] NOT NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [OtoUser4] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [TglOto4] [datetime] NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [IsOtorisasi5] [bit] NOT NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [OtoUser5] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [TglOto5] [datetime] NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [NoJurnal] [varchar](30) NOT NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [NoUrutJurnal] [varchar](5) NOT NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [TglJurnal] [datetime] NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [MaxOL] [int] NOT NULL
ALTER TABLE [dbo].[DBBPPBT] ADD [JenisMinta] [tinyint] NULL
ALTER TABLE [dbo].[DBBPPBT] ADD  CONSTRAINT [PK_DBBPPBT] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSubBrgDepart](
	[KodeSubGrp] [varchar](10) NOT NULL,
	[Urut] [int] NOT NULL,
	[KodeDept] [varchar](25) NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPO](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NOURUT] [varchar](10) NOT NULL,
	[TANGGAL] [datetime] NULL,
	[TglJatuhTempo] [datetime] NULL,
	[KODESUPP] [varchar](15) NOT NULL,
	[HANDLING] [numeric](18, 2) NOT NULL,
	[KODEEXP] [varchar](20) NOT NULL,
	[KETERANGAN] [varchar](200) NOT NULL,
	[FAKTURSUPP] [varchar](50) NOT NULL,
	[KODEVLS] [varchar](15) NOT NULL,
	[KURS] [numeric](18, 2) NOT NULL,
	[PPN] [tinyint] NOT NULL,
	[TIPEBAYAR] [tinyint] NOT NULL,
	[HARI] [int] NOT NULL,
	[TipeDisc] [tinyint] NOT NULL,
	[DISC] [float] NOT NULL,
	[DISCRP] [numeric](18, 2) NOT NULL,
	[ISCETAK] [bit] NOT NULL,
	[NilaiCetak] [int] NULL,
	[IsBatal] [bit] NOT NULL,
	[UserBatal] [varchar](15) NOT NULL,
	[IsClose] [bit] NULL,
	[IsExp] [bit] NULL,
	[isAut] [bit] NULL,
	[KodeGDG] [varchar](15) NOT NULL,
	[cetakke] [smallint] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[MaxOL] [int] NOT NULL,
	[TglBatal] [datetime] NULL,
	[flagtipe] [tinyint] NULL,
	[IsPPh] [bit] NULL,
 CONSTRAINT [PK_DBPO] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSPKDET](
	[NOBUKTI] [varchar](30) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NULL,
	[QNT] [numeric](18, 2) NULL,
	[NOSAT] [tinyint] NULL,
	[SATUAN] [varchar](5) NULL,
	[ISI] [numeric](18, 2) NULL,
	[QntBOMX] [numeric](18, 2) NULL,
	[KodeBOMDet] [varchar](30) NULL,
	[StrLevelBOM] [varchar](50) NULL,
	[IntLevelBOM] [int] NULL,
 CONSTRAINT [PK_DBSPKDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBJBAHAN](
	[KDBHN] [varchar](20) NOT NULL,
	[NAMABHN] [varchar](50) NOT NULL,
 CONSTRAINT [PK__DBJBAHAN] PRIMARY KEY CLUSTERED 
(
	[KDBHN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBJADWALPRD](
	[NOJADWAL] [int] IDENTITY(1,1) NOT NULL,
	[KODEMSN] [varchar](15) NULL,
	[TANGGAL] [datetime] NULL,
	[JAMAWAL] [datetime] NULL,
	[JAMAKHIR] [datetime] NULL,
	[ISPRODUKSI] [bit] NULL,
	[NOSPK] [varchar](30) NULL,
	[KETERANGAN] [varchar](50) NULL,
	[QNTSPK] [numeric](18, 2) NULL,
	[QNTKERJA] [numeric](18, 2) NULL,
	[KodePrs] [varchar](30) NOT NULL,
	[Urut] [int] NOT NULL,
	[urutmesin] [int] NULL,
	[TarifMesin] [numeric](18, 2) NULL,
	[JamTenaker] [numeric](18, 2) NULL,
	[JmlTenaker] [numeric](18, 2) NULL,
	[TarifTenaker] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBJABATAN](
	[KODEJAB] [varchar](15) NOT NULL,
	[NamaJab] [varchar](50) NOT NULL,
	[MyID] [timestamp] NULL,
 CONSTRAINT [PK_DBJABATAN] PRIMARY KEY CLUSTERED 
(
	[KODEJAB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbPesanTunai](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NoUrut] [int] NULL,
	[TANGGAL] [datetime] NULL,
	[KODECUST] [varchar](15) NOT NULL,
	[ISCETAK] [bit] NOT NULL,
	[BayarTunai] [numeric](18, 2) NULL,
	[BayarDebet] [numeric](18, 2) NULL,
	[NoDebet] [varchar](30) NULL,
	[BankDebet] [varchar](30) NULL,
	[BayarKredit] [numeric](18, 2) NULL,
	[TipeKartuKredit] [tinyint] NULL,
	[NoKredit] [varchar](30) NULL,
	[BankKredit] [varchar](30) NULL,
	[BayarVoucher] [numeric](18, 2) NULL,
	[VoucherRp] [numeric](18, 2) NOT NULL,
	[TglInput] [datetime] NULL,
	[UserID] [varchar](15) NULL,
	[DiscMember] [numeric](18, 2) NULL,
	[DiscHarian] [numeric](18, 2) NULL,
	[Keterangan] [varchar](30) NULL,
	[KodeRekan] [varchar](15) NULL,
	[NoKartuRekan] [varchar](50) NULL,
	[DiscRekan] [numeric](18, 2) NULL,
	[Pemesan] [varchar](50) NULL,
	[IsOrder] [bit] NULL,
	[IsAmbil] [bit] NOT NULL,
	[Alamat] [varchar](100) NULL,
	[Telepon] [varchar](20) NULL,
	[TanggalAmbil] [datetime] NULL,
	[DP] [numeric](18, 2) NULL,
	[KodeGdg] [varchar](15) NULL,
	[TglKirim] [datetime] NULL,
	[JamKirim] [varchar](8) NULL,
	[Piutang] [numeric](18, 2) NULL,
	[IsAmbilBrg] [bit] NULL,
 CONSTRAINT [PK_dbPesanTunai] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPERUSAHAAN](
	[KODEUSAHA] [varchar](15) NOT NULL,
	[NAMA] [varchar](40) NOT NULL,
	[ALAMAT1] [varchar](100) NOT NULL,
	[ALAMAT2] [varchar](100) NOT NULL,
	[KOTA] [varchar](40) NOT NULL,
	[Telpon] [varchar](30) NOT NULL,
	[Fax] [varchar](30) NOT NULL,
	[NAMAPKP] [varchar](40) NOT NULL,
	[ALAMATPKP1] [varchar](100) NOT NULL,
	[ALAMATPKP2] [varchar](100) NOT NULL,
	[KOTAPKP] [varchar](40) NOT NULL,
	[NPWP] [varchar](40) NOT NULL,
	[TGLPENGUKUHAN] [datetime] NULL,
	[NAMAPKP1] [varchar](40) NOT NULL,
	[ALAMATPKP21] [varchar](100) NOT NULL,
	[ALAMATPKP22] [varchar](100) NOT NULL,
	[KOTAPKP1] [varchar](40) NOT NULL,
	[NPWP1] [varchar](40) NOT NULL,
	[TGLPENGUKUHAN1] [datetime] NULL,
	[Direksi] [varchar](50) NOT NULL,
	[Jabatan] [varchar](50) NOT NULL,
	[LOGO] [image] NULL,
	[TTD] [image] NULL,
	[email] [varchar](100) NULL,
	[TTD_PATH] [nvarchar](255) NULL,
	[LOGO_PATH] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[G001$](
	[no] [float] NULL,
	[Kodebrg] [nvarchar](255) NULL,
	[Namabrg] [nvarchar](255) NULL,
	[Qnt] [float] NULL,
	[Harga] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBHARGAJUAL](
	[KODEBRG] [varchar](25) NULL,
	[KODEJENISCUSTSUPP] [varchar](15) NULL,
	[HARGA1] [numeric](18, 2) NULL,
	[HARGA2] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBGUDANG](
	[KODEGDG] [varchar](15) NOT NULL,
	[NAMA] [varchar](40) NOT NULL,
	[IsRusak] [bit] NOT NULL,
	[Alamat] [varchar](100) NOT NULL,
	[IsCust] [bit] NOT NULL,
	[MyID] [timestamp] NULL,
	[FlagMenu] [int] NULL,
	[IsProduksi] [bit] NOT NULL,
	[istakeinout] [bit] NULL,
 CONSTRAINT [PK_DBGUDANG] PRIMARY KEY CLUSTERED 
(
	[KODEGDG] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPERIODE](
	[USERID] [varchar](15) NOT NULL,
	[BULAN] [varchar](2) NOT NULL,
	[TAHUN] [varchar](4) NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBFinishingDET](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NULL,
	[QNT] [numeric](18, 2) NULL,
	[NOSAT] [tinyint] NULL,
	[SATUAN] [varchar](5) NULL,
	[ISI] [numeric](18, 2) NULL,
	[NoSPK] [varchar](50) NULL,
	[HPP] [numeric](18, 2) NULL,
	[JenisKerja] [int] NULL,
	[Kertas] [numeric](18, 2) NULL,
	[Waktu] [numeric](18, 2) NULL,
	[KetDetail] [varchar](1000) NULL,
	[C1] [numeric](18, 2) NULL,
	[C2] [numeric](18, 2) NULL,
	[C3] [numeric](18, 2) NULL,
	[C4] [numeric](18, 2) NULL,
	[C5] [numeric](18, 2) NULL,
	[C6] [numeric](18, 2) NULL,
	[I1] [numeric](18, 2) NULL,
	[I2] [numeric](18, 2) NULL,
	[I3] [numeric](18, 2) NULL,
	[H1] [numeric](18, 2) NULL,
	[H2] [numeric](18, 2) NULL,
	[H3] [numeric](18, 2) NULL,
	[H4] [numeric](18, 2) NULL,
	[H5] [numeric](18, 2) NULL,
	[H6] [numeric](18, 2) NULL,
	[E1] [numeric](18, 2) NULL,
	[E2] [numeric](18, 2) NULL,
	[E3] [numeric](18, 2) NULL,
	[N1] [numeric](18, 2) NULL,
	[N2] [numeric](18, 2) NULL,
	[CSI] [numeric](18, 2) NULL,
	[L1] [numeric](18, 2) NULL,
	[L2] [numeric](18, 2) NULL,
	[L3] [numeric](18, 2) NULL,
	[L4] [numeric](18, 2) NULL,
	[L5] [numeric](18, 2) NULL,
	[L6] [numeric](18, 2) NULL,
	[L7] [numeric](18, 2) NULL,
	[L8] [numeric](18, 2) NULL,
	[L9] [numeric](18, 2) NULL,
	[HasilBaik] [numeric](18, 2) NULL,
	[HasilRusak] [numeric](18, 2) NULL,
	[KertasReject] [numeric](18, 2) NULL,
	[K1] [numeric](18, 2) NULL,
	[P1] [numeric](18, 2) NULL,
	[NIK] [varchar](50) NOT NULL,
	[Jml1] [numeric](18, 2) NULL,
	[Jml2] [numeric](18, 2) NULL,
	[Jml3] [numeric](18, 2) NULL,
	[Jml4] [numeric](18, 2) NULL,
	[Jml5] [numeric](18, 2) NULL,
	[Jml6] [numeric](18, 2) NULL,
	[Jml7] [numeric](18, 2) NULL,
	[Jml8] [numeric](18, 2) NULL,
	[Jml9] [numeric](18, 2) NULL,
	[Jml10] [numeric](18, 2) NULL,
	[Jml11] [numeric](18, 2) NULL,
	[Jml12] [numeric](18, 2) NULL,
	[Jml13] [numeric](18, 2) NULL,
	[Jml14] [numeric](18, 2) NULL,
	[Jml15] [numeric](18, 2) NULL,
	[Jml16] [numeric](18, 2) NULL,
	[Jml17] [numeric](18, 2) NULL,
	[Jml18] [numeric](18, 2) NULL,
	[KetR1] [varchar](500) NULL,
	[KetR2] [varchar](500) NULL,
	[KetR3] [varchar](500) NULL,
	[KetR4] [varchar](500) NULL,
	[KetR5] [varchar](500) NULL,
	[KetR6] [varchar](500) NULL,
	[KetR7] [varchar](500) NULL,
	[KetR8] [varchar](500) NULL,
	[KetR9] [varchar](500) NULL,
	[KetR10] [varchar](500) NULL,
	[KetR11] [varchar](500) NULL,
	[KetR12] [varchar](500) NULL,
	[KetR13] [varchar](500) NULL,
	[KetR14] [varchar](500) NULL,
	[KetR15] [varchar](500) NULL,
	[KetR16] [varchar](500) NULL,
	[KetR17] [varchar](500) NULL,
	[KetR18] [varchar](500) NULL,
	[QntCetak] [numeric](18, 2) NULL,
	[QntTambahan] [numeric](18, 2) NULL,
	[QntSpesimen] [numeric](18, 2) NULL,
	[JmlKR1] [numeric](18, 2) NULL,
	[JmlKR2] [numeric](18, 2) NULL,
	[KetKRL1] [varchar](500) NULL,
	[KetKRL2] [varchar](500) NULL,
	[KetKRL3] [varchar](500) NULL,
	[KetKR1] [varchar](500) NULL,
	[KetKR2] [varchar](500) NULL,
	[PR1] [varchar](500) NULL,
	[PR2] [varchar](500) NULL,
	[PR3] [varchar](500) NULL,
	[PR4] [varchar](500) NULL,
	[PR5] [varchar](500) NULL,
	[PR6] [varchar](500) NULL,
	[PR7] [varchar](500) NULL,
	[PR8] [varchar](500) NULL,
	[PR9] [varchar](500) NULL,
	[PR10] [varchar](500) NULL,
	[PR11] [varchar](500) NULL,
	[PR12] [varchar](500) NULL,
	[PR13] [varchar](500) NULL,
	[PR14] [varchar](500) NULL,
	[PR15] [varchar](500) NULL,
	[PR16] [varchar](500) NULL,
	[PR17] [varchar](500) NULL,
	[PR18] [varchar](500) NULL,
 CONSTRAINT [PK_DBFinishingDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBFinishing](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NOURUT] [varchar](10) NULL,
	[TANGGAL] [datetime] NOT NULL,
	[KETERANGAN] [varchar](200) NULL,
	[IsOtorisasi1] [bit] NULL,
	[OtoUser1] [varchar](15) NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NULL,
	[OtoUser2] [varchar](15) NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NULL,
	[OtoUser3] [varchar](15) NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NULL,
	[OtoUser4] [varchar](15) NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NULL,
	[OtoUser5] [varchar](15) NULL,
	[TglOto5] [datetime] NULL,
	[NoJurnal] [varchar](30) NULL,
	[NoUrutJurnal] [varchar](5) NULL,
	[TglJurnal] [datetime] NULL,
	[CetakKe] [smallint] NULL,
	[MaxOL] [int] NULL,
	[FlagTipe] [tinyint] NULL,
	[MyID] [timestamp] NULL,
	[Shift] [tinyint] NULL,
 CONSTRAINT [PK_DBFinishing] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBDiskonHarian](
	[Hari] [int] NOT NULL,
	[Diskon] [numeric](18, 2) NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_dbDiskonHarian] PRIMARY KEY CLUSTERED 
(
	[Hari] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBPPB](
	[NOBUKTI] [varchar](50) NOT NULL,
	[NOURUT] [varchar](10) NULL,
	[TANGGAL] [datetime] NULL,
	[KDDEP] [varchar](20) NULL,
	[KodeGdg] [varchar](15) NULL,
	[KodeGdgT] [varchar](15) NULL,
	[CetakKe] [smallint] NULL,
	[IsOtorisasi1] [bit] NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[DBBPPB] ADD [OtoUser1] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBBPPB] ADD [TglOto1] [datetime] NULL
ALTER TABLE [dbo].[DBBPPB] ADD [IsOtorisasi2] [bit] NOT NULL
ALTER TABLE [dbo].[DBBPPB] ADD [OtoUser2] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBBPPB] ADD [TglOto2] [datetime] NULL
ALTER TABLE [dbo].[DBBPPB] ADD [IsOtorisasi3] [bit] NOT NULL
ALTER TABLE [dbo].[DBBPPB] ADD [OtoUser3] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBBPPB] ADD [TglOto3] [datetime] NULL
ALTER TABLE [dbo].[DBBPPB] ADD [IsOtorisasi4] [bit] NOT NULL
ALTER TABLE [dbo].[DBBPPB] ADD [OtoUser4] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBBPPB] ADD [TglOto4] [datetime] NULL
ALTER TABLE [dbo].[DBBPPB] ADD [IsOtorisasi5] [bit] NOT NULL
ALTER TABLE [dbo].[DBBPPB] ADD [OtoUser5] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBBPPB] ADD [TglOto5] [datetime] NULL
ALTER TABLE [dbo].[DBBPPB] ADD [NoJurnal] [varchar](30) NOT NULL
ALTER TABLE [dbo].[DBBPPB] ADD [NoUrutJurnal] [varchar](5) NOT NULL
ALTER TABLE [dbo].[DBBPPB] ADD [TglJurnal] [datetime] NULL
ALTER TABLE [dbo].[DBBPPB] ADD [MaxOL] [int] NOT NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[DBBPPB] ADD [NoSpk] [varchar](30) NOT NULL
ALTER TABLE [dbo].[DBBPPB] ADD [Jenis] [tinyint] NULL
ALTER TABLE [dbo].[DBBPPB] ADD [NoBPPBT] [varchar](50) NULL
ALTER TABLE [dbo].[DBBPPB] ADD  CONSTRAINT [PK_DBBPPB] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBON](
	[Devisi] [varchar](15) NOT NULL,
	[NoBukti] [varchar](20) NOT NULL,
	[NOURUT] [varchar](5) NULL,
	[Tanggal] [datetime] NULL,
	[Penerima] [varchar](100) NOT NULL,
	[Keterangan] [varchar](100) NOT NULL,
	[Debet] [numeric](18, 2) NOT NULL,
	[Kredit] [numeric](18, 2) NOT NULL,
	[Perkiraan] [varchar](25) NOT NULL,
	[TglInput] [datetime] NULL,
	[UserID] [varchar](20) NOT NULL,
	[Urut] [tinyint] NOT NULL,
	[BuktiKas] [varchar](30) NOT NULL,
	[UrutKas] [int] NOT NULL,
	[MyID] [timestamp] NULL,
	[KodeVls] [varchar](10) NULL,
	[Kurs] [numeric](18, 4) NULL,
	[DebetD] [numeric](18, 2) NULL,
	[KreditD] [numeric](18, 2) NULL,
 CONSTRAINT [PK_dbBon] PRIMARY KEY CLUSTERED 
(
	[Devisi] ASC,
	[NoBukti] ASC,
	[Perkiraan] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBRSPB](
	[NoBukti] [varchar](30) NOT NULL,
	[NoUrut] [varchar](7) NOT NULL,
	[Tanggal] [datetime] NULL,
	[NoSPB] [varchar](30) NULL,
	[KodeCustSupp] [varchar](15) NOT NULL,
	[NoPolKend] [varchar](50) NULL,
	[Container] [varchar](50) NULL,
	[NoContainer] [varchar](50) NULL,
	[NoSeal] [varchar](50) NULL,
	[Catatan] [varchar](4000) NULL,
	[IsCetak] [bit] NULL,
	[IDUser] [varchar](30) NULL,
	[MyID] [timestamp] NULL,
	[IsOtorisasi1] [bit] NOT NULL,
	[OtoUser1] [varchar](15) NOT NULL,
	[TglOto1] [datetime] NULL,
	[IsOtorisasi2] [bit] NOT NULL,
	[OtoUser2] [varchar](15) NOT NULL,
	[TglOto2] [datetime] NULL,
	[IsOtorisasi3] [bit] NOT NULL,
	[OtoUser3] [varchar](15) NOT NULL,
	[TglOto3] [datetime] NULL,
	[IsOtorisasi4] [bit] NOT NULL,
	[OtoUser4] [varchar](15) NOT NULL,
	[TglOto4] [datetime] NULL,
	[IsOtorisasi5] [bit] NOT NULL,
	[OtoUser5] [varchar](15) NOT NULL,
	[TglOto5] [datetime] NULL,
	[IsEkstern] [bit] NOT NULL,
	[CustAngkutan] [varchar](15) NOT NULL,
	[IsFlag] [bit] NOT NULL,
	[NoJurnal] [varchar](30) NOT NULL,
	[NoUrutJurnal] [varchar](5) NOT NULL,
	[TglJurnal] [datetime] NULL,
	[KodeGdg] [varchar](15) NULL,
	[MaxOL] [int] NOT NULL,
	[Flagtipe] [tinyint] NULL,
 CONSTRAINT [PK_DBRSPB] PRIMARY KEY CLUSTERED 
(
	[NoBukti] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSPKBJDET](
	[NOBUKTI] [varchar](30) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NULL,
	[QNT] [numeric](18, 2) NULL,
	[NOSAT] [tinyint] NULL,
	[SATUAN] [varchar](5) NULL,
	[ISI] [numeric](18, 2) NULL,
 CONSTRAINT [PK_DBSPKBJDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBARANGCUSTOMER](
	[KodecustSupp] [varchar](15) NOT NULL,
	[KodeBrg] [varchar](25) NOT NULL,
	[Sat_1] [varchar](5) NOT NULL,
	[Harga_1] [numeric](18, 0) NULL,
	[Sat_2] [varchar](5) NOT NULL,
	[Harga_2] [numeric](18, 0) NULL,
	[Harga] [numeric](18, 0) NULL,
	[Komisi] [numeric](18, 2) NULL,
 CONSTRAINT [PK_DBBARANGCUSTOMER] PRIMARY KEY CLUSTERED 
(
	[KodecustSupp] ASC,
	[KodeBrg] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSORevisiDET](
	[NOBUKTI] [varchar](30) NOT NULL,
	[URUT] [int] NOT NULL,
	[RevisiKe] [int] NOT NULL,
	[KODEBRG] [varchar](25) NULL,
	[TGLKIRIM] [datetime] NULL,
	[PPN] [tinyint] NULL,
	[DISC] [float] NULL,
	[KURS] [numeric](18, 2) NULL,
	[QNT] [numeric](18, 2) NULL,
	[QNT2] [numeric](18, 2) NULL,
	[QNTBATAL] [numeric](18, 2) NULL,
	[TGLBATAL] [datetime] NULL,
	[NOSAT] [tinyint] NULL,
	[SATUAN] [varchar](5) NULL,
	[ISI] [numeric](18, 2) NULL,
	[HARGA] [numeric](18, 4) NULL,
	[HPP] [numeric](18, 2) NULL,
	[DISCP1] [numeric](18, 2) NULL,
	[DISCRP1] [numeric](18, 4) NULL,
	[DISCTOT] [numeric](18, 2) NULL,
	[BYANGKUT] [numeric](18, 2) NULL,
	[HRGNETTO]  AS ([HARGA]-[DISCTOT]),
	[NDISKON]  AS ((case when [nosat]=(1) then [Qnt] when [NOSAT]=(2) then [QNT2] else (0) end*([Harga]-[DISCTOT]))*([DISC]/(100))),
	[SUBTOTAL]  AS (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DiscTot])),
	[NDPP]  AS (case when [ppn]=(1) OR [ppn]=(0) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end),
	[NPPN]  AS (case when [ppn]=(1) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*(0.1)),
	[NNET]  AS (case when [ppn]=(1) OR [ppn]=(0) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end+case when [ppn]=(1) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*(0.1)),
	[SUBTOTALRp]  AS ((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[Disctot]))*[Kurs]),
	[NDPPRp]  AS (case when [ppn]=(1) OR [ppn]=(0) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*[Kurs]),
	[NPPNRp]  AS ((case when [ppn]=(1) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*(0.1))*[Kurs]),
	[NNETRp]  AS ((case when [ppn]=(1) OR [ppn]=(0) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end+case when [ppn]=(1) then case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100) when [ppn]=(2) then (case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT])-((case when [NOSAT]=(1) then [Qnt] when [NOSAT]=(2) then [Qnt2] else (0) end*([HARGA]-[DISCTOT]))*[DISC])/(100))/(1.1) else (0) end*(0.1))*[Kurs]),
	[NOSPB] [varchar](20) NULL,
	[UrutSPB] [int] NULL,
	[Qnt3] [numeric](18, 2) NULL,
	[QntSisaSO] [numeric](18, 2) NULL,
	[Qnt2SisaSO] [numeric](18, 2) NULL,
	[QntSJln] [numeric](18, 2) NULL,
	[Qnt2SJln] [numeric](18, 2) NULL,
	[IsCetakKitir] [bit] NULL,
	[NoContainer] [varchar](50) NULL,
	[Ukuran] [varchar](15) NULL,
	[NoSlabs] [int] NULL,
 CONSTRAINT [PK_DBSORevisiDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC,
	[RevisiKe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBCONTACT](
	[CONTACTID] [int] NOT NULL,
	[KODECUSTSUPP] [varchar](15) NOT NULL,
	[TITLE] [varchar](15) NULL,
	[FIRSTNAME] [varchar](20) NULL,
	[MIDDLENAME] [varchar](20) NULL,
	[LASTNAME] [varchar](20) NULL,
	[JOBTITLE] [varchar](40) NULL,
	[COMPANY] [varchar](40) NULL,
	[PHONETYPE1] [varchar](1) NULL,
	[PHONE1] [varchar](40) NULL,
	[PHONETYPE2] [varchar](1) NULL,
	[PHONE2] [varchar](40) NULL,
	[PHONETYPE3] [varchar](1) NULL,
	[PHONE3] [varchar](40) NULL,
	[PHONETYPE4] [varchar](1) NULL,
	[PHONE4] [varchar](40) NULL,
	[ALAMAT] [ntext] NULL,
	[EMAIL] [varchar](40) NULL,
	[DEPARTEMEN] [varchar](40) NULL,
	[BIRTHDAY] [datetime] NULL,
	[ANNIVERSARY] [datetime] NULL,
	[PHOTO] [image] NULL,
	[MyID] [timestamp] NULL,
 CONSTRAINT [PK_DBCONTACT_1] PRIMARY KEY CLUSTERED 
(
	[CONTACTID] ASC,
	[KODECUSTSUPP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBCustAreaKota](
	[KodeCustSupp] [varchar](15) NOT NULL,
	[KodeArea] [varchar](20) NOT NULL,
	[KodeKota] [varchar](15) NOT NULL,
	[Tahun] [int] NOT NULL,
	[QntBln1] [numeric](18, 2) NOT NULL,
	[Qnt2Bln1] [numeric](18, 2) NOT NULL,
	[RpBln1] [numeric](18, 2) NOT NULL,
	[QntBln2] [numeric](18, 2) NOT NULL,
	[Qnt2Bln2] [numeric](18, 2) NOT NULL,
	[RpBln2] [numeric](18, 2) NOT NULL,
	[QntBln3] [numeric](18, 2) NOT NULL,
	[Qnt2Bln3] [numeric](18, 2) NOT NULL,
	[RpBln3] [numeric](18, 2) NOT NULL,
	[QntBln4] [numeric](18, 2) NOT NULL,
	[Qnt2Bln4] [numeric](18, 2) NOT NULL,
	[RpBln4] [numeric](18, 2) NOT NULL,
	[QntBln5] [numeric](18, 2) NOT NULL,
	[Qnt2Bln5] [numeric](18, 2) NOT NULL,
	[RpBln5] [numeric](18, 2) NOT NULL,
	[QntBln6] [numeric](18, 2) NOT NULL,
	[Qnt2Bln6] [numeric](18, 2) NOT NULL,
	[RpBln6] [numeric](18, 2) NOT NULL,
	[QntBln7] [numeric](18, 2) NOT NULL,
	[Qnt2Bln7] [numeric](18, 2) NOT NULL,
	[RpBln7] [numeric](18, 2) NOT NULL,
	[QntBln8] [numeric](18, 2) NOT NULL,
	[Qnt2Bln8] [numeric](18, 2) NOT NULL,
	[RpBln8] [numeric](18, 2) NOT NULL,
	[QntBln9] [numeric](18, 2) NOT NULL,
	[Qnt2Bln9] [numeric](18, 2) NOT NULL,
	[RpBln9] [numeric](18, 2) NOT NULL,
	[QntBln10] [numeric](18, 2) NOT NULL,
	[Qnt2Bln10] [numeric](18, 2) NOT NULL,
	[RpBln10] [numeric](18, 2) NOT NULL,
	[QntBln11] [numeric](18, 2) NOT NULL,
	[Qnt2Bln11] [numeric](18, 2) NOT NULL,
	[RpBln11] [numeric](18, 2) NOT NULL,
	[QntBln12] [numeric](18, 2) NOT NULL,
	[Qnt2Bln12] [numeric](18, 2) NOT NULL,
	[RpBln12] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_DBCustAreaKota] PRIMARY KEY CLUSTERED 
(
	[KodeCustSupp] ASC,
	[KodeArea] ASC,
	[KodeKota] ASC,
	[Tahun] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBDATABARANG](
	[KODEBRG] [varchar](25) NOT NULL,
	[QNTBPPB] [numeric](18, 2) NOT NULL,
	[QNTPB] [numeric](18, 2) NOT NULL,
	[QNTPPL] [numeric](18, 2) NOT NULL,
	[QNTPO] [numeric](18, 2) NOT NULL,
	[QNTPBL] [numeric](18, 2) NOT NULL,
	[QNTRPB] [numeric](18, 2) NOT NULL,
	[QNTPNJ] [numeric](18, 2) NOT NULL,
	[QNTRPJ] [numeric](18, 2) NOT NULL,
	[QNTADI] [numeric](18, 2) NOT NULL,
	[QNTADO] [numeric](18, 2) NOT NULL,
	[QNTUKI] [numeric](18, 2) NOT NULL,
	[QNTUKO] [numeric](18, 2) NOT NULL,
	[QNTTRI] [numeric](18, 2) NOT NULL,
	[QNTTRO] [numeric](18, 2) NOT NULL,
	[QNTOSBPPB]  AS ([QNTBPPB]-[QNTPB]),
	[QNTOSPPL]  AS ([QNTPPL]-([QNTPO]-[QNTPBL])),
 CONSTRAINT [PK_DBDATABARANG] PRIMARY KEY NONCLUSTERED 
(
	[KODEBRG] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBFLPASS](
	[USERID] [varchar](25) NOT NULL,
	[UID] [varchar](20) NOT NULL,
	[FullName] [varchar](50) NOT NULL,
	[TINGKAT] [tinyint] NOT NULL,
	[STATUS] [tinyint] NOT NULL,
	[HOSTID] [varchar](20) NOT NULL,
	[IPAddres] [varchar](20) NOT NULL,
	[kodeBag] [varchar](20) NOT NULL,
	[KodeJab] [varchar](15) NOT NULL,
	[KodeKasir] [varchar](3) NOT NULL,
	[Kodegdg] [varchar](15) NULL,
	[keynik] [int] NULL,
	[UID2] [varchar](20) NOT NULL,
 CONSTRAINT [PK_DBFLPASS] PRIMARY KEY CLUSTERED 
(
	[USERID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPORevDET](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NOT NULL,
	[PPN] [tinyint] NOT NULL,
	[DISC] [float] NOT NULL,
	[QNT] [numeric](18, 2) NOT NULL,
	[QntBatal] [numeric](18, 2) NOT NULL,
	[TglBatal] [datetime] NULL,
	[NOSAT] [tinyint] NOT NULL,
	[SATUAN] [varchar](5) NOT NULL,
	[ISI] [numeric](18, 2) NOT NULL,
	[HARGA] [numeric](18, 4) NOT NULL,
	[DISCP] [numeric](18, 2) NULL,
	[DISCTOT] [numeric](18, 2) NOT NULL,
	[BYANGKUT] [numeric](18, 2) NOT NULL,
	[HRGNETTO]  AS ([HARGA]-[DISCTOT]),
	[NDISKON]  AS ((([Qnt]*[Harga]-[Qnt]*[DiscTot])*[Disc])/(100)),
	[SUBTOTAL]  AS ([Qnt]*[harga]-[Qnt]*[DiscTot]),
	[NDPP]  AS (case when [PPN]=(0) OR [PPN]=(1) then ([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100) when [PPN]=(2) then (([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))/(1.1)  end),
	[NPPN]  AS (case when [PPN]=(0) then (0) when [PPN]=(1) then (([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))*(0.1) when [PPN]=(2) then ((([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))/(1.1))*(0.1)  end),
	[NNET]  AS (case when [PPN]=(0) then ([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100) when [PPN]=(1) then (([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))+(([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))*(0.1) when [PPN]=(2) then (([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))/(1.1)+((([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))/(1.1))*(0.1)  end+[BYANGKUT]),
	[NoPPL] [varchar](50) NULL,
	[IsClose] [bit] NULL,
	[Catatan] [varchar](500) NULL,
	[revisike] [int] NULL,
	[DiscP2] [numeric](18, 2) NULL,
	[DiscP3] [numeric](18, 2) NULL,
	[DiscP4] [numeric](18, 2) NULL,
	[DiscP5] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPORev](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NOURUT] [varchar](10) NOT NULL,
	[TANGGAL] [datetime] NULL,
	[TglJatuhTempo] [datetime] NULL,
	[KODESUPP] [varchar](15) NOT NULL,
	[HANDLING] [numeric](18, 2) NOT NULL,
	[KODEEXP] [varchar](20) NOT NULL,
	[KETERANGAN] [varchar](200) NOT NULL,
	[FAKTURSUPP] [varchar](50) NOT NULL,
	[KODEVLS] [varchar](15) NOT NULL,
	[KURS] [numeric](18, 2) NOT NULL,
	[PPN] [tinyint] NOT NULL,
	[TIPEBAYAR] [tinyint] NOT NULL,
	[HARI] [int] NOT NULL,
	[TipeDisc] [tinyint] NOT NULL,
	[DISC] [float] NOT NULL,
	[DISCRP] [numeric](18, 2) NOT NULL,
	[NILAIPOT] [numeric](18, 2) NOT NULL,
	[NILAIDPP] [numeric](18, 2) NOT NULL,
	[NILAIPPN] [numeric](18, 2) NOT NULL,
	[NILAINET] [numeric](18, 2) NOT NULL,
	[ISCETAK] [bit] NOT NULL,
	[NilaiCetak] [int] NULL,
	[IsBatal] [bit] NOT NULL,
	[UserBatal] [varchar](15) NOT NULL,
	[IsClose] [bit] NULL,
	[RevisiKe] [int] NULL,
	[TanggalRev] [datetime] NULL,
	[IsOtorisasi1] [bit] NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[DBPORev] ADD [OtoUser1] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBPORev] ADD [TglOto1] [datetime] NULL
ALTER TABLE [dbo].[DBPORev] ADD [IsOtorisasi2] [bit] NOT NULL
ALTER TABLE [dbo].[DBPORev] ADD [OtoUser2] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBPORev] ADD [TglOto2] [datetime] NULL
ALTER TABLE [dbo].[DBPORev] ADD [IsOtorisasi3] [bit] NOT NULL
ALTER TABLE [dbo].[DBPORev] ADD [OtoUser3] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBPORev] ADD [TglOto3] [datetime] NULL
ALTER TABLE [dbo].[DBPORev] ADD [IsOtorisasi4] [bit] NOT NULL
ALTER TABLE [dbo].[DBPORev] ADD [OtoUser4] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBPORev] ADD [TglOto4] [datetime] NULL
ALTER TABLE [dbo].[DBPORev] ADD [IsOtorisasi5] [bit] NOT NULL
ALTER TABLE [dbo].[DBPORev] ADD [OtoUser5] [varchar](15) NOT NULL
ALTER TABLE [dbo].[DBPORev] ADD [TglOto5] [datetime] NULL
ALTER TABLE [dbo].[DBPORev] ADD [NoJurnal] [varchar](30) NOT NULL
ALTER TABLE [dbo].[DBPORev] ADD [NoUrutJurnal] [varchar](5) NOT NULL
ALTER TABLE [dbo].[DBPORev] ADD [TglJurnal] [datetime] NULL
GO

CREATE TABLE [dbo].[DBSubGroupJnsTambah](
	[KodeGrp] [varchar](20) NOT NULL,
	[KodeSubGrp] [varchar](10) NOT NULL,
	[Urut] [int] NOT NULL,
	[Keterangan] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DBSubGroupJnsTambah] PRIMARY KEY CLUSTERED 
(
	[KodeGrp] ASC,
	[KodeSubGrp] ASC,
	[Urut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSURATJLN](
	[NOBUKTI] [varchar](30) NOT NULL,
	[NOURUT] [varchar](10) NULL,
	[TANGGAL] [datetime] NOT NULL,
	[KODECUST] [varchar](15) NOT NULL,
	[NOSO] [varchar](20) NULL,
	[NOPNJ] [varchar](20) NULL,
	[NoAlamatKirim] [int] NULL,
	[AlamatKirim] [varchar](2000) NULL,
	[KODEGDG] [varchar](20) NULL,
	[SOPIR] [varchar](50) NOT NULL,
	[KETERANGAN] [varchar](200) NOT NULL,
	[CATATAN] [varchar](2000) NULL,
	[ISCETAK] [tinyint] NOT NULL,
	[ISBATAL] [bit] NULL,
	[USERBATAL] [varchar](20) NULL,
	[KETBATAL] [varchar](100) NULL,
	[KodeExp] [varchar](20) NULL,
	[INSGdg] [varchar](3) NULL,
	[INSBrg] [varchar](3) NULL,
	[NewNo] [varchar](20) NOT NULL,
	[TGLShipment] [datetime] NULL,
	[KotaAsal] [varchar](50) NULL,
	[TGLTiba] [datetime] NULL,
	[KotaTujuan] [varchar](50) NULL,
	[Vessel] [varchar](50) NULL,
	[Cont] [varchar](50) NULL,
	[NoCont] [varchar](50) NULL,
	[NoSeal] [varchar](50) NULL,
	[FlagTipe] [varchar](1) NULL,
 CONSTRAINT [PK_DBSURATJLN] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbJualTunaiDet](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[KodeBrg] [varchar](25) NOT NULL,
	[HARGA] [numeric](18, 2) NOT NULL,
	[DISCP] [numeric](18, 2) NOT NULL,
	[QNT] [numeric](18, 2) NOT NULL,
	[NOSAT] [tinyint] NOT NULL,
	[SATUAN] [varchar](5) NOT NULL,
	[ISI] [numeric](18, 5) NOT NULL,
	[Ctk] [bit] NULL,
	[Diskon] [numeric](18, 2) NOT NULL,
	[hrgnetto]  AS ([harga]-[harga]*([Diskon]/(100))),
	[subtotal]  AS ([qnt]*[harga]-(([Qnt]*[harga])*[diskon])/(100)),
	[TglBatal] [datetime] NULL,
	[isGratis] [bit] NULL,
	[Keterangan] [varchar](50) NULL,
	[IsSelesai] [bit] NOT NULL,
	[IsKirim] [bit] NOT NULL,
	[TakeIn] [bit] NULL,
	[TakeOut] [bit] NULL,
	[UserIdBatal] [varchar](20) NULL,
	[KetBatal] [varchar](50) NULL,
	[Isbatal] [tinyint] NULL,
	[ISUserBatal] [varchar](20) NULL,
 CONSTRAINT [PK_dbJualTunaiDet] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC,
	[KodeBrg] ASC,
	[QNT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBAreaKotaPrd](
	[KodeArea] [varchar](20) NOT NULL,
	[KodeKota] [varchar](15) NOT NULL,
	[KodeBrg] [varchar](25) NOT NULL,
	[Tahun] [int] NOT NULL,
	[QntBln1] [numeric](18, 2) NOT NULL,
	[Qnt2Bln1] [numeric](18, 2) NOT NULL,
	[RpBln1] [numeric](18, 2) NOT NULL,
	[QntBln2] [numeric](18, 2) NULL,
	[Qnt2Bln2] [numeric](18, 2) NOT NULL,
	[RpBln2] [numeric](18, 2) NOT NULL,
	[QntBln3] [numeric](18, 2) NOT NULL,
	[Qnt2Bln3] [numeric](18, 2) NOT NULL,
	[RpBln3] [numeric](18, 2) NOT NULL,
	[QntBln4] [numeric](18, 2) NOT NULL,
	[Qnt2Bln4] [numeric](18, 2) NOT NULL,
	[RpBln4] [numeric](18, 2) NOT NULL,
	[QntBln5] [numeric](18, 2) NOT NULL,
	[Qnt2Bln5] [numeric](18, 2) NOT NULL,
	[RpBln5] [numeric](18, 2) NOT NULL,
	[QntBln6] [numeric](18, 2) NOT NULL,
	[Qnt2Bln6] [numeric](18, 2) NOT NULL,
	[RpBln6] [numeric](18, 2) NOT NULL,
	[QntBln7] [numeric](18, 2) NOT NULL,
	[Qnt2Bln7] [numeric](18, 2) NOT NULL,
	[RpBln7] [numeric](18, 2) NOT NULL,
	[QntBln8] [numeric](18, 2) NOT NULL,
	[Qnt2Bln8] [numeric](18, 2) NOT NULL,
	[RpBln8] [numeric](18, 2) NOT NULL,
	[QntBln9] [numeric](18, 2) NOT NULL,
	[Qnt2Bln9] [numeric](18, 2) NOT NULL,
	[RpBln9] [numeric](18, 2) NOT NULL,
	[QntBln10] [numeric](18, 2) NOT NULL,
	[Qnt2Bln10] [numeric](18, 2) NOT NULL,
	[RpBln10] [numeric](18, 2) NOT NULL,
	[QntBln11] [numeric](18, 2) NOT NULL,
	[Qnt2Bln11] [numeric](18, 2) NOT NULL,
	[RpBln11] [numeric](18, 2) NOT NULL,
	[QntBln12] [numeric](18, 2) NOT NULL,
	[Qnt2Bln12] [numeric](18, 2) NOT NULL,
	[RpBln12] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_DBAreaKotaPrd] PRIMARY KEY CLUSTERED 
(
	[KodeArea] ASC,
	[KodeKota] ASC,
	[KodeBrg] ASC,
	[Tahun] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBALAMATCUST](
	[KODECUSTSUPP] [varchar](15) NOT NULL,
	[Nomor] [int] NOT NULL,
	[Nama] [varchar](100) NOT NULL,
	[Alamat] [varchar](200) NOT NULL,
	[Telp] [varchar](50) NOT NULL,
	[Fax] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DBALAMATCUST] PRIMARY KEY CLUSTERED 
(
	[KODECUSTSUPP] ASC,
	[Nomor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBVALASDET](
	[Kodevls] [varchar](15) NOT NULL,
	[Tanggal] [datetime] NOT NULL,
	[Kurs] [numeric](18, 4) NOT NULL,
 CONSTRAINT [PK_DBVALASDET] PRIMARY KEY CLUSTERED 
(
	[Kodevls] ASC,
	[Tanggal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBJUAL](
	[NOBUKTI] [varchar](20) NOT NULL,
	[NOURUT] [varchar](10) NULL,
	[TANGGAL] [datetime] NULL,
	[TGLJATUHTEMPO] [datetime] NULL,
	[KODECUST] [varchar](15) NULL,
	[KODESLS] [int] NULL,
	[KODEGDG] [varchar](15) NULL,
	[HANDLING] [numeric](18, 2) NULL,
	[KETERANGAN] [varchar](200) NULL,
	[KODEVLS] [varchar](15) NULL,
	[KURS] [numeric](18, 2) NULL,
	[PPN] [tinyint] NULL,
	[TIPEBAYAR] [tinyint] NULL,
	[HARI] [int] NULL,
	[CATATAN] [varchar](2000) NULL,
	[TIPEDISC] [tinyint] NULL,
	[DISC] [float] NULL,
	[DISCRP] [numeric](18, 4) NULL,
	[NILAIPOT] [numeric](18, 2) NULL,
	[NILAIDPP] [numeric](18, 2) NULL,
	[NILAIPPN] [numeric](18, 2) NULL,
	[NILAINET] [numeric](18, 2) NULL,
	[ISCETAK] [tinyint] NULL,
	[ISBATAL] [bit] NULL,
	[USERBATAL] [varchar](15) NULL,
	[NOPAJAK] [varchar](30) NULL,
	[KodeExp] [varchar](20) NULL,
	[INSGdg] [varchar](3) NULL,
	[INSBrg] [varchar](3) NULL,
	[TGLFPJ] [datetime] NULL,
	[NobuktiUM] [varchar](20) NOT NULL,
	[NewNo] [varchar](20) NOT NULL,
	[Term] [varchar](200) NOT NULL,
	[FlagTipe] [varchar](1) NOT NULL,
 CONSTRAINT [PK_DBJUAL] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBJNSTambahanDet](
	[KodeJnsTambahan] [varchar](20) NOT NULL,
	[KodeSubJnsTambahan] [varchar](3) NOT NULL,
	[NamaSubJnsTambahan] [varchar](50) NULL,
 CONSTRAINT [PK_DBJNSTambahanDet] PRIMARY KEY CLUSTERED 
(
	[KodeJnsTambahan] ASC,
	[KodeSubJnsTambahan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSalesCustPrd](
	[KodeCustSupp] [varchar](15) NOT NULL,
	[KodeSLS] [int] NOT NULL,
	[KodeBrg] [varchar](25) NOT NULL,
	[Tahun] [int] NOT NULL,
	[QntBln1] [numeric](18, 2) NOT NULL,
	[Qnt2Bln1] [numeric](18, 2) NOT NULL,
	[RpBln1] [numeric](18, 2) NOT NULL,
	[QntBln2] [numeric](18, 2) NOT NULL,
	[Qnt2Bln2] [numeric](18, 2) NOT NULL,
	[RpBln2] [numeric](18, 2) NOT NULL,
	[QntBln3] [numeric](18, 2) NOT NULL,
	[Qnt2Bln3] [numeric](18, 2) NOT NULL,
	[RpBln3] [numeric](18, 2) NOT NULL,
	[QntBln4] [numeric](18, 2) NOT NULL,
	[Qnt2Bln4] [numeric](18, 2) NOT NULL,
	[RpBln4] [numeric](18, 2) NOT NULL,
	[QntBln5] [numeric](18, 2) NOT NULL,
	[Qnt2Bln5] [numeric](18, 2) NOT NULL,
	[RpBln5] [numeric](18, 2) NOT NULL,
	[QntBln6] [numeric](18, 2) NOT NULL,
	[Qnt2Bln6] [numeric](18, 2) NOT NULL,
	[RpBln6] [numeric](18, 2) NOT NULL,
	[QntBln7] [numeric](18, 2) NOT NULL,
	[Qnt2Bln7] [numeric](18, 2) NOT NULL,
	[RpBln7] [numeric](18, 2) NOT NULL,
	[QntBln8] [numeric](18, 2) NOT NULL,
	[Qnt2Bln8] [numeric](18, 2) NOT NULL,
	[RpBln8] [numeric](18, 2) NOT NULL,
	[QntBln9] [numeric](18, 2) NOT NULL,
	[Qnt2Bln9] [numeric](18, 2) NOT NULL,
	[RpBln9] [numeric](18, 2) NOT NULL,
	[QntBln10] [numeric](18, 2) NOT NULL,
	[Qnt2Bln10] [numeric](18, 2) NOT NULL,
	[RpBln10] [numeric](18, 2) NOT NULL,
	[QntBln11] [numeric](18, 2) NOT NULL,
	[Qnt2Bln11] [numeric](18, 2) NOT NULL,
	[RpBln11] [numeric](18, 2) NOT NULL,
	[QntBln12] [numeric](18, 2) NOT NULL,
	[Qnt2Bln12] [numeric](18, 2) NOT NULL,
	[RpBln12] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_DBSalesCustPrd] PRIMARY KEY CLUSTERED 
(
	[KodeCustSupp] ASC,
	[KodeSLS] ASC,
	[KodeBrg] ASC,
	[Tahun] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dbPesanTunaiDet](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[KodeBrg] [varchar](25) NULL,
	[HARGA] [numeric](18, 2) NOT NULL,
	[DISCP] [numeric](18, 2) NOT NULL,
	[QNT] [numeric](18, 2) NOT NULL,
	[NOSAT] [tinyint] NOT NULL,
	[SATUAN] [varchar](5) NOT NULL,
	[ISI] [numeric](18, 5) NOT NULL,
	[Ctk] [bit] NULL,
	[Diskon] [numeric](18, 2) NOT NULL,
	[hrgnetto]  AS ([harga]-[harga]*([Diskon]/(100))),
	[subtotal]  AS ([qnt]*[harga]-(([Qnt]*[harga])*[diskon])/(100)),
	[TglBatal] [datetime] NULL,
	[isGratis] [bit] NULL,
	[Keterangan] [varchar](50) NULL,
	[IsSelesai] [bit] NOT NULL,
	[IsKirim] [bit] NOT NULL,
	[NoSPK] [varchar](30) NOT NULL,
	[UserIdBatal] [varchar](20) NULL,
	[KetBatal] [varchar](50) NULL,
 CONSTRAINT [PK_dbPesanTunaiDet] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBPemakaiGdg](
	[UserID] [varchar](25) NOT NULL,
	[KodeGdg] [varchar](15) NOT NULL,
 CONSTRAINT [PK_dbPemakaiGdg] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[KodeGdg] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBPPBTDET](
	[NOBUKTI] [varchar](50) NOT NULL,
	[URUT] [int] NOT NULL,
	[NoBPPB] [varchar](20) NULL,
	[UrutBPPB] [int] NULL,
	[NoSatBPPB] [tinyint] NULL,
	[KODEBRG] [varchar](25) NULL,
	[QNT] [numeric](18, 2) NULL,
	[NOSAT] [tinyint] NULL,
	[SATUAN] [varchar](5) NULL,
	[ISI] [numeric](18, 2) NULL,
	[Qnt2] [numeric](18, 2) NULL,
	[Qnt2M] [numeric](18, 2) NULL,
	[Qnt2P] [numeric](18, 2) NULL,
	[HPP] [numeric](18, 2) NULL,
	[Pr1] [varchar](250) NULL,
	[Pr2] [varchar](250) NULL,
	[Pr3] [varchar](250) NULL,
	[Pr4] [varchar](250) NULL,
	[Pr5] [varchar](250) NULL,
	[Pr6] [varchar](250) NULL,
	[Pr7] [varchar](250) NULL,
	[Pr8] [varchar](250) NULL,
	[Pr9] [varchar](250) NULL,
	[Jml1] [numeric](18, 2) NULL,
	[Jml2] [numeric](18, 2) NULL,
	[Jml3] [numeric](18, 2) NULL,
	[Jml4] [numeric](18, 2) NULL,
	[Jml5] [numeric](18, 2) NULL,
	[Jml6] [numeric](18, 2) NULL,
	[Jml7] [numeric](18, 2) NULL,
	[Jml8] [numeric](18, 2) NULL,
	[Jml9] [numeric](18, 2) NULL,
	[KetR1] [varchar](500) NULL,
	[KetR2] [varchar](500) NULL,
	[KetR3] [varchar](500) NULL,
	[KetR4] [varchar](500) NULL,
	[KetR5] [varchar](500) NULL,
	[KetR6] [varchar](500) NULL,
	[KetR7] [varchar](500) NULL,
	[KetR8] [varchar](500) NULL,
	[KetR9] [varchar](500) NULL,
	[QntCetak] [numeric](18, 2) NULL,
	[QntBaik] [numeric](18, 2) NULL,
	[QntRusak] [numeric](18, 2) NULL,
	[Ket1] [varchar](1000) NULL,
	[Ket2] [varchar](1000) NULL,
 CONSTRAINT [PK_DBBPPBTDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBBPPBDET](
	[NOBUKTI] [varchar](50) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NULL,
	[QNT] [numeric](18, 2) NULL,
	[NOSAT] [tinyint] NULL,
	[SATUAN] [varchar](5) NULL,
	[ISI] [numeric](18, 2) NULL,
	[Qnt2] [numeric](18, 2) NULL,
	[Qnt2M] [numeric](18, 2) NOT NULL,
	[Qnt2P] [numeric](18, 2) NOT NULL,
	[Konversi] [numeric](18, 2) NULL,
	[Keterangan] [varchar](2000) NULL,
 CONSTRAINT [PK_DBBPPBDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBStockAV](
	[Bulan] [int] NOT NULL,
	[Tahun] [int] NOT NULL,
	[Kodebrg] [varchar](25) NOT NULL,
	[Kodegdg] [varchar](15) NOT NULL,
	[QntAwal]  AS ([dbo].[qntAwal]([Kodebrg],[kodegdg],[Bulan],[Tahun])),
	[Qnt2Awal]  AS ([dbo].[qnt2Awal]([Kodebrg],[kodegdg],[Bulan],[Tahun])),
	[QntIN]  AS ([dbo].[Saldoin]([Kodebrg],[kodegdg],[Bulan],[Tahun])),
	[Qnt2IN]  AS ([dbo].[Saldo2in]([Kodebrg],[kodegdg],[Bulan],[Tahun])),
	[QntOut]  AS ([dbo].[SaldoOut]([Kodebrg],[kodegdg],[Bulan],[Tahun])),
	[Qnt2Out]  AS ([dbo].[Saldo2Out]([Kodebrg],[kodegdg],[Bulan],[Tahun])),
	[QntSPP]  AS ([dbo].[QntSPP]([Kodebrg],[kodegdg],[Bulan],[Tahun])),
	[Qnt2SPP]  AS ([dbo].[Qnt2SPP]([Kodebrg],[kodegdg],[Bulan],[Tahun])),
	[SaldoQnt]  AS ([dbo].[SaldoQnt]([Kodebrg],[kodegdg],[Bulan],[Tahun])),
	[Saldo2Qnt]  AS ([dbo].[Saldo2Qnt]([Kodebrg],[kodegdg],[Bulan],[Tahun])),
 CONSTRAINT [PK_DBStockAV] PRIMARY KEY CLUSTERED 
(
	[Bulan] ASC,
	[Tahun] ASC,
	[Kodebrg] ASC,
	[Kodegdg] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBSURATJLNDET](
	[NOBUKTI] [varchar](30) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NULL,
	[KODEGDG] [varchar](20) NULL,
	[QNT] [numeric](18, 2) NULL,
	[QNT2] [numeric](18, 2) NULL,
	[QNTBATAL] [numeric](18, 2) NULL,
	[TGLBATAL] [datetime] NULL,
	[NOSAT] [tinyint] NULL,
	[SATUAN] [varchar](5) NULL,
	[ISI] [numeric](18, 2) NULL,
	[HARGA] [numeric](18, 4) NULL,
	[HPP] [numeric](18, 2) NULL,
	[URUTSPP] [int] NULL,
	[NOSPP] [varchar](30) NULL,
	[KetDet] [varchar](100) NULL,
	[NetW] [numeric](18, 4) NOT NULL,
	[GrossW] [numeric](18, 4) NOT NULL,
 CONSTRAINT [PK_DBSURATJLNDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBJUALDET](
	[NOBUKTI] [varchar](20) NOT NULL,
	[URUT] [int] NOT NULL,
	[KODEBRG] [varchar](25) NULL,
	[KODEGDG] [varchar](20) NULL,
	[TGLKIRIM] [datetime] NULL,
	[PPN] [tinyint] NULL,
	[DISC] [float] NULL,
	[KURS] [numeric](18, 2) NOT NULL,
	[QNT] [numeric](18, 2) NULL,
	[QNT2] [numeric](18, 2) NULL,
	[QNTBATAL] [numeric](18, 2) NULL,
	[TGLBATAL] [datetime] NULL,
	[NOSAT] [tinyint] NULL,
	[SATUAN] [varchar](5) NULL,
	[ISI] [numeric](18, 2) NULL,
	[HARGA] [numeric](18, 4) NULL,
	[HPP] [numeric](18, 2) NULL,
	[DISCP1] [numeric](18, 2) NOT NULL,
	[DISCRp1] [numeric](18, 4) NOT NULL,
	[DISCTOT] [numeric](18, 4) NULL,
	[BYANGKUT] [numeric](18, 2) NULL,
	[NOSO] [varchar](30) NOT NULL,
	[URUTSO] [int] NOT NULL,
	[NOSJLN] [varchar](30) NOT NULL,
	[URUTSJLN] [int] NOT NULL,
	[HRGNETTO]  AS ([HARGA]-[DISCTOT]),
	[NDISKON]  AS ((([Qnt]*[harga]-[Qnt]*[DiscTot])*[Disc])/(100)),
	[SUBTOTAL]  AS ([Qnt]*[harga]-[Qnt]*[DiscTot]),
	[NDPP]  AS (case when [PPN]=(0) OR [PPN]=(1) then ([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100) when [PPN]=(2) then (([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))/(1.1)  end),
	[NPPN]  AS (case when [PPN]=(0) then (0) when [PPN]=(1) then (([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))*(0.1) when [PPN]=(2) then ((([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))/(1.1))*(0.1)  end),
	[NNET]  AS (case when [PPN]=(0) then ([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100) when [PPN]=(1) then (([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))+(([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))*(0.1) when [PPN]=(2) then (([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))/(1.1)+((([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))/(1.1))*(0.1)  end),
	[SUBTOTALRp]  AS (([Qnt]*[harga]-[Qnt]*[DiscTot])*[KURS]),
	[NDPPRp]  AS (case when [PPN]=(0) OR [PPN]=(1) then ([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100) when [PPN]=(2) then (([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))/(1.1)  end*[KURS]),
	[NPPNRp]  AS (case when [PPN]=(0) then (0) when [PPN]=(1) then (([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))*(0.1) when [PPN]=(2) then ((([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))/(1.1))*(0.1)  end*[KURS]),
	[NNETRp]  AS (case when [PPN]=(0) then ([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100) when [PPN]=(1) then (([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))+(([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))*(0.1) when [PPN]=(2) then (([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))/(1.1)+((([Qnt]*[harga]-[Qnt]*[DiscTot])-(([Qnt]*[harga]-[Qnt]*[DiscTot])*[DISC])/(100))/(1.1))*(0.1)  end*[KURS]+[BYANGKUT]),
	[NetW] [numeric](18, 4) NOT NULL,
	[GrossW] [numeric](18, 4) NOT NULL,
 CONSTRAINT [PK_DBJUALDET] PRIMARY KEY CLUSTERED 
(
	[NOBUKTI] ASC,
	[URUT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

