1.

drop index if exists ID_TransactionRegistry cascade;

drop table if exists TransactionRegistry cascade;

/*==============================================================*/
/* Table: TransactionRegistry                                   */
/*==============================================================*/
create table TransactionRegistry (
TableName            varchar(30)          not null,
Prefix               varchar(10)          not null,
Year                 varchar(4)           not null,
ValueRun             INT8                 null default '0',
Value1               INT8                 null default '0',
Value2               INT8                 null default '0',
Value3               INT8                 null default '0',
Value4               INT8                 null default '0',
Value5               INT8                 null default '0',
Value6               INT8                 null default '0',
Value7               INT8                 null default '0',
Value8               INT8                 null default '0',
Value9               INT8                 null default '0',
Value10              INT8                 null default '0',
Value11              INT8                 null default '0',
Value12              INT8                 null default '0',
constraint PK_TransactionRegistry primary key (TableName, Prefix, Year)
);

/*==============================================================*/
/* Index: ID_TransactionRegistry                                */
/*==============================================================*/
create unique index ID_TransactionRegistry on TransactionRegistry (
TableName,
Prefix,
Year
);

2. Lihat file 'spTemporaryProcess', untuk memasukan data awal

3.

drop index if exists ID_PurchaseCategory cascade;

drop table if exists PurchaseCategory cascade;

/*==============================================================*/
/* Table: PurchaseCategory                                      */
/*==============================================================*/
create table PurchaseCategory (
PurchaseCategoryId   VARCHAR(5)           not null,
PurchaseCategoryName VARCHAR(15)          not null,
Prefix               VARCHAR(5)           null,
FlagFix              Flag                 not null
);

alter table PurchaseCategory
   add constraint PK_PurchaseCategory primary key (PurchaseCategoryId);

/*==============================================================*/
/* Index: ID_PurchaseCategory                                   */
/*==============================================================*/
create unique index ID_PurchaseCategory on PurchaseCategory (
PurchaseCategoryId
);

drop index if exists ID_SalesCategory cascade;

drop table if exists SalesCategory cascade;

/*==============================================================*/
/* Table: SalesCategory                                         */
/*==============================================================*/
create table SalesCategory (
SalesCategoryId      VARCHAR(5)           not null,
SalesCategoryName    VARCHAR(15)          not null,
Prefix               VARCHAR(5)           null,
FlagFix              Flag                 not null
);

alter table SalesCategory
   add constraint PK_SalesCategory primary key (SalesCategoryId);

/*==============================================================*/
/* Index: ID_SalesCategory                                      */
/*==============================================================*/
create unique index ID_SalesCategory on SalesCategory (
SalesCategoryId
);

4.

insert into PurchaseCategory (PurchaseCategoryId, PurchaseCategoryName, Prefix, FlagFix)
Values ('NR', 'Normal', 'PI', '1');
insert into SalesCategory (SalesCategoryId, SalesCategoryName, Prefix, FlagFix)
Values ('NR', 'Normal', 'SI', '1');
insert into SalesCategory (SalesCategoryId, SalesCategoryName, Prefix, FlagFix)
Values ('BC', 'Barcode', 'BC', '1');

5.

alter table SalesInvoiceHd
add column SalesCategoryId varchar(5);

alter table PurchaseInvoiceHd
add column PurchaseCategoryId varchar(5);

6.

update PurchaseInvoiceHd
set PurchaseCategoryId = 'NR';

update SalesInvoiceHd
set SalesCategoryId = 'NR'
where FlagBarcode = '0';

update SalesInvoiceHd
set SalesCategoryId = 'BC'
where FlagBarcode = '1';

7.

alter table CashTransaction
add column ExternalId varchar(20);

alter table BankTransaction
add column ExternalId varchar(20);
