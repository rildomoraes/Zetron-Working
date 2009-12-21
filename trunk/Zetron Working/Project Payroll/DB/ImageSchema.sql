/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2005                    */
/* Created on:     26/11/2009 14:58:14                          */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('BillMaterialImage')
            and   type = 'U')
   drop table BillMaterialImage
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ItemImage')
            and   type = 'U')
   drop table ItemImage
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PegawaiFoto')
            and   type = 'U')
   drop table PegawaiFoto
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ShipImage')
            and   type = 'U')
   drop table ShipImage
go

if exists(select 1 from systypes where name='BeratPlus')
   execute sp_unbindrule BeratPlus
go

if exists(select 1 from systypes where name='BeratPlus')
   drop type BeratPlus
go

if exists(select 1 from systypes where name='BlobFile')
   drop type BlobFile
go

if exists(select 1 from systypes where name='BlobImage')
   drop type BlobImage
go

if exists(select 1 from systypes where name='Currency')
   drop type Currency
go

if exists(select 1 from systypes where name='CurrencyPlus')
   execute sp_unbindrule CurrencyPlus
go

if exists(select 1 from systypes where name='CurrencyPlus')
   drop type CurrencyPlus
go

if exists(select 1 from systypes where name='DateWithTime')
   drop type DateWithTime
go

if exists(select 1 from systypes where name='DateWithoutTime')
   drop type DateWithoutTime
go

if exists(select 1 from systypes where name='Disc')
   execute sp_unbindrule Disc
go

if exists(select 1 from systypes where name='Disc')
   drop type Disc
go

if exists(select 1 from systypes where name='Flag')
   drop type Flag
go

if exists(select 1 from systypes where name='ItemId')
   drop type ItemId
go

if exists(select 1 from systypes where name='LuasPlus')
   execute sp_unbindrule LuasPlus
go

if exists(select 1 from systypes where name='LuasPlus')
   drop type LuasPlus
go

if exists(select 1 from systypes where name='MeasureBigPlus')
   execute sp_unbindrule MeasureBigPlus
go

if exists(select 1 from systypes where name='MeasureBigPlus')
   drop type MeasureBigPlus
go

if exists(select 1 from systypes where name='MeasurePlus')
   execute sp_unbindrule MeasurePlus
go

if exists(select 1 from systypes where name='MeasurePlus')
   drop type MeasurePlus
go

if exists(select 1 from systypes where name='Memo')
   drop type Memo
go

if exists(select 1 from systypes where name='MemoVarchar')
   drop type MemoVarchar
go

if exists(select 1 from systypes where name='Percent')
   drop type "Percent"
go

if exists(select 1 from systypes where name='PercentBig')
   drop type PercentBig
go

if exists(select 1 from systypes where name='Quantity')
   drop type Quantity
go

if exists(select 1 from systypes where name='QuantityPlus')
   execute sp_unbindrule QuantityPlus
go

if exists(select 1 from systypes where name='QuantityPlus')
   drop type QuantityPlus
go

if exists(select 1 from systypes where name='Status')
   drop type Status
go

if exists(select 1 from systypes where name='TransactionCode')
   drop type TransactionCode
go

if exists(select 1 from systypes where name='VolumePlus')
   execute sp_unbindrule VolumePlus
go

if exists(select 1 from systypes where name='VolumePlus')
   drop type VolumePlus
go

if exists (select 1
   from  sysobjects where type = 'D'
   and name = 'D_0'
   )
   drop default D_0
go

if exists (select 1
   from  sysobjects where type = 'D'
   and name = 'D_1'
   )
   drop default D_1
go

if exists (select 1 from sysobjects where id=object_id('R_BeratPlus') and type='R')
   drop rule  R_BeratPlus
go

if exists (select 1 from sysobjects where id=object_id('R_CurrencyPlus') and type='R')
   drop rule  R_CurrencyPlus
go

if exists (select 1 from sysobjects where id=object_id('R_Disc') and type='R')
   drop rule  R_Disc
go

if exists (select 1 from sysobjects where id=object_id('R_LuasPlus') and type='R')
   drop rule  R_LuasPlus
go

if exists (select 1 from sysobjects where id=object_id('R_MeasureBigPlus') and type='R')
   drop rule  R_MeasureBigPlus
go

if exists (select 1 from sysobjects where id=object_id('R_MeasurePlus') and type='R')
   drop rule  R_MeasurePlus
go

if exists (select 1 from sysobjects where id=object_id('R_QuantityPlus') and type='R')
   drop rule  R_QuantityPlus
go

if exists (select 1 from sysobjects where id=object_id('R_VolumePlus') and type='R')
   drop rule  R_VolumePlus
go

create rule R_BeratPlus as
      @column >= 0
go

create rule R_CurrencyPlus as
      @column >= 0
go

create rule R_Disc as
      @column between 0 and 100
go

create rule R_LuasPlus as
      @column >= 0
go

create rule R_MeasureBigPlus as
      @column >= 0
go

create rule R_MeasurePlus as
      @column >= 0
go

create rule R_QuantityPlus as
      @column >= 0
go

create rule R_VolumePlus as
      @column >= 0
go

/*==============================================================*/
/* Default: D_0                                                 */
/*==============================================================*/
create default D_0
    as 0
go

/*==============================================================*/
/* Default: D_1                                                 */
/*==============================================================*/
create default D_1
    as '0'
go

/*==============================================================*/
/* Domain: BeratPlus                                            */
/*==============================================================*/
create type BeratPlus
   from decimal(10,4)
go

execute sp_bindrule R_BeratPlus, BeratPlus
go

execute sp_bindefault D_0, 'BeratPlus'
go

/*==============================================================*/
/* Domain: BlobFile                                             */
/*==============================================================*/
create type BlobFile
   from ntext
go

/*==============================================================*/
/* Domain: BlobImage                                            */
/*==============================================================*/
create type BlobImage
   from image
go

/*==============================================================*/
/* Domain: Currency                                             */
/*==============================================================*/
create type Currency
   from money
go

execute sp_bindefault D_0, 'Currency'
go

/*==============================================================*/
/* Domain: CurrencyPlus                                         */
/*==============================================================*/
create type CurrencyPlus
   from money
go

execute sp_bindrule R_CurrencyPlus, CurrencyPlus
go

execute sp_bindefault D_0, 'CurrencyPlus'
go

/*==============================================================*/
/* Domain: DateWithTime                                         */
/*==============================================================*/
create type DateWithTime
   from datetime
go

/*==============================================================*/
/* Domain: DateWithoutTime                                      */
/*==============================================================*/
create type DateWithoutTime
   from datetime
go

/*==============================================================*/
/* Domain: Disc                                                 */
/*==============================================================*/
create type Disc
   from decimal(5,2)
go

execute sp_bindrule R_Disc, Disc
go

execute sp_bindefault D_0, 'Disc'
go

/*==============================================================*/
/* Domain: Flag                                                 */
/*==============================================================*/
create type Flag
   from char(1)
go

execute sp_bindefault D_1, 'Flag'
go

/*==============================================================*/
/* Domain: ItemId                                               */
/*==============================================================*/
create type ItemId
   from int
go

/*==============================================================*/
/* Domain: LuasPlus                                             */
/*==============================================================*/
create type LuasPlus
   from decimal(10,4)
go

execute sp_bindrule R_LuasPlus, LuasPlus
go

execute sp_bindefault D_0, 'LuasPlus'
go

/*==============================================================*/
/* Domain: MeasureBigPlus                                       */
/*==============================================================*/
create type MeasureBigPlus
   from float
go

execute sp_bindrule R_MeasureBigPlus, MeasureBigPlus
go

execute sp_bindefault D_0, 'MeasureBigPlus'
go

/*==============================================================*/
/* Domain: MeasurePlus                                          */
/*==============================================================*/
create type MeasurePlus
   from decimal(10,4)
go

execute sp_bindrule R_MeasurePlus, MeasurePlus
go

execute sp_bindefault D_0, 'MeasurePlus'
go

/*==============================================================*/
/* Domain: Memo                                                 */
/*==============================================================*/
create type Memo
   from text
go

/*==============================================================*/
/* Domain: MemoVarchar                                          */
/*==============================================================*/
create type MemoVarchar
   from varchar(500)
go

/*==============================================================*/
/* Domain: "Percent"                                            */
/*==============================================================*/
create type "Percent"
   from decimal(5,2)
go

execute sp_bindefault D_0, 'Percent'
go

/*==============================================================*/
/* Domain: PercentBig                                           */
/*==============================================================*/
create type PercentBig
   from decimal(18,2)
go

execute sp_bindefault D_0, 'PercentBig'
go

/*==============================================================*/
/* Domain: Quantity                                             */
/*==============================================================*/
create type Quantity
   from float
go

execute sp_bindefault D_0, 'Quantity'
go

/*==============================================================*/
/* Domain: QuantityPlus                                         */
/*==============================================================*/
create type QuantityPlus
   from float
go

execute sp_bindrule R_QuantityPlus, QuantityPlus
go

execute sp_bindefault D_0, 'QuantityPlus'
go

/*==============================================================*/
/* Domain: Status                                               */
/*==============================================================*/
create type Status
   from char(1)
go

execute sp_bindefault D_1, 'Status'
go

/*==============================================================*/
/* Domain: TransactionCode                                      */
/*==============================================================*/
create type TransactionCode
   from varchar(30)
go

/*==============================================================*/
/* Domain: VolumePlus                                           */
/*==============================================================*/
create type VolumePlus
   from decimal(10,4)
go

execute sp_bindrule R_VolumePlus, VolumePlus
go

execute sp_bindefault D_0, 'VolumePlus'
go

/*==============================================================*/
/* Table: BillMaterialImage                                     */
/*==============================================================*/
create table BillMaterialImage (
   BillMaterialId       numeric              not null,
   No                   int                  not null,
   ItemImage            BlobImage            null,
   constraint PK_BILLMATERIALIMAGE primary key nonclustered (BillMaterialId, No)
)
go

/*==============================================================*/
/* Table: ItemImage                                             */
/*==============================================================*/
create table ItemImage (
   ItemId               numeric              not null,
   No                   int                  not null,
   ItemImage            BlobImage            null,
   constraint PK_ITEMIMAGE primary key nonclustered (ItemId, No)
)
go

/*==============================================================*/
/* Table: PegawaiFoto                                           */
/*==============================================================*/
create table PegawaiFoto (
   Pegawaiid            ItemId               not null,
   Foto1                BlobImage            null,
   Foto2                BlobImage            null,
   constraint PK_PegawaiFoto primary key nonclustered (Pegawaiid)
)
go

/*==============================================================*/
/* Table: ShipImage                                             */
/*==============================================================*/
create table ShipImage (
   ShipId               numeric              not null,
   No                   int                  not null,
   ShipImage            BlobFile             null,
   constraint PK_ShipImage primary key (ShipId, No)
)
go

