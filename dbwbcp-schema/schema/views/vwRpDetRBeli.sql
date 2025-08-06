schema/tables/DBInvoicePLLampiran.sql:
CREATE TABLE [dbo].[DBInvoicePLLampiran](
    [Nobukti] [varchar](30) NOT NULL,
    [Urut] [int] NOT NULL,
    CONSTRAINT [PK_DBInvoicePLLampiran] PRIMARY KEY CLUSTERED 
    (
        [Nobukti] ASC,
        [Urut] ASC
    )
) ON [PRIMARY]

schema/tables/DBPajakMasuk.sql:
CREATE TABLE [dbo].[DBPajakMasuk](
    [NoBukti] [varchar](30) NOT NULL,
    [Urut] [int] NOT NULL,
    CONSTRAINT [PK_DBPajakMasuk] PRIMARY KEY CLUSTERED 
    (
        [NoBukti] ASC,
        [Urut] ASC
    )
) ON [PRIMARY]

schema/tables/DBRBELIDET.sql:
CREATE TABLE [dbo].[DBRBELIDET](
    [NOBUKTI] [varchar](20) NOT NULL,
    [URUT] [int] NOT NULL,
    CONSTRAINT [PK_DBRBELIDET] PRIMARY KEY CLUSTERED 
    (
        [NOBUKTI] ASC,
        [URUT] ASC
    )
) ON [PRIMARY]

schema/tables/dbSPBLampiran.sql:
CREATE TABLE [dbo].[dbSPBLampiran](
    [Urut] [int] NOT NULL,
    [UrutSPB] [int] NOT NULL,
    CONSTRAINT [PK_dbSPBLampiran] PRIMARY KEY CLUSTERED 
    (
        [Urut] ASC,
        [UrutSPB] ASC
    )
) ON [PRIMARY]

schema/tables/DBBELI.sql:
CREATE TABLE [dbo].[DBBELI](
    [NOBUKTI] [varchar](20) NOT NULL,
    CONSTRAINT [PK_DBBELI] PRIMARY KEY CLUSTERED 
    (
        [NOBUKTI] ASC
    )
) ON [PRIMARY]

schema/tables/dbTransaksi.sql:
CREATE TABLE [dbo].[dbTransaksi](
    [NoBukti] [varchar](30) NOT NULL,
    [Urut] [int] NOT NULL,
    CONSTRAINT [PK_dbTransaksi] PRIMARY KEY CLUSTERED 
    (
        [NoBukti] ASC,
        [Urut] ASC
    )
) ON [PRIMARY]

schema/tables/DBPenyerahanBhnDET.sql:
CREATE TABLE [dbo].[DBPenyerahanBhnDET](
    [Nobukti] [varchar](30) NOT NULL,
    [UrutSPK] [int] NOT NULL,
    CONSTRAINT [PK_DBPenyerahanBhnDET] PRIMARY KEY CLUSTERED 
    (
        [Nobukti] ASC,
        [UrutSPK] ASC
    )
) ON [PRIMARY]

schema/tables/DBRPenyerahanBhnDET.sql:
CREATE TABLE [dbo].[DBRPenyerahanBhnDET](
    [Nobukti] [varchar](30) NOT NULL,
    [Urut] [int] NOT NULL,
    CONSTRAINT [PK_DBRPenyerahanBhnDET] PRIMARY KEY CLUSTERED 
    (
        [Nobukti] ASC,
        [Urut] ASC
    )
) ON [PRIMARY]

schema/tables/DBSODET.sql:
CREATE TABLE [dbo].[DBSODET](
    [NOBUKTI] [varchar](30) NOT NULL,
    [URUT] [int] NOT NULL,
    CONSTRAINT [PK_DBSODET] PRIMARY KEY CLUSTERED 
    (
        [NOBUKTI] ASC,
        [URUT] ASC
    )
) ON [PRIMARY]

schema/tables/DBUBAHKEMASANDET.sql:
CREATE TABLE [dbo].[DBUBAHKEMASANDET](
    [NOBUKTI] [varchar](20) NOT NULL,
    [URUT] [int] NOT NULL,
    CONSTRAINT [PK_dbUBAHKEMASANDET] PRIMARY KEY CLUSTERED 
    (
        [NOBUKTI] ASC,
        [URUT] ASC
    )
) ON [PRIMARY]

schema/tables/DBKOREKSIDET.sql:
CREATE TABLE [dbo].[DBKOREKSIDET](
    [NOBUKTI] [varchar](20) NOT NULL,
    [URUT] [int] NOT NULL,
    CONSTRAINT [PK_dbKOREKSIDET] PRIMARY KEY CLUSTERED 
    (
        [NOBUKTI] ASC,
        [URUT] ASC
    )
) ON [PRIMARY]

schema/tables/DBKOREKSI.sql:
CREATE TABLE [dbo].[DBKOREKSI](
    [NOBUKTI] [varchar](20) NOT NULL,
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
    CONSTRAINT [PK_dbKOREKSI] PRIMARY KEY NONCLUSTERED 
    (
        [NOBUKTI] ASC
    )
) ON [PRIMARY]

schema/tables/DBRPenyerahanBhn.sql:
CREATE TABLE [dbo].[DBRPenyerahanBhn](
    [Nobukti] [varchar](30) NOT NULL,
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
    [IsSampel] [bit] NOT NULL,
    [FlagTipe] [tinyint] NULL,
    CONSTRAINT [PK_DBRPenyerahanBhn] PRIMARY KEY CLUSTERED 
    (
        [Nobukti] ASC
    )
) ON [PRIMARY]

schema/tables/DBPenyerahanBhn.sql:
CREATE TABLE [dbo].[DBPenyerahanBhn](
    [Nobukti] [varchar](30) NOT NULL,
    CONSTRAINT [PK_DBPenyerahanBhn] PRIMARY KEY CLUSTERED 
    (
        [Nobukti] ASC
    )
) ON [PRIMARY]

schema/tables/DBSPK.sql:
CREATE TABLE [dbo].[DBSPK](
    [NOBUKTI] [varchar](30) NOT NULL,
    CONSTRAINT [PK_DBSPK] PRIMARY KEY CLUSTERED 
    (
        [NOBUKTI] ASC
    )
) ON [PRIMARY]

schema/tables/DBPOSTHUTPIUT.sql:
CREATE TABLE [dbo].[DBPOSTHUTPIUT](
    [Perkiraan] [varchar](25) NOT NULL,
    [Kode] [varchar](25) NOT NULL,
    CONSTRAINT [PK_DBPOSTHUTPIUT] PRIMARY KEY CLUSTERED 
    (
        [Perkiraan] ASC,
        [Kode] ASC
    )
) ON [PRIMARY]

schema/tables/DBBARANG.sql:
CREATE TABLE [dbo].[DBBARANG](
    [KODEBRG] [varchar](25) NOT NULL,
    CONSTRAINT [PK__DBBARANG] PRIMARY KEY CLUSTERED 
    (
        [KODEBRG] ASC
    )
) ON [PRIMARY]

schema/tables/dbTrans.sql:
CREATE TABLE [dbo].[dbTrans](
    [NoBukti] [varchar](30) NOT NULL,
    CONSTRAINT [PK_dbTrans] PRIMARY KEY CLUSTERED 
    (
        [NoBukti] ASC
    )
) ON [PRIMARY]

schema/tables/DBGROUP.sql:
CREATE TABLE [dbo].[DBGROUP](
    [KODEGRP] [varchar](15) NOT NULL,
    CONSTRAINT [PK_DBGROUP] PRIMARY KEY CLUSTERED 
    (
        [KODEGRP] ASC
    )
) ON [PRIMARY]

schema/tables/DBJurnalOto.sql:
CREATE TABLE [dbo].[DBJurnalOto](
    [NoBukti] [varchar](30) NOT NULL,
    [Urut] [int] NOT NULL,
    CONSTRAINT [PK_DBJurnalOto] PRIMARY KEY CLUSTERED 
    (
        [NoBukti] ASC,
        [Urut] ASC
    )
) ON [PRIMARY]

schema/tables/DBUBAHKEMASAN.sql:
CREATE TABLE [dbo].[DBUBAHKEMASAN](
    [NOBUKTI] [varchar](20) NOT NULL,
    CONSTRAINT [PK_dbUBAHKEMASAN] PRIMARY KEY NONCLUSTERED 
    (
        [NOBUKTI] ASC
    )
) ON [PRIMARY]

schema/tables/dbSubGroup.sql:
CREATE TABLE [dbo].[dbSubGroup](
    [KodeGrp] [varchar](20) NOT NULL,
    [KodeSubGrp] [varchar](20) NOT NULL,
    CONSTRAINT [PK_dbSubGroup] PRIMARY KEY CLUSTERED 
    (
        [KodeGrp] ASC,
        [KodeSubGrp] ASC
    )
) ON [PRIMARY]