/*==============================================================*/
/* DBMS name:      PostgreSQL 8.0 (Zetron)                      */
/* Created on:     12/16/2009 10:18:59 AM                       */
/*==============================================================*/


drop table if exists APAdjustmentCustomer cascade;

drop table if exists APAdjustmentVendor cascade;

drop table if exists APBalanceCustomer cascade;

drop table if exists APBalanceVendor cascade;

drop table if exists ARAdjustmentCustomer cascade;

drop table if exists ARAdjustmentVendor cascade;

drop table if exists ARBalanceCustomer cascade;

drop table if exists ARBalanceVendor cascade;

drop table if exists AccTransactionType cascade;

drop table if exists BackupPrice cascade;

drop table if exists Bank cascade;

drop table if exists BankAdjustment cascade;

drop table if exists BankBalance cascade;

drop table if exists BankTransaction cascade;

drop table if exists CashBalance cascade;

drop table if exists CashBankTransactionType cascade;

drop table if exists CashRegister cascade;

drop table if exists CashRegisterTransaction cascade;

drop table if exists CashTransaction cascade;

drop table if exists Category cascade;

drop table if exists City cascade;

drop table if exists Company cascade;

drop table if exists ComputerCounter cascade;

drop table if exists Country cascade;

drop table if exists CoupleDt cascade;

drop table if exists CoupleHd cascade;

drop table if exists CurrencyMaster cascade;

drop table if exists Customer cascade;

drop table if exists CustomerPhone cascade;

drop table if exists CustomerShippingDetail cascade;

drop table if exists Department cascade;

drop table if exists Display cascade;

drop table if exists Employee cascade;

drop table if exists Engine cascade;

drop table if exists EngineGroup cascade;

drop table if exists EngineGroupJob cascade;

drop table if exists EngineJob cascade;

drop table if exists FingerPrint cascade;

drop table if exists Giro cascade;

drop table if exists Item cascade;

drop table if exists ItemBalance cascade;

drop table if exists ItemCategory cascade;

drop table if exists ItemDt cascade;

drop table if exists ItemEngineGroupJob cascade;

drop table if exists ItemMinStock cascade;

drop table if exists ItemOrderBalance cascade;

drop table if exists ItemRack cascade;

drop table if exists JobPosition cascade;

drop table if exists JobType cascade;

drop table if exists LogProgram cascade;

drop table if exists LogType cascade;

drop table if exists MenuOptions cascade;

drop table if exists OtherTransactionDt cascade;

drop table if exists OtherTransactionHd cascade;

drop table if exists Outlet cascade;

drop table if exists PaymentType cascade;

drop table if exists PhysicalCounter cascade;

drop table if exists PositionAccess cascade;

drop table if exists Price cascade;

drop table if exists Project cascade;

drop table if exists Province cascade;

drop table if exists PurchaseCategory cascade;

drop table if exists PurchaseInvoiceDt cascade;

drop table if exists PurchaseInvoiceHd cascade;

drop table if exists PurchaseOrderDt cascade;

drop table if exists PurchaseOrderHd cascade;

drop table if exists PurchasePayment cascade;

drop table if exists PurchasePaymentDt cascade;

drop table if exists PurchasePrice cascade;

drop table if exists PurchaseReturnDt cascade;

drop table if exists PurchaseReturnHd cascade;

drop table if exists PurchaseReturnPaymentDt cascade;

drop table if exists PurchaseReturnPaymentHd cascade;

drop table if exists RegisterSalesDt cascade;

drop table if exists RegisterSalesHd cascade;

drop table if exists RegisterSalesPayment cascade;

drop table if exists Report cascade;

drop table if exists ReportCategory cascade;

drop table if exists ReportCounter cascade;

drop table if exists RevenueBalance cascade;

drop table if exists SalePrice cascade;

drop table if exists SalesCategory cascade;

drop table if exists SalesInvoiceDt cascade;

drop table if exists SalesInvoiceHd cascade;

drop table if exists SalesOrderDt cascade;

drop table if exists SalesOrderHd cascade;

drop table if exists SalesPayment cascade;

drop table if exists SalesPaymentDt cascade;

drop table if exists SalesReturnDt cascade;

drop table if exists SalesReturnHd cascade;

drop table if exists SalesReturnPaymentDt cascade;

drop table if exists SalesReturnPaymentHd cascade;

drop table if exists Setup cascade;

drop table if exists Shift cascade;

drop table if exists Shipping cascade;

drop table if exists StockExpired cascade;

drop table if exists StockOnHand cascade;

drop table if exists StockOnHandValue cascade;

drop table if exists TempBarcode cascade;

drop table if exists TempPrice cascade;

drop table if exists TempPricePrint cascade;

drop table if exists TempPrintBarcode cascade;

drop table if exists Transaction cascade;

drop table if exists TransactionBalance cascade;

drop table if exists TransactionDt cascade;

drop table if exists TransactionRegistry cascade;

drop table if exists TransactionType cascade;

drop table if exists Vendor cascade;

drop table if exists VendorPhone cascade;

drop table if exists VendorShippingDetail cascade;

drop table if exists Warehouse cascade;

drop table if exists WarehouseRack cascade;

drop domain if exists Currency cascade;

drop domain if exists CurrencyPlus cascade;

drop domain if exists DateWithoutTime cascade;

drop domain if exists Disc cascade;

drop domain if exists Flag cascade;

drop domain if exists ItemId cascade;

drop domain if exists Percent cascade;

drop domain if exists PercentBig cascade;

drop domain if exists Quantity cascade;

drop domain if exists QuantityPlus cascade;

drop domain if exists QuantityPlusWithoutZero cascade;

drop domain if exists StampAuto cascade;

drop domain if exists Status cascade;

/*==============================================================*/
/* Domain: Currency                                             */
/*==============================================================*/
create domain Currency as DECIMAL(18,2)
  default 0;

/*==============================================================*/
/* Domain: CurrencyPlus                                         */
/*==============================================================*/
create domain CurrencyPlus as DECIMAL(18,2)
  default 0
  check (Value >= 0);

/*==============================================================*/
/* Domain: DateWithoutTime                                      */
/*==============================================================*/
create domain DateWithoutTime as DATE
  default CURRENT_DATE;

/*==============================================================*/
/* Domain: Disc                                                 */
/*==============================================================*/
create domain Disc as NUMERIC(5,2)
  default 0
  check (Value >=0 and Value <= 100);

/*==============================================================*/
/* Domain: Flag                                                 */
/*==============================================================*/
create domain Flag as CHAR(1)
  default '0';

/*==============================================================*/
/* Domain: ItemId                                               */
/*==============================================================*/
create domain ItemId as INTEGER;

/*==============================================================*/
/* Domain: Percent                                              */
/*==============================================================*/
create domain Percent as NUMERIC(5,2)
  default 0
  check (Value >= 0);

/*==============================================================*/
/* Domain: PercentBig                                           */
/*==============================================================*/
create domain PercentBig as DECIMAL(18,2)
  default 0;

/*==============================================================*/
/* Domain: Quantity                                             */
/*==============================================================*/
create domain Quantity as DECIMAL(12,4)
  default 0;

/*==============================================================*/
/* Domain: QuantityPlus                                         */
/*==============================================================*/
create domain QuantityPlus as DECIMAL(12,4)
  default 0
  check (Value >= 0);

/*==============================================================*/
/* Domain: QuantityPlusWithoutZero                              */
/*==============================================================*/
create domain QuantityPlusWithoutZero as DECIMAL(12,4)
  default 1
  check (Value > 0);

/*==============================================================*/
/* Domain: StampAuto                                            */
/*==============================================================*/
create domain StampAuto as TIMESTAMP
  default CURRENT_TIMESTAMP;

/*==============================================================*/
/* Domain: Status                                               */
/*==============================================================*/
create domain Status as CHAR(1)
  default '0';

/*==============================================================*/
/* Table: APAdjustmentCustomer                                  */
/*==============================================================*/
create table APAdjustmentCustomer (
APAdjustmentCustomerId varchar(15)          not null,
APAdjustmentCustomerDate DateWithoutTime      not null,
ExternalId           VARCHAR(20)          null,
CustomerId           varchar(10)          not null,
CurrencyId           varchar(10)          not null,
Amount               Currency             not null,
EmployeeId           varchar(10)          null,
Memo                 text                 null,
CounterPrint         integer              null,
StatusApprove        Status               not null,
FlagFix              Flag                 not null
);

alter table APAdjustmentCustomer
   add constraint PK_APAdjustmentCustomer primary key (APAdjustmentCustomerId);

/*==============================================================*/
/* Table: APAdjustmentVendor                                    */
/*==============================================================*/
create table APAdjustmentVendor (
APAdjustmentVendorId varchar(15)          not null,
APAdjustmentVendorDate DateWithoutTime      not null,
ExternalId           VARCHAR(20)          null,
VendorId             varchar(10)          not null,
CurrencyId           varchar(10)          not null,
Amount               Currency             not null,
EmployeeId           varchar(10)          null,
Memo                 text                 null,
CounterPrint         integer              null,
StatusApprove        Status               not null,
FlagFix              Flag                 not null
);

alter table APAdjustmentVendor
   add constraint PK_APAdjustmentVendor primary key (APAdjustmentVendorId);

/*==============================================================*/
/* Table: APBalanceCustomer                                     */
/*==============================================================*/
create table APBalanceCustomer (
CustomerId           varchar(10)          not null,
Year                 varchar(4)           not null,
CurrencyId           varchar(10)          not null,
Value0               Currency             null,
Value1               Currency             null,
Value2               Currency             null,
Value3               Currency             null,
Value4               Currency             null,
Value5               Currency             null,
Value6               Currency             null,
Value7               Currency             null,
Value8               Currency             null,
Value9               Currency             null,
Value10              Currency             null,
Value11              Currency             null,
Value12              Currency             null,
Rupiah0              Currency             null,
Rupiah1              Currency             null,
Rupiah2              Currency             null,
Rupiah3              Currency             null,
Rupiah4              Currency             null,
Rupiah5              Currency             null,
Rupiah6              Currency             null,
Rupiah7              Currency             null,
Rupiah8              Currency             null,
Rupiah9              Currency             null,
Rupiah10             Currency             null,
Rupiah11             Currency             null,
Rupiah12             Currency             null
);

alter table APBalanceCustomer
   add constraint PK_APBalanceCustomer primary key (CustomerId, Year, CurrencyId);

/*==============================================================*/
/* Table: APBalanceVendor                                       */
/*==============================================================*/
create table APBalanceVendor (
VendorId             varchar(10)          not null,
Year                 varchar(4)           not null,
CurrencyId           varchar(10)          not null,
Value0               Currency             null,
Value1               Currency             null,
Value2               Currency             null,
Value3               Currency             null,
Value4               Currency             null,
Value5               Currency             null,
Value6               Currency             null,
Value7               Currency             null,
Value8               Currency             null,
Value9               Currency             null,
Value10              Currency             null,
Value11              Currency             null,
Value12              Currency             null,
Rupiah0              Currency             null,
Rupiah1              Currency             null,
Rupiah2              Currency             null,
Rupiah3              Currency             null,
Rupiah4              Currency             null,
Rupiah5              Currency             null,
Rupiah6              Currency             null,
Rupiah7              Currency             null,
Rupiah8              Currency             null,
Rupiah9              Currency             null,
Rupiah10             Currency             null,
Rupiah11             Currency             null,
Rupiah12             Currency             null
);

alter table APBalanceVendor
   add constraint PK_APBalanceVendor primary key (VendorId, Year, CurrencyId);

/*==============================================================*/
/* Table: ARAdjustmentCustomer                                  */
/*==============================================================*/
create table ARAdjustmentCustomer (
ARAdjustmentCustomerId varchar(15)          not null,
ARAdjustmentCustomerDate DateWithoutTime      not null,
ExternalId           VARCHAR(20)          null,
CustomerId           varchar(10)          not null,
CurrencyId           varchar(10)          not null,
Amount               Currency             not null,
EmployeeId           varchar(10)          null,
Memo                 text                 null,
CounterPrint         integer              null,
StatusApprove        Status               not null,
FlagFix              Flag                 not null
);

alter table ARAdjustmentCustomer
   add constraint PK_ARAdjustmentCustomer primary key (ARAdjustmentCustomerId);

/*==============================================================*/
/* Table: ARAdjustmentVendor                                    */
/*==============================================================*/
create table ARAdjustmentVendor (
ARAdjustmentVendorId varchar(15)          not null,
ARAdjustmentVendorDate DateWithoutTime      not null,
ExternalId           VARCHAR(20)          null,
VendorId             varchar(10)          not null,
CurrencyId           varchar(10)          not null,
Amount               Currency             not null,
EmployeeId           varchar(10)          null,
Memo                 text                 null,
CounterPrint         integer              null,
StatusApprove        Status               not null,
FlagFix              Flag                 not null
);

alter table ARAdjustmentVendor
   add constraint PK_ARAdjustmentVendor primary key (ARAdjustmentVendorId);

/*==============================================================*/
/* Table: ARBalanceCustomer                                     */
/*==============================================================*/
create table ARBalanceCustomer (
CustomerId           varchar(10)          not null,
Year                 varchar(4)           not null,
CurrencyId           varchar(10)          not null,
Value0               Currency             null,
Value1               Currency             null,
Value2               Currency             null,
Value3               Currency             null,
Value4               Currency             null,
Value5               Currency             null,
Value6               Currency             null,
Value7               Currency             null,
Value8               Currency             null,
Value9               Currency             null,
Value10              Currency             null,
Value11              Currency             null,
Value12              Currency             null,
Rupiah0              Currency             null,
Rupiah1              Currency             null,
Rupiah2              Currency             null,
Rupiah3              Currency             null,
Rupiah4              Currency             null,
Rupiah5              Currency             null,
Rupiah6              Currency             null,
Rupiah7              Currency             null,
Rupiah8              Currency             null,
Rupiah9              Currency             null,
Rupiah10             Currency             null,
Rupiah11             Currency             null,
Rupiah12             Currency             null
);

alter table ARBalanceCustomer
   add constraint PK_ARBalanceCustomer primary key (CustomerId, Year, CurrencyId);

/*==============================================================*/
/* Table: ARBalanceVendor                                       */
/*==============================================================*/
create table ARBalanceVendor (
VendorId             varchar(10)          not null,
Year                 varchar(4)           not null,
CurrencyId           varchar(10)          not null,
Value0               Currency             null,
Value1               Currency             null,
Value2               Currency             null,
Value3               Currency             null,
Value4               Currency             null,
Value5               Currency             null,
Value6               Currency             null,
Value7               Currency             null,
Value8               Currency             null,
Value9               Currency             null,
Value10              Currency             null,
Value11              Currency             null,
Value12              Currency             null,
Rupiah0              Currency             null,
Rupiah1              Currency             null,
Rupiah2              Currency             null,
Rupiah3              Currency             null,
Rupiah4              Currency             null,
Rupiah5              Currency             null,
Rupiah6              Currency             null,
Rupiah7              Currency             null,
Rupiah8              Currency             null,
Rupiah9              Currency             null,
Rupiah10             Currency             null,
Rupiah11             Currency             null,
Rupiah12             Currency             null
);

alter table ARBalanceVendor
   add constraint PK_ARBalanceVendor primary key (VendorId, Year, CurrencyId);

/*==============================================================*/
/* Table: AccTransactionType                                    */
/*==============================================================*/
create table AccTransactionType (
AccTransactionTypeId varchar(10)          not null,
TransactionTypeName  varchar(50)          not null,
StatusTransaction    Flag                 not null,
FlagFix              Flag                 not null
);

comment on column AccTransactionType.StatusTransaction is
'0 = In
1 = Out';

alter table AccTransactionType
   add constraint PK_AccTransactionType primary key (AccTransactionTypeId);

/*==============================================================*/
/* Table: BackupPrice                                           */
/*==============================================================*/
create table BackupPrice (
BackupPriceId        VARCHAR(20)          not null,
ItemId               ItemId               not null,
EmployeeId           varchar(10)          null,
Price1               Currency             null,
Price5               Currency             null,
Price4               Currency             null,
Price3               Currency             null,
Price2               Currency             null,
Qty1                 Quantity             null,
Qty5                 Quantity             null,
Qty4                 Quantity             null,
Qty3                 Quantity             null,
Qty2                 Quantity             null,
UnitMeasure1         VARCHAR(5)           null,
UnitMeasure5         VARCHAR(5)           null,
UnitMeasure4         VARCHAR(5)           null,
UnitMeasure3         VARCHAR(5)           null,
UnitMeasure2         VARCHAR(5)           null,
LastModified         DateWithoutTime      not null
);

alter table BackupPrice
   add constraint PK_BackupPrice primary key (BackupPriceId, ItemId);

/*==============================================================*/
/* Table: Bank                                                  */
/*==============================================================*/
create table Bank (
AccountNo            varchar(20)          not null,
AccountName          varchar(25)          not null,
BankId               varchar(20)          not null,
EmployeeId           varchar(10)          null,
ContactPerson        varchar(25)          null,
Address              varchar(50)          null,
Telephone            varchar(20)          null,
Memo                 Text                 null,
FlagInactive         Flag                 not null
);

alter table Bank
   add constraint PK_Bank primary key (AccountNo, BankId);

/*==============================================================*/
/* Table: BankAdjustment                                        */
/*==============================================================*/
create table BankAdjustment (
BankAdjustmentId     varchar(15)          not null,
BankAdjustmentDate   DateWithoutTime      not null,
ExternalId           VARCHAR(20)          null,
BankId               varchar(20)          not null,
AccountNo            varchar(20)          not null,
CurrencyId           varchar(10)          not null,
Amount               Currency             not null,
EmployeeId           varchar(10)          not null,
Memo                 text                 null,
CounterPrint         integer              null,
StatusApprove        Status               not null,
FlagFix              Flag                 not null
);

alter table BankAdjustment
   add constraint PK_BankAdjustment primary key (BankAdjustmentId);

/*==============================================================*/
/* Table: BankBalance                                           */
/*==============================================================*/
create table BankBalance (
BankId               varchar(20)          not null,
AccountNo            varchar(20)          not null,
Year                 varchar(4)           not null,
CurrencyId           varchar(10)          not null,
Value0               Currency             null,
Value1               Currency             null,
Value2               Currency             null,
Value3               Currency             null,
Value4               Currency             null,
Value5               Currency             null,
Value6               Currency             null,
Value7               Currency             null,
Value8               Currency             null,
Value9               Currency             null,
Value10              Currency             null,
Value11              Currency             null,
Value12              Currency             null,
Rupiah0              Currency             null,
Rupiah1              Currency             null,
Rupiah2              Currency             null,
Rupiah3              Currency             null,
Rupiah4              Currency             null,
Rupiah5              Currency             null,
Rupiah6              Currency             null,
Rupiah7              Currency             null,
Rupiah8              Currency             null,
Rupiah9              Currency             null,
Rupiah10             Currency             null,
Rupiah11             Currency             null,
Rupiah12             Currency             null
);

alter table BankBalance
   add constraint PK_BankBalance primary key (BankId, AccountNo, Year, CurrencyId);

/*==============================================================*/
/* Table: BankTransaction                                       */
/*==============================================================*/
create table BankTransaction (
BankTransactionId    varchar(15)          not null,
ExternalId           VARCHAR(20)          null,
BankTransactionDate  DateWithoutTime      not null,
CashBankTransactionTypeId varchar(10)          not null,
BankId               varchar(20)          not null,
AccountNo            varchar(20)          not null,
GiroNumber           varchar(20)          null,
VendorId             varchar(10)          null,
CustomerId           varchar(10)          null,
ProjectId            varchar(10)          null,
CurrencyId           varchar(10)          not null,
CoaId                varchar(10)          null,
No                   integer              null,
Kurs                 CurrencyPlus         not null,
Amount               CurrencyPlus         not null,
EmployeeId           varchar(10)          not null,
Memo                 text                 null,
CounterPrint         integer              null,
StatusApprove        Status               not null,
FlagAutomatic        Flag                 not null
);

alter table BankTransaction
   add constraint PK_BankTransaction primary key (BankTransactionId);

/*==============================================================*/
/* Table: CashBalance                                           */
/*==============================================================*/
create table CashBalance (
Year                 varchar(4)           not null,
CurrencyId           varchar(10)          not null,
Value0               Currency             null,
Value1               Currency             null,
Value2               Currency             null,
Value3               Currency             null,
Value4               Currency             null,
Value5               Currency             null,
Value6               Currency             null,
Value7               Currency             null,
Value8               Currency             null,
Value9               Currency             null,
Value10              Currency             null,
Value11              Currency             null,
Value12              Currency             null,
Rupiah0              Currency             null,
Rupiah1              Currency             null,
Rupiah2              Currency             null,
Rupiah3              Currency             null,
Rupiah4              Currency             null,
Rupiah5              Currency             null,
Rupiah6              Currency             null,
Rupiah7              Currency             null,
Rupiah8              Currency             null,
Rupiah9              Currency             null,
Rupiah10             Currency             null,
Rupiah11             Currency             null,
Rupiah12             Currency             null
);

alter table CashBalance
   add constraint PK_CashBalance primary key (Year, CurrencyId);

/*==============================================================*/
/* Table: CashBankTransactionType                               */
/*==============================================================*/
create table CashBankTransactionType (
CashBankTransactionTypeId varchar(10)          not null,
CashBankTransactionTypeName varchar(50)          null,
FlagBank             Flag                 not null,
FlagOut              Flag                 not null,
FlagUsable           Flag                 not null,
FlagFix              Flag                 not null
);

comment on column CashBankTransactionType.FlagBank is
'0 = Cash
1 = Bank';

comment on column CashBankTransactionType.FlagOut is
'0 = In
1 = Out';

alter table CashBankTransactionType
   add constraint PK_CashBankTransactionType primary key (CashBankTransactionTypeId);

/*==============================================================*/
/* Table: CashRegister                                          */
/*==============================================================*/
create table CashRegister (
CashRegisterId       varchar(2)           not null,
CashRegisterName     varchar(10)          not null,
WarehouseId          varchar(10)          not null,
CustomerId           varchar(10)          not null,
OutletId             varchar(10)          null,
FlagValidationItemPrice Flag                 null,
FlagValidationItemDisc1 Flag                 null,
FlagValidationItemDisc2 Flag                 null,
FlagValidationItemVoucher Flag                 null,
FlagValidationItemBonus Flag                 null,
FlagValidationItemVoid Flag                 null,
FlagValidationItemEditPrint Flag                 null,
FlagValidationItemDeletePrint Flag                 null,
FlagValidationInvoiceDisc1 Flag                 null,
FlagValidationInvoiceDisc2 Flag                 null,
FlagValidationInvoiceVoucher Flag                 null,
FlagValidationInvoiceVoid Flag                 null,
FlagValidationInvoiceReprint Flag                 null,
FlagValidationPaymentVoid Flag                 null,
FlagValidationPIPaymentVoid Flag                 null,
FlagValidationSIPaymentVoid Flag                 null,
FlagUseFPValidation  Flag                 null,
FlagUseBarcodeMode   Flag                 null,
LevelValidationItemPrice INT2                 null default '0',
LevelValidationItemDisc1 INT2                 null default '0',
LevelValidationItemDisc2 INT2                 null default '0',
LevelValidationItemVoucher INT2                 null default '0',
LevelValidationItemBonus INT2                 null default '0',
LevelValidationItemVoid INT2                 null default '0',
LevelValidationItemEditPrint INT2                 null default '0',
LevelValidationItemDeletePrint INT2                 null default '0',
LevelValidationInvoiceDisc1 INT2                 null default '0',
LevelValidationInvoiceDisc2 INT2                 null default '0',
LevelValidationInvoiceVoucher INT2                 null default '0',
LevelValidationInvoiceVoid INT2                 null default '0',
LevelValidationInvoiceReprint INT2                 null default '0',
LevelValidationPaymentVoid INT2                 null default '0',
LevelValidationPIPaymentVoid INT2                 null default '0',
LevelValidationSIPaymentVoid INT2                 null default '0',
FlagUse              Flag                 null,
LastCashRegisterTransaction varchar(15)          null
);

alter table CashRegister
   add constraint PK_CashRegister primary key (CashRegisterId);

/*==============================================================*/
/* Table: CashRegisterTransaction                               */
/*==============================================================*/
create table CashRegisterTransaction (
CashRegisterTransactionId varchar(15)          not null,
CashRegisterId       varchar(2)           not null,
DateOpening          TIMESTAMP            null,
DateClosing          TIMESTAMP            null,
OpeningBalance       CurrencyPlus         not null,
APBalance            CurrencyPlus         null,
ShiftCode            VARCHAR(10)          not null,
EmployeeId           varchar(10)          not null,
CashInRefId          VARCHAR(15)          null,
CashOutRefId         VARCHAR(15)          null,
StatusPosting        Status               null
);

alter table CashRegisterTransaction
   add constraint PK_CashRegisterTransaction primary key (CashRegisterTransactionId);

alter table CashRegisterTransaction
   add constraint AK_CashRegisterTransaction unique (CashRegisterId, DateOpening);

/*==============================================================*/
/* Table: CashTransaction                                       */
/*==============================================================*/
create table CashTransaction (
CashTransactionId    varchar(15)          not null,
ExternalId           VARCHAR(20)          null,
CashTransactionDate  DateWithoutTime      not null,
CashBankTransactionTypeId varchar(10)          not null,
VendorId             varchar(10)          null,
CustomerId           varchar(10)          null,
ProjectId            varchar(10)          null,
CurrencyId           varchar(10)          not null,
Kurs                 CurrencyPlus         not null,
Amount               CurrencyPlus         not null,
EmployeeId           varchar(10)          not null,
Memo                 text                 null,
CounterPrint         integer              null,
StatusApprove        Status               not null,
FlagAutomatic        Flag                 not null
);

alter table CashTransaction
   add constraint PK_CashTransaction primary key (CashTransactionId);

/*==============================================================*/
/* Table: Category                                              */
/*==============================================================*/
create table Category (
CategoryId           varchar(10)          not null,
CategoryName         varchar(20)          not null
);

alter table Category
   add constraint PK_Category primary key (CategoryId);

/*==============================================================*/
/* Table: City                                                  */
/*==============================================================*/
create table City (
ProvinceId           varchar(10)          not null,
CityId               varchar(5)           not null,
CityName             varchar(50)          not null,
CityExt              varchar(4)           null
);

alter table City
   add constraint PK_City primary key (CityId);

/*==============================================================*/
/* Table: Company                                               */
/*==============================================================*/
create table Company (
CompanyId            varchar(10)          not null,
CompanyName          varchar(40)          not null,
Address              varchar(40)          null,
Address2             varchar(40)          null,
Telephone            varchar(30)          null,
Fax                  varchar(30)          null,
Email                varchar(40)          null,
Website              varchar(40)          null,
Logo                 bytea                null,
Year                 INT2                 null,
FlagFix              char(1)              not null default '0'
);

alter table Company
   add constraint PK_Company primary key (CompanyId);

/*==============================================================*/
/* Table: ComputerCounter                                       */
/*==============================================================*/
create table ComputerCounter (
CashRegisterTransactionId varchar(15)          not null,
EngineGroupJobCode   VARCHAR(20)          not null,
ValueBalance         QuantityPlus         null
);

alter table ComputerCounter
   add constraint PK_ComputerCounter primary key (CashRegisterTransactionId, EngineGroupJobCode);

/*==============================================================*/
/* Table: Country                                               */
/*==============================================================*/
create table Country (
CountryId            varchar(3)           not null,
CountryName          varchar(30)          not null,
CountryExt           varchar(4)           null
);

alter table Country
   add constraint PK_Country primary key (CountryId);

/*==============================================================*/
/* Table: CoupleDt                                              */
/*==============================================================*/
create table CoupleDt (
CoupleId             varchar(15)          not null,
No                   INT4                 not null,
ItemId               ItemId               not null,
Qty                  QuantityPlusWithoutZero null,
QtyCouple            QuantityPlusWithoutZero null,
COGS                 CurrencyPlus         null,
TotalCOGS            CurrencyPlus         null
);

alter table CoupleDt
   add constraint PK_CoupleDt primary key (CoupleId, No);

/*==============================================================*/
/* Table: CoupleHd                                              */
/*==============================================================*/
create table CoupleHd (
CoupleId             varchar(15)          not null,
CoupleDate           DATE                 not null,
WarehouseId          varchar(10)          not null,
ItemId               ItemId               not null,
Qty                  QuantityPlus         null,
TotalCOGS            CurrencyPlus         null,
StatementMemo        text                 null,
InternalMemo         text                 null,
ProjectId            varchar(10)          null,
CashRegisterTransactionId varchar(15)          null,
EmployeeId           varchar(10)          not null,
CounterPrint         integer              null default '0',
StatusApprove        char(1)              null,
FlagAutomatic        Flag                 null
);

alter table CoupleHd
   add constraint PK_CoupleHd primary key (CoupleId);

/*==============================================================*/
/* Table: CurrencyMaster                                        */
/*==============================================================*/
create table CurrencyMaster (
CurrencyId           varchar(10)          not null,
CurrencyName         varchar(20)          null,
FlagFix              char(1)              not null default '0'
);

alter table CurrencyMaster
   add constraint PK_CurrencyMaster primary key (CurrencyId);

/*==============================================================*/
/* Table: Customer                                              */
/*==============================================================*/
create table Customer (
CustomerId           varchar(10)          not null,
CustomerName         varchar(40)          not null,
ContactPerson        varchar(25)          null,
CategoryId           varchar(10)          null,
Address              varchar(100)         null,
CityId               varchar(5)           not null,
CustomerIdParent     varchar(10)          null,
Email                varchar(50)          null,
Religi               varchar(10)          null,
MemberId             Varchar(15)          null,
CustomerSince        DateWithoutTime      not null,
NPWP                 varchar(15)          null,
CreditLimit          Currency             null,
InvoiceDue           INT2                 null,
DepositBalance       Currency             null,
Memo                 text                 null,
FlagShippingCost     Flag                 not null,
FlagPKP              Flag                 not null
);

comment on column Customer.CreditLimit is
'Batas AR';

comment on column Customer.InvoiceDue is
'Default Jatuh Tempo Nota';

comment on column Customer.FlagShippingCost is
'0 = Customer tidak kena ongkos kirim
1 = Customer kena ongkos kirim';

comment on column Customer.FlagPKP is
'0 = Normal
1 = Perusahaan Kena Pajak';

alter table Customer
   add constraint PK_Customer primary key (CustomerId);

/*==============================================================*/
/* Table: CustomerPhone                                         */
/*==============================================================*/
create table CustomerPhone (
CustomerId           varchar(10)          not null,
PhoneName            varchar(10)          not null,
CountryExt           varchar(4)           null,
CityExt              varchar(4)           null,
Number               varchar(15)          not null,
ContactPerson        VARCHAR(40)          null,
JobPosition          varchar(20)          null
);

alter table CustomerPhone
   add constraint PK_CustomerPhone primary key (CustomerId, PhoneName);

/*==============================================================*/
/* Table: CustomerShippingDetail                                */
/*==============================================================*/
create table CustomerShippingDetail (
ShippingId           varchar(10)          not null,
CustomerId           varchar(10)          not null
);

alter table CustomerShippingDetail
   add constraint PK_CustomerShippingDetail primary key (ShippingId, CustomerId);

/*==============================================================*/
/* Table: Department                                            */
/*==============================================================*/
create table Department (
CompanyId            varchar(10)          not null,
DepartmentId         varchar(5)           not null,
DepartmentName       varchar(40)          not null,
FlagFix              char(1)              not null default '0'
);

alter table Department
   add constraint PK_Department primary key (DepartmentId);

/*==============================================================*/
/* Table: Display                                               */
/*==============================================================*/
create table Display (
ProgramId            varchar(30)          not null,
DisplayId            varchar(20)          not null,
OrderNo              INT2                 null,
DisplayName          varchar(40)          not null,
SQLSyntax            TEXT                 null,
FilterSyntax         bytea                null,
FlagEnableGroupBox   char(1)              not null default '0',
FlagEnableColumnFilter char(1)              not null default '0',
FlagHide             char(1)              not null default '0'
);

alter table Display
   add constraint PK_Display primary key (ProgramId, DisplayId);

/*==============================================================*/
/* Table: Employee                                              */
/*==============================================================*/
create table Employee (
EmployeeId           varchar(10)          not null,
EmployeeName         varchar(40)          not null,
PositionId           varchar(5)           null,
PrefixCode           varchar(3)           null,
UserName             varchar(20)          not null,
Password             varchar(30)          null,
LevelValidation      INT2                 null default '0',
FlagInactive         char(1)              not null default '0',
FlagInactiveUser     char(1)              not null default '0',
FlagFix              char(1)              not null default '0',
FlagSalesman         char(1)              not null default '0'
);

comment on column Employee.FlagInactive is
'0 = Active
1 = Resign';

comment on column Employee.FlagInactiveUser is
'0 = Can Login
1 = Cannot Login';

alter table Employee
   add constraint PK_Employee primary key (EmployeeId);

alter table Employee
   add constraint AK_Employee unique (UserName);

/*==============================================================*/
/* Table: Engine                                                */
/*==============================================================*/
create table Engine (
EngineCode           VARCHAR(10)          not null,
EngineName           VARCHAR(30)          not null,
EngineGroupCode      VARCHAR(10)          not null
);

alter table Engine
   add constraint PK_Engine primary key (EngineCode);

/*==============================================================*/
/* Table: EngineGroup                                           */
/*==============================================================*/
create table EngineGroup (
EngineGroupCode      VARCHAR(10)          not null,
EngineGroupName      VARCHAR(30)          not null
);

alter table EngineGroup
   add constraint PK_EngineGroup primary key (EngineGroupCode);

/*==============================================================*/
/* Table: EngineGroupJob                                        */
/*==============================================================*/
create table EngineGroupJob (
EngineGroupJobCode   VARCHAR(20)          not null,
JobCode              VARCHAR(10)          not null,
EngineGroupCode      VARCHAR(10)          null
);

alter table EngineGroupJob
   add constraint PK_EngineGroupJob primary key (EngineGroupJobCode);

alter table EngineGroupJob
   add constraint AK_EngineGroupJob unique (JobCode, EngineGroupCode);

/*==============================================================*/
/* Table: EngineJob                                             */
/*==============================================================*/
create table EngineJob (
EngineCode           VARCHAR(10)          not null,
JobCode              VARCHAR(10)          not null,
DefaultCOGS          CurrencyPlus         null
);

alter table EngineJob
   add constraint PK_EngineJob primary key (EngineCode, JobCode);

/*==============================================================*/
/* Table: FingerPrint                                           */
/*==============================================================*/
create table FingerPrint (
EmployeeId           varchar(10)          not null,
FingerMask           INT2                 not null,
FingerData           bytea                null
);

alter table FingerPrint
   add constraint PK_FingerPrint primary key (EmployeeId, FingerMask);

/*==============================================================*/
/* Table: Giro                                                  */
/*==============================================================*/
create table Giro (
GiroNumber           varchar(20)          not null,
BankId               varchar(20)          not null,
BankAccount          varchar(20)          not null,
GiroDue              DateWithoutTime      null,
Amount               Currency             not null,
IssueDate            DateWithoutTime      not null,
TransactionDate      DateWithoutTime      not null,
Memo                 text                 null,
VendorId             varchar(10)          null,
CustomerId           varchar(10)          null,
ProjectId            varchar(10)          null,
EmployeeId           varchar(10)          not null,
ReferenceId          varchar(15)          null,
CounterPrint         integer              null,
FlagGiroOut          Flag                 not null,
StatusGiro           Status               not null,
StatusApprove        Status               not null
);

comment on column Giro.FlagGiroOut is
'0 = Giro In
1 = Giro Out';

comment on column Giro.StatusGiro is
'0 = Issue
1 = Setor
2 = Cair
3 = Tolak';

alter table Giro
   add constraint PK_Giro primary key (GiroNumber);

/*==============================================================*/
/* Table: Item                                                  */
/*==============================================================*/
create table Item (
ItemId               SERIAL               not null,
ItemIdExternal       varchar(60)          not null,
ItemName             varchar(60)          not null,
ItemNameChinese      varchar(60)          null,
BarcodeId            varchar(60)          not null,
BarcodeName          varchar(20)          null,
ItemCategoryId       varchar(6)           not null,
EmployeeId           varchar(10)          null,
Type                 varchar(40)          null,
UnitMeasure          varchar(20)          null,
Register             varchar(20)          null,
MinStockQty          Quantity             null,
MaxStockQty          Quantity             null,
ReorderQty           Quantity             null,
Margin               Disc                 null,
MinSalePrice         Currency             null,
PriceList            Currency             null,
LastPI               varchar(20)          null,
Memo                 text                 null,
StatusSource         Status               not null,
StatusItem           Status               not null,
StatusCostMethod     Status               not null,
FlagPrintBarcode     Flag                 not null,
FlagPrintPrice       Flag                 not null,
FlagInactive         Flag                 not null,
FlagTerdaftar        Flag                 not null,
FlagBahasaIndonesia  Flag                 not null,
FlagCouple           Flag                 not null,
FlagPurchaseReturn   Flag                 not null,
FlagSalesReturn      Flag                 not null,
FlagProcessOpname    Flag                 not null,
FlagNeedValidation   Flag                 null,
LevelValidation      INT2                 null default 0
);

comment on column Item.ItemCategoryId is
'Lookup tbIMSuppliesCategory';

comment on column Item.ReorderQty is
'Default value in PO';

comment on column Item.Margin is
'Digunakan apabila status item = Service (0) atau Non-Stock (2)
Margin berupa prosentase keuntungan yang diperoleh dari harga jual';

comment on column Item.StatusSource is
'0 = Import (dapat dari importir)
1 = Local (beli lokal)
2 = Freeland (import sendiri)';

comment on column Item.StatusItem is
'0 = Service
1 = Item
2 = Non Stock - Item
3 = Konsinyasi';

comment on column Item.StatusCostMethod is
'0 = FIFO
1 = LIFO
2 = AVERAGE';

comment on column Item.FlagPrintBarcode is
'0 = Print barcode
1 = Tidak perlu di print barcode';

comment on column Item.FlagPrintPrice is
'0 = Print price
1 = Tidak perlu di print price';

comment on column Item.FlagInactive is
'0 = Barang masih aktif
1 = Barang sudah tidak dipakai';

comment on column Item.FlagTerdaftar is
'1 = Ada no register';

comment on column Item.FlagBahasaIndonesia is
'1 = Ada tulisan bahasa indonesia ';

comment on column Item.FlagCouple is
'1 = Bisa di couple';

comment on column Item.FlagPurchaseReturn is
'1 = Bisa retur pembelian';

comment on column Item.FlagSalesReturn is
'1 = Bisa retur penjualan';

comment on column Item.FlagProcessOpname is
'1 = Sedang di opname';

comment on column Item.FlagNeedValidation is
'1=Cash Register Need Validation';

alter table Item
   add constraint PK_Item primary key (ItemId);

alter table Item
   add constraint AK_Item1 unique (ItemIdExternal);

/*==============================================================*/
/* Table: ItemBalance                                           */
/*==============================================================*/
create table ItemBalance (
ItemId               ItemId               not null,
WarehouseId          varchar(10)          not null,
Year                 varchar(4)           not null,
Qty0                 Quantity             null,
Qty1                 Quantity             null,
Qty2                 Quantity             null,
Qty3                 Quantity             null,
Qty4                 Quantity             null,
Qty5                 Quantity             null,
Qty6                 Quantity             null,
Qty7                 Quantity             null,
Qty8                 Quantity             null,
Qty9                 Quantity             null,
Qty10                Quantity             null,
Qty11                Quantity             null,
Qty12                Quantity             null,
Value0               Currency             null,
Value1               Currency             null,
Value2               Currency             null,
Value3               Currency             null,
Value4               Currency             null,
Value5               Currency             null,
Value6               Currency             null,
Value7               Currency             null,
Value8               Currency             null,
Value9               Currency             null,
Value10              Currency             null,
Value11              Currency             null,
Value12              Currency             null,
TotalQtyIn           Quantity             null,
TotalQtyOut          Quantity             null,
TotalValueIn         Currency             null,
TotalValueOut        Currency             null
);

alter table ItemBalance
   add constraint PK_ItemBalance primary key (ItemId, WarehouseId, Year);

/*==============================================================*/
/* Table: ItemCategory                                          */
/*==============================================================*/
create table ItemCategory (
ItemCategoryId       varchar(6)           not null,
ItemCategoryName     varchar(40)          not null
);

alter table ItemCategory
   add constraint AK_ItemCategory unique (ItemCategoryName);

alter table ItemCategory
   add constraint PK_ItemCategory primary key (ItemCategoryId);

/*==============================================================*/
/* Table: ItemDt                                                */
/*==============================================================*/
create table ItemDt (
ItemId               ItemId               not null,
ItemDt               ItemId               not null,
Qty                  QuantityPlus         null
);

alter table ItemDt
   add constraint PK_ItemDt primary key (ItemId, ItemDt);

/*==============================================================*/
/* Table: ItemEngineGroupJob                                    */
/*==============================================================*/
create table ItemEngineGroupJob (
ItemId               INT4                 not null,
EngineGroupJobCode   VARCHAR(20)          not null,
DefaultCounterIncQty QuantityPlus         null
);

alter table ItemEngineGroupJob
   add constraint PK_ItemEngineGroupJob primary key (ItemId, EngineGroupJobCode);

/*==============================================================*/
/* Table: ItemMinStock                                          */
/*==============================================================*/
create table ItemMinStock (
ItemId               ItemId               not null,
WarehouseId          varchar(10)          not null,
EmployeeId           varchar(10)          not null,
MinStockQty          QuantityPlus         null
);

alter table ItemMinStock
   add constraint PK_ItemMinStock primary key (ItemId, WarehouseId);

/*==============================================================*/
/* Table: ItemOrderBalance                                      */
/*==============================================================*/
create table ItemOrderBalance (
ItemId               ItemId               not null,
Year                 varchar(4)           not null,
POOpeningQty         Quantity             null,
POQtyPlus            Quantity             null,
POQtyMinus           Quantity             null,
SOOpeningQty         Quantity             null,
SOQtyPlus            Quantity             null,
SOQtyMinus           Quantity             null
);

alter table ItemOrderBalance
   add constraint PK_ItemOrderBalance primary key (ItemId, Year);

/*==============================================================*/
/* Table: ItemRack                                              */
/*==============================================================*/
create table ItemRack (
ItemId               INT4                 not null,
RackCode             VARCHAR(15)          not null
);

alter table ItemRack
   add constraint PK_ItemRack primary key (ItemId, RackCode);

/*==============================================================*/
/* Table: JobPosition                                           */
/*==============================================================*/
create table JobPosition (
DepartmentId         varchar(5)           not null,
PositionId           varchar(5)           not null,
PositionName         varchar(40)          not null,
FlagFix              char(1)              not null default '0'
);

alter table JobPosition
   add constraint PK_JobPosition primary key (PositionId);

/*==============================================================*/
/* Table: JobType                                               */
/*==============================================================*/
create table JobType (
JobCode              VARCHAR(10)          not null,
JobName              VARCHAR(30)          not null
);

alter table JobType
   add constraint PK_JobType primary key (JobCode);

/*==============================================================*/
/* Table: LogProgram                                            */
/*==============================================================*/
create table LogProgram (
ProgramId            varchar(30)          not null,
LogId                varchar(15)          not null,
LogDate              TIMESTAMP            not null,
LogTypeId            varchar(15)          not null default '0',
EmployeeIdEntry      varchar(10)          null,
EmployeeIdValidation varchar(10)          null,
Ref                  varchar(20)          null,
Message              Text                 null
);

alter table LogProgram
   add constraint PK_LogProgram primary key (ProgramId, LogId);

/*==============================================================*/
/* Table: LogType                                               */
/*==============================================================*/
create table LogType (
LogTypeId            varchar(15)          not null default '0',
LogTypeName          varchar(40)          null
);

alter table LogType
   add constraint PK_LogType primary key (LogTypeId);

/*==============================================================*/
/* Table: MenuOptions                                           */
/*==============================================================*/
create table MenuOptions (
ProgramId            varchar(30)          not null,
MenuId               varchar(60)          not null,
ParentId             varchar(60)          null,
ActionName           varchar(60)          null,
LevelValidation      INT2                 null default '0'
);

alter table MenuOptions
   add constraint PK_MenuOptions primary key (ProgramId, MenuId);

/*==============================================================*/
/* Table: OtherTransactionDt                                    */
/*==============================================================*/
create table OtherTransactionDt (
OtherTransactionId   varchar(15)          not null,
No                   INT4                 not null,
ItemId               ItemId               not null,
EmployeeId           varchar(10)          not null,
ItemText             varchar(30)          null,
Qty                  QuantityPlusWithoutZero not null,
Price                CurrencyPlus         not null,
Amount               CurrencyPlus         null,
ExpiredDate          DateWithoutTime      null,
StatusColor          Status               not null
);

alter table OtherTransactionDt
   add constraint PK_OtherTransactionDt primary key (OtherTransactionId, No);

/*==============================================================*/
/* Table: OtherTransactionHd                                    */
/*==============================================================*/
create table OtherTransactionHd (
OtherTransactionId   varchar(15)          not null,
OtherTransactionDate DATE                 not null,
TransactionTypeId    varchar(10)          not null,
WarehouseSource      varchar(10)          not null,
WarehouseDest        varchar(10)          null,
ProjectId            varchar(10)          null,
EmployeeId           varchar(10)          not null,
StatementMemo        text                 null,
InternalMemo         text                 null,
CounterPrint         integer              null default '0',
StatusApprove        Status               null,
FlagMutasi           Flag                 null
);

alter table OtherTransactionHd
   add constraint PK_OtherTransactionHd primary key (OtherTransactionId);

/*==============================================================*/
/* Table: Outlet                                                */
/*==============================================================*/
create table Outlet (
OutletId             varchar(10)          not null,
CityId               varchar(5)           null,
OutletName           varchar(40)          null,
ContactPerson        varchar(25)          null,
Address              varchar(50)          null,
Memo                 text                 null
);

alter table Outlet
   add constraint PK_Outlet primary key (OutletId);

/*==============================================================*/
/* Table: PaymentType                                           */
/*==============================================================*/
create table PaymentType (
PaymentTypeId        varchar(5)           not null,
PaymentTypeName      varchar(40)          not null,
BankId               varchar(20)          null,
AccountNo            varchar(20)          null,
CashBankTransactionTypeId varchar(10)          not null,
NumberOfCopies       INT2                 null,
FlagInactive         Flag                 not null,
FlagPurchasePayment  Flag                 not null,
FlagSalesPayment     Flag                 not null,
FlagPurchaseReturnPayment Flag                 not null,
FlagSalesReturnPayment Flag                 not null,
FlagFix              Flag                 not null,
FlagSalesBarcodePayment Flag                 null
);

comment on column PaymentType.NumberOfCopies is
'Jumlah Copy Lembar Print';

alter table PaymentType
   add constraint PK_PaymentType primary key (PaymentTypeId);

/*==============================================================*/
/* Table: PhysicalCounter                                       */
/*==============================================================*/
create table PhysicalCounter (
EngineCode           VARCHAR(10)          not null,
JobCode              VARCHAR(10)          not null,
CounterDate          DateWithoutTime      not null,
ShiftCode            VARCHAR(10)          not null,
EmployeeId           varchar(10)          not null,
ValueStart           QuantityPlus         null,
ValueEnd             QuantityPlus         null,
CounterPrint         INT2                 null,
StatusApprove        Status               null
);

alter table PhysicalCounter
   add constraint PK_PhysicalCounter primary key (EngineCode, JobCode, CounterDate, ShiftCode);

/*==============================================================*/
/* Table: PositionAccess                                        */
/*==============================================================*/
create table PositionAccess (
ProgramId            varchar(30)          not null,
PositionId           varchar(5)           not null,
MenuId               varchar(60)          not null,
ActionName           varchar(60)          not null,
MaxReprint           INT2                 null default '0',
FlagOpen             char(1)              not null default '0',
FlagInsert           char(1)              not null default '0',
FlagEdit             char(1)              not null default '0',
FlagDelete           char(1)              not null default '0'
);

alter table PositionAccess
   add constraint PK_PositionAccess primary key (ProgramId, PositionId, MenuId, ActionName);

/*==============================================================*/
/* Table: Price                                                 */
/*==============================================================*/
create table Price (
ItemId               ItemId               not null,
EmployeeId           varchar(10)          not null,
Price1               CurrencyPlus         null,
Price2               CurrencyPlus         null,
Price3               CurrencyPlus         null,
Price4               CurrencyPlus         null,
Price5               CurrencyPlus         null,
Price6               CurrencyPlus         null,
Price7               CurrencyPlus         null,
Qty1                 QuantityPlus         null,
Qty2                 QuantityPlus         null,
Qty3                 QuantityPlus         null,
Qty4                 QuantityPlus         null,
Qty5                 QuantityPlus         null,
Qty6                 QuantityPlus         null,
Qty7                 QuantityPlus         null,
MinQty1              QuantityPlus         null,
MinQty2              QuantityPlus         null,
MinQty3              QuantityPlus         null,
MinQty4              QuantityPlus         null,
MinQty5              QuantityPlus         null,
MinQty6              QuantityPlus         null,
MinQty7              QuantityPlus         null,
UnitMeasure1         varchar(20)          null,
UnitMeasure2         varchar(20)          null,
UnitMeasure3         varchar(20)          null,
UnitMeasure4         varchar(20)          null,
UnitMeasure5         varchar(20)          null,
UnitMeasure6         varchar(20)          null,
UnitMeasure7         varchar(20)          null,
LastModified         DateWithoutTime      not null,
NewPrice1            CurrencyPlus         null,
NewPrice2            CurrencyPlus         null,
NewPrice3            CurrencyPlus         null,
NewPrice4            CurrencyPlus         null,
NewPrice5            CurrencyPlus         null,
NewPrice6            CurrencyPlus         null,
NewPrice7            CurrencyPlus         null,
EffectiveDate        DateWithoutTime      null,
ApproveDate          DateWithoutTime      null,
FlagUpDown1          Flag                 null,
FlagUpDown2          Flag                 null,
FlagUpDown3          Flag                 null,
FlagUpDown4          Flag                 null,
FlagUpDown5          Flag                 null,
FlagUpDown7          Flag                 null,
FlagUpDown6          Flag                 null,
StatusApprove        Status               null,
Disc1_1              Disc                 null,
Disc1_2              Disc                 null,
Disc1_3              Disc                 null,
Disc1_4              Disc                 null,
Disc1_5              Disc                 null,
Disc1_6              Disc                 null,
Disc1_7              Disc                 null
);

comment on column Price.StatusApprove is
'0 = Entry
1 = Approved
2 = Process';

alter table Price
   add constraint PK_Price primary key (ItemId);

/*==============================================================*/
/* Table: Project                                               */
/*==============================================================*/
create table Project (
ProjectId            varchar(10)          not null,
ProjectName          varchar(40)          not null,
DateStart            DateWithoutTime      null,
DateEnd              DateWithoutTime      null,
ContactPerson        varchar(25)          null,
Memo                 text                 null
);

alter table Project
   add constraint PK_Project primary key (ProjectId);

/*==============================================================*/
/* Table: Province                                              */
/*==============================================================*/
create table Province (
CountryId            varchar(3)           not null,
ProvinceId           varchar(10)          not null,
ProvinceName         varchar(50)          not null
);

alter table Province
   add constraint PK_Province primary key (ProvinceId);

/*==============================================================*/
/* Table: PurchaseCategory                                      */
/*==============================================================*/
create table PurchaseCategory (
PurchaseCategoryId   VARCHAR(5)           not null,
PurchaseCategoryName VARCHAR(15)          not null,
Prefix               VARCHAR(5)           not null,
FlagFix              Flag                 null,
FlagAutomatic        Flag                 null
);

alter table PurchaseCategory
   add constraint PK_PurchaseCategory primary key (PurchaseCategoryId);

/*==============================================================*/
/* Table: PurchaseInvoiceDt                                     */
/*==============================================================*/
create table PurchaseInvoiceDt (
PurchaseInvoiceId    varchar(15)          not null,
No                   INT4                 not null,
ItemId               ItemId               not null,
EmployeeId           varchar(10)          not null,
ItemText             varchar(30)          null,
ExpiredDate          DateWithoutTime      not null,
Qty                  QuantityPlusWithoutZero not null,
QtyReturnLeft        QuantityPlus         null,
Price                CurrencyPlus         not null,
DiscItem             Disc                 null,
DiscItemPrice        CurrencyPlus         null,
DiscItem2            Disc                 null,
DiscItemPrice2       CurrencyPlus         null,
VoucherItem          CurrencyPlus         null,
Amount               CurrencyPlus         null,
PurchaseOrderId      varchar(15)          null,
PurchaseOrderNo      INT4                 null,
StatusColor          Status               not null
);

alter table PurchaseInvoiceDt
   add constraint PK_PurchaseInvoiceDt primary key (PurchaseInvoiceId, No);

/*==============================================================*/
/* Table: PurchaseInvoiceHd                                     */
/*==============================================================*/
create table PurchaseInvoiceHd (
PurchaseInvoiceId    varchar(15)          not null,
PurchaseInvoiceDate  DateWithoutTime      not null,
VendorId             varchar(10)          not null,
VendorPurchaseInvoiceId varchar(20)          null,
WarehouseId          varchar(10)          not null,
OutletId             varchar(10)          null,
ProjectId            varchar(10)          null,
ShippingId           varchar(10)          null,
PurchaseCategoryId   VARCHAR(5)           not null,
EmployeeId           varchar(10)          not null,
CurrencyId           varchar(10)          not null,
Kurs                 CurrencyPlus         not null,
Salesman             varchar(15)          null,
InvoiceDueDay        int                  null default '0',
Amount               CurrencyPlus         not null,
Disc                 Disc                 not null,
DiscAmount           CurrencyPlus         not null,
Disc2                Disc                 not null,
DiscAmount2          CurrencyPlus         not null,
Voucher              varchar(20)          null,
VoucherAmount        CurrencyPlus         not null,
Tax                  Disc                 not null,
TaxAmount            CurrencyPlus         not null,
TaxNumber            VARCHAR(30)          null,
TaxDate              DateWithoutTime      null,
PPH22                Disc                 not null,
PPH22Amount          CurrencyPlus         not null,
Meterai              CurrencyPlus         not null,
TotalAmount          CurrencyPlus         not null,
OutstandingTotalAmount CurrencyPlus         not null,
StatementMemo        text                 null,
InternalMemo         text                 null,
CounterPrint         integer              null default '0',
StatusApprove        Status               not null,
FlagKonsinyasi       Flag                 not null
);

alter table PurchaseInvoiceHd
   add constraint PK_PurchaseInvoiceHd primary key (PurchaseInvoiceId);

/*==============================================================*/
/* Table: PurchaseOrderDt                                       */
/*==============================================================*/
create table PurchaseOrderDt (
PurchaseOrderId      varchar(15)          not null,
No                   INT4                 not null,
ItemId               ItemId               not null,
EmployeeId           varchar(10)          not null,
ItemText             varchar(30)          null,
Qty                  QuantityPlus         not null,
QtyOutstanding       QuantityPlus         null,
Price                CurrencyPlus         not null,
DiscItem             Disc                 null,
DiscItemPrice        CurrencyPlus         null,
DiscItem2            Disc                 null,
DiscItemPrice2       CurrencyPlus         null,
VoucherItem          CurrencyPlus         null,
Amount               CurrencyPlus         null
);

alter table PurchaseOrderDt
   add constraint PK_PurchaseOrderDt primary key (PurchaseOrderId, No);

/*==============================================================*/
/* Table: PurchaseOrderHd                                       */
/*==============================================================*/
create table PurchaseOrderHd (
PurchaseOrderId      varchar(15)          not null,
PurchaseOrderDate    DateWithoutTime      not null,
VendorId             varchar(10)          not null,
VendorPurchaseOrderId varchar(20)          null,
ProjectId            varchar(10)          null,
OutletId             varchar(10)          null,
EmployeeId           varchar(10)          not null,
Amount               CurrencyPlus         not null,
Disc                 Disc                 not null,
DiscAmount           CurrencyPlus         not null,
Disc2                Disc                 not null,
DiscAmount2          CurrencyPlus         not null,
Voucher              varchar(20)          null,
VoucherAmount        CurrencyPlus         not null,
Tax                  Disc                 not null,
TaxAmount            CurrencyPlus         not null,
PPH22                Disc                 not null,
PPH22Amount          CurrencyPlus         not null,
TotalAmount          CurrencyPlus         not null,
StatementMemo        text                 null,
InternalMemo         text                 null,
CounterPrint         integer              null default '0',
StatusApprove        Status               not null
);

alter table PurchaseOrderHd
   add constraint PK_PurchaseOrderHd primary key (PurchaseOrderId);

/*==============================================================*/
/* Table: PurchasePayment                                       */
/*==============================================================*/
create table PurchasePayment (
PurchasePaymentId    varchar(15)          not null,
PurchasePaymentDate  DateWithoutTime      not null,
VendorId             varchar(10)          null,
CashRegisterTransactionId varchar(15)          null,
EmployeeId           varchar(10)          not null,
StatementMemo        text                 null,
InternalMemo         text                 null,
CounterPrint         integer              null default '0',
StatusApprove        Status               not null,
FlagAutomatic        Flag                 not null
);

alter table PurchasePayment
   add constraint PK_PurchasePayment primary key (PurchasePaymentId);

/*==============================================================*/
/* Table: PurchasePaymentDt                                     */
/*==============================================================*/
create table PurchasePaymentDt (
PurchasePaymentId    varchar(15)          not null,
No                   INT4                 not null,
PurchaseInvoiceId    varchar(15)          not null,
PaymentTypeId        varchar(5)           not null,
GiroNumber           varchar(20)          null,
EmployeeId           varchar(10)          not null,
CurrencyId           varchar(10)          not null,
Kurs                 CurrencyPlus         not null,
OnHandAmount         Currency             null,
Amount               Currency             null,
Shortage             Currency             null,
ReferenceId          varchar(15)          null
);

comment on column PurchasePaymentDt.OnHandAmount is
'Jml yang diterima';

comment on column PurchasePaymentDt.Shortage is
'Jml yang dikembalikan';

alter table PurchasePaymentDt
   add constraint PK_PurchasePaymentDt primary key (PurchasePaymentId, No);

/*==============================================================*/
/* Table: PurchasePrice                                         */
/*==============================================================*/
create table PurchasePrice (
ItemId               ItemId               not null,
VendorId             varchar(10)          not null,
LastPI               varchar(15)          null,
LastPINo             INT4                 null,
Price                Currency             not null,
DiscItem             Disc                 null,
DiscItemPrice        Currency             null,
DiscItem2            Disc                 null,
DiscItemPrice2       CurrencyPlus         null,
DateModified         DateWithoutTime      null
);

alter table PurchasePrice
   add constraint PK_PurchasePrice primary key (ItemId, VendorId);

/*==============================================================*/
/* Table: PurchaseReturnDt                                      */
/*==============================================================*/
create table PurchaseReturnDt (
PurchaseReturnId     varchar(15)          not null,
No                   INT4                 not null,
PurchaseInvoiceId    varchar(15)          not null,
NoPI                 INT4                 not null,
ItemId               ItemId               not null,
EmployeeId           varchar(10)          not null,
ItemText             varchar(30)          null,
Qty                  QuantityPlusWithoutZero not null,
Price                CurrencyPlus         not null,
DiscItem             Disc                 null,
DiscItemPrice        CurrencyPlus         null,
DiscItem2            Disc                 null,
DiscItemPrice2       CurrencyPlus         null,
VoucherItem          CurrencyPlus         null,
Amount               CurrencyPlus         null,
ExpiredDate          DateWithoutTime      not null
);

alter table PurchaseReturnDt
   add constraint PK_PurchaseReturnDt primary key (PurchaseReturnId, No);

/*==============================================================*/
/* Table: PurchaseReturnHd                                      */
/*==============================================================*/
create table PurchaseReturnHd (
PurchaseReturnId     varchar(15)          not null,
PurchaseReturnDate   DateWithoutTime      not null,
VendorPurchaseReturnId varchar(20)          null,
VendorId             varchar(10)          not null,
WarehouseId          varchar(10)          not null,
InvoiceDueDay        INT4                 null default '0',
CurrencyId           varchar(10)          not null,
Kurs                 CurrencyPlus         not null,
Amount               CurrencyPlus         not null,
Disc                 Disc                 not null,
DiscAmount           CurrencyPlus         not null,
Disc2                Disc                 not null,
DiscAmount2          CurrencyPlus         not null,
Voucher              varchar(20)          null,
VoucherAmount        CurrencyPlus         not null,
Tax                  Disc                 not null,
TaxAmount            CurrencyPlus         not null,
PPH22                Disc                 not null,
PPH22Amount          CurrencyPlus         not null,
Meterai              CurrencyPlus         not null,
TotalAmount          CurrencyPlus         not null,
OutstandingTotalAmount CurrencyPlus         not null,
ReferenceId          varchar(15)          null,
StatementMemo        text                 null,
InternalMemo         text                 null,
OutletId             varchar(10)          null,
EmployeeId           varchar(10)          not null,
CounterPrint         INT2                 null,
StatusApprove        Status               not null
);

alter table PurchaseReturnHd
   add constraint PK_PurchaseReturnHd primary key (PurchaseReturnId);

/*==============================================================*/
/* Table: PurchaseReturnPaymentDt                               */
/*==============================================================*/
create table PurchaseReturnPaymentDt (
PurchaseReturnPaymentId varchar(15)          not null,
No                   INT4                 not null,
PurchaseReturnId     varchar(15)          not null,
PaymentTypeId        varchar(5)           not null,
GiroNumber           varchar(20)          null,
EmployeeId           varchar(10)          not null,
CurrencyId           varchar(10)          not null,
Kurs                 CurrencyPlus         not null,
Amount               Currency             null,
ReferenceId          varchar(15)          null
);

alter table PurchaseReturnPaymentDt
   add constraint PK_PurchaseReturnPaymentDt primary key (PurchaseReturnPaymentId, No);

/*==============================================================*/
/* Table: PurchaseReturnPaymentHd                               */
/*==============================================================*/
create table PurchaseReturnPaymentHd (
PurchaseReturnPaymentId varchar(15)          not null,
PurchaseReturnPaymentDate DateWithoutTime      not null,
VendorId             varchar(10)          null,
EmployeeId           varchar(10)          not null,
StatementMemo        text                 null,
InternalMemo         text                 null,
CounterPrint         integer              null default '0',
StatusApprove        Status               not null,
FlagAutomatic        Flag                 not null
);

alter table PurchaseReturnPaymentHd
   add constraint PK_PurchaseReturnPaymentHd primary key (PurchaseReturnPaymentId);

/*==============================================================*/
/* Table: RegisterSalesDt                                       */
/*==============================================================*/
create table RegisterSalesDt (
RegisterSalesId      varchar(20)          not null,
No                   INT4                 not null,
ItemId               ItemId               not null,
Qty                  QuantityPlusWithoutZero not null,
QtyDisplay           QuantityPlusWithoutZero null,
Price                CurrencyPlus         not null,
PriceDisplay         CurrencyPlus         null,
DiscItem             Disc                 null,
DiscItemPrice        CurrencyPlus         null,
DiscItem2            Disc                 null,
DiscItemPrice2       CurrencyPlus         null,
VoucherItem          CurrencyPlus         null,
Amount               CurrencyPlus         null,
PriceLevel           Integer              null default '1',
PriceLevelUnitMeasure VARCHAR(15)          null,
StatusColor          Status               not null
);

alter table RegisterSalesDt
   add constraint PK_RegisterSalesDt primary key (RegisterSalesId, No);

/*==============================================================*/
/* Table: RegisterSalesHd                                       */
/*==============================================================*/
create table RegisterSalesHd (
RegisterSalesId      varchar(20)          not null,
CashRegisterTransactionId varchar(15)          not null,
RegisterSalesDate    StampAuto            not null,
Amount               CurrencyPlus         not null,
Disc                 Disc                 not null,
DiscAmount           CurrencyPlus         not null,
Disc2                Disc                 not null,
DiscAmount2          CurrencyPlus         not null,
Voucher              varchar(20)          null,
VoucherAmount        CurrencyPlus         not null,
Tax                  Disc                 not null,
TaxAmount            CurrencyPlus         not null,
RoundingAmount       Currency             null,
TotalAmount          CurrencyPlus         not null,
OutstandingTotalAmount CurrencyPlus         not null,
StatementMemo        text                 null,
InternalMemo         text                 null,
CounterPrint         integer              null default '0',
StatusApprove        Status               not null
);

alter table RegisterSalesHd
   add constraint PK_RegisterSalesHd primary key (RegisterSalesId);

/*==============================================================*/
/* Table: RegisterSalesPayment                                  */
/*==============================================================*/
create table RegisterSalesPayment (
RegisterSalesId      varchar(20)          not null,
No                   INT4                 not null,
PaymentTypeId        varchar(5)           not null,
CardNo               varchar(20)          null,
CardHolderName       varchar(30)          null,
OnHandAmount         Currency             null,
Amount               Currency             null,
Shortage             Currency             null
);

comment on column RegisterSalesPayment.OnHandAmount is
'Jml yang diterima';

comment on column RegisterSalesPayment.Amount is
'Jml yang disimpan DB';

comment on column RegisterSalesPayment.Shortage is
'Jml yang dikembalikan';

alter table RegisterSalesPayment
   add constraint PK_RegisterSalesPayment primary key (RegisterSalesId, No);

/*==============================================================*/
/* Table: Report                                                */
/*==============================================================*/
create table Report (
ProgramId            varchar(30)          not null,
ReportId             varchar(20)          not null,
ReportCategoryId     INT4                 null,
OrderNo              INT2                 null,
ReportName           varchar(40)          not null,
Name1                varchar(40)          null,
Name2                varchar(40)          null,
Name3                varchar(40)          null,
Name4                varchar(40)          null,
Name5                varchar(40)          null,
Name6                varchar(40)          null,
Printer              varchar(40)          null,
FileBlob             bytea                null,
FlagShowDialog       char(1)              not null default '0',
FlagShowProgress     char(1)              not null default '0',
FlagHide             char(1)              not null default '0',
FlagDotMatrix        char(1)              not null default '0'
);

alter table Report
   add constraint PK_TBGNREPORT primary key (ProgramId, ReportId);

/*==============================================================*/
/* Table: ReportCategory                                        */
/*==============================================================*/
create table ReportCategory (
ReportCategoryId     SERIAL not null,
ReportCategoryName   varchar(20)          not null,
FlagHide             char(1)              null default '0'
);

alter table ReportCategory
   add constraint PK_ReportCategory primary key (ReportCategoryId);

/*==============================================================*/
/* Table: ReportCounter                                         */
/*==============================================================*/
create table ReportCounter (
ProgramId            varchar(30)          not null,
ReportId             varchar(20)          not null,
EmployeeId           varchar(10)          not null,
Tanggal              DATE                 not null,
Counter              INT4                 null default '0'
);

alter table ReportCounter
   add constraint PK_ReportCounter primary key (ProgramId, ReportId, EmployeeId, Tanggal);

/*==============================================================*/
/* Table: RevenueBalance                                        */
/*==============================================================*/
create table RevenueBalance (
ItemId               ItemId               not null,
Year                 varchar(4)           not null,
Value1               Currency             null,
Value2               Currency             null,
Value3               Currency             null,
Value4               Currency             null,
Value5               Currency             null,
Value6               Currency             null,
Value7               Currency             null,
Value8               Currency             null,
Value9               Currency             null,
Value10              Currency             null,
Value11              Currency             null,
Value12              Currency             null,
ValueTotal1          Currency             null,
ValueTotal2          Currency             null,
ValueTotal3          Currency             null,
ValueTotal4          Currency             null,
ValueTotal5          Currency             null,
ValueTotal6          Currency             null,
ValueTotal7          Currency             null,
ValueTotal8          Currency             null,
ValueTotal9          Currency             null,
ValueTotal10         Currency             null,
ValueTotal11         Currency             null,
ValueTotal12         Currency             null
);

comment on column RevenueBalance.Value1 is
'Before minus return';

comment on column RevenueBalance.ValueTotal1 is
'After minus return';

alter table RevenueBalance
   add constraint PK_RevenueBalance primary key (ItemId, Year);

/*==============================================================*/
/* Table: SalePrice                                             */
/*==============================================================*/
create table SalePrice (
ItemId               ItemId               not null,
CustomerId           varchar(10)          not null,
LastSI               varchar(15)          null,
LastSINo             INT4                 null,
Price                Currency             not null,
DiscItem             Disc                 null,
DiscItemPrice        Currency             null,
DiscItem2            Disc                 null,
DiscItemPrice2       CurrencyPlus         null,
DateModified         DateWithoutTime      null
);

alter table SalePrice
   add constraint PK_SalePrice primary key (ItemId, CustomerId);

/*==============================================================*/
/* Table: SalesCategory                                         */
/*==============================================================*/
create table SalesCategory (
SalesCategoryId      VARCHAR(5)           not null,
SalesCategoryName    VARCHAR(15)          not null,
Prefix               VARCHAR(5)           not null,
FlagFix              Flag                 null,
FlagAutomatic        Flag                 null
);

alter table SalesCategory
   add constraint PK_SalesCategory primary key (SalesCategoryId);

/*==============================================================*/
/* Table: SalesInvoiceDt                                        */
/*==============================================================*/
create table SalesInvoiceDt (
SalesInvoiceId       varchar(15)          not null,
No                   INT4                 not null,
ItemId               ItemId               not null,
EmployeeId           varchar(10)          not null,
ItemText             varchar(30)          null,
ExpiredDate          DateWithoutTime      not null,
Qty                  QuantityPlusWithoutZero not null,
QtyDisplay           QuantityPlusWithoutZero null,
QtyReturnLeft        QuantityPlus         null,
Price                CurrencyPlus         not null,
PriceDisplay         CurrencyPlus         null,
PricePrint           CurrencyPlus         null,
DiscItem             Disc                 null,
DiscItemPrice        CurrencyPlus         null,
DiscItem2            Disc                 null,
DiscItemPrice2       CurrencyPlus         null,
VoucherItem          CurrencyPlus         null,
Amount               CurrencyPlus         null,
PriceLevel           Integer              null default '1',
PriceLevelUnitMeasure VARCHAR(15)          null,
DefaultMargin        Disc                 null,
SalesOrderId         varchar(60)          null,
SalesOrderNo         INT4                 null,
StatusColor          Status               not null
);

comment on column SalesInvoiceDt.Price is
'Harga sesungguhnya';

comment on column SalesInvoiceDt.PriceDisplay is
'Harga level';

comment on column SalesInvoiceDt.PricePrint is
'Harga yang dicetak pada nota';

comment on column SalesInvoiceDt.DefaultMargin is
'ReadOnly, Untuk keperluan item service & non-stock saja';

alter table SalesInvoiceDt
   add constraint PK_SalesInvoiceDt primary key (SalesInvoiceId, No);

/*==============================================================*/
/* Table: SalesInvoiceHd                                        */
/*==============================================================*/
create table SalesInvoiceHd (
SalesInvoiceId       varchar(15)          not null,
SalesInvoiceDate     DateWithoutTime      not null,
CustomerId           varchar(10)          not null,
SalesInvoiceIdInternal VARCHAR(20)          null,
CashRegisterTransactionId VARCHAR(15)          null,
WarehouseId          varchar(10)          not null,
OutletId             varchar(10)          null,
ProjectId            varchar(10)          null,
ShippingId           varchar(10)          null,
SalesCategoryId      VARCHAR(5)           not null,
EmployeeId           varchar(10)          not null,
SalesmanId           varchar(10)          null,
CurrencyId           varchar(10)          not null,
Kurs                 CurrencyPlus         not null,
InvoiceDueDay        integer              null default '0',
Amount               CurrencyPlus         not null,
Disc                 Disc                 not null,
DiscAmount           CurrencyPlus         not null,
Disc2                Disc                 not null,
DiscAmount2          CurrencyPlus         not null,
Voucher              varchar(20)          null,
VoucherAmount        CurrencyPlus         not null,
Tax                  Disc                 not null,
TaxAmount            CurrencyPlus         not null,
TaxNumber            VARCHAR(30)          null,
TaxDate              DateWithoutTime      null,
PPH22                Disc                 not null,
PPH22Amount          CurrencyPlus         not null,
RoundingAmount       Currency             null,
Meterai              CurrencyPlus         not null,
TotalAmount          CurrencyPlus         not null,
OutstandingTotalAmount CurrencyPlus         not null,
StatementMemo        text                 null,
InternalMemo         text                 null,
CounterPrint         integer              null default '0',
StatusApprove        Status               not null,
Margin               Currency             null,
TotalMargin          Currency             null
);

alter table SalesInvoiceHd
   add constraint PK_SalesInvoiceHd primary key (SalesInvoiceId);

/*==============================================================*/
/* Table: SalesOrderDt                                          */
/*==============================================================*/
create table SalesOrderDt (
SalesOrderId         varchar(15)          not null,
No                   INT4                 not null,
ItemId               ItemId               not null,
EmployeeId           varchar(10)          not null,
ItemText             varchar(30)          null,
Qty                  QuantityPlus         not null,
QtyOutstanding       QuantityPlus         null,
Price                CurrencyPlus         not null,
DiscItem             Disc                 null,
DiscItemPrice        CurrencyPlus         null,
DiscItem2            Disc                 null,
DiscItemPrice2       CurrencyPlus         null,
VoucherItem          CurrencyPlus         null,
Amount               CurrencyPlus         null
);

alter table SalesOrderDt
   add constraint PK_SalesOrderDt primary key (SalesOrderId, No);

/*==============================================================*/
/* Table: SalesOrderHd                                          */
/*==============================================================*/
create table SalesOrderHd (
SalesOrderId         varchar(15)          not null,
SalesOrderDate       DateWithoutTime      not null,
CustomerId           varchar(10)          null,
ProjectId            varchar(10)          null,
OutletId             varchar(10)          null,
EmployeeId           varchar(10)          not null,
CustomerSalesOrderId varchar(20)          null,
Amount               CurrencyPlus         not null,
Disc                 Disc                 not null,
DiscAmount           CurrencyPlus         not null,
Disc2                Disc                 not null,
DiscAmount2          CurrencyPlus         not null,
Voucher              varchar(20)          null,
VoucherAmount        CurrencyPlus         not null,
Tax                  Disc                 not null,
TaxAmount            CurrencyPlus         not null,
PPH22                Disc                 not null,
PPH22Amount          CurrencyPlus         not null,
TotalAmount          CurrencyPlus         not null,
StatementMemo        text                 null,
InternalMemo         text                 null,
CounterPrint         integer              null default '0',
StatusApprove        Status               not null
);

alter table SalesOrderHd
   add constraint PK_SalesOrderHd primary key (SalesOrderId);

/*==============================================================*/
/* Table: SalesPayment                                          */
/*==============================================================*/
create table SalesPayment (
SalesPaymentId       varchar(15)          not null,
SalesPaymentDate     DateWithoutTime      not null,
CustomerId           varchar(10)          not null,
CashRegisterTransactionId varchar(15)          null,
EmployeeId           varchar(10)          not null,
StatementMemo        text                 null,
InternalMemo         text                 null,
CounterPrint         Integer              null default '0',
StatusApprove        Status               not null,
FlagAutomatic        Flag                 not null
);

alter table SalesPayment
   add constraint PK_SalesPayment primary key (SalesPaymentId);

/*==============================================================*/
/* Table: SalesPaymentDt                                        */
/*==============================================================*/
create table SalesPaymentDt (
SalesPaymentId       varchar(15)          not null,
No                   INT4                 not null,
SalesInvoiceId       varchar(15)          not null,
PaymentTypeId        varchar(5)           not null,
GiroNumber           varchar(20)          null,
EmployeeId           varchar(10)          not null,
CardNo               varchar(20)          null,
CardHolderName       varchar(30)          null,
CurrencyId           varchar(10)          not null,
Kurs                 CurrencyPlus         not null,
OnHandAmount         Currency             null,
Amount               Currency             null,
Shortage             Currency             null,
ReferenceId          varchar(15)          null
);

comment on column SalesPaymentDt.OnHandAmount is
'Jml yang diterima';

comment on column SalesPaymentDt.Shortage is
'Jml yang dikembalikan';

alter table SalesPaymentDt
   add constraint PK_SalesPaymentDt primary key (SalesPaymentId, No);

/*==============================================================*/
/* Table: SalesReturnDt                                         */
/*==============================================================*/
create table SalesReturnDt (
SalesReturnId        varchar(15)          not null,
No                   INT4                 not null,
SalesInvoiceId       varchar(15)          not null,
NoSI                 INT4                 not null,
ItemId               ItemId               not null,
EmployeeId           varchar(10)          not null,
ItemText             varchar(30)          null,
Qty                  QuantityPlusWithoutZero not null,
COGSDate             DateWithoutTime      null,
Price                CurrencyPlus         not null,
DiscItem             Disc                 null,
DiscItemPrice        CurrencyPlus         null,
DiscItem2            Disc                 null,
DiscItemPrice2       CurrencyPlus         null,
VoucherItem          CurrencyPlus         null,
Amount               CurrencyPlus         null,
PriceInvoice         CurrencyPlus         null,
DiscItemInvoice      Disc                 null,
DiscItemPriceInvoice CurrencyPlus         null,
DiscItemInvoice2     Disc                 null,
DiscItemPriceInvoice2 CurrencyPlus         null,
VoucherItemInvoice   CurrencyPlus         null,
AmountInvoice        CurrencyPlus         null,
ExpiredDate          DateWithoutTime      not null,
TransactionDtId      INT4                 null
);

alter table SalesReturnDt
   add constraint PK_SalesReturnDt primary key (SalesReturnId, No);

/*==============================================================*/
/* Table: SalesReturnHd                                         */
/*==============================================================*/
create table SalesReturnHd (
SalesReturnId        varchar(15)          not null,
SalesReturnDate      DateWithoutTime      not null,
CustomerId           varchar(10)          not null,
SalesReturnIdInternal VARCHAR(20)          null,
WarehouseId          varchar(10)          not null,
InvoiceDueDay        int4                 null,
CurrencyId           varchar(10)          not null,
Kurs                 CurrencyPlus         not null,
Amount               CurrencyPlus         not null,
Disc                 Disc                 not null,
DiscAmount           CurrencyPlus         not null,
Disc2                Disc                 not null,
DiscAmount2          CurrencyPlus         not null,
Voucher              varchar(20)          null,
VoucherAmount        CurrencyPlus         not null,
Tax                  Disc                 not null,
TaxAmount            CurrencyPlus         not null,
PPH22                Disc                 not null,
PPH22Amount          CurrencyPlus         not null,
Meterai              CurrencyPlus         not null,
TotalAmount          CurrencyPlus         not null,
OutstandingTotalAmount CurrencyPlus         not null,
ReferenceId          varchar(15)          null,
StatementMemo        text                 null,
InternalMemo         text                 null,
OutletId             varchar(10)          null,
EmployeeId           varchar(10)          not null,
CounterPrint         INT2                 null,
StatusApprove        Status               null
);

alter table SalesReturnHd
   add constraint PK_SalesReturnHd primary key (SalesReturnId);

/*==============================================================*/
/* Table: SalesReturnPaymentDt                                  */
/*==============================================================*/
create table SalesReturnPaymentDt (
SalesReturnPaymentId varchar(15)          not null,
No                   INT4                 not null,
SalesReturnId        varchar(15)          not null,
PaymentTypeId        varchar(5)           not null,
GiroNumber           varchar(20)          null,
EmployeeId           varchar(10)          not null,
CurrencyId           varchar(10)          not null,
Kurs                 CurrencyPlus         not null,
Amount               Currency             null,
ReferenceId          varchar(15)          null
);

alter table SalesReturnPaymentDt
   add constraint PK_SalesReturnPaymentDt primary key (SalesReturnPaymentId, No);

/*==============================================================*/
/* Table: SalesReturnPaymentHd                                  */
/*==============================================================*/
create table SalesReturnPaymentHd (
SalesReturnPaymentId varchar(15)          not null,
SalesReturnPaymentDate DateWithoutTime      not null,
CustomerId           varchar(10)          null,
EmployeeId           varchar(10)          not null,
StatementMemo        text                 null,
InternalMemo         text                 null,
CounterPrint         integer              null default '0',
StatusApprove        Status               not null,
FlagAutomatic        Flag                 not null
);

alter table SalesReturnPaymentHd
   add constraint PK_SalesReturnPaymentHd primary key (SalesReturnPaymentId);

/*==============================================================*/
/* Table: Setup                                                 */
/*==============================================================*/
create table Setup (
ProgramId            varchar(30)          not null,
SetupId              varchar(30)          not null,
SetupName            varchar(50)          not null,
SetupValue           varchar(30)          null default '0'
);

alter table Setup
   add constraint PK_Setup primary key (ProgramId, SetupId);

/*==============================================================*/
/* Table: Shift                                                 */
/*==============================================================*/
create table Shift (
ShiftCode            VARCHAR(10)          not null,
ShiftName            VARCHAR(30)          not null,
StartTime            TIME                 not null,
EndTime              TIME                 not null
);

alter table Shift
   add constraint PK_Shift primary key (ShiftCode);

/*==============================================================*/
/* Table: Shipping                                              */
/*==============================================================*/
create table Shipping (
ShippingId           varchar(10)          not null,
CityId               varchar(5)           null,
ShippingName         varchar(40)          null,
ContactPerson        varchar(25)          null,
Address              varchar(50)          null,
Memo                 text                 null
);

alter table Shipping
   add constraint PK_Shipping primary key (ShippingId);

/*==============================================================*/
/* Table: StockExpired                                          */
/*==============================================================*/
create table StockExpired (
ItemId               ItemId               not null,
WarehouseId          varchar(10)          not null,
ExpiredDate          DateWithoutTime      not null,
Qty                  Quantity             null
);

alter table StockExpired
   add constraint PK_StockExpired primary key (ItemId, WarehouseId, ExpiredDate);

/*==============================================================*/
/* Table: StockOnHand                                           */
/*==============================================================*/
create table StockOnHand (
ItemId               ItemId               not null,
WarehouseId          varchar(10)          not null,
EndQty               Quantity             null,
EndValue             Currency             null
);

alter table StockOnHand
   add constraint PK_StockOnHand primary key (ItemId, WarehouseId);

/*==============================================================*/
/* Table: StockOnHandValue                                      */
/*==============================================================*/
create table StockOnHandValue (
ItemId               ItemId               not null,
WarehouseId          varchar(10)          not null,
Price                Currency             not null,
Date                 DateWithoutTime      not null,
Qty                  Quantity             null
);

alter table StockOnHandValue
   add constraint PK_StockOnHandValue primary key (ItemId, WarehouseId, Price, Date);

/*==============================================================*/
/* Table: TempBarcode                                           */
/*==============================================================*/
create table TempBarcode (
TempBarcodeId        VARCHAR(20)          not null,
No                   Integer              not null,
Barcode              VARCHAR(20)          not null,
BarcodeName          VARCHAR(20)          null,
Price                Currency             null,
VendorId             varchar(10)          null
);

alter table TempBarcode
   add constraint PK_TempBarcode primary key (TempBarcodeId, No, Barcode);

/*==============================================================*/
/* Table: TempPrice                                             */
/*==============================================================*/
create table TempPrice (
TempPriceId          varchar(20)          not null,
ItemId               ItemId               not null,
Price1               CurrencyPlus         null,
Price2               CurrencyPlus         null,
Price3               CurrencyPlus         null,
Price4               CurrencyPlus         null,
Price5               CurrencyPlus         null,
Qty1                 QuantityPlus         null,
Qty2                 QuantityPlus         null,
Qty3                 QuantityPlus         null,
Qty4                 QuantityPlus         null,
Qty5                 QuantityPlus         null,
UnitMeasure1         varchar(5)           null,
UnitMeasure2         varchar(5)           null,
UnitMeasure3         varchar(5)           null,
UnitMeasure4         varchar(5)           null,
UnitMeasure5         varchar(5)           null,
Pilih                integer              null default '0'
);

alter table TempPrice
   add constraint PK_TempPrice primary key (TempPriceId, ItemId);

/*==============================================================*/
/* Table: TempPricePrint                                        */
/*==============================================================*/
create table TempPricePrint (
TempPricePrintId     varchar(20)          not null,
ItemId               varchar(20)          not null,
Price1               CurrencyPlus         null,
Price2               CurrencyPlus         null,
Price3               CurrencyPlus         null,
Price4               CurrencyPlus         null,
Price5               CurrencyPlus         null,
Qty1                 QuantityPlus         null,
Qty2                 QuantityPlus         null,
Qty3                 QuantityPlus         null,
Qty4                 QuantityPlus         null,
Qty5                 QuantityPlus         null,
UnitMeasure1         varchar(5)           null,
UnitMeasure2         varchar(5)           null,
UnitMeasure3         varchar(5)           null,
UnitMeasure4         varchar(5)           null,
UnitMeasure5         varchar(5)           null,
LastModified         DateWithoutTime      null,
EmployeeId           VARCHAR(10)          null,
Pilih                Integer              null
);

alter table TempPricePrint
   add constraint PK_TempPricePrint primary key (TempPricePrintId, ItemId);

/*==============================================================*/
/* Table: TempPrintBarcode                                      */
/*==============================================================*/
create table TempPrintBarcode (
TempPrintBarcodeId   varchar(20)          not null,
PurchaseInvoiceId    varchar(15)          not null,
PurchaseInvoiceDate  DateWithoutTime      not null,
VendorId             varchar(10)          null,
VendorName           varchar(40)          null,
WarehouseId          varchar(10)          null,
WarehouseName        varchar(40)          null,
ItemId               ItemId               not null,
ItemName             varchar(40)          null,
Qty                  QuantityPlus         null,
No                   Integer              not null,
ExpiredDate          DateWithoutTime      not null,
Cetak                Integer              null,
Pilih                Integer              null
);

alter table TempPrintBarcode
   add constraint PK_TempPrintBarcode primary key (TempPrintBarcodeId, PurchaseInvoiceId, ItemId, No);

/*==============================================================*/
/* Table: Transaction                                           */
/*==============================================================*/
create table Transaction (
TransactionId        SERIAL               not null,
TransactionDate      DateWithoutTime      not null,
ReferenceId          varchar(15)          not null,
No                   INT4                 not null,
TransactionTypeId    varchar(10)          not null,
ItemId               ItemId               not null,
WarehouseSource      varchar(10)          null,
WarehouseDest        varchar(10)          null,
Qty                  Quantity             not null,
Price                Currency             not null,
DefaultMargin        Disc                 null,
Memo                 text                 null,
SystemStamp          StampAuto            null
);

comment on column Transaction.DefaultMargin is
'ReadOnly, Untuk keperluan item service & non-stock saja';

alter table Transaction
   add constraint PK_Transaction primary key (TransactionId);

/*==============================================================*/
/* Table: TransactionBalance                                    */
/*==============================================================*/
create table TransactionBalance (
TransactionTypeId    varchar(10)          not null,
ItemId               ItemId               not null,
WarehouseId          varchar(10)          not null,
Year                 varchar(4)           not null,
Qty1                 Quantity             null,
Qty2                 Quantity             null,
Qty3                 Quantity             null,
Qty4                 Quantity             null,
Qty5                 Quantity             null,
Qty6                 Quantity             null,
Qty7                 Quantity             null,
Qty8                 Quantity             null,
Qty9                 Quantity             null,
Qty10                Quantity             null,
Qty11                Quantity             null,
Qty12                Quantity             null,
Value1               Currency             null,
Value2               Currency             null,
Value3               Currency             null,
Value4               Currency             null,
Value5               Currency             null,
Value6               Currency             null,
Value7               Currency             null,
Value8               Currency             null,
Value9               Currency             null,
Value10              Currency             null,
Value11              Currency             null,
Value12              Currency             null
);

alter table TransactionBalance
   add constraint PK_TransactionBalance primary key (WarehouseId, TransactionTypeId, ItemId, Year);

/*==============================================================*/
/* Table: TransactionDt                                         */
/*==============================================================*/
create table TransactionDt (
TransactionDtId      SERIAL               not null,
TransactionId        INT4                 not null,
Qty                  Quantity             not null,
QtyReturn            Quantity             null,
COGS                 Currency             not null,
DateCOGS             DateWithoutTime      not null,
SalePrice            Currency             null,
TotalCOGS            Currency             null,
TotalSales           Currency             null,
TotalReturn          Currency             null,
Margin               Currency             null,
Percent              PercentBig           null,
TotalMargin          Currency             null,
TotalPercent         PercentBig           null
);

alter table TransactionDt
   add constraint PK_TransactionDt primary key (TransactionDtId);

alter table TransactionDt
   add constraint AK_TransactionDt unique (TransactionId, COGS, DateCOGS, Qty);

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
Value12              INT8                 null default '0'
);

alter table TransactionRegistry
   add constraint PK_TransactionRegistry primary key (TableName, Prefix, Year);

/*==============================================================*/
/* Table: TransactionType                                       */
/*==============================================================*/
create table TransactionType (
TransactionTypeId    varchar(10)          not null,
TransactionTypeName  varchar(50)          not null,
StatusTransaction    Status               null,
FlagFix              Flag                 not null
);

alter table TransactionType
   add constraint PK_TransactionType primary key (TransactionTypeId);

/*==============================================================*/
/* Table: Vendor                                                */
/*==============================================================*/
create table Vendor (
VendorId             varchar(10)          not null,
VendorName           varchar(40)          not null,
ContactPerson        varchar(25)          null,
CategoryId           varchar(10)          null,
Address              varchar(100)         null,
CityId               varchar(5)           not null,
VendorIdParent       varchar(10)          null,
Email                varchar(50)          null,
Religi               varchar(10)          null,
MemberId             varchar(15)          null,
VendorSince          DateWithoutTime      not null,
NPWP                 varchar(15)          null,
CreditLimit          Currency             null,
InvoiceDue           INT2                 null,
DepositBalance       Currency             null,
Memo                 text                 null,
FlagShippingCost     Flag                 not null,
FlagPKP              Flag                 not null
);

comment on column Vendor.VendorSince is
'Tanggal kita join dengan supplier';

comment on column Vendor.CreditLimit is
'Batas AP';

comment on column Vendor.InvoiceDue is
'Default Jatuh Tempo Nota';

comment on column Vendor.FlagShippingCost is
'0 = Supplier tidak kena ongkos kirim
1 = Supplier kena ongkos kirim';

comment on column Vendor.FlagPKP is
'0 = Normal
1 = Perusahaan Kena Pajak';

alter table Vendor
   add constraint PK_Vendor primary key (VendorId);

/*==============================================================*/
/* Table: VendorPhone                                           */
/*==============================================================*/
create table VendorPhone (
VendorId             varchar(10)          not null,
PhoneName            varchar(10)          not null,
CountryExt           varchar(4)           null,
CityExt              varchar(4)           null,
Number               varchar(15)          not null,
ContactPerson        varchar(40)          null,
JobPosition          varchar(20)          null
);

alter table VendorPhone
   add constraint PK_VendorPhone primary key (VendorId, PhoneName);

/*==============================================================*/
/* Table: VendorShippingDetail                                  */
/*==============================================================*/
create table VendorShippingDetail (
ShippingId           varchar(10)          not null,
VendorId             varchar(10)          not null
);

alter table VendorShippingDetail
   add constraint PK_VendorShippingDetail primary key (ShippingId, VendorId);

/*==============================================================*/
/* Table: Warehouse                                             */
/*==============================================================*/
create table Warehouse (
WarehouseId          varchar(10)          not null,
WarehouseName        varchar(40)          null,
ContactPerson        varchar(25)          null,
Address              varchar(50)          null,
CityId               varchar(5)           null,
Memo                 text                 null,
FlagInactive         Flag                 not null
);

comment on column Warehouse.FlagInactive is
'0 = Active
1 = Resign';

alter table Warehouse
   add constraint PK_Warehouse primary key (WarehouseId);

/*==============================================================*/
/* Table: WarehouseRack                                         */
/*==============================================================*/
create table WarehouseRack (
RackCode             VARCHAR(15)          not null,
RackName             VARCHAR(30)          not null,
WarehouseId          varchar(10)          not null,
RackLocation1        VARCHAR(30)          null,
RackLocation2        VARCHAR(30)          null,
RackLocation3        VARCHAR(30)          null,
RackLocation4        VARCHAR(30)          null,
RackLocation5        VARCHAR(30)          null,
RackLocation6        VARCHAR(30)          null,
RackLocation7        VARCHAR(30)          null
);

alter table WarehouseRack
   add constraint PK_WarehouseRack primary key (RackCode);

alter table APAdjustmentCustomer
   add constraint FK_APAdjustmentCustomer_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table APAdjustmentCustomer
   add constraint FK_APAdjustmentCustomer_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table APAdjustmentCustomer
   add constraint FK_APAdjustmentCustomer_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete restrict on update cascade;

alter table APAdjustmentVendor
   add constraint FK_APAdjustmentVendor_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table APAdjustmentVendor
   add constraint FK_APAdjustmentVendor_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table APAdjustmentVendor
   add constraint FK_APAdjustmentVendor_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete restrict on update cascade;

alter table APBalanceCustomer
   add constraint FK_APBalanceCustomer_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete cascade on update cascade;

alter table APBalanceVendor
   add constraint FK_APBalanceVendor_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete cascade on update cascade;

alter table ARAdjustmentCustomer
   add constraint FK_ARAdjustmentCustomer_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table ARAdjustmentCustomer
   add constraint FK_ARAdjustmentCustomer_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table ARAdjustmentCustomer
   add constraint FK_ARAdjustmentCustomer_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete restrict on update cascade;

alter table ARAdjustmentVendor
   add constraint FK_ARAdjustmentVendor_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table ARAdjustmentVendor
   add constraint FK_ARAdjustmentVendor_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table ARAdjustmentVendor
   add constraint FK_ARAdjustmentVendor_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete restrict on update cascade;

alter table ARBalanceCustomer
   add constraint FK_ARBalanceCustomer_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete cascade on update cascade;

alter table ARBalanceVendor
   add constraint FK_ARBalanceVendor_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete cascade on update cascade;

alter table BackupPrice
   add constraint FK_BackupPrice_Item foreign key (ItemId)
      references Item (ItemId)
      on delete cascade on update cascade;

alter table BackupPrice
   add constraint FK_BackupPrice_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table Bank
   add constraint FK_Bank_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table BankAdjustment
   add constraint FK_BankAdjustment_Bank foreign key (AccountNo, BankId)
      references Bank (AccountNo, BankId)
      on delete restrict on update cascade;

alter table BankAdjustment
   add constraint FK_BankAdjustment_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table BankAdjustment
   add constraint FK_BankAdjustment_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table BankBalance
   add constraint FK_BankBalance_Bank foreign key (AccountNo, BankId)
      references Bank (AccountNo, BankId)
      on delete restrict on update restrict;

alter table BankTransaction
   add constraint FK_BankTransaction_Bank foreign key (AccountNo, BankId)
      references Bank (AccountNo, BankId)
      on delete restrict on update restrict;

alter table BankTransaction
   add constraint FK_BankTransaction_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete restrict on update restrict;

alter table BankTransaction
   add constraint FK_BankTransaction_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table BankTransaction
   add constraint FK_BankTransaction_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table BankTransaction
   add constraint FK_BankTransaction_Project foreign key (ProjectId)
      references Project (ProjectId)
      on delete restrict on update cascade;

alter table BankTransaction
   add constraint FK_BankTransaction_CashBankTransactionType foreign key (CashBankTransactionTypeId)
      references CashBankTransactionType (CashBankTransactionTypeId)
      on delete restrict on update restrict;

alter table BankTransaction
   add constraint FK_BankTransaction_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete restrict on update restrict;

alter table CashRegister
   add constraint FK_CashRegister_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete cascade on update restrict;

alter table CashRegister
   add constraint FK_CashRegister_Warehouse foreign key (WarehouseId)
      references Warehouse (WarehouseId)
      on delete cascade on update restrict;

alter table CashRegister
   add constraint FK_CashRegister_Outlet foreign key (OutletId)
      references Outlet (OutletId)
      on delete cascade on update restrict;

alter table CashRegisterTransaction
   add constraint FK_CashRegisterTransaction_CashRegister foreign key (CashRegisterId)
      references CashRegister (CashRegisterId)
      on delete cascade on update restrict;

alter table CashRegisterTransaction
   add constraint FK_CashRegisterTransaction_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table CashRegisterTransaction
   add constraint FK_CashRegisterTransaction_Shift foreign key (ShiftCode)
      references Shift (ShiftCode)
      on delete restrict on update cascade;

alter table CashTransaction
   add constraint FK_CashTransaction_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete restrict on update cascade;

alter table CashTransaction
   add constraint FK_CashTransaction_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table CashTransaction
   add constraint FK_CashTransaction_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table CashTransaction
   add constraint FK_CashTransaction_Project foreign key (ProjectId)
      references Project (ProjectId)
      on delete restrict on update cascade;

alter table CashTransaction
   add constraint FK_CashTransaction_CashBankTransactionType foreign key (CashBankTransactionTypeId)
      references CashBankTransactionType (CashBankTransactionTypeId)
      on delete restrict on update restrict;

alter table CashTransaction
   add constraint FK_CashTransaction_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete restrict on update cascade;

alter table City
   add constraint FK_City_Province foreign key (ProvinceId)
      references Province (ProvinceId)
      on delete cascade on update cascade;

alter table ComputerCounter
   add constraint FK_ComputerCounter_EngineGroupJob foreign key (EngineGroupJobCode)
      references EngineGroupJob (EngineGroupJobCode)
      on delete restrict on update cascade;

alter table ComputerCounter
   add constraint FK_ComputerCounter_CashRegisterTransaction foreign key (CashRegisterTransactionId)
      references CashRegisterTransaction (CashRegisterTransactionId)
      on delete restrict on update cascade;

alter table CoupleDt
   add constraint FK_CoupleDt_CoupleHd foreign key (CoupleId)
      references CoupleHd (CoupleId)
      on delete cascade on update restrict;

alter table CoupleDt
   add constraint FK_CoupleDt_Item foreign key (ItemId)
      references Item (ItemId)
      on delete restrict on update cascade;

alter table CoupleHd
   add constraint FK_CoupleHd_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table CoupleHd
   add constraint FK_CoupleHd_CashRegisterTransaction foreign key (CashRegisterTransactionId)
      references CashRegisterTransaction (CashRegisterTransactionId)
      on delete restrict on update cascade;

alter table CoupleHd
   add constraint FK_CoupleHd_Warehouse foreign key (WarehouseId)
      references Warehouse (WarehouseId)
      on delete restrict on update restrict;

alter table CoupleHd
   add constraint FK_CoupleHd_Item foreign key (ItemId)
      references Item (ItemId)
      on delete restrict on update cascade;

alter table CoupleHd
   add constraint FK_CoupleHd_Project foreign key (ProjectId)
      references Project (ProjectId)
      on delete restrict on update cascade;

alter table Customer
   add constraint FK_Customer_Category foreign key (CategoryId)
      references Category (CategoryId)
      on delete restrict on update cascade;

alter table Customer
   add constraint FK_Customer_City foreign key (CityId)
      references City (CityId)
      on delete restrict on update restrict;

alter table Customer
   add constraint FK_Customer_Customer foreign key (CustomerIdParent)
      references Customer (CustomerId)
      on delete restrict on update restrict;

alter table CustomerPhone
   add constraint FK_CustomerPhone_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete cascade on update cascade;

alter table CustomerShippingDetail
   add constraint FK_CustomerShippingDetail_Shipping foreign key (ShippingId)
      references Shipping (ShippingId)
      on delete cascade on update cascade;

alter table CustomerShippingDetail
   add constraint FK_CustomerShippingDetail_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete cascade on update cascade;

alter table Department
   add constraint FK_Department_Company foreign key (CompanyId)
      references Company (CompanyId)
      on delete restrict on update cascade;

alter table Employee
   add constraint FK_Employee_JobPosition foreign key (PositionId)
      references JobPosition (PositionId)
      on delete restrict on update cascade;

alter table Engine
   add constraint FK_Engine_EngineGroup foreign key (EngineGroupCode)
      references EngineGroup (EngineGroupCode)
      on delete restrict on update cascade;

alter table EngineGroupJob
   add constraint FK_EngineGroupJob_JobType foreign key (JobCode)
      references JobType (JobCode)
      on delete restrict on update cascade;

alter table EngineGroupJob
   add constraint FK_EngineGroupJob_EngineGroup foreign key (EngineGroupCode)
      references EngineGroup (EngineGroupCode)
      on delete restrict on update cascade;

alter table EngineJob
   add constraint FK_EngineJob_JobType foreign key (JobCode)
      references JobType (JobCode)
      on delete cascade on update cascade;

alter table EngineJob
   add constraint FK_EngineJob_Engine foreign key (EngineCode)
      references Engine (EngineCode)
      on delete cascade on update cascade;

alter table FingerPrint
   add constraint FK_FingerPrint_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete cascade on update cascade;

alter table Giro
   add constraint FK_Giro_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete restrict on update cascade;

alter table Giro
   add constraint FK_Giro_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete restrict on update cascade;

alter table Giro
   add constraint FK_Giro_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table Giro
   add constraint FK_Giro_Project foreign key (ProjectId)
      references Project (ProjectId)
      on delete restrict on update cascade;

alter table Giro
   add constraint FK_Giro_Bank foreign key (BankAccount, BankId)
      references Bank (AccountNo, BankId)
      on delete restrict on update restrict;

alter table Item
   add constraint FK_Item_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table Item
   add constraint FK_Item_ItemCategory foreign key (ItemCategoryId)
      references ItemCategory (ItemCategoryId)
      on delete restrict on update cascade;

alter table ItemBalance
   add constraint FK_ItemBalance_Warehouse foreign key (WarehouseId)
      references Warehouse (WarehouseId)
      on delete restrict on update restrict;

alter table ItemBalance
   add constraint FK_ItemBalance_Item foreign key (ItemId)
      references Item (ItemId)
      on delete cascade on update cascade;

alter table ItemDt
   add constraint FK_ItemDt_Item foreign key (ItemId)
      references Item (ItemId)
      on delete cascade on update cascade;

alter table ItemDt
   add constraint FK_ItemDt_Item2 foreign key (ItemDt)
      references Item (ItemId)
      on delete cascade on update cascade;

alter table ItemEngineGroupJob
   add constraint FK_ItemEngineGroupJob_Item foreign key (ItemId)
      references Item (ItemId)
      on delete restrict on update restrict;

alter table ItemEngineGroupJob
   add constraint FK_ItemEngineGroupJob_EngineGroupJob foreign key (EngineGroupJobCode)
      references EngineGroupJob (EngineGroupJobCode)
      on delete restrict on update cascade;

alter table ItemMinStock
   add constraint FK_ItemMinStock_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table ItemMinStock
   add constraint FK_ItemMinStock_Warehouse foreign key (WarehouseId)
      references Warehouse (WarehouseId)
      on delete cascade on update cascade;

alter table ItemMinStock
   add constraint FK_ItemMinStock_Item foreign key (ItemId)
      references Item (ItemId)
      on delete cascade on update cascade;

alter table ItemOrderBalance
   add constraint FK_ItemOrderBalance_Item foreign key (ItemId)
      references Item (ItemId)
      on delete cascade on update cascade;

alter table ItemRack
   add constraint FK_ItemRack_Item foreign key (ItemId)
      references Item (ItemId)
      on delete restrict on update restrict;

alter table ItemRack
   add constraint FK_ItemRack_WarehouseRack foreign key (RackCode)
      references WarehouseRack (RackCode)
      on delete restrict on update restrict;

alter table JobPosition
   add constraint FK_JobPosition_Department foreign key (DepartmentId)
      references Department (DepartmentId)
      on delete restrict on update cascade;

alter table LogProgram
   add constraint FK_LogProgram_LogType foreign key (LogTypeId)
      references LogType (LogTypeId)
      on delete restrict on update cascade;

alter table LogProgram
   add constraint FK_LogProgram_Employee foreign key (EmployeeIdEntry)
      references Employee (EmployeeId)
      on delete cascade on update cascade;

alter table LogProgram
   add constraint FK_LogProgram_Employee2 foreign key (EmployeeIdValidation)
      references Employee (EmployeeId)
      on delete cascade on update cascade;

alter table OtherTransactionDt
   add constraint FK_OtherTransactionDt_Item foreign key (ItemId)
      references Item (ItemId)
      on delete restrict on update cascade;

alter table OtherTransactionDt
   add constraint FK_OtherTransactionDt_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table OtherTransactionDt
   add constraint FK_OtherTransactionDt_OtherTransactionHd foreign key (OtherTransactionId)
      references OtherTransactionHd (OtherTransactionId)
      on delete cascade on update cascade;

alter table OtherTransactionHd
   add constraint FK_OtherTransactionHd_Warehouse1 foreign key (WarehouseSource)
      references Warehouse (WarehouseId)
      on delete restrict on update restrict;

alter table OtherTransactionHd
   add constraint FK_OtherTransactionHd_Warehouse2 foreign key (WarehouseDest)
      references Warehouse (WarehouseId)
      on delete restrict on update restrict;

alter table OtherTransactionHd
   add constraint FK_OtherTransactionHd_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table OtherTransactionHd
   add constraint FK_OtherTransactionHd_Project foreign key (ProjectId)
      references Project (ProjectId)
      on delete restrict on update cascade;

alter table OtherTransactionHd
   add constraint FK_OtherTransactionHd_TransactionType foreign key (TransactionTypeId)
      references TransactionType (TransactionTypeId)
      on delete restrict on update cascade;

alter table Outlet
   add constraint FK_Outlet_City foreign key (CityId)
      references City (CityId)
      on delete restrict on update cascade;

alter table PaymentType
   add constraint FK_PaymentType_Bank foreign key (AccountNo, BankId)
      references Bank (AccountNo, BankId)
      on delete restrict on update restrict;

alter table PaymentType
   add constraint FK_PaymentType_CashBankTransactionType foreign key (CashBankTransactionTypeId)
      references CashBankTransactionType (CashBankTransactionTypeId)
      on delete restrict on update restrict;

alter table PhysicalCounter
   add constraint FK_PhysicalCounter_EngineJob foreign key (EngineCode, JobCode)
      references EngineJob (EngineCode, JobCode)
      on delete cascade on update cascade;

alter table PhysicalCounter
   add constraint FK_PhysicalCounter_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table PhysicalCounter
   add constraint FK_PhysicalCounter_Shift foreign key (ShiftCode)
      references Shift (ShiftCode)
      on delete restrict on update cascade;

alter table PositionAccess
   add constraint FK_PositionAccess_JobPosition foreign key (PositionId)
      references JobPosition (PositionId)
      on delete restrict on update cascade;

alter table Price
   add constraint FK_Price_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table Price
   add constraint FK_Price_Item foreign key (ItemId)
      references Item (ItemId)
      on delete cascade on update cascade;

alter table Province
   add constraint FK_Province_Country foreign key (CountryId)
      references Country (CountryId)
      on delete cascade on update cascade;

alter table PurchaseInvoiceDt
   add constraint FK_PurchaseInvoiceDt_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table PurchaseInvoiceDt
   add constraint FK_PurchaseInvoiceDt_PurchaseInvoiceHd foreign key (PurchaseInvoiceId)
      references PurchaseInvoiceHd (PurchaseInvoiceId)
      on delete cascade on update cascade;

alter table PurchaseInvoiceDt
   add constraint FK_PurchaseInvoiceDt_Item foreign key (ItemId)
      references Item (ItemId)
      on delete restrict on update cascade;

alter table PurchaseInvoiceHd
   add constraint FK_PurchaseInvoiceHd_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table PurchaseInvoiceHd
   add constraint FK_PurchaseInvoiceHd_Outlet foreign key (OutletId)
      references Outlet (OutletId)
      on delete restrict on update cascade;

alter table PurchaseInvoiceHd
   add constraint FK_PurchaseInvoiceHd_Project foreign key (ProjectId)
      references Project (ProjectId)
      on delete restrict on update cascade;

alter table PurchaseInvoiceHd
   add constraint FK_PurchaseInvoiceHd_PurchaseCategory foreign key (PurchaseCategoryId)
      references PurchaseCategory (PurchaseCategoryId)
      on delete restrict on update restrict;

alter table PurchaseInvoiceHd
   add constraint FK_PurchaseInvoiceHd_Shipping foreign key (ShippingId)
      references Shipping (ShippingId)
      on delete restrict on update restrict;

alter table PurchaseInvoiceHd
   add constraint FK_PurchaseInvoiceHd_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table PurchaseInvoiceHd
   add constraint FK_PurchaseInvoiceHd_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete restrict on update cascade;

alter table PurchaseInvoiceHd
   add constraint FK_PurchaseInvoiceHd_Warehouse foreign key (WarehouseId)
      references Warehouse (WarehouseId)
      on delete restrict on update restrict;

alter table PurchaseOrderDt
   add constraint FK_PurchaseOrderDt_PurchaseOrderHd foreign key (PurchaseOrderId)
      references PurchaseOrderHd (PurchaseOrderId)
      on delete restrict on update cascade;

alter table PurchaseOrderDt
   add constraint FK_PurchaseOrderDt_Item foreign key (ItemId)
      references Item (ItemId)
      on delete restrict on update cascade;

alter table PurchaseOrderDt
   add constraint FK_PurchaseOrderDt_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table PurchaseOrderHd
   add constraint FK_PurchaseOrderHd_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete restrict on update cascade;

alter table PurchaseOrderHd
   add constraint FK_PurchaseOrderHd_Project foreign key (ProjectId)
      references Project (ProjectId)
      on delete restrict on update cascade;

alter table PurchaseOrderHd
   add constraint FK_PurchaseOrderHd_Outlet foreign key (OutletId)
      references Outlet (OutletId)
      on delete restrict on update cascade;

alter table PurchaseOrderHd
   add constraint FK_PurchaseOrderHd_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table PurchasePayment
   add constraint FK_PurchasePayment_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table PurchasePayment
   add constraint FK_PurchasePayment_CashRegisterTransaction foreign key (CashRegisterTransactionId)
      references CashRegisterTransaction (CashRegisterTransactionId)
      on delete restrict on update restrict;

alter table PurchasePayment
   add constraint FK_PurchasePayment_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete restrict on update cascade;

alter table PurchasePaymentDt
   add constraint FK_PurchasePaymentDt_Giro foreign key (GiroNumber)
      references Giro (GiroNumber)
      on delete restrict on update restrict;

alter table PurchasePaymentDt
   add constraint FK_PurchasePaymentDt_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table PurchasePaymentDt
   add constraint FK_PurchasePaymentDt_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table PurchasePaymentDt
   add constraint FK_PurchasePaymentDt_PaymentType foreign key (PaymentTypeId)
      references PaymentType (PaymentTypeId)
      on delete restrict on update cascade;

alter table PurchasePaymentDt
   add constraint FK_PURCHASE_REFERENCE_PURCHASE7 foreign key (PurchaseInvoiceId)
      references PurchaseInvoiceHd (PurchaseInvoiceId)
      on delete restrict on update restrict;

alter table PurchasePaymentDt
   add constraint FK_PURCHASE_REFERENCE_PURCHASE6 foreign key (PurchasePaymentId)
      references PurchasePayment (PurchasePaymentId)
      on delete restrict on update restrict;

alter table PurchasePrice
   add constraint FK_PurchasePrice_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete cascade on update cascade;

alter table PurchasePrice
   add constraint FK_PurchasePrice_PurchaseInvoiceHd foreign key (LastPI)
      references PurchaseInvoiceHd (PurchaseInvoiceId)
      on delete restrict on update restrict;

alter table PurchasePrice
   add constraint FK_PurchasePrice_Item foreign key (ItemId)
      references Item (ItemId)
      on delete cascade on update cascade;

alter table PurchaseReturnDt
   add constraint FK_PurchaseReturnDt_PurchaseInvoiceDt foreign key (PurchaseInvoiceId, NoPI)
      references PurchaseInvoiceDt (PurchaseInvoiceId, No)
      on delete restrict on update cascade;

alter table PurchaseReturnDt
   add constraint FK_PurchaseReturnDt_Item foreign key (ItemId)
      references Item (ItemId)
      on delete restrict on update restrict;

alter table PurchaseReturnDt
   add constraint FK_PurchaseReturnDt_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table PurchaseReturnDt
   add constraint FK_PURCHASE_REFERENCE_PURCHASE5 foreign key (PurchaseReturnId)
      references PurchaseReturnHd (PurchaseReturnId)
      on delete restrict on update restrict;

alter table PurchaseReturnHd
   add constraint FK_PurchaseReturnHd_Outlet foreign key (OutletId)
      references Outlet (OutletId)
      on delete restrict on update cascade;

alter table PurchaseReturnHd
   add constraint FK_PurchaseReturnHd_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table PurchaseReturnHd
   add constraint FK_PurchaseReturnHd_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table PurchaseReturnHd
   add constraint FK_PurchaseReturnHd_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete restrict on update cascade;

alter table PurchaseReturnHd
   add constraint FK_PurchaseReturnHd_Warehouse foreign key (WarehouseId)
      references Warehouse (WarehouseId)
      on delete restrict on update restrict;

alter table PurchaseReturnPaymentDt
   add constraint FK_PurchaseReturnPaymentDt_Giro foreign key (GiroNumber)
      references Giro (GiroNumber)
      on delete restrict on update restrict;

alter table PurchaseReturnPaymentDt
   add constraint FK_PurchaseReturnPaymentDt_PaymentType foreign key (PaymentTypeId)
      references PaymentType (PaymentTypeId)
      on delete restrict on update cascade;

alter table PurchaseReturnPaymentDt
   add constraint FK_PURCHASE_REFERENCE_PURCHASE8 foreign key (PurchaseReturnPaymentId)
      references PurchaseReturnPaymentHd (PurchaseReturnPaymentId)
      on delete restrict on update restrict;

alter table PurchaseReturnPaymentDt
   add constraint FK_PURCHASE_REFERENCE_PURCHASE3 foreign key (PurchaseReturnId)
      references PurchaseReturnHd (PurchaseReturnId)
      on delete restrict on update restrict;

alter table PurchaseReturnPaymentDt
   add constraint FK_PurchaseReturnPaymentDt_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table PurchaseReturnPaymentDt
   add constraint FK_PurchaseReturnPaymentDt_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table PurchaseReturnPaymentHd
   add constraint FK_PurchaseReturnPaymentHd_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete restrict on update cascade;

alter table PurchaseReturnPaymentHd
   add constraint FK_PurchaseReturnPaymentHd_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table RegisterSalesDt
   add constraint FK_RegisterSalesDt_Item foreign key (ItemId)
      references Item (ItemId)
      on delete restrict on update restrict;

alter table RegisterSalesDt
   add constraint FK_RegisterSalesDt_RegisterSalesHd foreign key (RegisterSalesId)
      references RegisterSalesHd (RegisterSalesId)
      on delete restrict on update restrict;

alter table RegisterSalesHd
   add constraint FK_RegisterSalesHd_CashRegisterTransaction foreign key (CashRegisterTransactionId)
      references CashRegisterTransaction (CashRegisterTransactionId)
      on delete cascade on update restrict;

alter table RegisterSalesPayment
   add constraint FK_RegisterSalesPayment_RegisterSalesHd foreign key (RegisterSalesId)
      references RegisterSalesHd (RegisterSalesId)
      on delete restrict on update restrict;

alter table RegisterSalesPayment
   add constraint FK_RegisterSalesPayment_PaymentType foreign key (PaymentTypeId)
      references PaymentType (PaymentTypeId)
      on delete restrict on update restrict;

alter table Report
   add constraint FK_Report_ReportCategory foreign key (ReportCategoryId)
      references ReportCategory (ReportCategoryId)
      on delete restrict on update restrict;

alter table ReportCounter
   add constraint FK_ReportCounter_Report foreign key (ProgramId, ReportId)
      references Report (ProgramId, ReportId)
      on delete cascade on update cascade;

alter table ReportCounter
   add constraint FK_ReportCounter_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete cascade on update cascade;

alter table RevenueBalance
   add constraint FK_RevenueBalance_Item foreign key (ItemId)
      references Item (ItemId)
      on delete cascade on update cascade;

alter table SalePrice
   add constraint FK_SalePrice_SalesInvoiceHd foreign key (LastSI)
      references SalesInvoiceHd (SalesInvoiceId)
      on delete restrict on update restrict;

alter table SalePrice
   add constraint FK_SalePrice_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete cascade on update cascade;

alter table SalePrice
   add constraint FK_SalePrice_Item foreign key (ItemId)
      references Item (ItemId)
      on delete cascade on update cascade;

alter table SalesInvoiceDt
   add constraint FK_SalesInvoiceDt_Item foreign key (ItemId)
      references Item (ItemId)
      on delete restrict on update cascade;

alter table SalesInvoiceDt
   add constraint FK_SalesInvoiceDt_SalesInvoiceHd foreign key (SalesInvoiceId)
      references SalesInvoiceHd (SalesInvoiceId)
      on delete cascade on update cascade;

alter table SalesInvoiceDt
   add constraint FK_SalesInvoiceDt_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table SalesInvoiceHd
   add constraint FK_SalesInvoiceHd_SalesCategory foreign key (SalesCategoryId)
      references SalesCategory (SalesCategoryId)
      on delete restrict on update cascade;

alter table SalesInvoiceHd
   add constraint FK_SalesInvoiceHd_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table SalesInvoiceHd
   add constraint FK_SalesInvoiceHd_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table SalesInvoiceHd
   add constraint FK_SalesInvoiceHd_Employee2 foreign key (SalesmanId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table SalesInvoiceHd
   add constraint FK_SalesInvoiceHd_CashRegisterTransaction foreign key (CashRegisterTransactionId)
      references CashRegisterTransaction (CashRegisterTransactionId)
      on delete restrict on update cascade;

alter table SalesInvoiceHd
   add constraint FK_SalesInvoiceHd_Outlet foreign key (OutletId)
      references Outlet (OutletId)
      on delete restrict on update cascade;

alter table SalesInvoiceHd
   add constraint FK_SalesInvoiceHd_Project foreign key (ProjectId)
      references Project (ProjectId)
      on delete restrict on update cascade;

alter table SalesInvoiceHd
   add constraint FK_SalesInvoiceHd_Shipping foreign key (ShippingId)
      references Shipping (ShippingId)
      on delete restrict on update restrict;

alter table SalesInvoiceHd
   add constraint FK_SalesInvoiceHd_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete restrict on update cascade;

alter table SalesInvoiceHd
   add constraint FK_SalesInvoiceHd_Warehouse foreign key (WarehouseId)
      references Warehouse (WarehouseId)
      on delete restrict on update restrict;

alter table SalesOrderDt
   add constraint FK_SalesOrderDt_Item foreign key (ItemId)
      references Item (ItemId)
      on delete restrict on update cascade;

alter table SalesOrderDt
   add constraint FK_SalesOrderDt_SalesOrderHd foreign key (SalesOrderId)
      references SalesOrderHd (SalesOrderId)
      on delete restrict on update cascade;

alter table SalesOrderDt
   add constraint FK_SalesOrderDt_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table SalesOrderHd
   add constraint FK_SalesOrderHd_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete restrict on update cascade;

alter table SalesOrderHd
   add constraint FK_SalesOrderHd_Project foreign key (ProjectId)
      references Project (ProjectId)
      on delete restrict on update restrict;

alter table SalesOrderHd
   add constraint FK_SalesOrderHd_Outlet foreign key (OutletId)
      references Outlet (OutletId)
      on delete restrict on update cascade;

alter table SalesOrderHd
   add constraint FK_SalesOrderHd_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table SalesPayment
   add constraint FK_SalesPayment_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete restrict on update cascade;

alter table SalesPayment
   add constraint FK_SalesPayment_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table SalesPayment
   add constraint FK_SalesPayment_CashRegisterTransaction foreign key (CashRegisterTransactionId)
      references CashRegisterTransaction (CashRegisterTransactionId)
      on delete restrict on update restrict;

alter table SalesPaymentDt
   add constraint FK_SalesPaymentDt_Giro foreign key (GiroNumber)
      references Giro (GiroNumber)
      on delete restrict on update restrict;

alter table SalesPaymentDt
   add constraint FK_SalesPaymentDt_SalesInvoiceHd foreign key (SalesInvoiceId)
      references SalesInvoiceHd (SalesInvoiceId)
      on delete restrict on update restrict;

alter table SalesPaymentDt
   add constraint FK_SalesPaymentDt_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table SalesPaymentDt
   add constraint FK_SalesPaymentDt_SalesPayment foreign key (SalesPaymentId)
      references SalesPayment (SalesPaymentId)
      on delete restrict on update restrict;

alter table SalesPaymentDt
   add constraint FK_SalesPaymentDt_PaymentType foreign key (PaymentTypeId)
      references PaymentType (PaymentTypeId)
      on delete restrict on update restrict;

alter table SalesPaymentDt
   add constraint FK_SalesPaymentDt_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table SalesReturnDt
   add constraint FK_SalesReturnDt_SalesInvoiceDt foreign key (SalesInvoiceId, NoSI)
      references SalesInvoiceDt (SalesInvoiceId, No)
      on delete restrict on update cascade;

alter table SalesReturnDt
   add constraint FK_SalesReturnDt_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table SalesReturnDt
   add constraint FK_SalesReturnDt_Item foreign key (ItemId)
      references Item (ItemId)
      on delete restrict on update restrict;

alter table SalesReturnDt
   add constraint FK_SalesReturnDt_SalesReturnHd foreign key (SalesReturnId)
      references SalesReturnHd (SalesReturnId)
      on delete restrict on update restrict;

alter table SalesReturnHd
   add constraint FK_SalesReturnHd_Outlet foreign key (OutletId)
      references Outlet (OutletId)
      on delete restrict on update restrict;

alter table SalesReturnHd
   add constraint FK_SalesReturnHd_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table SalesReturnHd
   add constraint FK_SalesReturnHd_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table SalesReturnHd
   add constraint FK_SalesReturnHd_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete restrict on update cascade;

alter table SalesReturnHd
   add constraint FK_SalesReturnHd_Warehouse foreign key (WarehouseId)
      references Warehouse (WarehouseId)
      on delete restrict on update restrict;

alter table SalesReturnPaymentDt
   add constraint FK_SalesReturnPaymentDt_SalesReturnPaymentHd foreign key (SalesReturnPaymentId)
      references SalesReturnPaymentHd (SalesReturnPaymentId)
      on delete restrict on update restrict;

alter table SalesReturnPaymentDt
   add constraint FK_SalesReturnPaymentDt_SalesReturnHd foreign key (SalesReturnId)
      references SalesReturnHd (SalesReturnId)
      on delete restrict on update restrict;

alter table SalesReturnPaymentDt
   add constraint FK_SalesReturnPaymentDt_PaymentType foreign key (PaymentTypeId)
      references PaymentType (PaymentTypeId)
      on delete restrict on update cascade;

alter table SalesReturnPaymentDt
   add constraint FK_SalesReturnPaymentDt_Giro foreign key (GiroNumber)
      references Giro (GiroNumber)
      on delete restrict on update restrict;

alter table SalesReturnPaymentDt
   add constraint FK_SalesReturnPaymentDt_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table SalesReturnPaymentDt
   add constraint FK_SalesReturnPaymentDt_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

alter table SalesReturnPaymentHd
   add constraint FK_SalesReturnPaymentHd_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete restrict on update cascade;

alter table SalesReturnPaymentHd
   add constraint FK_SalesReturnPaymentHd_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;

alter table Shipping
   add constraint FK_Shipping_City foreign key (CityId)
      references City (CityId)
      on delete restrict on update restrict;

alter table StockExpired
   add constraint FK_StockExpired_Item foreign key (ItemId)
      references Item (ItemId)
      on delete cascade on update cascade;

alter table StockExpired
   add constraint FK_StockExpired_Warehouse foreign key (WarehouseId)
      references Warehouse (WarehouseId)
      on delete restrict on update restrict;

alter table StockOnHand
   add constraint FK_StockOnHand_Warehouse foreign key (WarehouseId)
      references Warehouse (WarehouseId)
      on delete cascade on update cascade;

alter table StockOnHand
   add constraint FK_StockOnHand_Item foreign key (ItemId)
      references Item (ItemId)
      on delete cascade on update cascade;

alter table StockOnHandValue
   add constraint FK_StockOnHandValue_Item foreign key (ItemId)
      references Item (ItemId)
      on delete cascade on update cascade;

alter table StockOnHandValue
   add constraint FK_StockOnHandValue_Warehouse foreign key (WarehouseId)
      references Warehouse (WarehouseId)
      on delete restrict on update restrict;

alter table Transaction
   add constraint FK_Transaction_Item foreign key (ItemId)
      references Item (ItemId)
      on delete restrict on update cascade;

alter table Transaction
   add constraint FK_Transaction_Warehouse2 foreign key (WarehouseSource)
      references Warehouse (WarehouseId)
      on delete restrict on update restrict;

alter table Transaction
   add constraint FK_Transaction_Warehouse1 foreign key (WarehouseDest)
      references Warehouse (WarehouseId)
      on delete restrict on update restrict;

alter table Transaction
   add constraint FK_Transaction_TransactionType foreign key (TransactionTypeId)
      references TransactionType (TransactionTypeId)
      on delete restrict on update restrict;

alter table TransactionBalance
   add constraint FK_TransactionBalance_Warehouse foreign key (WarehouseId)
      references Warehouse (WarehouseId)
      on delete restrict on update restrict;

alter table TransactionBalance
   add constraint FK_TransactionBalance_Item foreign key (ItemId)
      references Item (ItemId)
      on delete cascade on update cascade;

alter table TransactionBalance
   add constraint FK_TransactionBalance_TransactionType foreign key (TransactionTypeId)
      references TransactionType (TransactionTypeId)
      on delete restrict on update restrict;

alter table Vendor
   add constraint FK_Vendor_Vendor foreign key (VendorIdParent)
      references Vendor (VendorId)
      on delete restrict on update restrict;

alter table Vendor
   add constraint FK_Vendor_Category foreign key (CategoryId)
      references Category (CategoryId)
      on delete restrict on update cascade;

alter table Vendor
   add constraint FK_Vendor_City foreign key (CityId)
      references City (CityId)
      on delete restrict on update restrict;

alter table VendorPhone
   add constraint FK_VendorPhone_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete cascade on update cascade;

alter table VendorShippingDetail
   add constraint FK_VendorShippingDetail_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete cascade on update cascade;

alter table VendorShippingDetail
   add constraint FK_VendorShippingDetail_Shipping foreign key (ShippingId)
      references Shipping (ShippingId)
      on delete cascade on update cascade;

alter table Warehouse
   add constraint FK_Warehouse_City foreign key (CityId)
      references City (CityId)
      on delete restrict on update cascade;

alter table WarehouseRack
   add constraint FK_WarehouseRack_Warehouse foreign key (WarehouseId)
      references Warehouse (WarehouseId)
      on delete restrict on update restrict;


CREATE OR REPLACE FUNCTION CurrencyToString (ANilai currency)
  RETURNS varchar AS
$$
declare
  num varchar[10];
  sat varchar[10];
  str varchar;
  s2 varchar;
  str1 varchar;
  say1 varchar;
  say2 varchar;
  hasil1 varchar;
  hasil2 varchar;
  hasil3 varchar;
  i integer;
  j currency;
  k currency;
  l integer;
  m varchar;
  noarray integer;
  flag1 boolean;
  hasil varchar;
begin
   num[1]='nol';
   num[2]='satu ';
   num[3]='dua ';
   num[4]='tiga ';
   num[5]='empat ';
   num[6]='lima ';
   num[7]='enam ';
   num[8]='tujuh ';
   num[9]='delapan ';
   num[10]='sembilan ';

   sat[1]='puluh ';   sat[2]='';   sat[3]='ribu ';   sat[4]='juta ';
   sat[5]='milyar ';  sat[6]='Triliyun ';

   s2=cast(ANilai as varchar);
   if position('.' in s2)>0 then
      str=substring(s2,1,position('.' in s2)-1);
   else
      str=s2;
   end if;
   str1=str;
   say1='';
   i=0;
   m=str;
   k=Length(m);
   j=ceil(k/3);
   while (i < j) loop

      say2 = '';
      Flag1=False;

      str=cast(cast(substring(str1,Length(str1)-2,3) as integer) as varchar);

      l=Length(str1)-3;
      if (l<0) then
          l=0;
      end if;
      str1=substring(str1,1,l);

      if Length(str)>2 then
         Flag1=True;
         if substring(str,1,1)='1' then
            say2='seratus ';
         else
            say2 = num[cast(substring(str,1,1) as integer)+1] || 'ratus ';
         end if;
         str = cast(cast(substring(str,2,2) as integer) as varchar);
      end if;

      if Length(str)>1 then
         Flag1=True;
         if substring(str,1,1)<'2' then

            if (substring(str,2,1)='0') then
              say2 = say2 || 'sepuluh ';
            else
              if (substring(str,2,1)='1') then
                 say2 = say2 || 'sebelas ';
              else
                 say2=say2 || num[cast(substring(str,2,1) as integer)+1] || 'belas ';
              end if;
            end if;

            str='';
         else
            Flag1=True;
            say2 = say2 || num[cast(substring(str,1,1) as integer)+1] || 'puluh ';
            str = substring(str,2,1);
         end if;
      end if;
      if (Length(str)=1) and (str<>'0') then
         if ((i=1) and (str='1') and (not Flag1)) then
            say2 = 'se';
         else
            say2 = say2 || num[cast(substring(str,1,1) as integer)+1];
         end if;
      end if;
      if say2<>'' then
         say2=say2|| sat[i+2];
      end if;
      say1 = say2 || say1;
      i=i+1;
   end loop;
   if (say1='') then
      say1:='Nol ';
   end if;
   hasil1=Upper(substring(say1,1,1)) || substring(say1,2,length(say1)-1);

   if position('.' in s2)>0 then
      str=substring(s2,position('.' in s2)+1,length(s2)-position('.' in s2));
   else
      str='';
   end if;
   str = RemoveDecimalZero(str);

   str1=str;
   say1='';
   i=0;
   m=str;
   k=Length(m);
   j=ceil(k/3);
   while (i < j) loop

      say2 = '';
      Flag1=False;

      str=cast(cast(substring(str1,Length(str1)-2,3) as integer) as varchar);

      l=Length(str1)-3;
      if (l<0) then
          l=0;
      end if;
      str1=substring(str1,1,l);

      if Length(str)>2 then
         Flag1=True;
         if substring(str,1,1)='1' then
            say2='seratus ';
         else
            say2 = num[cast(substring(str,1,1) as integer)+1] || 'ratus ';
         end if;
         str = cast(cast(substring(str,2,2) as integer) as varchar);
      end if;

      if Length(str)>1 then
         Flag1=True;
         if substring(str,1,1)<'2' then

            if (substring(str,2,1)='0') then
              say2 = say2 || 'sepuluh ';
            else
              if (substring(str,2,1)='1') then
                 say2 = say2 || 'sebelas ';
              else
                 say2=say2 || num[cast(substring(str,2,1) as integer)+1] || 'belas ';
              end if;
            end if;

            str='';
         else
            Flag1=True;
            say2 = say2 || num[cast(substring(str,1,1) as integer)+1] || 'puluh ';
            str = substring(str,2,1);
         end if;
      end if;
      if (Length(str)=1) and (str<>'0') then
         if ((i=1) and (str='1') and (not Flag1)) then
            say2 = 'se';
         else
            say2 = say2 || num[cast(substring(str,1,1) as integer)+1];
         end if;
      end if;
      if say2<>'' then
         say2=say2|| sat[i+2];
      end if;
      say1 = say2 || say1;
      i=i+1;
   end loop;
   if (say1='') then
      say1:='nol ';
   end if;
   hasil2=substring(say1,1,length(say1)-1);

   if hasil2<>'nol' then
      hasil3= hasil1 || 'koma ' || hasil2 ||' rupiah';
   else
      hasil3= hasil1 ||'rupiah';
   end if;
   return hasil3;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION GetDate ()
RETURNS TimeStamp
AS $$
begin
  Return Current_TimeStamp;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION GetFirstDateOfMonth (TransactionDate DateWithoutTime)
RETURNS DateWithoutTime AS
$$
declare 
  CurrentYear integer;
  CurrentMonth integer;
  FirstDateOfMonth date;
begin
  CurrentYear  := EXTRACT(Year from TransactionDate);
  CurrentMonth := EXTRACT(Month from TransactionDate);

  FirstDateOfMonth := CAST(CAST(CurrentYear as varchar) || lpad(CAST(CurrentMonth as varchar), 2, '0') || lpad(CAST(1 as varchar), 2, '0') as date);
  
  Return FirstDateOfMonth;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION GetLastDateOfMonth (TransactionDate DateWithoutTime)
RETURNS DateWithoutTime AS
$$
declare 
  CurrentYear integer;
  CurrentMonth integer;
  NextDayOfMonth date;
begin
  CurrentYear  := EXTRACT(Year from TransactionDate);
  CurrentMonth := EXTRACT(Month from TransactionDate) + 1;

  if CurrentMonth = 13 then
    CurrentMonth := 1;
    CurrentYear := CurrentYear + 1;
  end IF;

  NextDayOfMonth := CAST(CAST(CurrentYear as varchar) || lpad(CAST(CurrentMonth as varchar), 2, '0') || lpad(CAST(1 as varchar), 2, '0') as date) - 1;
  
  Return NextDayOfMonth;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION GetPeriod (ADate DateWithoutTime)
  RETURNS varchar AS
$$
declare 
  APeriod varchar;
begin
  APeriod = to_char(@TransactionDate, 'YYYYMM');
 Return APeriod;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION IsCurrencyNull (AValue currency, ADefaultValue currency)
  RETURNS currency AS
$$
begin
  if (AValue is null) then
    Return ADefaultValue;
  else
    Return AValue;
  end if;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION IsIntegerNull (AValue integer, ADefaultValue integer)
  RETURNS integer AS
$$
begin
  if (AValue is null) then
    Return ADefaultValue;
  else
    Return AValue;
  end if;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION IsQuantityNull (AValue quantity, ADefaultValue quantity)
  RETURNS quantity AS
$$
begin
  if (AValue is null) then
    Return ADefaultValue;
  else
    Return AValue;
  end if;
end;
$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION IsVarcharNull(VarcharValue varchar, DefaultValue varchar)
  RETURNS varchar AS
$BODY$
begin
  if (VarcharValue is null) then
    Return DefaultValue;
  else
    Return VarcharValue;
  end if;
end;
$BODY$
  LANGUAGE 'plpgsql' VOLATILE;

CREATE OR REPLACE FUNCTION IsVarcharNull (AValue varchar, ADefaultValue varchar)
  RETURNS varchar AS
$$
begin
  if (AValue is null) then
    Return ADefaultValue;
  else
    Return AValue;
  end if;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION RemoveDecimalZero (AStr varchar)
  RETURNS varchar AS
$$
declare
 hasil varchar;
 i integer;
 keluar boolean;
begin
 i=length($1);
 keluar=false;
 while (i>0) and (keluar=false) loop
   if substring($1,i,1)<>'0' then
      keluar=true;
   else
      i=i-1;
   end if;
 end loop;
 hasil =substring($1,1,i);
 return hasil;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetAPBalanceCustomer (ACustomerId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth loop
    execute 'select Value' || i || ' from APBalanceCustomer' ||
      ' where Year = ''' || cast(AYear as varchar)|| '''' ||
      ' and CustomerId = ''' || ACustomerId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || ''''
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetAPBalanceCustomerRp (ACustomerId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth loop
    execute 'select Rupiah' || i || ' from APBalanceCustomer' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and CustomerId = ''' || ACustomerId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || ''''
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetAPBalanceVendor (AVendorId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth loop
    execute 'select Value' || i || ' from APBalanceVendor' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and VendorId = ''' || AVendorId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || '''' 
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetAPBalanceVendorRp (AVendorId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth loop
    execute 'select Rupiah' || i || ' from APBalanceVendor' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and VendorId = ''' || AVendorId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || '''' 
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetAPOpeningBalanceCustomer (ACustomerId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth - 1 loop
    execute 'select Value' || i || ' from APBalanceCustomer' ||
      ' where Year = ''' || cast(AYear as varchar)|| '''' ||
      ' and CustomerId = ''' || ACustomerId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || ''''
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetAPOpeningBalanceCustomerRp (ACustomerId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth - 1 loop
    execute 'select Rupiah' || i || ' from APBalanceCustomer' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and CustomerId = ''' || ACustomerId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || ''''
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetAPOpeningBalanceVendor (AVendorId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth - 1 loop
    execute 'select Value' || i || ' from APBalanceVendor' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and VendorId = ''' || AVendorId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || '''' 
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetAPOpeningBalanceVendorRp (AVendorId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth - 1 loop
    execute 'select Rupiah' || i || ' from APBalanceVendor' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and VendorId = ''' || AVendorId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || '''' 
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetARBalanceCustomer (ACustomerId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth loop
    execute 'select Value' || i || ' from ARBalanceCustomer' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and CustomerId = ''' || ACustomerId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || '''' 
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetARBalanceCustomerRp (ACustomerId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth loop
    execute 'select Rupiah' || i || ' from ARBalanceCustomer' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and CustomerId = ''' || ACustomerId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || '''' 
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetARBalanceVendor (AVendorId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth loop
    execute 'select Value' || i || ' from ARBalanceVendor' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and VendorId = ''' || AVendorId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || '''' 
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetARBalanceVendorRp (AVendorId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth loop
    execute 'select Rupiah' || i || ' from ARBalanceVendor' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and VendorId = ''' || AVendorId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || '''' 
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetAROpeningBalanceCustomer (ACustomerId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth - 1 loop
    execute 'select Value' || i || ' from ARBalanceCustomer' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and CustomerId = ''' || ACustomerId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || '''' 
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetAROpeningBalanceCustomerRp (ACustomerId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth - 1 loop
    execute 'select Rupiah' || i || ' from ARBalanceCustomer' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and CustomerId = ''' || ACustomerId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || '''' 
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetAROpeningBalanceVendor (AVendorId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth - 1 loop
    execute 'select Value' || i || ' from ARBalanceVendor' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and VendorId = ''' || AVendorId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || '''' 
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetAROpeningBalanceVendorRp (AVendorId varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth - 1 loop
    execute 'select Rupiah' || i || ' from ARBalanceVendor' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and VendorId = ''' || AVendorId || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || '''' 
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetBankOpeningBalance (ABankId varchar, AAccountNo varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth - 1 loop
    execute 'select Value' || i || ' from BankBalance' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and BankId = ''' || ABankId || '''' ||
      ' and AccountNo = ''' || AAccountNo || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || ''''
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetBankOpeningBalanceRp (ABankId varchar, AAccountNo varchar, AYear integer, AMonth integer, ACurrencyId varchar)
returns currency as
$$
declare
  i integer;
  ACurrentValue currency;
  AValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth - 1 loop
    execute 'select Rupiah' || i || ' from BankBalance' ||
      ' where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and BankId = ''' || ABankId || '''' ||
      ' and AccountNo = ''' || AAccountNo || '''' ||
      ' and CurrencyId = ''' || ACurrencyId || ''''
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetCashOpeningBalance (ATransactionDate DateWithoutTime)
returns currency as
$$
declare
  i integer;
  AYear integer;
  AMonth integer;
  ADateStart DateWithoutTime;
  ACurrentValue currency;
  AValue currency;
  AValuePlus currency;
  AValueMinus currency;
begin
  AYear := EXTRACT(Year from ATransactionDate);
  AMonth := EXTRACT(Month from ATransactionDate) - 1;
  ADateStart := GetFirstDateOfMonth(ATransactionDate);

  ACurrentValue = 0;
  for i in 0..AMonth loop
    execute 'select Value' || i || ' from CashBalance' ||
      ' where Year = ''' || cast(AYear as varchar) || ''''
    into AValue;    
    if AValue is null then
      AValue = 0;
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  select sum(a.Amount)
  from CashTransaction a
  left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
  where a.CashTransactionDate between ADateStart and ATransactionDate - 1  
  and a.StatusApprove = '1'
  and b.FlagOut = '0'
  into AValuePlus;
  if AValuePlus Is Null then 
    AValuePlus = 0;
  end if;

  select sum(a.Amount)
  from CashTransaction a
  left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
  where a.CashTransactionDate between ADateStart and ATransactionDate - 1  
  and a.StatusApprove = '1'
  and b.FlagOut = '1'
  into AValueMinus;
  if AValueMinus Is Null then 
    AValueMinus = 0;
  end if;

  return ACurrentValue + AValuePlus - AValueMinus;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetClosingDate ()
  RETURNS DateWithoutTime AS
$$
declare
  AClosingDate DateWithoutTime;
begin
  select cast(SetupValue as DateWithoutTime) 
  from Setup 
  where SetupId = 'GLB01'
  into AClosingDate;

  Return AClosingDate;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetDefaultLengthId ()
  RETURNS integer AS
$$
declare
  ALength integer;
begin
  select SetupValue
  from Setup where SetupId = 'OPT08'
  into ALength;
  if ALength is null then
    raise exception '%', '^Panjang kode transaksi belum ditentukan ! (lihat Options -> Setup Program)^';
  end if;  
  
  Return ALength;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetDefaultLengthItemId ()
  RETURNS integer AS
$$
declare
  ALength integer;
begin
  select SetupValue
  from Setup where SetupId = 'OPT09'
  into ALength;
  if ALength is null then
    raise exception '^Panjang kode item belum ditentukan ! (lihat Options -> Setup Program)^';
  end if;  
  
  Return ALength;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemBalanceQty (AItemId ItemId, AWarehouseId varchar, ATransactionDate DateWithoutTime)
  RETURNS quantity AS
$$
declare
  i integer;
  AYear integer;
  AMonth integer;
  ADateStart DateWithoutTime;
  ACurrentQty quantity;
  AQuantity quantity;
begin
  AYear := EXTRACT(Year from ATransactionDate);
  AMonth := EXTRACT(Month from ATransactionDate);
  ADateStart := GetFirstDateOfMonth(ATransactionDate);
  
  ACurrentQty = 0;
  for i in 0..AMonth loop
    execute 'select Qty' || i || 
      ' from ItemBalance where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and ItemId = ''' || AItemId || ''' and WarehouseId = ''' || AWarehouseId || '''' 
    into AQuantity;    
    if AQuantity is null then
      AQuantity = 0;
    end if;
    ACurrentQty = ACurrentQty + AQuantity;
  end loop;

  return ACurrentQty;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemBalanceVal (AItemId ItemId, AWarehouseId varchar, ATransactionDate DateWithoutTime)
  RETURNS currency AS
$$
declare
  i integer;
  AYear integer;
  AMonth integer;
  ADateStart DateWithoutTime;
  ACurrentValue currency;
  AValue currency;
begin
  AYear := EXTRACT(Year from ATransactionDate);
  AMonth := EXTRACT(Month from ATransactionDate);
  ADateStart := GetFirstDateOfMonth(ATransactionDate);

  ACurrentValue = 0;
  for i in 0..AMonth loop
    execute 'select Value' || i || 
      ' from ItemBalance where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and ItemId = ''' || AItemId || ''' and WarehouseId = ''' || AWarehouseId || '''' 
    into AValue;    
    if AValue Is Null then 
      AValue = 0; 
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;

  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemEndingBalanceQty (AItemId ItemId, AWarehouseId varchar, AYear integer, AMonth integer)
  RETURNS quantity AS
$$
declare
  i integer;
  AQuantity quantity;
  ACurrentQty quantity;
begin
  ACurrentQty = 0;
  for i in 0..AMonth loop
    execute 'select Qty' || i || 
      ' from ItemBalance where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and ItemId = ''' || AItemId || ''' and WarehouseId = ''' || AWarehouseId || '''' 
    into AQuantity;    
    if AQuantity is null then
      AQuantity = 0;
    end if;
    ACurrentQty = ACurrentQty + AQuantity;
  end loop;

  return ACurrentQty;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemEndingBalanceQtyOld (AItemId ItemId, AWarehouseId varchar, atransactiondate datewithouttime)
  RETURNS quantity AS
$$
declare
  i integer;
  AYear integer;
  AMonth integer;
  ADateStart DateWithoutTime;
  ACurrentQty quantity;
  AQuantity quantity;
  AQtyMasuk quantity;
  AQtyKeluar quantity;
  AQtyMutasiKeluar quantity;
begin
  AYear := EXTRACT(Year from ATransactionDate);
  AMonth := EXTRACT(Month from ATransactionDate) - 1;
  ADateStart := GetFirstDateOfMonth(ATransactionDate);
  
  ACurrentQty = 0;
  for i in 0..AMonth loop
    execute 'select Qty' || i || 
      ' from ItemBalance where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and ItemId = ''' || AItemId || ''' and WarehouseId = ''' || AWarehouseId || '''' 
    into AQuantity;    
    if AQuantity is null then
      AQuantity = 0;
    end if;
    ACurrentQty = ACurrentQty + AQuantity;
  end loop;

  select sum(Qty)
  from Transaction a 
  left join TransactionType b on a.TransactionTypeId = b.TransactionTypeId
  where a.ItemId = AItemId 
  and a.WarehouseSource = AWarehouseId
  and a.TransactionDate between ADateStart and ATransactionDate
  and b.StatusTransaction = '0'
  into AQtyMasuk;
  if AQtyMasuk Is Null then 
    AQtyMasuk = 0;
  end if;

  select sum(Qty)
  from Transaction a 
  left join TransactionType b on a.TransactionTypeId = b.TransactionTypeId
  where a.ItemId = AItemId 
  and a.WarehouseSource = AWarehouseId
  and a.TransactionDate between ADateStart and ATransactionDate
  and b.StatusTransaction = '1'
  into AQtyKeluar;
  if AQtyKeluar Is Null then 
    AQtyKeluar = 0;
  end if;

  select sum(Qty)
  from Transaction a 
  left join TransactionType b on a.TransactionTypeId = b.TransactionTypeId
  where a.ItemId = AItemId 
  and a.WarehouseSource = AWarehouseId
  and a.TransactionDate between ADateStart and ATransactionDate
  and b.StatusTransaction = '2'
  into AQtyMutasiKeluar;
  if AQtyMutasiKeluar Is Null then 
    AQtyMutasiKeluar = 0;
  end if;

  return ACurrentQty + AQtyMasuk - AQtyKeluar - AQtyMutasiKeluar;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemEndingBalanceVal (AItemId ItemId, AWarehouseId varchar, AYear integer, AMonth integer)
  RETURNS currency AS
$$
declare
  i integer;
  AValue currency;
  ACurrentValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth loop
    execute 'select Value' || i || 
      ' from ItemBalance where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and ItemId = ''' || AItemId || ''' and WarehouseId = ''' || AWarehouseId || '''' 
    into AValue;    
    if AValue Is Null then 
      AValue = 0; 
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;
  
  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemEndingBalanceValOld (AItemId ItemId, AWarehouseId varchar, atransactiondate datewithouttime)
  RETURNS currency AS
$$
declare
  i integer;
  AYear integer;
  AMonth integer;
  ADateStart DateWithoutTime;
  ACurrentValue currency;
  AValue currency;
  AValueMasuk currency;
  AValueKeluar currency;
  AValueMutasiKeluar currency;
begin
  AYear := EXTRACT(Year from ATransactionDate);
  AMonth := EXTRACT(Month from ATransactionDate) - 1;
  ADateStart := GetFirstDateOfMonth(ATransactionDate);

  ACurrentValue = 0;
  for i in 0..AMonth loop
    execute 'select Value' || i || 
      ' from ItemBalance where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and ItemId = ''' || AItemId || ''' and WarehouseId = ''' || AWarehouseId || '''' 
    into AValue;    
    if AValue Is Null then 
      AValue = 0; 
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;
  
  select sum(Qty * Price)
  from Transaction a 
  left join TransactionType b on a.TransactionTypeId = b.TransactionTypeId
  where a.ItemId = AItemId 
  and a.WarehouseSource = AWarehouseId
  and a.TransactionDate between ADateStart and ATransactionDate
  and b.StatusTransaction = '0'
  into AValueMasuk;
  if AValueMasuk Is Null then 
    AValueMasuk = 0;
  end if;

  select sum(z.TotalCOGS) 
  from TransactionDt z 
  left join Transaction a on z.TransactionId = a.TransactionId
  left join TransactionType b on a.TransactionTypeId = b.TransactionTypeId
  where a.ItemId = AItemId 
  and a.WarehouseSource = AWarehouseId
  and a.TransactionDate between ADateStart and ATransactionDate
  and b.StatusTransaction = '1'
  into AValueKeluar;
  if AValueKeluar Is Null then 
    AValueKeluar = 0;
  end if;

  select sum(z.TotalCOGS) 
  from TransactionDt z 
  left join Transaction a on z.TransactionId = a.TransactionId
  left join TransactionType b on a.TransactionTypeId = b.TransactionTypeId
  where a.ItemId = AItemId 
  and a.WarehouseSource = AWarehouseId
  and a.TransactionDate between ADateStart and ATransactionDate
  and b.StatusTransaction = '2'
  into AValueMutasiKeluar;
  if AValueMutasiKeluar Is Null then 
    AValueMutasiKeluar = 0;
  end if;

  return ACurrentValue + AValueMasuk - AValueKeluar - AValueMutasiKeluar;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemIdExternal (AItemCategoryId varchar)
  RETURNS varchar AS
$$
declare
  DefaultIdLength integer;
  i integer;
  CountId integer;
  Counter int8;
  Id varchar;
  Id2 varchar;
  NewId varchar;
  Prefix varchar;
  PrefixLength integer;
begin
  -- Initial
  DefaultIdLength = fnGetDefaultLengthItemId();
  Prefix = AItemCategoryId;
  PrefixLength = length(Prefix);

  -- Get Max
  select (substring(ItemIdExternal, PrefixLength + 1, length(ItemIdExternal) - PrefixLength)) as IdMax
  from Item a
  left join ItemCategory b on a.ItemCategoryId = b.ItemCategoryId  
  where b.ItemCategoryId = AItemCategoryId
  and ItemIdExternal like Prefix || '%'
  and length(ItemIdExternal) = DefaultIdLength
  order by IdMax desc
  limit 1
  into Id;
    
  -- Calculate counter
  if not (Id IsNull) then
    -- Convert to numeric
    Id2 := '';
    for i in 1..Length(Id) loop
      if Translate(SubString(Id, i, 1), '1234567890', '') = '' then
        Id2 := Id2 || SubString(Id, i, 1);
      end if;
    end loop;

    Counter := cast(Id2 as int8);
    Counter := Counter + 1;
  else
    Counter := 1;
  end if;
  
  -- Generate NewId  
  loop
    -- NewId
    NewId := Prefix || lpad(cast(Counter as varchar), DefaultIdLength - PrefixLength, '0');
  
    -- Statement
    select count(ItemId) 
    from item 
    where ItemIdExternal = NewId
    into CountId;  
    exit when CountId = 0;  
    
    -- NewId already exist
    Counter := Counter + 1;    
  end loop;

  Return NewId;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemOpeningBalanceQty (AItemId ItemId, AWarehouseId varchar, AYear integer, AMonth integer)
  RETURNS quantity AS
$$
declare
  i integer;
  AQuantity quantity;
  ACurrentQty quantity;
begin
  ACurrentQty = 0;
  for i in 0..AMonth - 1 loop
    execute 'select Qty' || i || 
      ' from ItemBalance where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and ItemId = ''' || AItemId || ''' and WarehouseId = ''' || AWarehouseId || '''' 
    into AQuantity;    
    if AQuantity is null then
      AQuantity = 0;
    end if;
    ACurrentQty = ACurrentQty + AQuantity;
  end loop;

  return ACurrentQty;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemOpeningBalanceQtyOld (AItemId ItemId, AWarehouseId varchar, atransactiondate datewithouttime)
  RETURNS quantity AS
$$
declare
  i integer;
  AYear integer;
  AMonth integer;
  ADateStart DateWithoutTime;
  ACurrentQty quantity;
  AQuantity quantity;
  AQtyMasuk quantity;
  AQtyKeluar quantity;
  AQtyMutasiKeluar quantity;
begin
  AYear := EXTRACT(Year from ATransactionDate);
  AMonth := EXTRACT(Month from ATransactionDate) - 1;
  ADateStart := GetFirstDateOfMonth(ATransactionDate);
  
  ACurrentQty = 0;
  for i in 0..AMonth loop
    execute 'select Qty' || i || 
      ' from ItemBalance where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and ItemId = ''' || AItemId || ''' and WarehouseId = ''' || AWarehouseId || '''' 
    into AQuantity;    
    if AQuantity is null then
      AQuantity = 0;
    end if;
    ACurrentQty = ACurrentQty + AQuantity;
  end loop;

  select sum(Qty)
  from Transaction a 
  left join TransactionType b on a.TransactionTypeId = b.TransactionTypeId
  where a.ItemId = AItemId 
  and a.WarehouseSource = AWarehouseId
  and a.TransactionDate between ADateStart and ATransactionDate - 1
  and b.StatusTransaction = '0'
  into AQtyMasuk;
  if AQtyMasuk Is Null then 
    AQtyMasuk = 0;
  end if;

  select sum(Qty)
  from Transaction a 
  left join TransactionType b on a.TransactionTypeId = b.TransactionTypeId
  where a.ItemId = AItemId 
  and a.WarehouseSource = AWarehouseId
  and a.TransactionDate between ADateStart and ATransactionDate - 1
  and b.StatusTransaction = '1'
  into AQtyKeluar;
  if AQtyKeluar Is Null then 
    AQtyKeluar = 0;
  end if;

  select sum(Qty)
  from Transaction a 
  left join TransactionType b on a.TransactionTypeId = b.TransactionTypeId
  where a.ItemId = AItemId 
  and a.WarehouseSource = AWarehouseId
  and a.TransactionDate between ADateStart and ATransactionDate - 1
  and b.StatusTransaction = '2'
  into AQtyMutasiKeluar;
  if AQtyMutasiKeluar Is Null then 
    AQtyMutasiKeluar = 0;
  end if;

  return ACurrentQty + AQtyMasuk - AQtyKeluar - AQtyMutasiKeluar;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemOpeningBalanceVal (AItemId ItemId, AWarehouseId varchar, AYear integer, AMonth integer)
  RETURNS currency AS
$$
declare
  i integer;
  AValue currency;
  ACurrentValue currency;
begin
  ACurrentValue = 0;
  for i in 0..AMonth - 1 loop
    execute 'select Value' || i || 
      ' from ItemBalance where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and ItemId = ''' || AItemId || ''' and WarehouseId = ''' || AWarehouseId || '''' 
    into AValue;    
    if AValue Is Null then 
      AValue = 0; 
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;
  
  return ACurrentValue;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemOpeningBalanceValOld (AItemId ItemId, AWarehouseId varchar, atransactiondate datewithouttime)
  RETURNS currency AS
$$
declare
  i integer;
  AYear integer;
  AMonth integer;
  ADateStart DateWithoutTime;
  ACurrentValue currency;
  AValue currency;
  AValueMasuk currency;
  AValueKeluar currency;
  AValueMutasiKeluar currency;
begin
  AYear := EXTRACT(Year from ATransactionDate);
  AMonth := EXTRACT(Month from ATransactionDate) - 1;
  ADateStart := GetFirstDateOfMonth(ATransactionDate);

  ACurrentValue = 0;
  for i in 0..AMonth loop
    execute 'select Value' || i || 
      ' from ItemBalance where Year = ''' || cast(AYear as varchar) || '''' ||
      ' and ItemId = ''' || AItemId || ''' and WarehouseId = ''' || AWarehouseId || '''' 
    into AValue;    
    if AValue Is Null then 
      AValue = 0; 
    end if;
    ACurrentValue = ACurrentValue + AValue;
  end loop;
  
  select sum(Qty * Price)
  from Transaction a 
  left join TransactionType b on a.TransactionTypeId = b.TransactionTypeId
  where a.ItemId = AItemId 
  and a.WarehouseSource = AWarehouseId
  and a.TransactionDate between ADateStart and ATransactionDate - 1
  and b.StatusTransaction = '0'
  into AValueMasuk;
  if AValueMasuk Is Null then 
    AValueMasuk = 0;
  end if;

  select sum(z.TotalCOGS) 
  from TransactionDt z
  left join Transaction a on z.TransactionId = a.TransactionId
  left join TransactionType b on a.TransactionTypeId = b.TransactionTypeId
  where a.ItemId = AItemId 
  and a.WarehouseSource = AWarehouseId
  and a.TransactionDate between ADateStart and ATransactionDate - 1
  and b.StatusTransaction = '1'
  into AValueKeluar;
  if AValueKeluar Is Null then 
    AValueKeluar = 0;
  end if;

  select sum(z.TotalCOGS) 
  from TransactionDt z 
  left join Transaction a on z.TransactionId = a.TransactionId
  left join TransactionType b on a.TransactionTypeId = b.TransactionTypeId
  where a.ItemId = AItemId 
  and a.WarehouseSource = AWarehouseId
  and a.TransactionDate between ADateStart and ATransactionDate - 1
  and b.StatusTransaction = '2'
  into AValueMutasiKeluar;
  if AValueMutasiKeluar Is Null then 
    AValueMutasiKeluar = 0;
  end if;

  return ACurrentValue + AValueMasuk - AValueKeluar - AValueMutasiKeluar;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemTotalEndQty (AItemId ItemId)
returns Quantity as
$$
declare TotalEndQty Quantity;
begin 
  select sum(a.EndQty) 
  from StockOnHand a
  left join Warehouse b on a.WarehouseId = b.WarehouseId 
  where a.ItemId = AItemId
  and b.FlagInactive = '0'
  into TotalEndQty;
  
  if TotalEndQty is null then
    return 0;
  else
    return TotalEndQty;
  end if;  
end;
$$ language 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemTotalEndQtyIn (AItemId ItemId)
returns Quantity as
$$
declare TotalQty Quantity;
begin 
  select sum(a.TotalQtyIn) 
  from ItemBalance a
  left join Warehouse b on a.WarehouseId = b.WarehouseId 
  where a.ItemId = AItemId
  and b.FlagInactive = '0'
  into TotalQty;
  
  if TotalQty is null then
    return 0;
  else
    return TotalQty;
  end if;  
end;
$$ language 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemTotalEndQtyOpening (AItemId ItemId)
returns Quantity as
$$
declare TotalQty Quantity;
begin 
  select sum(a.Qty0) 
  from ItemBalance a
  left join Warehouse b on a.WarehouseId = b.WarehouseId 
  where a.ItemId = AItemId
  and b.FlagInactive = '0'
  into TotalQty;
  
  if TotalQty is null then
    return 0;
  else
    return TotalQty;
  end if;  
end;
$$ language 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemTotalEndQtyOut (AItemId ItemId)
returns Quantity as
$$
declare TotalQty Quantity;
begin 
  select sum(a.TotalQtyOut) 
  from ItemBalance a
  left join Warehouse b on a.WarehouseId = b.WarehouseId 
  where a.ItemId = AItemId
  and b.FlagInactive = '0'
  into TotalQty;
  
  if TotalQty is null then
    return 0;
  else
    return TotalQty;
  end if;  
end;
$$ language 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemTotalEndValue (AItemId ItemId)
returns Currency as
$$
  declare TotalEndValue Currency;
begin
  select sum(a.EndValue) 
  from StockOnHand a
  left join Warehouse b on a.WarehouseId = b.WarehouseId 
  where a.ItemId = AItemId
  and b.FlagInactive = '0'
  into TotalEndValue;  
  
  if TotalEndValue is null then
    return 0;
  else
    return TotalEndValue;
  end if;
  
end;
$$ language 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemTotalEndValueIn (AItemId ItemId)
returns Currency as
$$
declare TotalValue Currency;
begin 
  select sum(a.TotalValueIn) 
  from ItemBalance a
  left join Warehouse b on a.WarehouseId = b.WarehouseId 
  where a.ItemId = AItemId
  and b.FlagInactive = '0'
  into TotalValue;
  
  if TotalValue is null then
    return 0;
  else
    return TotalValue;
  end if;  
end;
$$ language 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemTotalEndValueOpening (AItemId ItemId)
returns Currency as
$$
declare TotalValue Currency;
begin 
  select sum(a.Value0) 
  from ItemBalance a
  left join Warehouse b on a.WarehouseId = b.WarehouseId 
  where a.ItemId = AItemId
  and b.FlagInactive = '0'
  into TotalValue;
  
  if TotalValue is null then
    return 0;
  else
    return TotalValue;
  end if;  
end;
$$ language 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetItemTotalEndValueOut (AItemId ItemId)
returns Currency as
$$
declare TotalValue Currency;
begin 
  select sum(a.TotalValueOut) 
  from ItemBalance a
  left join Warehouse b on a.WarehouseId = b.WarehouseId 
  where a.ItemId = AItemId
  and b.FlagInactive = '0'
  into TotalValue;
  
  if TotalValue is null then
    return 0;
  else
    return TotalValue;
  end if;  
end;
$$ language 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetTransactionId (ATableName varchar, APrefix varchar, ALength integer, 
  ATransactionDate DateWithoutTime, AUseTotalRun integer)
  RETURNS varchar AS
$$
declare
  Counter integer;
  PrefixId varchar;
  PrefixLength integer;
  AMonth integer;
  AYear varchar;
  ASyntax varchar;
  
  NewId varchar;
begin
  if AUseTotalRun = 0 then
    -- Counter per tahun
    PrefixId = upper(APrefix) || to_char(ATransactionDate, 'YYYYMM') || '-';
  else  
    -- Counter per bulan
    PrefixId = upper(APrefix) || '-';
  end if;  
  PrefixLength = char_length(PrefixId);
  AMonth = Extract(month from ATransactionDate);
  AYear = Extract(year from ATransactionDate);
  
  if (select count(TableName) from TransactionRegistry
     where TableName = ATableName
     and Prefix = APrefix
     and Year = AYear) = 0 then  
    -- New Record
    Counter = 1; 
  else
    -- Already Record 
    if AUseTotalRun = 0 then
      ASyntax =      
        'select Value' || AMonth || ' from TransactionRegistry ' ||
        'where TableName = ''' || ATableName || ''' ' ||
        'and Prefix = ''' || APrefix || ''' ' ||
        'and Year = ''' || AYear || '''';
    else
      ASyntax =      
        'select ValueRun from TransactionRegistry ' ||
        'where TableName = ''' || ATableName || ''' ' ||
        'and Prefix = ''' || APrefix || ''' ' ||
        'and Year = ''' || AYear || '''';
    end if;
    execute ASyntax 
    into Counter;
    Counter = Counter + 1;
  end if;
  
  -- Generate Id
  NewId := PrefixId || lpad(cast(Counter as varchar), ALength - PrefixLength , '0');

  Return NewId;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION fnGetTransactionStatus (ATableName varchar, AFieldName varchar, ATransactionId varchar)
  RETURNS varchar AS
$$
declare
  AStatus integer;
begin
  execute 'select StatusApprove from ' || ATableName || 
    ' where ' || AFieldName || ' = ''' || ATransactionId || ''''
  into AStatus;
  if AStatus is null then
    Raise Exception 'Tabel [%] tidak ada atau data tidak ada !', ATableName;
  end if;

  Return AStatus;
end;
$$ LANGUAGE 'plpgsql';


create or replace function spAdjustmentAPBalanceCustomer 
  (ACustomerId varchar, AYear varchar, AMonth int4, ASignQty int4, AAmount currency, ACurrencyId varchar(10))
returns void
as $$
declare
  ASyntax varchar;
begin
  -- update Qty(n) & Value(n) (APBalance)
  if (select count(CustomerId) from APBalanceCustomer
    where CustomerId = ACustomerId
    and Year = AYear
    and CurrencyId = ACurrencyId) = 0
  then
    -- make new record without closing period process
    insert into APBalanceCustomer (CustomerId, Year, CurrencyId) values (ACustomerId, AYear, ACurrencyId);
  end if;
  
  ASyntax = 
   'update APBalanceCustomer ' ||
   'set Rupiah' || AMonth || ' = Rupiah' || AMonth || ' + (' || AAmount || '* ' || ASignQty || ') ' ||
   'where CustomerId = ''' || ACustomerId || ''' ' ||
   'and Year =''' || AYear || '''' || 
   'and CurrencyId =''' || ACurrencyId || '''';

  execute ASyntax;
end;
$$ language 'plpgsql';


create or replace function spAdjustmentAPBalanceVendor 
  (AVendorId varchar, AYear varchar, AMonth int4, ASignQty int4, AAmount currency, ACurrencyId varchar(10))
returns void
as $$
declare
  ASyntax varchar;
begin
  -- update Qty(n) & Value(n) (APBalance)
  if (select count(VendorId) from APBalanceVendor
    where VendorId = AVendorId
    and Year = AYear
    and CurrencyId = ACurrencyId) = 0
  then
    -- make new record without closing period process
    insert into APBalanceVendor (VendorId, Year, CurrencyId) values (AVendorId, AYear, ACurrencyId);
  end if;
  
  ASyntax = 
   'update APBalanceVendor ' ||
   'set Rupiah' || AMonth || ' = Rupiah' || AMonth || ' + (' || AAmount || '* ' || ASignQty || ') ' ||
   'where VendorId = ''' || AVendorId || ''' ' ||
   'and Year =''' || AYear || '''' || 
   'and CurrencyId =''' || ACurrencyId || '''';

  execute ASyntax;
end;
$$ language 'plpgsql';


create or replace function spAdjustmentARBalanceCustomer 
  (ACustomerId varchar, AYear varchar, AMonth int4, ASignQty int4, AAmount currency, ACurrencyId varchar(10))
returns void
as $$
declare
  ASyntax varchar;
begin
  -- update Qty(n) & Value(n) (ARBalance)
  if (select count(CustomerId) from ARBalanceCustomer
    where CustomerId = ACustomerId
    and Year = AYear
    and CurrencyId = ACurrencyId) = 0
  then
    -- make new record without closing period process
    insert into ARBalanceCustomer (CustomerId, Year, CurrencyId) values (ACustomerId, AYear, ACurrencyId);
  end if;

  ASyntax=
    'update ARBalanceCustomer ' ||
    'set Rupiah' || AMonth || ' = Rupiah' || AMonth || ' + (' || AAmount || '* ' || ASignQty || ') ' ||
    'where CustomerId = '''|| ACustomerId || ''' ' ||
    'and Year = ''' || AYear || '''' || 
   'and CurrencyId =''' || ACurrencyId || '''';
    
  execute ASyntax;
end;
$$ language 'plpgsql';


create or replace function spAdjustmentARBalanceVendor 
  (AVendorId varchar, AYear varchar, AMonth int4, ASignQty int4, AAmount currency, ACurrencyId varchar(10))
returns void
as $$
declare
  ASyntax varchar;
begin
  -- update Qty(n) & Value(n) (ARBalance)
  if (select count(VendorId) from ARBalanceVendor
    where VendorId = AVendorId
    and Year = AYear
    and CurrencyId = ACurrencyId) = 0
  then
    -- make new record without closing period process
    insert into ARBalanceVendor (VendorId, Year, CurrencyId) values (AVendorId, AYear, ACurrencyId);
  end if;

  ASyntax=
    'update ARBalanceVendor ' ||
    'set Rupiah' || AMonth || ' = Rupiah' || AMonth || ' + (' || AAmount || '* ' || ASignQty || ') ' ||
    'where VendorId = '''|| AVendorId || ''' ' ||
    'and Year = ''' || AYear || '''' || 
   'and CurrencyId =''' || ACurrencyId || '''';
    
  execute ASyntax;
end;
$$ language 'plpgsql';


create or replace function spAdjustmentBankBalance 
  (ABankId varchar, AAccountNo varchar, AYear varchar, AMonth int4, ASignQty int4, AAmount currency, ACurrencyId varchar(10))
returns void
as $$
declare
  ASyntax varchar;
begin
  -- update Qty(n) & Value(n) (BankBalance)
  if (select count(BankId) from BankBalance
    where BankId = ABankId
    and AccountNo = AAccountNo
    and Year = AYear
    and CurrencyId = ACurrencyId) = 0
  then
    -- make new record without closing period process
    insert into BankBalance (BankId, AccountNo, Year, CurrencyId) values (ABankId, AAccountNo, AYear, ACurrencyId);
  end if;

  ASyntax=
     'update BankBalance ' ||
     'set Rupiah' || AMonth || ' = Rupiah' || AMonth || ' + (' || AAmount || '* ' || ASignQty || ') ' ||
     'where BankId = ''' || ABankId || '''' ||
     'and AccountNo = ''' || AAccountNo || '''' ||
     'and Year = ''' || AYear || '''' ||
     'and CurrencyId = ''' || ACurrencyId || '''';

  execute ASyntax; 
end;
$$ language 'plpgsql';


create or replace function spClosingYear (AYear varchar)
returns void
as $$
declare
  i integer;
  ACount integer;

  AWarehouseId varchar; 
  AItemId ItemId;
  AVendorId varchar;
  ACustomerId varchar;
  ABankId varchar;
  AAccountNo varchar;
  ATotalQty quantity;
  ATotalValue currency;    
  ACurrencyId varchar;
  
  AQty0 quantity;
  AQty1 quantity;
  AQty2 quantity;
  AQty3 quantity;
  AQty4 quantity;
  AQty5 quantity;
  AQty6 quantity;
  AQty7 quantity;
  AQty8 quantity;
  AQty9 quantity;
  AQty10 quantity;
  AQty11 quantity;
  AQty12 quantity;
  AValue0 currency;  
  AValue1 currency;
  AValue2 currency;
  AValue3 currency;
  AValue4 currency;
  AValue5 currency;
  AValue6 currency;
  AValue7 currency;
  AValue8 currency;
  AValue9 currency;
  AValue10 currency;
  AValue11 currency;
  AValue12 currency;
  
  APOOpeningQty quantity;
  APOQtyPlus quantity;
  APOQtyMinus quantity;
  ASOOpeningQty quantity;
  ASOQtyPlus quantity;
  ASOQtyMinus quantity;
  APOTotalQty quantity;
  ASOTotalQty quantity;
  
  CItemBalance cursor for
    select WarehouseId, ItemId,  
      Qty0, Qty1, Qty2, Qty3, Qty4, Qty5, Qty6, Qty7, Qty8, Qty9, Qty10, Qty11, Qty12,
      Value0, Value1, Value2, Value3, Value4, Value5, Value6, Value7, Value8, Value9, Value10, Value11, Value12
    from ItemBalance
    where Year = AYear;
    
  CAPBalanceCustomer cursor for
    select CustomerId, CurrencyId, Value0, Value1, Value2, Value3, Value4, Value5, Value6, 
      Value7, Value8, Value9, Value10, Value11, Value12
    from APBalanceCustomer
    where Year = AYear;

  CAPBalanceVendor cursor for
    select VendorId, CurrencyId, Value0, Value1, Value2, Value3, Value4, Value5, Value6, 
      Value7, Value8, Value9, Value10, Value11, Value12
    from APBalanceVendor
    where Year = AYear;

  CARBalanceCustomer cursor for
    select CustomerId, CurrencyId, Value0, Value1, Value2, Value3, Value4, Value5, Value6, 
      Value7, Value8, Value9, Value10, Value11, Value12
    from ARBalanceCustomer
    where Year = AYear;

  CARBalanceVendor cursor for
    select VendorId, CurrencyId, Value0, Value1, Value2, Value3, Value4, Value5, Value6, 
      Value7, Value8, Value9, Value10, Value11, Value12
    from ARBalanceVendor
    where Year = AYear;

  CCashBalance cursor for
    select  CurrencyId, Value0, Value1, Value2, Value3, Value4, Value5, Value6, 
      Value7, Value8, Value9, Value10, Value11, Value12
    from CashBalance
    where Year = AYear;

  CBankBalance cursor for
    select BankId, AccountNo, CurrencyId, Value0, Value1, Value2, Value3, Value4, Value5, Value6, 
      Value7, Value8, Value9, Value10, Value11, Value12
    from BankBalance
    where Year = AYear;
    
  CItemOrderBalance cursor for
    select ItemId, POOpeningQty, POQtyPlus, POQtyMinus, SOOpeningQty, SOQtyPlus, SOQtyMinus
    from ItemOrderBalance
    where Year = AYear;
    
begin
  
  -- 1. ItemBalance
  open CItemBalance;
  loop
    fetch CItemBalance into AWarehouseId, AItemId, 
      AQty0, AQty1, AQty2, AQty3, AQty4, AQty5, AQty6, AQty7, AQty8, AQty9, AQty10, AQty11, AQty12,
      AValue0, AValue1, AValue2, AValue3, AValue4, AValue5, AValue6, AValue7, AValue8, AValue9, AValue10, AValue11, AValue12;
    exit when (AWarehouseId is null);   
      
    ATotalQty = AQty0 + AQty1 + AQty2 + AQty3 + AQty4 + AQty5 + AQty6 + AQty7 + AQty8 + AQty9 + AQty10 + AQty11 + AQty12;
    ATotalValue = AValue0 + AValue1 + AValue2 + AValue3 + AValue4 + AValue5 + AValue6 + AValue7 + AValue8 + AValue9 + AValue10 + AValue11 + AValue12;
    
    if (select count(Year) 
       from ItemBalance 
       where Year = cast(cast(AYear as integer) + 1 as varchar)
       and WarehouseId = AWarehouseId
       and ItemId = AItemId) = 0 then
      insert into ItemBalance (Year, WarehouseId, ItemId, Qty0, Value0)
      values (cast(cast(AYear as integer) + 1 as varchar), AWarehouseId, AItemId, ATotalQty, ATotalValue);
    else
      update ItemBalance
      set Qty0 = ATotalQty, 
        Value0 = ATotalValue
      where Year = cast(cast(AYear as integer) + 1 as varchar)
      and WarehouseId = AWarehouseId
      and ItemId = AItemId;
    end if;    
  end loop;
  close CItemBalance;
  
  -- 2. APBalanceCustomer
  open CAPBalanceCustomer;
  loop
    fetch CAPBalanceCustomer into ACustomerId, ACurrencyId, AValue0, AValue1, AValue2, AValue3, AValue4, AValue5, AValue6, 
      AValue7, AValue8, AValue9, AValue10, AValue11, AValue12;    
    exit when (ACustomerId is null);   
      
    ATotalValue = AValue0 + AValue1 + AValue2 + AValue3 + AValue4 + AValue5 + AValue6 + AValue7 + AValue8 + AValue9 + AValue10 + AValue11 + AValue12;
    
    if (select count(Year) 
       from APBalanceCustomer 
       where Year = cast(cast(AYear as integer) + 1 as varchar)
       and CustomerId = ACustomerId) = 0 then
      insert into APBalanceCustomer (Year, CustomerId, CurrencyId, Value0)
      values (cast(cast(AYear as integer) + 1 as varchar), ACustomerId, ACurrencyId, ATotalValue);
    else
      update APBalanceCustomer
      set Value0 = ATotalValue
      where Year = cast(cast(AYear as integer) + 1 as varchar)
      and CustomerId = ACustomerId
      and CurrencyId = ACurrencyId;
    end if;    
  end loop;
  close CAPBalanceCustomer;
  
  -- 3. APBalanceVendor
  open CAPBalanceVendor;
  loop
    fetch CAPBalanceVendor into AVendorId, ACurrencyId, AValue0, AValue1, AValue2, AValue3, AValue4, AValue5, AValue6, 
      AValue7, AValue8, AValue9, AValue10, AValue11, AValue12;      
    exit when (AVendorId is null);     
      
    ATotalValue = AValue0 + AValue1 + AValue2 + AValue3 + AValue4 + AValue5 + AValue6 + AValue7 + AValue8 + AValue9 + AValue10 + AValue11 + AValue12;
    
    if (select count(Year) 
       from APBalanceVendor 
       where Year = cast(cast(AYear as integer) + 1 as varchar)
       and VendorId = AVendorId) = 0 then
      insert into APBalanceVendor (Year, VendorId, CurrencyId, Value0)
      values (cast(cast(AYear as integer) + 1 as varchar), AVendorId, ACurrencyId, ATotalValue);
    else
      update APBalanceVendor
      set Value0 = ATotalValue
      where Year = cast(cast(AYear as integer) + 1 as varchar)
      and VendorId = AVendorId
      and CurrencyId = ACurrencyId;
    end if;    
  end loop;
  close CAPBalanceVendor;

  -- 4. ARBalanceCustomer
  open CARBalanceCustomer;
  loop
    fetch CARBalanceCustomer into ACustomerId, ACurrencyId, AValue0, AValue1, AValue2, AValue3, AValue4, AValue5, AValue6, 
      AValue7, AValue8, AValue9, AValue10, AValue11, AValue12;    
    exit when (ACustomerId is null);   
      
    ATotalValue = AValue0 + AValue1 + AValue2 + AValue3 + AValue4 + AValue5 + AValue6 + AValue7 + AValue8 + AValue9 + AValue10 + AValue11 + AValue12;
    
    if (select count(Year) 
       from ARBalanceCustomer 
       where Year = cast(cast(AYear as integer) + 1 as varchar)
       and CustomerId = ACustomerId) = 0 then
      insert into ARBalanceCustomer (Year, CustomerId, CurrencyId, Value0)
      values (cast(cast(AYear as integer) + 1 as varchar), ACustomerId, ACurrencyId, ATotalValue);
    else
      update ARBalanceCustomer
      set Value0 = ATotalValue
      where Year = cast(cast(AYear as integer) + 1 as varchar)
      and CustomerId = ACustomerId
      and CurrencyId = ACurrencyId;
    end if;    
  end loop;
  close CARBalanceCustomer;
    
  -- 5. ARBalanceVendor
  open CARBalanceVendor;
  loop
    fetch CARBalanceVendor into AVendorId, ACurrencyId, AValue0, AValue1, AValue2, AValue3, AValue4, AValue5, AValue6, 
      AValue7, AValue8, AValue9, AValue10, AValue11, AValue12;
    exit when (AVendorId is null);   
      
    ATotalValue = AValue0 + AValue1 + AValue2 + AValue3 + AValue4 + AValue5 + AValue6 + AValue7 + AValue8 + AValue9 + AValue10 + AValue11 + AValue12;
    
    if (select count(Year) 
       from ARBalanceVendor 
       where Year = cast(cast(AYear as integer) + 1 as varchar)
       and VendorId = AVendorId) = 0 then
      insert into ARBalanceVendor (Year, VendorId, CurrencyId, Value0)
      values (cast(cast(AYear as integer) + 1 as varchar), AVendorId, ACurrencyId, ATotalValue);
    else
      update ARBalanceVendor
      set Value0 = ATotalValue
      where Year = cast(cast(AYear as integer) + 1 as varchar)
      and VendorId = AVendorId
      and CurrencyId = ACurrencyId;
    end if;    
  end loop;
  close CARBalanceVendor;
    
  -- 6. CashBalance
  open CCashBalance;
  loop
    fetch CCashBalance into ACurrencyId, AValue0, AValue1, AValue2, AValue3, AValue4, AValue5, AValue6, 
      AValue7, AValue8, AValue9, AValue10, AValue11, AValue12;
    exit when (AValue0 is null);   
      
    ATotalValue = AValue0 + AValue1 + AValue2 + AValue3 + AValue4 + AValue5 + AValue6 + AValue7 + AValue8 + AValue9 + AValue10 + AValue11 + AValue12;
    
    if (select count(Year) 
       from CashBalance 
       where Year = cast(cast(AYear as integer) + 1 as varchar)) = 0 then
      insert into CashBalance (Year, CurrencyId, Value0)
      values (cast(cast(AYear as integer) + 1 as varchar), ACurrencyId, ATotalValue);
    else
      update CashBalance
      set Value0 = ATotalValue
      where Year = cast(cast(AYear as integer) + 1 as varchar)
      and CurrencyId = ACurrencyId;
    end if;    
  end loop;
  close CCashBalance; 
    
  -- 7. BankBalance
  open CBankBalance;
  loop
    fetch CBankBalance into ABankId, AAccountNo, ACurrencyId, AValue0, AValue1, AValue2, AValue3, AValue4, AValue5, AValue6, 
      AValue7, AValue8, AValue9, AValue10, AValue11, AValue12;
    exit when (ABankId is null);   
      
    ATotalValue = AValue0 + AValue1 + AValue2 + AValue3 + AValue4 + AValue5 + AValue6 + AValue7 + AValue8 + AValue9 + AValue10 + AValue11 + AValue12;
    
    if (select count(Year) 
       from BankBalance 
       where Year = cast(cast(AYear as integer) + 1 as varchar)
       and BankId = ABankId 
       and AccountNo = AAccountNo) = 0 then
      insert into BankBalance (Year, BankId, AccountNo, CurrencyId, Value0)
      values (cast(cast(AYear as integer) + 1 as varchar), ABankId, AAccountNo, ACurrencyId, ATotalValue);
    else
      update BankBalance
      set Value0 = ATotalValue
      where Year = cast(cast(AYear as integer) + 1 as varchar)
      and BankId = ABankId
      and AccountNo = AAccountNo
      and CurrencyId = ACurrencyId;
    end if;    
  end loop;
  close CBankBalance;  

  -- 8. ItemOrderBalance
  open CItemOrderBalance;
  loop
    fetch CItemOrderBalance into AItemId, APOOpeningQty, APOQtyPlus, APOQtyMinus, ASOOpeningQty, ASOQtyPlus, ASOQtyMinus;
    exit when (AItemId is null);   
      
    APOTotalQty = APOOpeningQty + APOQtyPlus - APOQtyMinus;
    ASOTotalQty = ASOOpeningQty + ASOQtyPlus - ASOQtyMinus;  
    
    if (select count(Year) 
       from ItemOrderBalance
       where Year = cast(cast(AYear as integer) + 1 as varchar)
       and ItemId = AItemId ) = 0 then
      insert into ItemOrderBalance (Year, ItemId, POOpeningQty, SOOpeningQty)
      values (cast(cast(AYear as integer) + 1 as varchar), AItemId, APOTotalQty, ASOTotalQty);
    else
      update BankBalance
      set POOpeningQty = APOTotalQty,
        SOOpeningQty = ASOTotalQty
      where Year = cast(cast(AYear as integer) + 1 as varchar)
      and ItemId = AItemId;
    end if;    
  end loop;
  close CItemOrderBalance;  

end;
$$ language 'plpgsql';


create or replace function spInsertSalesReturnDtFIFO 
  (ASalesReturnId varchar, ASalesInvoiceId varchar, ANoSI int4, 
  AItemId int4, AQtyReturn Quantity, AEmployeeId varchar)
returns void
as $$
declare
  AStatusCostMethod status;
  AStatusItem status;
  ANo int4;

  ATransactionDtId int4;
  ACOGSDate datewithouttime;
  ACOGSPrice currencyplus;
  AQtyReturnLeft quantity; 

  AExpiredDate datewithouttime;
  APriceInvoice currencyplus;
  ADiscItemInvoice disc;
  ADiscItemPriceInvoice currencyplus;
  ADiscItemInvoice2 disc;
  ADiscItemPriceInvoice2 currencyplus;
  AVoucherItemInvoice currencyplus;  

  ACount int4;
  i int4;
  ATransactionQty quantity;
  AQtySave quantity;

  CTransactionDt_FIFO cursor for 
    select a.TransactionDtId, a.DateCOGS, a.COGS, (abs(a.Qty) - a.QtyReturn)
    from TransactionDt a
    left join Transaction b on a.TransactionId = b.TransactionId
    where b.ReferenceId = ASalesInvoiceId
    and b.No = ANoSI
    and b.ItemId = AItemId
    and (abs(a.Qty) - a.QtyReturn) > 0 -- belum habis diretur
    order by a.DateCOGS desc;

  CTransactionDt_LIFO cursor for 
    select a.TransactionDtId, a.DateCOGS, a.COGS, (abs(a.Qty) - a.QtyReturn)
    from TransactionDt a
    left join Transaction b on a.TransactionId = b.TransactionId
    where b.ReferenceId = ASalesInvoiceId
    and b.No = ANoSI
    and b.ItemId = AItemId
    and (abs(a.Qty) - a.QtyReturn) > 0 -- belum habis diretur
    order by a.DateCOGS asc;
begin
  -- Get Sales Invoice detail
  select ExpiredDate, Price, DiscItem, DiscItemPrice, DiscItem2, DiscItemPrice2, VoucherItem 
  from SalesInvoiceDt
  where SalesInvoiceId = ASalesInvoiceId
  and No = ANoSI
  and ItemId = AItemId
  into AExpiredDate, APriceInvoice, ADiscItemInvoice, ADiscItemPriceInvoice, ADiscItemInvoice2, ADiscItemPriceInvoice2, AVoucherItemInvoice;

  -- Get Transaction Detail by FIFO/LIFO/AVG
  select StatusCostMethod, StatusItem
  from Item 
  where ItemId = AItemId
  into AStatusCostMethod, AStatusItem;

  -- Cek status item
  if (AStatusItem = '0') or (AStatusItem = '2') then
    -- Item Service atau Item Non-Stock 
    AQtySave = AQtyReturn;
    ACOGSPrice = APriceInvoice;
    
    -- Get Last No
    select max(No)
    from SalesReturnDt
    where SalesReturnId = ASalesReturnId
    into ANo;
    if ANo is null then
      ANo = 1;
    else
      ANo = ANo + 1;
    end if;
    
    -- Insert new record at SalesReturnDt
    insert into SalesReturnDt
      (SalesReturnId, No, SalesInvoiceId, NoSI, ItemId, EmployeeId, --TransactionDtId, COGSDate, 
      Qty, Price, DiscItem, DiscItemPrice, DiscItem2, DiscItemPrice2, VoucherItem, Amount, 
      ExpiredDate, PriceInvoice, DiscItemInvoice, DiscItemPriceInvoice, DiscItemInvoice2, DiscItemPriceInvoice2, 
      VoucherItemInvoice, AmountInvoice) 
    values
      (ASalesReturnId, ANo, ASalesInvoiceId, ANoSI, AItemId, AEmployeeId, --ATransactionDtId, ACOGSDate, 
      AQtySave, ACOGSPrice, 0, 0, 0, 0, 0, (ACOGSPrice * AQtySave), 
      AExpiredDate, APriceInvoice, ADiscItemInvoice, ADiscItemPriceInvoice, ADiscItemInvoice2, ADiscItemPriceInvoice2, 
      AVoucherItemInvoice, 
      (AQtySave * (APriceInvoice - ADiscItemPriceInvoice - ADiscItemPriceInvoice2 - AVoucherItemInvoice)));      
  else
    -- Lookup from FIFO/LIFO
    ATransactionQty = AQtyReturn;
    if (AStatusCostMethod = '0') or (AStatusCostMethod = '2') then -- FIFO or AVG
      open CTransactionDt_FIFO;
    end if;
    if AStatusCostMethod = '1' then -- LIFO
      open CTransactionDt_LIFO;
    end if;

    loop
      if (AStatusCostMethod = '0') or (AStatusCostMethod = '2') then -- FIFO or AVG
        fetch CTransactionDt_FIFO into ATransactionDtId, ACOGSDate, ACOGSPrice, AQtyReturnLeft;
      end if;
      if AStatusCostMethod = '1' then -- LIFO
        fetch CTransactionDt_LIFO into ATransactionDtId, ACOGSDate, ACOGSPrice, AQtyReturnLeft;
      end if;
      exit when (ATransactionDtId is null) or (ATransactionQty = 0);  

      -- Bandingkan qty retur dengan qty retur yg tersisa di transaction detail
      if ATransactionQty > AQtyReturnLeft then
        AQtySave = AQtyReturnLeft;
      else
        AQtySave = ATransactionQty;
      end if;    

      -- Get Last No
      select max(No)
      from SalesReturnDt
      where SalesReturnId = ASalesReturnId
      into ANo;
      if ANo is null then
        ANo = 1;
      else
        ANo = ANo + 1;
      end if;

      -- Insert new record at SalesReturnDt
      insert into SalesReturnDt
        (SalesReturnId, No, SalesInvoiceId, NoSI, ItemId, EmployeeId, TransactionDtId, COGSDate, 
        Qty, Price, DiscItem, DiscItemPrice, DiscItem2, DiscItemPrice2, VoucherItem, Amount, 
        ExpiredDate, PriceInvoice, DiscItemInvoice, DiscItemPriceInvoice, DiscItemInvoice2, DiscItemPriceInvoice2, 
        VoucherItemInvoice, AmountInvoice) 
      values
        (ASalesReturnId, ANo, ASalesInvoiceId, ANoSI, AItemId, AEmployeeId, ATransactionDtId, ACOGSDate, 
        AQtySave, ACOGSPrice, 0, 0, 0, 0, 0, (ACOGSPrice * AQtySave), 
        AExpiredDate, APriceInvoice, ADiscItemInvoice, ADiscItemPriceInvoice, ADiscItemInvoice2, ADiscItemPriceInvoice2, 
        AVoucherItemInvoice, 
        (AQtySave * (APriceInvoice - ADiscItemPriceInvoice - ADiscItemPriceInvoice2 - AVoucherItemInvoice)));  

      -- Qty proses dikurangi dengan qty yang telah di proses
      ATransactionQty = ATransactionQty - AQtySave;
      
      -- Note: Update field QtyReturn pada TransactionDt dilakukan oleh trigger fnSalesReturnDt_After
    end loop;
    
    if (AStatusCostMethod = '0') or (AStatusCostMethod = '2') then -- FIFO or AVG
      close CTransactionDt_FIFO;
    end if;
    if AStatusCostMethod = '1' then -- LIFO
      close CTransactionDt_LIFO;
    end if;
   
    if ATransactionQty > 0 then 
      -- Jika setelah di proses qty masih tersisa
      Raise Exception '%', '^Procedure raise exception because data invalid (Sales Return Detail)^!';
    end if;
  end if;
end;
$$ language 'plpgsql';


CREATE OR REPLACE FUNCTION spPostingCashRegisterTransaction (ACashRegisterTransactionId varchar)
  RETURNS void AS
$$
declare
  ADateClosing TimeStamp;
  ACustomerId varchar;
  AWarehouseId varchar;
  AEmployeeId varchar;

  -- Couple
  APrefixCodeCouple varchar;
  APrefixLengthCouple integer;
  APrefixRunTotalCouple integer;
  AItemIdToCouple integer;
  AQtyToCouple QuantityPlus;
  ACoupleId varchar;

  ACoupleItemId integer;
  ACoupleQty QuantityPlus;
  ACoupleOrderNo integer;

  -- Invoice 
  APrefixCodeInvoice varchar;
  APrefixLengthInvoice integer;
  APrefixRunTotalInvoice integer;
  ASalesInvoiceId varchar;
  ARegisterSalesId varchar;
  ARegisterSalesDate DateWithoutTime; 
  ADisc Disc;
  ADiscAmount CurrencyPlus;
  ADisc2 Disc;
  ADiscAmount2 CurrencyPlus;
  AVoucher varchar;
  AVoucherAmount CurrencyPlus;
  ATax Disc;
  ATaxAmount CurrencyPlus;
  AStatementMemo text;
  AInternalMemo text;
  ANo integer;
  AItemId integer;
  AQty QuantityPlus;
  APrice CurrencyPlus;
  ADiscItem Disc;
  ADiscItemPrice CurrencyPlus; 
  ADiscItem2 Disc;
  ADiscItemPrice2 CurrencyPlus; 
  AVoucherItem CurrencyPlus;
  AAmount CurrencyPlus;
  APriceLevel integer;
  APriceLevelUnitMeasure varchar;

  -- Payment
  APrefixCodePayment varchar;
  APrefixLengthPayment integer;
  APrefixRunTotalPayment integer;
  ASalesPaymentId varchar;
  ANoPayment integer;
  APaymentTypeId varchar;
  ACardNo varchar;
  ACardHolderName varchar;
  AOnHandAmount CurrencyPlus;
  AAmountPayment CurrencyPlus;
  AShortage CurrencyPlus;
  
  -- Piutang
  AAccountPayable CurrencyPlus;

  CursorItemToBeCouple cursor for 
    select a.ItemId, sum(a.Qty)
    from RegisterSalesDt a
    left join RegisterSalesHd b on a.RegisterSalesId = b.RegisterSalesId
    left join Item c on c.ItemId = a.ItemId
    where b.CashRegisterTransactionId = ACashRegisterTransactionId
    and c.FlagCouple = '1'
    group by a.ItemId;

  CursorItemCouple cursor for 
    select ItemDt, Qty
    from ItemDt
    where ItemId = AItemIdToCouple;

  CursorRegisterSalesHd cursor for 
    select a.RegisterSalesId, a.RegisterSalesDate, a.Disc, a.Disc2, a.Voucher, a.VoucherAmount, a.Tax, 
      a.StatementMemo, a.InternalMemo
    from RegisterSalesHd a
    where a.StatusApprove <> '2'
    and a.CashRegisterTransactionId = ACashRegisterTransactionId
    order by a.RegisterSalesId;

  CursorRegisterSalesDt cursor for 
    select a.No, a.ItemId, a.Qty, a.Price, a.DiscItem, a.DiscItemPrice, a.DiscItem2, a.DiscItemPrice2, 
      a.VoucherItem, a.Amount, a.PriceLevel, a.PriceLevelUnitMeasure
    from RegisterSalesDt a
    where a.RegisterSalesId = ARegisterSalesId
    order by a.No;
    
  CursorRegisterSalesPayment cursor for 
    select a.No, a.PaymentTypeId, a.CardNo, a.CardHolderName, a.OnHandAmount, a.Amount, a.Shortage
    from RegisterSalesPayment a 
    where a.RegisterSalesId = ARegisterSalesId
    order by a.No;
begin
  select a.DateClosing, b.CustomerId, b.WarehouseId, a.EmployeeId
  from CashRegisterTransaction a
  left join CashRegister b on b.CashRegisterId = a.CashRegisterId
  where a.CashRegisterTransactionId = ACashRegisterTransactionId
  into ADateClosing, ACustomerId, AWarehouseId, AEmployeeId;

  if ADateClosing is null then
    raise exception '^Transaksi posting kasir tidak dapat dilakukan karena kasir belum di tutup !^';
  end if;

  -- ##################################  PROCESS COUPLE ##################################    
  if exists (select a.ItemId
    from RegisterSalesDt a
    left join RegisterSalesHd b on a.RegisterSalesId = b.RegisterSalesId
    left join Item c on c.ItemId = a.ItemId
    where b.CashRegisterTransactionId = ACashRegisterTransactionId
    and c.FlagCouple = '1' 
    limit 1) then

    -- Get CoupleId Counter Info
    select SetupValue from Setup
    where SetupId = 'CO1'
    into APrefixCodeCouple;
    select cast(SetupValue as integer) from Setup
    where SetupId = 'CO2'
    into APrefixLengthCouple;
    select cast(SetupValue as integer) from Setup
    where SetupId = 'CO3'
    into APrefixRunTotalCouple;

    open CursorItemToBeCouple; 
    loop 
      fetch CursorItemToBeCouple
      into AItemIdToCouple, AQtyToCouple;
      exit when (AItemIdToCouple is null);

      -- Process Couple Header
      ACoupleId = (select fnGetTransactionId('CoupleHd', APrefixCodeCouple, APrefixLengthCouple, 
        cast(ADateClosing as DateWithoutTime), APrefixRunTotalCouple));      
      insert into CoupleHd
        (CoupleId, CoupleDate, WarehouseId, ItemId, Qty, CashRegisterTransactionId, FlagAutomatic, EmployeeId, StatusApprove)
      values  
        (ACoupleId, ADateClosing, AWarehouseId, AItemIdToCouple, AQtyToCouple, ACashRegisterTransactionId, '1', AEmployeeId, '1');
      execute spSetTransactionId('CoupleHd', APrefixCodeCouple, cast(ADateClosing as DateWithoutTime), APrefixRunTotalCouple);

      -- Process Couple Detail
      ACoupleOrderNo = 1;
      open CursorItemCouple;
      loop 
        fetch CursorItemCouple
        into ACoupleItemId, ACoupleQty;
        exit when (ACoupleItemId is null);

        insert into CoupleDt
          (CoupleId, No, ItemId, Qty, QtyCouple)
        values
          (ACoupleId, ACoupleOrderNo, ACoupleItemId, ACoupleQty, (AQtyToCouple * ACoupleQty));
          
        ACoupleOrderNo = ACoupleOrderNo + 1;
      end loop;
      close CursorItemCouple;        
    end loop;
    close CursorItemToBeCouple;
  end if;  

  -- ##################################  PROCESS SALES HEADER ##################################    
  -- Get SalesInvoiceId Counter Info
  select Prefix
  from SalesCategory
  where SalesCategoryId = 'CR'  
  into APrefixCodeInvoice;
  select cast(SetupValue as integer) from Setup
  where SetupId = 'SI2'
  into APrefixLengthInvoice;
  select cast(SetupValue as integer) from Setup
  where SetupId = 'SI3'
  into APrefixRunTotalInvoice;      

  -- Set Header to Temporary process state >> (3) Processing
  update CashRegisterTransaction
  set StatusPosting = '3' 
  where CashRegisterTransactionId = ACashRegisterTransactionId;

  -- Process Header
  open CursorRegisterSalesHd; 
  loop 
    fetch CursorRegisterSalesHd 
    into ARegisterSalesId, ARegisterSalesDate, ADisc, ADisc2, AVoucher, AVoucherAmount, ATax, 
      AStatementMemo, AInternalMemo;
    exit when (ARegisterSalesId is null);

    -- auto generate SI
    ASalesInvoiceId = (select fnGetTransactionId('SalesInvoiceHd', APrefixCodeInvoice, APrefixLengthInvoice, ARegisterSalesDate, APrefixRunTotalInvoice));

    insert into SalesInvoiceHd 
      (CashRegisterTransactionId, SalesInvoiceId, SalesInvoiceDate, CustomerId, SalesInvoiceIdInternal, WarehouseId, EmployeeId, 
      CurrencyId, Kurs, Disc, Disc2, Voucher, VoucherAmount, Tax, StatementMemo, InternalMemo, StatusApprove, SalesCategoryId)  
    values  
      (ACashRegisterTransactionId, ASalesInvoiceId, ARegisterSalesDate, ACustomerId, ARegisterSalesId, AWarehouseId, AEmployeeId, 
      'IDR', 1, ADisc, ADisc2, AVoucher, AVoucherAmount, ATax, AStatementMemo, AInternalMemo, '1', 'CR');  

    -- Update Transaction Registery Counter
    execute spSetTransactionId('SalesInvoiceHd', APrefixCodeInvoice, ARegisterSalesDate, APrefixRunTotalInvoice);

    -- ##################################  PROCESS SALES DETAIL ##################################    
    open CursorRegisterSalesDt;
    loop 
      fetch CursorRegisterSalesDt 
      into ANo, AItemId, AQty, APrice, ADiscItem, ADiscItemPrice, ADiscItem2, ADiscItemPrice2, AVoucherItem, 
        AAmount, APriceLevel, APriceLevelUnitMeasure;
      exit when (ANo is null);

      insert into SalesInvoiceDt 
        (SalesInvoiceId, No, ItemId, Qty, QtyDisplay, Price, PriceDisplay, 
        DiscItem, DiscItemPrice, DiscItem2, DiscItemPrice2, VoucherItem, Amount, 
        PriceLevel, PriceLevelUnitMeasure, EmployeeId)
      values 
        (ASalesInvoiceId, ANo, AItemId, AQty, AQty, APrice, APrice, 
        ADiscItem, ADiscItemPrice, ADiscItem2, ADiscItemPrice2, AVoucherItem, AAmount, 
        APriceLevel, APriceLevelUnitMeasure, AEmployeeId);
    end loop;  
    close CursorRegisterSalesDt;

    -- ##################################  PROCESS PAYMENT ##################################    
    if exists (select PaymentTypeId from RegisterSalesPayment 
      where RegisterSalesId = ARegisterSalesId
      limit 1) then

      -- Get SalesPaymentId Counter Info
      select SetupValue from Setup
      where SetupId = 'SP1'
      into APrefixCodePayment;
      select cast(SetupValue as integer) from Setup
      where SetupId = 'SP2'
      into APrefixLengthPayment;
      select cast(SetupValue as integer) from Setup
      where SetupId = 'SP3'
      into APrefixRunTotalPayment;

      ASalesPaymentId = (select fnGetTransactionId('SalesPayment', APrefixCodePayment, APrefixLengthPayment, ARegisterSalesDate, APrefixRunTotalPayment));      
      insert into SalesPayment 
        (SalesPaymentId, SalesPaymentDate, CustomerId, EmployeeId, CashRegisterTransactionId, StatusApprove, FlagAutomatic)
      values  
        (ASalesPaymentId, ARegisterSalesDate, ACustomerId, AEmployeeId, ACashRegisterTransactionId, '0', '1');
      execute spSetTransactionId('SalesPayment', APrefixCodePayment, ARegisterSalesDate, APrefixRunTotalPayment);

      -- Process Payment Detail
      open CursorRegisterSalesPayment;
      loop 
        fetch CursorRegisterSalesPayment 
        into ANoPayment, APaymentTypeId, ACardNo, ACardHolderName, AOnHandAmount, AAmountPayment, AShortage;
        exit when (ANoPayment is null);

        insert into SalesPaymentDt 
          (SalesPaymentId, No, SalesInvoiceId, PaymentTypeId, CardNo, CardHolderName, EmployeeId, CurrencyId, Kurs, OnHandAmount, Amount, Shortage)
        values  
          (ASalesPaymentId, ANoPayment, ASalesInvoiceId, APaymentTypeId, ACardNo, ACardHolderName, 
            AEmployeeId, 'IDR', 1, AOnHandAmount, AAmountPayment, AShortage);
      end loop;  
      close CursorRegisterSalesPayment;
    end if;
      
  end loop;  
  close CursorRegisterSalesHd;
  
  -- Account Payable
  select sum(x.OutstandingTotalAmount)
  from RegisterSalesHd x
  where x.CashRegisterTransactionId = ACashRegisterTransactionId
  and x.StatusApprove <> '2'
  into AAccountPayable;

  -- Delete Payment after transfer
  delete from RegisterSalesPayment
  where RegisterSalesId in (
    select x.RegisterSalesId
    from RegisterSalesHd x
    where x.CashRegisterTransactionId = ACashRegisterTransactionId); 

  -- Delete Detail after transfer
  delete from RegisterSalesDt
  where RegisterSalesId in (
    select x.RegisterSalesId
    from RegisterSalesHd x
    where x.CashRegisterTransactionId = ACashRegisterTransactionId); 
  
  -- Delete Header after transfer
  delete from RegisterSalesHd
  where CashRegisterTransactionId = ACashRegisterTransactionId;

  -- Finally
  -- Set Header to Posted state >> (1) Posting Done
  update CashRegisterTransaction
  set StatusPosting = '1',
    APBalance = AAccountPayable
  where CashRegisterTransactionId = ACashRegisterTransactionId;  
end;
$$ LANGUAGE 'plpgsql';


create or replace function spSetSalesMinPriceColor (AItemId ItemId, AMinSalePrice currencyplus)
  RETURNS void AS
$$
declare
  OptionMinSalePriceActive varchar;
  OptionWarningMinSalePrice varchar;
       
begin
  select SetupValue
  from Setup
  where SetupId = 'OPT03'
  into OptionMinSalePriceActive;
  if OptionMinSalePriceActive is null then
    OptionMinSalePriceActive = '0';
  end if;
  
  select SetupValue
  from Setup
  where SetupId = 'OPT14'
  into OptionWarningMinSalePrice;
  if OptionWarningMinSalePrice is null then
    OptionWarningMinSalePrice = '0';
  end if;

  if (OptionMinSalePriceActive = '1' ) or (OptionWarningMinSalePrice = '1') then    
    update SalesInvoiceDt
    set StatusColor = '2'
    from SalesInvoiceHd
    where SalesInvoiceDt.SalesInvoiceId = SalesInvoiceHd.SalesInvoiceId    
    and SalesInvoiceHd.StatusApprove = '0'
    and SalesInvoiceDt.Itemid = AItemId
    and SalesInvoiceDt.Price <> 0
    and SalesInvoiceDt.Price < AMinSalePrice
    and StatusColor <> '2';
  end if;  
end;
$$ language 'plpgsql';


create or replace function spSetTempBarcode (ATempPrintBarcode varchar)
  RETURNS void AS
$$
declare
  Avendorid varchar;
  Aitemid ItemId;
  Abarcodeid varchar;

  Aexpireddate date;
  Acetak integer;
  Aprice currency;
  Abarcodename varchar;
  Ano integer;
  x integer;
  Ctempprintbarcode cursor for select a.vendorid,b.barcodeid,b.barcodename,a.itemid,a.cetak from tempprintbarcode a,item b where a.tempprintbarcodeid = $1 and a.pilih=1 and a.cetak>0 and a.itemid=b.itemid;
begin
  open Ctempprintbarcode;
  Avendorid='''';
  delete from tempbarcode where tempbarcodeid=$1;
  select count(*) from tempprintbarcode where tempprintbarcodeid = $1 and pilih=1 and cetak>0 into x;
  Ano=1;
  for i in 1..x loop
    fetch Ctempprintbarcode into Avendorid,Abarcodeid,Abarcodename,Aitemid,Acetak;
    for j in 1..Acetak loop

        select price1 from price where itemid=Aitemid into Aprice;
        insert into tempbarcode(tempbarcodeid,no,barcode,price,barcodename,vendorid) values ($1,Ano,Abarcodeid,Aprice,Abarcodename,Avendorid);

        Ano=Ano+1;
    end loop;
  end loop;
  close Ctempprintbarcode;
end;
$$ language 'plpgsql';


CREATE OR REPLACE FUNCTION spSetTransactionId (ATableName varchar, APrefix varchar, 
  ATransactionDate DateWithoutTime, AUseTotalRun integer)
  RETURNS void AS
$$
declare
  AMonth integer;
  AYear varchar;
  ASyntax varchar;
begin
  AMonth = Extract(month from ATransactionDate);
  AYear = Extract(year from ATransactionDate);
  
  if (select count(TableName) from TransactionRegistry
     where TableName = ATableName
     and Prefix = APrefix
     and Year = AYear) = 0 then  
    -- Create New Record
    insert into TransactionRegistry (TableName, Prefix, Year)
    values (ATableName, APrefix, AYear);
  end if;
  
  -- update Record 
  if AUseTotalRun = 0 then
    ASyntax =     
      'update TransactionRegistry ' ||
      'set Value' || AMonth || ' = Value' || AMonth || ' + 1 ' ||
      'where TableName = ''' || ATableName || ''' ' ||
      'and Prefix = ''' || APrefix || ''' ' ||
      'and Year = ''' || AYear || '''';
  else
    ASyntax =      
      'update TransactionRegistry ' ||
      'set ValueRun = ValueRun + 1 ' ||
      'where TableName = ''' || ATableName || ''' ' ||
      'and Prefix = ''' || APrefix || ''' ' ||
      'and Year = ''' || AYear || '''';
  end if;
  execute ASyntax; 
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION spSetTransactionPrint (ATableName varchar, AFieldName varchar, ATransactionId varchar)
  RETURNS void AS
$$
begin
  execute 'update ' || ATableName || ' set CounterPrint = CounterPrint + 1' ||
    ' where ' || AFieldName || ' = ''' || ATransactionId || '''';
end;
$$ LANGUAGE 'plpgsql';


create or replace function spUpdateAPBalanceCustomer 
  (ACustomerId varchar, AYear varchar, AMonth int4, ASignQty int4, AAmount currency, ACurrencyId varchar(10), AKurs CurrencyPlus)
returns void
as $$
declare
  ASyntax varchar;
begin
  -- update Qty(n) & Value(n) (APBalance)
  if (select count(CustomerId) from APBalanceCustomer
    where CustomerId = ACustomerId
    and Year = AYear
    and CurrencyId = ACurrencyId) = 0
  then
    -- make new record without closing period process
    insert into APBalanceCustomer (CustomerId, Year, CurrencyId) values (ACustomerId, AYear, ACurrencyId);
  end if;
  
  ASyntax = 
   'update APBalanceCustomer ' ||
   'set Value' || AMonth || ' = Value' || AMonth || ' + (' || AAmount || ' * ' || ASignQty || ') , ' ||
   'Rupiah' || AMonth || ' = Rupiah' || AMonth || ' + (' || (AAmount * AKurs) || ' * ' || ASignQty || ') ' ||
   'where CustomerId = ''' || ACustomerId || ''' ' ||
   'and Year =''' || AYear || '''' || 
   'and CurrencyId =''' || ACurrencyId || '''';

  execute ASyntax;
end;
$$ language 'plpgsql';


create or replace function spUpdateAPBalanceVendor 
  (AVendorId varchar, AYear varchar, AMonth int4, ASignQty int4, AAmount currency, ACurrencyId varchar(10), AKurs CurrencyPlus)
returns void
as $$
declare
  ASyntax varchar;
begin
  -- update Qty(n) & Value(n) (APBalance)
  if (select count(VendorId) from APBalanceVendor
    where VendorId = AVendorId
    and Year = AYear
    and CurrencyId = ACurrencyId) = 0
  then
    -- make new record without closing period process
    insert into APBalanceVendor (VendorId, Year, CurrencyId) values (AVendorId, AYear, ACurrencyId);
  end if;
  
  ASyntax = 
   'update APBalanceVendor ' ||
   'set Value' || AMonth || ' = Value' || AMonth ||' + (' || AAmount || ' * ' || ASignQty || ') , ' ||
   'Rupiah' || AMonth || ' = Rupiah' || AMonth || ' + (' || (AAmount * AKurs) || ' * ' || ASignQty || ') ' ||
   'where VendorId = ''' || AVendorId || ''' ' ||
   'and Year =''' || AYear || '''' || 
   'and CurrencyId =''' || ACurrencyId || '''';

  execute ASyntax;
end;
$$ language 'plpgsql';


create or replace function spUpdateARBalanceCustomer 
  (ACustomerId varchar, AYear varchar, AMonth int4, ASignQty int4, AAmount currency, ACurrencyId varchar(10), AKurs CurrencyPlus)
returns void
as $$
declare
  ASyntax varchar;
begin
  -- update Qty(n) & Value(n) (ARBalance)
  if (select count(CustomerId) from ARBalanceCustomer
    where CustomerId = ACustomerId
    and Year = AYear
    and CurrencyId = ACurrencyId) = 0
  then
    -- make new record without closing period process
    insert into ARBalanceCustomer (CustomerId, Year, CurrencyId) values (ACustomerId, AYear, ACurrencyId);
  end if;

  ASyntax=
    'update ARBalanceCustomer ' ||
    'set Value' || AMonth || ' = Value' || AMonth ||' + (' || AAmount || '* ' || ASignqty || ') , ' ||
    'Rupiah' || AMonth || ' = Rupiah' || AMonth || ' + (' || (AAmount * AKurs) || ' * ' || ASignQty || ') ' ||
    'where CustomerId = '''|| ACustomerId || ''' ' ||
    'and Year = ''' || AYear || '''' || 
   'and CurrencyId =''' || ACurrencyId || '''';
    
  execute ASyntax;
end;
$$ language 'plpgsql';


create or replace function spUpdateARBalanceVendor 
  (AVendorId varchar, AYear varchar, AMonth int4, ASignQty int4, AAmount currency, ACurrencyId varchar(10), AKurs CurrencyPlus)
returns void
as $$
declare
  ASyntax varchar;
begin
  -- update Qty(n) & Value(n) (ARBalance)
  if (select count(VendorId) from ARBalanceVendor
    where VendorId = AVendorId
    and Year = AYear
    and CurrencyId = ACurrencyId) = 0
  then
    -- make new record without closing period process
    insert into ARBalanceVendor (VendorId, Year, CurrencyId) values (AVendorId, AYear, ACurrencyId);
  end if;

  ASyntax=
    'update ARBalanceVendor ' ||
    'set Value' || AMonth || ' = Value' || AMonth ||' + (' || AAmount || '* ' || ASignqty || ') , ' ||
    'Rupiah' || AMonth || ' = Rupiah' || AMonth || ' + (' || (AAmount * AKurs) || ' * ' || ASignQty || ') ' ||
    'where VendorId = '''|| AVendorId || ''' ' ||
    'and Year = ''' || AYear || '''' || 
   'and CurrencyId =''' || ACurrencyId || '''';
    
  execute ASyntax;
end;
$$ language 'plpgsql';


create or replace function spUpdateBankBalance 
  (ABankId varchar, AAccountNo varchar, AYear varchar, AMonth int4, ASignQty int4, AAmount currency, ACurrencyId varchar(10), AKurs CurrencyPlus)
returns void
as $$
declare
  ASyntax varchar;
begin
  -- update Qty(n) & Value(n) (BankBalance)
  if (select count(BankId) from BankBalance
    where BankId = ABankId
    and AccountNo = AAccountNo
    and Year = AYear
    and CurrencyId = ACurrencyId) = 0
  then
    -- make new record without closing period process
    insert into BankBalance (BankId, AccountNo, Year, CurrencyId) values (ABankId, AAccountNo, AYear, ACurrencyId);
  end if;

  ASyntax=
     'update BankBalance ' ||
     'set Value' || Amonth || ' = Value' || Amonth || ' + (' || AAmount || '* ' || ASignQty || ') , ' ||
     'Rupiah' || AMonth || ' = Rupiah' || AMonth || ' + (' || (AAmount * AKurs) || ' * ' || ASignQty || ') ' ||
     'where BankId = ''' || ABankId || '''' ||
     'and AccountNo = ''' || AAccountNo || '''' ||
     'and Year = ''' || AYear || '''' ||
     'and CurrencyId = ''' || ACurrencyId || '''';

  execute ASyntax; 
end;
$$ language 'plpgsql';


create or replace function spUpdateCOGSCoupleHd 
  (ACoupleId varchar)
returns void as 
$$
declare
  ATotalCOGS currency;
  AAnotherCOGS currency;
  ACOGS currency;
  
  ACoupleDate DateWithoutTime;
  AItemId ItemId;
  AWarehouseId varchar;
  AQty quantity;
  
  AInsertMode integer;
  ATransactionTypeId varchar;
begin
  -- Get total COGS
  select sum(a.TotalCOGS) 
  from TransactionDt a
  left join Transaction b on a.TransactionId = b.TransactionId
  where b.ReferenceId = ACoupleId
  into ATotalCOGS;
  if ATotalCOGS is null then
    ATotalCOGS = 0;
  end if;
  
  -- Get COGS from service or non stock item
  select sum(a.Qty * a.Price) 
  from Transaction a
  left join Item b on a.ItemId = b.ItemId
  where (b.StatusItem = '0' or b.StatusItem = '2')  -- service & non-stock item
  and a.ReferenceId = ACoupleId
  and a.TransactionTypeId = 'TY010' -- Couple item detail
  into AAnotherCOGS;
  if AAnotherCOGS is null then
    AAnotherCOGS = 0;
  end if;
  
  -- 1. Update COGS couple header
  update CoupleHd
  set TotalCOGS = ATotalCOGS + AAnotherCOGS
  where CoupleId = ACoupleId;  
end;
$$ language 'plpgsql';


create or replace function spUpdateCashBalance 
  (AYear varchar, AMonth int4, ASignQty int4, AAmount currency, ACurrencyId varchar(10), AKurs CurrencyPlus)
returns void
as $$
declare
  ASyntax varchar;  
begin
  -- update Qty(n) & Value(n) (CashBalance)
  if (select count(Year) from CashBalance
    where Year = AYear
    and CurrencyId = ACurrencyId) = 0
  then
    -- make new record without closing period process
    insert into CashBalance (Year, CurrencyId) values (AYear, ACurrencyId);
  end if;
  
  ASyntax =
    'update CashBalance ' ||
    'set Value' || AMonth || ' = Value' || Amonth || ' + (' || AAmount || '* ' || ASignQty || ') , ' ||
    'Rupiah' || AMonth || ' = Rupiah' || AMonth || ' + (' || (AAmount * AKurs) || ' * ' || ASignQty || ') ' ||
    'where Year = ''' || AYear || '''' ||
    'and CurrencyId = ''' || ACurrencyId || '''';
    
  execute ASyntax;
end;
$$ language 'plpgsql';


create or replace function spUpdateCustomerDeposit 
  (ACustomerId varchar, ASign int4, AAmount currency, ACurrency varchar(10), AKurs CurrencyPlus)
returns void as 
$$
begin
  update Customer
  set DepositBalance = DepositBalance + ((ASign * AAmount) * AKurs)
  where CustomerId = ACustomerId;
end;
$$ language 'plpgsql';


CREATE OR REPLACE FUNCTION spUpdateItemBalanceTransactionIn
  (AItemId ItemId, AWarehouseId varchar, AYear varchar, AMonth integer, ASignQty integer, AQty quantity, APrice currency)
returns void as
$$
declare
  ASyntax varchar;
begin

  /* update Qty(n) & Value(n) (SuppliesBalance) */
  if (select count(ItemId) from ItemBalance
    where (ItemId = AItemId) and (WarehouseId = AWarehouseId)
    and (Year = AYear)) = 0
  then
    /* make new record in supplies balance, without closing period process */
    insert into ItemBalance (ItemId, WarehouseId, Year)
    values (AItemId, AWarehouseId, AYear);
  end if;

  ASyntax = 
   'update ItemBalance ' ||
   'set Qty' || Amonth || ' = Qty' || Amonth || '+ (' || AQty || '* ' || ASignQty || '),' ||
   '  Value' || Amonth || ' = Value'|| Amonth || '+ (' || AQty || ' * ' || APrice || ' * ' ||ASignQty || '),' ||
   '  TotalQtyIn = TotalQtyIn + (' || AQty || '* ' || ASignQty || '),' ||
   '  TotalValueIn = TotalValueIn + (' || AQty || ' * ' || APrice || ' * ' ||ASignQty || ')' ||
   'where ItemId = ''' || AItemId || '''' ||
   'and WarehouseId =''' || AWarehouseId || '''' ||
   'and Year =''' || AYear || '''';  
  execute ASyntax;
  
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION spUpdateItemBalanceTransactionOut
  (AItemId ItemId, AWarehouseId varchar, AYear varchar, AMonth integer, ASignQty integer, AQty quantity, APrice currency)
returns void as
$$
declare
  ASyntax varchar;
begin

  /* update Qty(n) & Value(n) (SuppliesBalance) */
  if (select count(ItemId) from ItemBalance
    where (ItemId = AItemId) and (WarehouseId = AWarehouseId)
    and (Year = AYear)) = 0
  then
    /* make new record in supplies balance, without closing period process */
    insert into ItemBalance (ItemId, WarehouseId, Year)
    values (AItemId, AWarehouseId, AYear);
  end if;

  ASyntax = 
   'update ItemBalance ' ||
   'set Qty' || Amonth || ' = Qty' || Amonth || '+ (' || AQty || '* ' || ASignQty || '),' ||
   '  Value' || Amonth || ' = Value'|| Amonth || '+ (' || AQty || ' * ' || APrice || ' * ' ||ASignQty || '),' ||   
   '  TotalQtyOut = TotalQtyOut + (' || AQty || '* ' || ASignQty || ' * -1),' ||
   '  TotalValueOut = TotalValueOut + (' || AQty || ' * ' || APrice || ' * ' ||ASignQty || ' * -1)' ||   
   'where ItemId = ''' || AItemId || '''' ||
   'and WarehouseId =''' || AWarehouseId || '''' ||
   'and Year =''' || AYear || '''';  
  execute ASyntax;
  
end;
$$ LANGUAGE 'plpgsql';


create or replace function spUpdateOutstandingCashBankTransaction 
  (AType varchar, ATransactionId varchar, AValue currency, AMode varchar)
returns void
as $$
begin
 if AType = '1' then
   if AMode = '1' then
     update cashtransaction 
     set outstanding = outstanding + AValue 
     where cashtransactionid = ATransactionId;
   end if;
   if AMode = '2' then
     update cashtransaction 
     set outstanding = outstanding - AValue 
     where cashtransactionid = ATransactionId;
   end if;
 end if;
 
 if AType = '2' then
   if AMode = '1' then
     update banktransaction 
     set outstanding = outstanding + AValue 
     where banktransactionid = ATransactionId;
   end if;
   if AMode = '2' then
     update banktransaction 
     set outstanding = outstanding - AValue 
     where banktransactionid = ATransactionId;
   end if;
 end if;
end;
$$ language 'plpgsql';


CREATE OR REPLACE FUNCTION spUpdateQtyMinusStockOnHandValue 
  (AWarehouseId varchar, AItemId ItemId, ADate DateWithoutTime, ASignQty int4, AQty quantity)
returns void as
$$
begin
  if (select count(ItemId) from StockOnHandValue
     where WarehouseId = AWarehouseId
     and ItemId = AItemId
     and Date = ADate
     and Price = 0) = 0 then
    insert into StockOnHandValue (WarehouseId, ItemId, Date, Qty, Price)
    values (AWarehouseId, AItemId, ADate, (AQty * ASignQty * -1), 0);
  else
    update StockOnHandValue
    set Qty = Qty + (AQty * ASignQty * -1)
    where WarehouseId = AWarehouseId
    and ItemId = AItemId
    and Date = ADate
    and Price = 0;
  
    -- Note : Apabila Qty = 0 maka record ini akan didelete oleh trigger pada TransactionDt  
  end if;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION spUpdateQtyMinusTransactionDt 
  (ATransactionId integer, ASignQty int4, AQty quantity, ADateCOGS DateWithoutTime)
returns void as
$$
declare
  AWarehouseSource varchar;
  AItemId ItemId;
begin
  if (select count(TransactionId) 
     from TransactionDt
     where TransactionId = ATransactionId
     and Qty < 0
     and DateCOGS =  ADateCOGS
     and COGS = 0) = 0 then
    insert into TransactionDt
      (TransactionId, Qty, DateCOGS, COGS)
    values 
      (ATransactionId, (AQty * ASignQty * -1), ADateCOGS, 0);
  else  
    update TransactionDt
    set Qty = Qty + (AQty * ASignQty * -1)
    where TransactionId = ATransactionId
    and Qty < 0
    and DateCOGS =  ADateCOGS
    and COGS = 0;
    
    -- Note : Apabila Qty = 0 maka record ini akan didelete oleh trigger pada TransactionDt    
  end if;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION spUpdateQtyPlusStockOnHandValue 
  (AWarehouseId varchar, AItemId ItemId, ADate DateWithoutTime, ASignQty int4, AQty quantity, APrice currency)
returns void as
$$
declare
  AStatusCostMethod varchar;
begin
  AStatusCostMethod = (select StatusCostMethod from Item where ItemId = AItemId);
  
  if (AStatusCostMethod = '0') or (AStatusCostMethod = '1') then
    -- FIFO or LIFO    
    if (select count(ItemId) from StockOnHandValue
       where WarehouseId = AWarehouseId
       and ItemId = AItemId
       and Date = ADate
       and Price = APrice) = 0 then
      insert into StockOnHandValue (WarehouseId, ItemId, Date, Qty, Price)
      values (AWarehouseId, AItemId, ADate, (AQty * ASignQty), APrice);
    else
      update StockOnHandValue
      set Qty = Qty + (AQty * ASignQty)
      where WarehouseId = AWarehouseId
      and ItemId = AItemId
      and Date = ADate
      and Price = APrice;
    end if;
  end if;
  
  if (AStatusCostMethod = '2') then
    -- AVERAGE
    RAISE EXCEPTION '%', 'Unchecked Section for StatusCostMethod = 2 (AVG)';
    
    -- APrice sudah harga rata2 terbaru
    if (select count(ItemId) from StockOnHandValue
       where WarehouseId = AWarehouseId
       and ItemId = AItemId) = 0 then
      insert into StockOnHandValue (WarehouseId, ItemId, Date, Qty, Price)
      values (AWarehouseId, AItemId, ADate, (AQty * ASignQty), APrice);
    else
      update StockOnHandValue
      set Date = ADate,
        Price = APrice,
        Qty = Qty + (AQty * ASignQty)
      where WarehouseId = AWarehouseId
      and ItemId = AItemId;
    end if;
  end if;

  -- Note : Apabila Qty = 0 maka record ini akan didelete oleh trigger pada TransactionDt
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION spUpdateQtyPlusTransactionDt 
  (ATransactionId integer, ASignQty int4, AQty quantity, ADateCOGS DateWithoutTime, ACOGS currency)
returns void as
$$
declare
  ANewQty quantity;
begin
  if (select count(TransactionId) from TransactionDt
     where TransactionId = ATransactionId
     and Qty > 0
     and DateCOGS =  ADateCOGS
     and COGS = ACOGS) = 0 then
    insert into TransactionDt
      (TransactionId, Qty, DateCOGS, COGS)
    values 
      (ATransactionId, (AQty * ASignQty), ADateCOGS, ACOGS);
  else  
    update TransactionDt
    set Qty = Qty + (AQty * ASignQty)
    where TransactionId = ATransactionId
    and Qty > 0
    and DateCOGS =  ADateCOGS
    and COGS = ACOGS;
    
    -- Note : Apabila Qty = 0 maka record ini akan didelete oleh trigger pada TransactionDt    
  end if;
end;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION spUpdateRevenueBalance
  (AItemId ItemId, AYear varchar, AMonth integer, ASignQty integer, ARevenue currency, ARevenueTotal currency)
returns void as
$$
declare
  ASyntax varchar;
begin
  -- update Qty(n) & Value(n) (RevenueBalance)
  if (select count(ItemId) from RevenueBalance
    where ItemId = AItemId
    and Year = AYear) = 0
  then
    -- make new record without closing period process
    insert into RevenueBalance (ItemId, Year) values (AItemId, AYear);
  end if;
  
  ASyntax = 
   'update RevenueBalance ' ||
   'set Value' || AMonth || ' = Value' || AMonth || ' + (' || ARevenue || ' *  ' || ASignQty || '), ' ||
   '  ValueTotal' || AMonth || ' = ValueTotal' || AMonth || ' + (' || ARevenueTotal || ' *  ' || ASignQty || ')' ||
   'where ItemId = ''' || AItemId || '''' ||   
   'and Year =''' || AYear || '''';  

  execute ASyntax;
end;
$$ LANGUAGE 'plpgsql';


create or replace function spUpdateStockExpired 
  (AItemId ItemId, AWarehouseId varchar, AExpiredDate DateWithoutTime, ASignQty int4, AQty Quantity)
returns void
as $$
begin
  if (select count(ItemId)
    from StockExpired
    where ItemId = AItemId
    and WarehouseId = AWarehouseId
    and ExpiredDate = AExpiredDate) = 0 then
    insert into StockExpired (ItemId, WarehouseId, ExpiredDate, Qty)
    values (AItemId, AWarehouseId, AExpiredDate, (AQty * ASignQty));
  else
    update StockExpired
    set Qty = Qty + (AQty * ASignQty)
    where ItemId = AItemId
    and WarehouseId = AWarehouseId
    and ExpiredDate = AExpiredDate;
  end if;
end;
$$ language 'plpgsql';


CREATE OR REPLACE FUNCTION spUpdateTransactionBalance
  (AItemId ItemId, AWarehouseId varchar, ATransactionTypeId varchar, AYear varchar, AMonth integer,
  ASignQty integer, AQty quantity, APrice currency)
returns void as
$$
declare
  ASyntax varchar;
begin
  -- update Qty(n) & Value(n) (TransactionBalance)
  if (select count(ItemId)
    from TransactionBalance
    where ItemId = AItemId
    and WarehouseId = AWarehouseId
    and TransactionTypeId = ATransactionTypeId
    and Year = AYear) = 0
  then
    -- make new record in transaction balance, without closing period process
    insert into TransactionBalance (ItemId, WarehouseId, TransactionTypeId, Year)
    values (AItemId, AWarehouseId, ATransactionTypeId, AYear);
  end if;

  ASyntax=
    'update TransactionBalance ' ||
    'set Qty' || Amonth || ' = Qty' || Amonth || '+ (' || AQty || '* ' || ASignQty || '),' ||
    '  Value' || Amonth || ' = Value'|| Amonth || '+ (' || AQty || ' * ' || APrice || ' * ' ||ASignQty || ')' ||
    'where ItemId = ''' || AItemId || '''' ||
    'and WarehouseId = ''' || AWarehouseId || '''' ||
    'and TransactionTypeId = ''' || ATransactionTypeId || '''' ||
    'and Year = ''' || AYear || '''';

  execute  ASyntax;
end;
$$ LANGUAGE 'plpgsql';


create or replace function spUpdateVendorDeposit 
  (AVendorId varchar, ASign int4, AAmount currency, ACurrency varchar(10), AKurs CurrencyPlus)
returns void as 
$$
begin
  update Vendor
  set DepositBalance = DepositBalance + ((ASign * AAmount) * AKurs)
  where VendorId = AVendorId;
end;
$$ language 'plpgsql';


create or replace function trAPAdjustmentCustomer_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  AYear varchar;
  AMonth varchar;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.APAdjustmentCustomerDate) <> extract(year from Old.APAdjustmentCustomerDate)) or
        (extract(month from New.APAdjustmentCustomerDate) <> extract(month from Old.APAdjustmentCustomerDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.APAdjustmentCustomerDate <= fnGetClosingDate() then
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
    
  if (TG_OP = 'INSERT') then 
    -- perform new process
    AYear  := EXTRACT(Year from New.APAdjustmentCustomerDate);
    AMonth := EXTRACT(Month from New.APAdjustmentCustomerDate);
    execute spAdjustmentAPBalanceCustomer (New.CustomerId, AYear, cast(AMonth as integer), 1, New.Amount, New.CurrencyId);
  end if;

  if (TG_OP = 'UPDATE') then
    -- perform old process
    AYear  := EXTRACT(Year from Old.APAdjustmentCustomerDate);
    AMonth := EXTRACT(Month from Old.APAdjustmentCustomerDate);
    execute spAdjustmentAPBalanceCustomer (Old.CustomerId, AYear, cast(AMonth as integer), -1, Old.Amount, Old.CurrencyId);

    -- Do void process here
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
    
    end if;

    -- perform new process, if not void process
    if New.StatusApprove <> '2' then
      AYear  := EXTRACT(Year from New.APAdjustmentCustomerDate);
      AMonth := EXTRACT(Month from New.APAdjustmentCustomerDate);
      execute spAdjustmentAPBalanceCustomer (New.CustomerId, AYear, cast(AMonth as integer), 1, New.Amount, New.CurrencyId);
    end if;
  end if;  

  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trAPAdjustmentCustomer_After
AFTER INSERT OR UPDATE OR DELETE ON APAdjustmentCustomer
  FOR EACH ROW EXECUTE PROCEDURE trAPAdjustmentCustomer_After();


create or replace function trAPAdjustmentVendor_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  AYear varchar;
  AMonth varchar;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.APAdjustmentVendorDate) <> extract(year from Old.APAdjustmentVendorDate)) or
        (extract(month from New.APAdjustmentVendorDate) <> extract(month from Old.APAdjustmentVendorDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.APAdjustmentVendorDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
    
  if (TG_OP = 'INSERT') then 
    -- perform new process
    AYear  := EXTRACT(Year from New.APAdjustmentVendorDate);
    AMonth := EXTRACT(Month from New.APAdjustmentVendorDate);
    execute spAdjustmentAPBalanceVendor (New.VendorId, AYear, cast(AMonth as integer), 1, New.Amount, New.CurrencyId);
  end if;

  if (TG_OP = 'UPDATE') then
    -- perform old process
    AYear  := EXTRACT(Year from Old.APAdjustmentVendorDate);
    AMonth := EXTRACT(Month from Old.APAdjustmentVendorDate);
    execute spAdjustmentAPBalanceVendor (Old.VendorId, AYear, cast(AMonth as integer), -1, Old.Amount, Old.CurrencyId);

    -- Do void process here
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
    
    end if;

    -- perform new process, if not void
    if New.StatusApprove <> '2' then
      AYear  := EXTRACT(Year from New.APAdjustmentVendorDate);
      AMonth := EXTRACT(Month from New.APAdjustmentVendorDate);
      execute spAdjustmentAPBalanceVendor (New.VendorId, AYear, cast(AMonth as integer), 1, New.Amount, New.CurrencyId);
    end if;
  end if;  

  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trAPAdjustmentVendor_After
AFTER INSERT OR UPDATE OR DELETE ON APAdjustmentVendor
  FOR EACH ROW EXECUTE PROCEDURE trAPAdjustmentVendor_After();


create or replace function trARAdjustmentCustomer_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  AYear varchar;
  AMonth varchar;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.ARAdjustmentCustomerDate) <> extract(year from Old.ARAdjustmentCustomerDate)) or
        (extract(month from New.ARAdjustmentCustomerDate) <> extract(month from Old.ARAdjustmentCustomerDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.ARAdjustmentCustomerDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
      
  if (TG_OP = 'INSERT') then 
    -- perform new process
    AYear  := EXTRACT(Year from New.ARAdjustmentCustomerDate);
    AMonth := EXTRACT(Month from New.ARAdjustmentCustomerDate);
    execute spAdjustmentARBalanceCustomer (New.CustomerId, AYear, cast(AMonth as integer), 1, New.Amount, New.CurrencyId);
  end if;

  if (TG_OP = 'UPDATE') then
    -- perform old process
    AYear  := EXTRACT(Year from Old.ARAdjustmentCustomerDate);
    AMonth := EXTRACT(Month from Old.ARAdjustmentCustomerDate);
    execute spAdjustmentARBalanceCustomer (Old.CustomerId, AYear, cast(AMonth as integer), -1, Old.Amount, Old.CurrencyId);

    -- Do void process
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
    
    end if;

    -- perform new process, if not void
    if New.StatusApprove <> '2' then
      AYear  := EXTRACT(Year from New.ARAdjustmentCustomerDate);
      AMonth := EXTRACT(Month from New.ARAdjustmentCustomerDate);
      execute spAdjustmentARBalanceCustomer (New.CustomerId, AYear, cast(AMonth as integer), 1, New.Amount, New.CurrencyId);
    end if;
  end if;  

  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trARAdjustmentCustomer_After
AFTER INSERT OR UPDATE OR DELETE ON ARAdjustmentCustomer
  FOR EACH ROW EXECUTE PROCEDURE trARAdjustmentCustomer_After();


create or replace function trARAdjustmentVendor_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  AYear varchar;
  AMonth varchar;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.ARAdjustmentVendorDate) <> extract(year from Old.ARAdjustmentVendorDate)) or
        (extract(month from New.ARAdjustmentVendorDate) <> extract(month from Old.ARAdjustmentVendorDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.ARAdjustmentVendorDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------

  if (TG_OP = 'INSERT') then 
    -- perform new process
    AYear  := EXTRACT(Year from New.ARAdjustmentVendorDate);
    AMonth := EXTRACT(Month from New.ARAdjustmentVendorDate);
    execute spAdjustmentARBalanceVendor (New.VendorId, AYear, cast(AMonth as integer), 1, New.Amount, New.CurrencyId);
  end if;

  if (TG_OP = 'UPDATE') then
    -- perform old process
    AYear  := EXTRACT(Year from Old.ARAdjustmentVendorDate);
    AMonth := EXTRACT(Month from Old.ARAdjustmentVendorDate);
    execute spAdjustmentARBalanceVendor (Old.VendorId, AYear, cast(AMonth as integer), -1, Old.Amount, Old.CurrencyId);

    -- Do void process
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
    
    end if;

    -- perform new process, if not void
    if New.StatusApprove <> '2' then
      AYear  := EXTRACT(Year from New.ARAdjustmentVendorDate);
      AMonth := EXTRACT(Month from New.ARAdjustmentVendorDate);
      execute spAdjustmentARBalanceVendor (New.VendorId, AYear, cast(AMonth as integer), 1, New.Amount, New.CurrencyId);
    end if;
  end if;  

  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trARAdjustmentVendor_After
AFTER INSERT OR UPDATE OR DELETE ON ARAdjustmentVendor
  FOR EACH ROW EXECUTE PROCEDURE trARAdjustmentVendor_After();


create or replace function trBankAdjustment_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  AYear varchar;
  AMonth varchar;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.BankAdjustmentDate) <> extract(year from Old.BankAdjustmentDate)) or
        (extract(month from New.BankAdjustmentDate) <> extract(month from Old.BankAdjustmentDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
--      if (Old.CounterPrint <> New.CounterPrint) or (Old.___ <> New.___) then 
--        ADoChecking = 0; 
--      end if;
    end if;

    if ADoChecking = 1 then
      if New.BankAdjustmentDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------

  if (TG_OP = 'INSERT') then 
    -- perform new process
    AYear  := EXTRACT(Year from New.BankAdjustmentDate);
    AMonth := EXTRACT(Month from New.BankAdjustmentDate);
    execute spAdjustmentBankBalance (New.BankId, New.AccountNo, AYear, cast(AMonth as integer), 1, New.Amount, New.CurrencyId);
  end if;
  
  if (TG_OP = 'UPDATE') then
    -- perform old process
    AYear  := EXTRACT(Year from Old.BankAdjustmentDate);
    AMonth := EXTRACT(Month from Old.BankAdjustmentDate);
    execute spAdjustmentbankBalance (Old.BankId, Old.AccountNo, AYear, cast(AMonth as integer), -1, Old.Amount, Old.CurrencyId);

    -- Do void process
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
    
    end if;

    -- perform new process, if not void
    if New.StatusApprove <> '2' then
      AYear  := EXTRACT(Year from New.BankAdjustmentDate);
      AMonth := EXTRACT(Month from New.BankAdjustmentDate);
      execute spAdjustmentbankBalance (New.BankId, New.AccountNo, AYear, cast(AMonth as integer), 1, New.Amount, New.CurrencyId);
    end if;
  end if;  

  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trBankAdjustment_After
AFTER INSERT OR UPDATE OR DELETE ON BankAdjustment
  FOR EACH ROW EXECUTE PROCEDURE trBankAdjustment_After();


create or replace function trBankTransaction_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;

  ACurrentYear varchar; 
  ACurrentMonth int;
  AFlagOut integer;
  ASign integer;
  ACurrentCustomerDeposit Currency;
  ACurrentVendorDeposit Currency;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if (Old.StatusApprove = '2') and (New.StatusApprove <> '1') then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.BankTransactionDate) <> extract(year from Old.BankTransactionDate)) or
        (extract(month from New.BankTransactionDate) <> extract(month from Old.BankTransactionDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.BankTransactionDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
 
  -- Process Old Data
  if (TG_OP = 'UPDATE') then
    -- Amount atau Customer Changed      
    if (Old.Amount <> New.Amount) or (Old.CustomerId <> New.CustomerId) then
      if (Old.CashBankTransactionTypeId = 'B0003') then -- Transaksi (Terima Deposit Customer - Bank) tidak jadi 
        -- Cek sisa deposit
        select a.DepositBalance
        from Customer a
        where a.CustomerId = Old.CustomerId
        into ACurrentCustomerDeposit;
        if (ACurrentCustomerDeposit is null) then
          ACurrentCustomerDeposit = 0;
        end if;
        
        if (ACurrentCustomerDeposit - Old.Amount + New.Amount) < 0 then
          raise exception '%', '^Transaksi tidak dapat diubah karena saldo deposit tidak mencukupi !^';
        end if;
      end if;
    end if;
      
    -- Amount atau Vendor Changed         
    if (Old.Amount <> New.Amount) or (Old.VendorId <> New.VendorId) then
      if (Old.CashBankTransactionTypeId = 'B0005') then -- Transaksi (Deposit ke Vendor - Bank) tidak jadi 
        -- Cek sisa deposit
        select a.DepositBalance
        from Vendor a
        where a.VendorId = Old.VendorId
        into ACurrentVendorDeposit;
        if (ACurrentVendorDeposit is null) then
          ACurrentVendorDeposit = 0;
        end if;
        
        if (ACurrentVendorDeposit - Old.Amount + New.Amount) < 0 then
          raise exception '%', '^Transaksi tidak dapat diubah karena saldo deposit tidak mencukupi !^';
        end if;
      end if;
    end if;   
    
    ACurrentYear = Extract(Year from Old.BankTransactionDate);
    ACurrentMonth = Extract(Month from Old.BankTransactionDate);
    select FlagOut from CashBankTransactionType
    where CashBankTransactionTypeId = Old.CashBankTransactionTypeId
    into AFlagOut;

    if AFlagOut = 0 then
      ASign = -1; -- Kas Masuk
    else
      ASign = 1; -- Kas Keluar
    end if;

    -- Update Bank balance
    execute spUpdateBankBalance(Old.BankId, Old.AccountNo, ACurrentYear, ACurrentMonth, ASign, Old.Amount, Old.CurrencyId, Old.Kurs);

    -- Transaksi Deposit
    if Old.CashBankTransactionTypeId = 'B0003' then -- (tidak jadi) Terima deposit dari customer
      -- Update AP Balance Customer (-)
      execute spUpdateAPBalanceCustomer(Old.CustomerId, ACurrentYear, cast(ACurrentMonth as integer), -1, Old.Amount, Old.CurrencyId, Old.Kurs);
      -- Update Customer Deposit (-)
      execute spUpdateCustomerDeposit(Old.CustomerId, -1, Old.Amount, Old.CurrencyId, Old.Kurs);
    end if;

    if Old.CashBankTransactionTypeId = 'B0004' then -- (tidak jadi) Kembalikan deposit ke customer
      -- Update AP Balance Customer (+)
      execute spUpdateAPBalanceCustomer(Old.CustomerId, ACurrentYear, cast(ACurrentMonth as integer), 1, Old.Amount, Old.CurrencyId, Old.Kurs);
      -- Update Customer Deposit (+)
      execute spUpdateCustomerDeposit(Old.CustomerId, 1, Old.Amount, Old.CurrencyId, Old.Kurs);
    end if;

    if Old.CashBankTransactionTypeId = 'B0005' then -- (tidak jadi) Bayar deposit ke vendor
      -- Update AR Balance Vendor (-)
      execute spUpdateARBalanceVendor(Old.VendorId, ACurrentYear, cast(ACurrentMonth as integer), -1, Old.Amount, Old.CurrencyId, Old.Kurs);
      -- Update Vendor Deposit (-)
      execute spUpdateVendorDeposit(Old.VendorId, -1, Old.Amount, Old.CurrencyId, Old.Kurs);
    end if;

    if Old.CashBankTransactionTypeId = 'B0006' then -- (tidak jadi) Ambil deposit dari vendor
      -- Update AR Balance Vendor (+)
      execute spUpdateARBalanceVendor(Old.VendorId, ACurrentYear, cast(ACurrentMonth as integer), 1, Old.Amount, Old.CurrencyId, Old.Kurs);
      -- Update Vendor Deposit (+)
      execute spUpdateVendorDeposit(Old.VendorId, 1, Old.Amount, Old.CurrencyId, Old.Kurs);
    end if;
  end if;
  
  
  -- Process New Data
  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    if (New.StatusApprove = '2') then 
      -- do void
      -- Note: Always UPDATE state, data already process on Process Old Data
      if (New.Outstanding <> New.Amount) then
        raise exception '%', '^Void tidak dapat dilakukan karena transaksi bank telah dialokasikan !^';
      end if;
    else
      -- Normal 
    
      -- Apabila transaksi (Kembalikan Deposit Customer - Bank) cek sisa deposit
      if New.CashBankTransactionTypeId = 'B0004' then 
        select a.DepositBalance
        from Customer a
        where a.CustomerId = New.CustomerId
        into ACurrentCustomerDeposit;
        if (ACurrentCustomerDeposit is null) then
          ACurrentCustomerDeposit = 0;
        end if;
         
        if (ACurrentCustomerDeposit - New.Amount) < 0 then
          raise exception '%', '^Transaksi tidak dapat dilakukan karena saldo deposit tidak mencukupi !^';
        end if;
      end if;
    
      -- Apabila transaksi (Ambil Deposit dari Vendor - Bank) cek sisa deposit
      if New.CashBankTransactionTypeId = 'B0006' then 
        select a.DepositBalance
        from Vendor a
        where a.VendorId = New.VendorId
        into ACurrentVendorDeposit;
        if (ACurrentVendorDeposit is null) then
          ACurrentVendorDeposit = 0;
        end if;
        
        if (ACurrentVendorDeposit - New.Amount) < 0 then
          raise exception '%', '^Transaksi tidak dapat dilakukan karena saldo deposit tidak mencukupi !^';
        end if;
      end if;    
    
      -- Apabila transaksi deposit Customer atau Vendor harus diisi
      if (New.CashBankTransactionTypeId = 'B0003') or (New.CashBankTransactionTypeId = 'B0004') then
        if New.CustomerId is null then
          Raise Exception '%', '^Customer masih belum diisi !^';
        end if;
      end if;
      if (New.CashBankTransactionTypeId = 'B0005') or (New.CashBankTransactionTypeId = 'B0006') then
        if New.VendorId is null then
          Raise Exception '%', '^Vendor masih belum diisi !^';
        end if;
      end if;    
    
      if (TG_OP = 'INSERT') then
        -- Calculate New Outstanding
        New.Outstanding = New.Amount;
      end if;

      if (TG_OP = 'UPDATE') then
        -- Calculate New Outstanding
        New.Outstanding = New.Outstanding - Old.Amount + New.Amount;
      
        -- Transaction Date Changed
        if (extract(year from New.BankTransactionDate) <> extract(year from Old.BankTransactionDate)) or
          (extract(month from New.BankTransactionDate) <> extract(month from Old.BankTransactionDate)) then
          raise exception '%', '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
        end if;
      end if;  

      -- Cek Outstanding
      if New.Outstanding < 0 then
        raise exception '%', '^Transaksi tidak dapat dilakukan karena alokasi transaksi bank tidak mencukupi !^';
      end if;

      ACurrentYear = Extract(Year from New.BankTransactionDate);
      ACurrentMonth = Extract(Month from New.BankTransactionDate);    
      select FlagOut from CashBankTransactionType 
      where CashBankTransactionTypeId = New.CashBankTransactionTypeId
      into AFlagOut;

      if AFlagOut = 0 then
        ASign = 1; -- Kas Masuk
      else
        ASign = -1; -- Kas Keluar
      end if;    

      -- update cash balance (new)
      execute spUpdateBankBalance(New.BankId, New.AccountNo, ACurrentYear, ACurrentMonth, ASign, New.Amount, New.CurrencyId, New.Kurs);

      -- Transaction Deposit
      if New.CashBankTransactionTypeId = 'B0003' then -- Terima deposit dari customer
        -- Update AP Balance Customer (+)
        execute spUpdateAPBalanceCustomer(New.CustomerId, ACurrentYear, cast(ACurrentMonth as integer), 1, New.Amount, New.CurrencyId, New.Kurs);
        -- Update Customer Deposit (+)
        execute spUpdateCustomerDeposit(New.CustomerId, 1, New.Amount, New.CurrencyId, New.Kurs);
      end if;
      
      if New.CashBankTransactionTypeId = 'B0004' then -- Kembalikan deposit ke customer
        -- Update AP Balance Customer (-)
        execute spUpdateAPBalanceCustomer(New.CustomerId, ACurrentYear, cast(ACurrentMonth as integer), -1, New.Amount, New.CurrencyId, New.Kurs);
        -- Update Customer Deposit (-)
        execute spUpdateCustomerDeposit(New.CustomerId, -1, New.Amount, New.CurrencyId, New.Kurs);
      end if;
      
      if New.CashBankTransactionTypeId = 'B0005' then -- Bayar deposit ke vendor
        -- Update AR Balance Vendor (+)
        execute spUpdateARBalanceVendor(New.VendorId, ACurrentYear, cast(ACurrentMonth as integer), 1, New.Amount, New.CurrencyId, New.Kurs);
        -- Update Vendor Deposit (+)
        execute spUpdateVendorDeposit(New.VendorId, 1, New.Amount, New.CurrencyId, New.Kurs);
      end if;
      
      if New.CashBankTransactionTypeId = 'B0006' then -- Ambil deposit dari vendor
        -- Update AR Balance Vendor (-)
        execute spUpdateARBalanceVendor(New.VendorId, ACurrentYear, cast(ACurrentMonth as integer), -1, New.Amount, New.CurrencyId, New.Kurs);
        -- Update Vendor Deposit (-)
        execute spUpdateVendorDeposit(New.VendorId, -1, New.Amount, New.CurrencyId, New.Kurs);
      end if;
    end if;
  end if;

  if TG_OP = 'DELETE' then
    return old;
  else
    return new;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trBankTransaction_Before
BEFORE INSERT OR UPDATE OR DELETE ON BankTransaction
  FOR EACH ROW EXECUTE PROCEDURE trBankTransaction_Before();


create or replace function trCashRegisterTransaction_Before ()
  returns trigger AS
$$
declare
  AItemId ItemId;
  AFlagUse varchar;
  AShiftName varchar;
  
  AMessage varchar;
  APrefixCashBank varchar;
  APrefixCashBankLength integer;
  APrefixCashBankRunTotal integer;  
begin 
  -- Initialize
  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    select ShiftName
    from Shift
    where ShiftCode = New.ShiftCode
    into AShiftName;
  end if;

  -- 1.OnInsert
  if (TG_OP = 'INSERT') then
    select FlagUse    
    from CashRegister 
    where CashRegisterId = New.CashRegisterId
    into AFlagUse;
    if AFlagUse = '1' then
      raise exception '^Register yang dipilih sedang digunakan oleh user lain !^';    
    end if;
    
    -- Update FlagUse
    update CashRegister
    set FlagUse = '1',
      LastCashRegisterTransaction = New.CashRegisterTransactionId
    where CashRegisterId = New.CashRegisterId;

    -- Generate Kas Keluar (saldo awal)
    select SetupValue from Setup
    where SetupId = 'KK1'
    into APrefixCashBank;
          
    select cast(SetupValue as integer) from Setup
    where SetupId = 'KK2'
    into APrefixCashBankLength;
          
    select cast(SetupValue as integer) from Setup
    where SetupId = 'KK3'
    into APrefixCashBankRunTotal;
          
    New.CashOutRefId = (select fnGetTransactionId('CashTransaction', APrefixCashBank, APrefixCashBankLength, cast(New.DateOpening as DateWithoutTime), APrefixCashBankRunTotal));
    AMessage = 'Ambil untuk saldo awal ' || '(Shift: ' || AShiftName || ', Kode: ' || New.CashRegisterTransactionId || ')';

    insert into CashTransaction 
      (CashTransactionId, CashTransactionDate, CashBankTransactionTypeId, Amount, EmployeeId, Memo, FlagAutomatic, StatusApprove, CurrencyId, Kurs)
    values 
      (New.CashOutRefId, cast(New.DateOpening as DateWithoutTime), 'C0002', New.OpeningBalance, New.EmployeeId, AMessage, '1', '1', 'IDR', 1);
            
    -- Update Transaction Registery Counter
    execute spSetTransactionId('CashTransaction', APrefixCashBank, cast(New.DateOpening as DateWithoutTime), APrefixCashBankRunTotal);
  end if;

  if (TG_OP = 'UPDATE') then
    if (Old.DateClosing is null) and (New.DateClosing is not null) then
      update CashRegister
      set FlagUse = '0'
      where CashRegisterId = New.CashRegisterId;    
    end if;  

    if (New.StatusPosting = '1') then
      -- Generate Kas Keluar (saldo awal)
      select SetupValue from Setup
      where SetupId = 'KM1'
      into APrefixCashBank;
          
      select cast(SetupValue as integer) from Setup
      where SetupId = 'KM2'
      into APrefixCashBankLength;
          
      select cast(SetupValue as integer) from Setup
      where SetupId = 'KM3'
      into APrefixCashBankRunTotal;

      New.CashInRefId = (select fnGetTransactionId('CashTransaction', APrefixCashBank, APrefixCashBankLength, cast(New.DateOpening as DateWithoutTime), APrefixCashBankRunTotal));
      AMessage = 'Setor saldo awal ' || '(Shift: ' || AShiftName || ', Kode: ' || New.CashRegisterTransactionId || ')';

      insert into CashTransaction 
        (CashTransactionId, CashTransactionDate, CashBankTransactionTypeId, Amount, EmployeeId, Memo, FlagAutomatic, StatusApprove, CurrencyId, Kurs)
      values 
        (New.CashInRefId, cast(New.DateOpening as DateWithoutTime), 'C0001', New.OpeningBalance, New.EmployeeId, AMessage, '1', '1', 'IDR', 1);
            
      -- Update Transaction Registery Counter
      execute spSetTransactionId('CashTransaction', APrefixCashBank, cast(New.DateOpening as DateWithoutTime), APrefixCashBankRunTotal);
    end if;
  end if;
  
  if (TG_OP = 'DELETE') then
    return old;
  else
    return new;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trCashRegisterTransaction_Before
BEFORE INSERT OR UPDATE OR DELETE ON CashRegisterTransaction
  FOR EACH ROW EXECUTE PROCEDURE trCashRegisterTransaction_Before();


create or replace function trCashTransaction_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  ACurrentYear varchar; 
  ACurrentMonth int;
  AFlagOut integer;
  ASign integer;
  ACurrentCustomerDeposit Currency;
  ACurrentVendorDeposit Currency;
begin 
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if (Old.StatusApprove = '2') and (New.StatusApprove <> '1') then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.CashTransactionDate) <> extract(year from Old.CashTransactionDate)) or
        (extract(month from New.CashTransactionDate) <> extract(month from Old.CashTransactionDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.CashTransactionDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
 
  -- Process Old Data
  if (TG_OP = 'UPDATE') then
    -- Transaction Date Changed
    if (extract(year from New.CashTransactionDate) <> extract(year from Old.CashTransactionDate)) or
      (extract(month from New.CashTransactionDate) <> extract(month from Old.CashTransactionDate)) then
      raise exception '%', '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
    end if;

    -- Amount atau Customer Changed      
    if (Old.Amount <> New.Amount) or (Old.CustomerId <> New.CustomerId) then
      if (Old.CashBankTransactionTypeId = 'C0003') then -- Transaksi (Terima Deposit Customer - Tunai) tidak jadi 
        -- Cek sisa deposit
        select a.DepositBalance
        from Customer a
        where a.CustomerId = Old.CustomerId
        into ACurrentCustomerDeposit;
        if (ACurrentCustomerDeposit is null) then
          ACurrentCustomerDeposit = 0;
        end if;
        
        if (ACurrentCustomerDeposit - Old.Amount + New.Amount) < 0 then
          raise exception '%', '^Transaksi tidak dapat diubah karena saldo deposit tidak mencukupi !^';
        end if;
      end if;
    end if;
      
    -- Amount atau Vendor Changed         
    if (Old.Amount <> New.Amount) or (Old.VendorId <> New.VendorId) then
      if (Old.CashBankTransactionTypeId = 'C0005') then -- Transaksi (Deposit ke Vendor - Tunai) tidak jadi 
        -- Cek sisa deposit
        select a.DepositBalance
        from Vendor a
        where a.VendorId = Old.VendorId
        into ACurrentVendorDeposit;
        if (ACurrentVendorDeposit is null) then
          ACurrentVendorDeposit = 0;
        end if;
        
        if (ACurrentVendorDeposit - Old.Amount + New.Amount) < 0 then
          raise exception '%', '^Transaksi tidak dapat diubah karena saldo deposit tidak mencukupi !^';
        end if;
      end if;
    end if;   
    
    ACurrentYear = Extract(Year from Old.CashTransactionDate);
    ACurrentMonth = Extract(Month from Old.CashTransactionDate);
    select FlagOut from CashBankTransactionType
    where CashBankTransactionTypeId = Old.CashBankTransactionTypeId
    into AFlagOut;

    if AFlagOut = 0 then
      ASign = -1; -- Kas Masuk
    else
      ASign = 1; -- Kas Keluar
    end if;

    -- Update Cash balance
    execute spUpdateCashBalance(ACurrentYear, ACurrentMonth, ASign, Old.Amount, Old.CurrencyId, Old.Kurs);

    -- Transaksi Deposit
    if Old.CashBankTransactionTypeId = 'C0003' then -- (tidak jadi) Terima deposit dari customer
      -- Update AP Balance Customer (-)
      execute spUpdateAPBalanceCustomer(Old.CustomerId, ACurrentYear, cast(ACurrentMonth as integer), -1, Old.Amount, Old.CurrencyId, Old.Kurs);
      -- Update Customer Deposit (-)
      execute spUpdateCustomerDeposit(Old.CustomerId, -1, Old.Amount, Old.CurrencyId, Old.Kurs);
    end if;

    if Old.CashBankTransactionTypeId = 'C0004' then -- (tidak jadi) Kembalikan deposit ke customer
      -- Update AP Balance Customer (+)
      execute spUpdateAPBalanceCustomer(Old.CustomerId, ACurrentYear, cast(ACurrentMonth as integer), 1, Old.Amount, Old.CurrencyId, Old.Kurs);
      -- Update Customer Deposit (+)
      execute spUpdateCustomerDeposit(Old.CustomerId, 1, Old.Amount, Old.CurrencyId, Old.Kurs);
    end if;

    if Old.CashBankTransactionTypeId = 'C0005' then -- (tidak jadi) Bayar deposit ke vendor
      -- Update AR Balance Vendor (-)
      execute spUpdateARBalanceVendor(Old.VendorId, ACurrentYear, cast(ACurrentMonth as integer), -1, Old.Amount, Old.CurrencyId, Old.Kurs);
      -- Update Vendor Deposit (-)
      execute spUpdateVendorDeposit(Old.VendorId, -1, Old.Amount, Old.CurrencyId, Old.Kurs);
    end if;

    if Old.CashBankTransactionTypeId = 'C0006' then -- (tidak jadi) Ambil deposit dari vendor
      -- Update AR Balance Vendor (+)
      execute spUpdateARBalanceVendor(Old.VendorId, ACurrentYear, cast(ACurrentMonth as integer), 1, Old.Amount, Old.CurrencyId, Old.Kurs);
      -- Update Vendor Deposit (+)
      execute spUpdateVendorDeposit(Old.VendorId, 1, Old.Amount, Old.CurrencyId, Old.Kurs);
    end if;
  end if;
  
  
  -- Process New Data
  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    if (New.StatusApprove = '2') then 
      -- do void
      -- Note: do nothing, data already process on Process Old Data
    else

      -- Apabila transaksi (Kembalikan Deposit Customer - Tunai) cek sisa deposit
      if New.CashBankTransactionTypeId = 'C0004' then 
        select a.DepositBalance
        from Customer a
        where a.CustomerId = New.CustomerId
        into ACurrentCustomerDeposit;
        if (ACurrentCustomerDeposit is null) then
          ACurrentCustomerDeposit = 0;
        end if;
         
        if (ACurrentCustomerDeposit - New.Amount) < 0 then
          raise exception '%', '^Transaksi tidak dapat dilakukan karena saldo deposit tidak mencukupi !^';
        end if;
      end if;
    
      -- Apabila transaksi (Ambil Deposit dari Vendor - Tunai) cek sisa deposit
      if New.CashBankTransactionTypeId = 'C0006' then 
        select a.DepositBalance
        from Vendor a
        where a.VendorId = New.VendorId
        into ACurrentVendorDeposit;
        if (ACurrentVendorDeposit is null) then
          ACurrentVendorDeposit = 0;
        end if;
        
        if (ACurrentVendorDeposit - New.Amount) < 0 then
          raise exception '%', '^Transaksi tidak dapat dilakukan karena saldo deposit tidak mencukupi !^';
        end if;
      end if;    
    
      -- Apabila transaksi deposit Customer atau Vendor harus diisi
      if (New.CashBankTransactionTypeId = 'C0003') or (New.CashBankTransactionTypeId = 'C0004') then
        if New.CustomerId is null then
          Raise Exception '%', '^Customer masih belum diisi !^';
        end if;
      end if;
      if (New.CashBankTransactionTypeId = 'C0005') or (New.CashBankTransactionTypeId = 'C0006') then
        if New.VendorId is null then
          Raise Exception '%', '^Vendor masih belum diisi !^';
        end if;
      end if;    
    
      ACurrentYear = Extract(Year from New.CashTransactionDate);
      ACurrentMonth = Extract(Month from New.CashTransactionDate);    
      select FlagOut from CashBankTransactionType 
      where CashBankTransactionTypeId = New.CashBankTransactionTypeId
      into AFlagOut;

      if AFlagOut = 0 then
        ASign = 1; -- Kas Masuk
      else
        ASign = -1; -- Kas Keluar
      end if;    

      -- update cash balance (new)
      execute spUpdateCashBalance(ACurrentYear, ACurrentMonth, ASign, New.Amount, New.CurrencyId, New.Kurs);

      -- Transaction Deposit
      if New.CashBankTransactionTypeId = 'C0003' then -- Terima deposit dari customer
        -- Update AP Balance Customer (+)
        execute spUpdateAPBalanceCustomer(New.CustomerId, ACurrentYear, cast(ACurrentMonth as integer), 1, New.Amount, New.CurrencyId, New.Kurs);
        -- Update Customer Deposit (+)
        execute spUpdateCustomerDeposit(New.CustomerId, 1, New.Amount, New.CurrencyId, New.Kurs);
      end if;
      
      if New.CashBankTransactionTypeId = 'C0004' then -- Kembalikan deposit ke customer
        -- Update AP Balance Customer (-)
        execute spUpdateAPBalanceCustomer(New.CustomerId, ACurrentYear, cast(ACurrentMonth as integer), -1, New.Amount, New.CurrencyId, New.Kurs);
        -- Update Customer Deposit (-)
        execute spUpdateCustomerDeposit(New.CustomerId, -1, New.Amount, New.CurrencyId, New.Kurs);
      end if;
      
      if New.CashBankTransactionTypeId = 'C0005' then -- Bayar deposit ke vendor
        -- Update AR Balance Vendor (+)
        execute spUpdateARBalanceVendor(New.VendorId, ACurrentYear, cast(ACurrentMonth as integer), 1, New.Amount, New.CurrencyId, New.Kurs);
        -- Update Vendor Deposit (+)
        execute spUpdateVendorDeposit(New.VendorId, 1, New.Amount, New.CurrencyId, New.Kurs);
      end if;
      
      if New.CashBankTransactionTypeId = 'C0006' then -- Ambil deposit dari vendor
        -- Update AR Balance Vendor (-)
        execute spUpdateARBalanceVendor(New.VendorId, ACurrentYear, cast(ACurrentMonth as integer), -1, New.Amount, New.CurrencyId, New.Kurs);
        -- Update Vendor Deposit (-)
        execute spUpdateVendorDeposit(New.VendorId, -1, New.Amount, New.CurrencyId, New.Kurs);
      end if;
    end if;
  end if;

  if TG_OP = 'DELETE' then
    return old;
  else
    return new;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trCashTransaction_Before
BEFORE INSERT OR UPDATE OR DELETE ON CashTransaction
  FOR EACH ROW EXECUTE PROCEDURE trCashTransaction_Before();


create or replace function trCoupleDt_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  ATransactionId varchar;
  ATransactionDate DateWithoutTime;
  ATransactionStatusApprove varchar;

  ACoupleDate DateWithoutTime;
  AWarehouseId varchar;
  AStatusMethod integer;
  AStatusItem integer;
  AQtyCouple Quantity;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  ADoChecking := 1;
  if (TG_OP = 'INSERT') then 
    ATransactionId := New.CoupleId; 
  else
    ATransactionId := Old.CoupleId;
  end if;
  execute 'select CoupleDate, StatusApprove from CoupleHd where CoupleId = ''' || ATransactionId || ''''
  into ATransactionDate, ATransactionStatusApprove;

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    if ATransactionStatusApprove = '2' then
      raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
    end if;
   
    -- Bypass pengecekan closing ketika field2 tertentu berubah
    if (TG_OP = 'UPDATE') then 
      --if (Old.CoupleXXX <> New.CoupleXXX) then 
      --  ADoChecking := 0;
      --end if;  
    end if;
  end if;  
  
  if ADoChecking = 1 then
    if ATransactionDate <= fnGetClosingDate() then
      raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
    end if;
  end if;
  ---------------------------------------------------------------------------------------------------------

  if (TG_OP = 'INSERT') then
    -- Initial    
    select CoupleDate, WarehouseId
    from CoupleHd 
    where CoupleId = New.CoupleId 
    into ACoupleDate, AWarehouseId;    
    
    -- 1. Insert transaction
    insert into transaction 
      (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
    values
      (New.CoupleId, ACoupleDate, 'TY010', New.ItemId, AWarehouseId, 
      New.QtyCouple, New.COGS, 'Bahan Baku Couple ' || New.CoupleId, New.No);         
  end if;

  if (TG_OP = 'UPDATE') then -- For transaction Only
    -- initial
    select CoupleDate, WarehouseId
    from CoupleHd 
    where CoupleId = Old.CoupleId 
    into ACoupleDate, AWarehouseId;
    
    if New.ItemId <> Old.ItemId then -- jika item berubah
      -- *** Delete old ***
      -- pengecekan status LIFO, FIFO & AVG    
      select StatusCostMethod
      from Item 
      where ItemId = Old.ItemId
      into AStatusMethod;
      
      if AStatusMethod <> '2' then 
        -- FIFO / LIFO
        delete from Transaction 
        where ReferenceId = Old.CoupleId 
        and No = Old.No
        and ItemId = Old.ItemId
        and TransactionTypeId = 'TY010';
      else
        -- AVG (+)
      end if;

      -- *** Insert new ***
      insert into transaction 
        (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
      values
        (New.CoupleId, ACoupleDate, 'TY010', New.ItemId, AWarehouseId, 
        New.QtyCouple, New.COGS, 'Bahan Baku Couple ' || New.CoupleId, New.No);           
    else
      -- Update Transaction      
      select StatusCostMethod
      from Item 
      where ItemId = New.ItemId
      into AStatusMethod;

      -- jika QtyCouple atau COGS berubah 
      if (New.QtyCouple <> Old.QtyCouple) or (New.COGS <> Old.COGS) then 
        if AStatusMethod <> '2' then
          update Transaction 
          set Qty = New.QtyCouple,
            Price = New.COGS
          where ReferenceId = Old.CoupleId 
          and No = Old.No
          and ItemId = Old.ItemId
          and TransactionTypeId = 'TY010';        
        else
          -- if AVG
        end if;         
      end if;    
    end if;  
  end if;

  -- Void checking
  if (TG_OP = 'DELETE') then
    -- 1. Update Transaction
    select StatusCostMethod
    from Item 
    where ItemId = Old.ItemId
    into AStatusMethod;
    
    -- pengecekan status LIFO, FIFO & AVG    
    if AStatusMethod <> '2' then 
      -- FIFO / LIFO
      delete from Transaction 
      where ReferenceId = Old.CoupleId 
      and No = Old.No
      and ItemId = Old.ItemId
      and TransactionTypeId = 'TY010';
    else
      -- AVG (+)
    end if;
  end if;

  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trCoupleDt_After
AFTER INSERT OR UPDATE OR DELETE ON CoupleDt
  FOR EACH ROW EXECUTE PROCEDURE trCoupleDt_After();


create or replace function trCoupleHd_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  ATransactionTypeId varchar;
  AStatusMethod varchar;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.CoupleDate) <> extract(year from Old.CoupleDate)) or
        (extract(month from New.CoupleDate) <> extract(month from Old.CoupleDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.CoupleDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
 
  if (TG_OP = 'INSERT') then
    -- perform new process
    ATransactionTypeId = 'TY009';    
    insert into transaction 
      (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
    values
      (New.CoupleId, New.CoupleDate, ATransactionTypeId, New.ItemId, New.WarehouseId, New.Qty, (New.TotalCOGS / New.Qty), 'Hasil Couple ' || New.CoupleId, 1); 
  end if;
  
  if (TG_OP = 'UPDATE') then
    -- perform old process
    
    -- Do void process here
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      delete from Transaction 
      where ReferenceId = New.CoupleId;    
    end if;

    -- perform new process, if not void process
    if New.StatusApprove <> '2' then
      -- TotalCOGS berubah
      update Transaction        
        set Qty = New.Qty,
        Price = (New.TotalCOGS / New.Qty)
      where ReferenceId = New.CoupleId 
      and No = 1 -- default
      and ItemId = New.ItemId
      and TransactionTypeId = 'TY009';  
    end if;
  end if;
  
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trCoupleHd_After
AFTER INSERT OR UPDATE OR DELETE ON CoupleHd
  FOR EACH ROW EXECUTE PROCEDURE trCoupleHd_After();


create or replace function trGiro_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;

  AFlagOut integer;  
  ADiff currency;
  ACashBankTransactionType varchar;
  ACashBankTransactionTypeName varchar;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  --if (TG_OP = 'DELETE') then 
  --  raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  --end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      --if (extract(year from New.___Date) <> extract(year from Old.___Date)) or
      --  (extract(month from New.___Date) <> extract(month from Old.___Date)) then
      --  raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      --end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.TransactionDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
 
  -- OnDelete
  if (TG_OP = 'DELETE') then     
    -- Jika Status = Cair    
    -- Maka void bank transaction
    if Old.StatusGiro = '2' then 
      update BankTransaction 
      set StatusApprove = '2'
      where BankTransactionId = Old.ReferenceId;      
    end if;    
  end if;
  
  -- OnInsert
  if (TG_OP = 'INSERT') then
    if New.StatusGiro = '2' then -- Giro sudah cair
      if New.FlagGiroOut = '0' then 
        -- Jenis giro masuk
        New.ReferenceId = (select fnGetTransactionId('BankTransaction', 'BankTransactionId', 'BM', fnGetDefaultLengthId(), New.TransactionDate));
        ACashBankTransactionType = 'B0007';
      else
        -- Jenis giro keluar
        New.ReferenceId = (select fnGetTransactionId('BankTransaction', 'BankTransactionId', 'BK', fnGetDefaultLengthId(), New.TransactionDate));
        ACashBankTransactionType = 'B0008';
      end if;
      
      -- Get description
      ACashBankTransactionTypeName = (select CashBankTransactionTypeName
      from CashBankTransactionType
      where CashBankTransactionTypeId = ACashBankTransactionType);
      
      insert into BankTransaction (BankTransactionId, BankTransactionDate, CashBankTransactionTypeId, 
        BankId, AccountNo, GiroNumber, Amount, VendorId, CustomerId, EmployeeId, Memo, FlagFix, StatusApprove)
      values (New.ReferenceId, New.TransactionDate, ACashBankTransactionType, New.BankId, New.BankAccount, 
        New.GiroNumber, New.Amount, New.VendorId, New.CustomerId, New.EmployeeId, ACashBankTransactionTypeName, '1', '1');
    end if;
  end if;

  -- OnUpdate
  if (TG_OP = 'UPDATE') then
    -- Status giro berubah
    if Old.StatusGiro <> New.StatusGiro then
      -- Dari Issu/Setor/Tolak menjadi Cair
      if New.StatusGiro = '2' then 
        -- Jika belum pernah buat bank transaction
        if IsVarcharNull(Old.ReferenceId, '') = '' then 
          if New.FlagGiroOut = '0' then 
            -- Jenis giro masuk 
            New.ReferenceId = (select fnGetTransactionId('BankTransaction', 'BankTransactionId', 'BM', fnGetDefaultLengthId(), New.TransactionDate));
            ACashBankTransactionType = 'B0007';  
          else
            -- Jenis giro keluar
            New.ReferenceId = (select fnGetTransactionId('BankTransaction', 'BankTransactionId', 'BK', fnGetDefaultLengthId(), New.TransactionDate));
            ACashBankTransactionType = 'B0008';  
          end if;
          
          -- Get description
          ACashBankTransactionTypeName = (select CashBankTransactionTypeName
          from CashBankTransactionType
          where CashBankTransactionTypeId = ACashBankTransactionType);
      
          insert into BankTransaction (BankTransactionId, BankTransactionDate, CashBankTransactionTypeId, 
            BankId, AccountNo, GiroNumber, Amount, VendorId, CustomerId, EmployeeId, Memo, FlagFix, StatusApprove)
          values (New.ReferenceId, New.TransactionDate, ACashBankTransactionType, New.BankId, New.BankAccount, 
            New.GiroNumber, New.Amount, New.VendorId, New.CustomerId, New.EmployeeId, ACashBankTransactionTypeName, '1', '1');
        else
          -- Update bank transaction
          update BankTransaction 
          set Amount = New.Amount
          where BankTransactionId = Old.ReferenceId;          
        end if;        
      end if;
      
      -- Dari Cair menjadi Issu/Setor/Tolak
      -- Bank transaction jangan di void, tapi amount nya di nol kan
      -- Karena nanti masih bisa dipakai lagi kalo telah status cair
      if Old.StatusGiro = '2' then 
        select Amount - Outstanding
        from BankTransaction 
        where BankTransactionId = Old.ReferenceId
        into ADiff;      
        
        -- Cek apakah sudah teralokasi
        if ADiff <> 0 then        
          RAISE EXCEPTION '%', '^Transaksi tidak dapat dilakukan karena giro telah digunakan !^';
        else
          update BankTransaction 
          set Amount = 0, Memo = 'Giro belum cair'
          where BankTransactionId = Old.ReferenceId;
        end if;      
      end if;      
    end if;
    
    -- Amount berubah
    if Old.Amount <> New.Amount then
      if New.StatusGiro = '2' then -- Giro sudah cair
        update BankTransaction 
        set Amount = New.Amount
        where BankTransactionId = Old.ReferenceId;
      end if;
    end if;      

    -- Transaction date berubah
    if Old.TransactionDate <> New.TransactionDate then
      if New.ReferenceId <> '' then
        update BankTransaction 
        set BankTransactionDate = New.TransactionDate
        where BankTransactionId = New.ReferenceId;
      end if;
    end if;     

    -- Giro number berubah
    if Old.GiroNumber <> New.GiroNumber then
      if New.ReferenceId <> '' then
        update BankTransaction 
        set GiroNumber = New.GiroNumber
        where BankTransactionId = New.ReferenceId;
      end if;
    end if;     
  end if;
       
  if (TG_OP = 'DELETE') then
    return Old;
  else
    return New;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trGiro_Before
BEFORE INSERT OR UPDATE OR DELETE ON Giro
  FOR EACH ROW EXECUTE PROCEDURE trGiro_Before();


create or replace function trItem_After ()
  returns trigger AS
$$
declare
  AWarehouseId varchar;
  
  CWarehouse cursor for
    select WarehouseId
    from Warehouse;
begin 
  -- Insert
  if (TG_OP = 'INSERT') then
    -- Apabila item stok maka buat record baru di StockOnHand 
    -- sesuai banyaknya gudang ya ada agar pada display stok muncul 
    -- meskipun belum pernah ada transaksi item ini sama sekali.
    if (New.StatusItem = '1') or (New.StatusItem = '3') then
      open CWarehouse;
      loop
        fetch CWarehouse into AWarehouseId;        
        exit when (AWarehouseId is null);
        
        insert into StockOnHand (ItemId, WarehouseId, EndQty, EndValue)
        values (New.ItemId, AWarehouseId, 0, 0);
      end loop;
      close CWarehouse;
    end if;
  end if;
  
  -- Update
  if (TG_OP = 'UPDATE') then
  end if;
  
  -- Delete
  if (TG_OP = 'DELETE') then    
  end if;
  
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trItem_After
AFTER INSERT OR UPDATE OR DELETE ON Item
  FOR EACH ROW EXECUTE PROCEDURE trItem_After();


create or replace function trOtherTransactionDt_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  ATransactionId varchar;
  ATransactionDate DateWithoutTime;
  ATransactionStatusApprove varchar;

  AOtherTransactionDate DateWithoutTime;
  AWarehouseSource varchar;
  AWarehouseDest varchar;
  ATransactionTypeId varchar;  
  
  AStatusMethod integer;
  AStatusTransaction integer;  
  ATransactionTypeName varchar;  
  AQty quantity;
  ASignQty integer;
  
  AUsingExpiredDate varchar;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  ADoChecking := 1;
  if (TG_OP = 'INSERT') then 
    ATransactionId := New.OtherTransactionId; 
  else
    ATransactionId := Old.OtherTransactionId;
  end if;
  execute 'select OtherTransactionDate, StatusApprove from OtherTransactionHd where OtherTransactionId = ''' || ATransactionId || ''''
  into ATransactionDate, ATransactionStatusApprove;

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    if ATransactionStatusApprove = '2' then
      raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
    end if;
   
    -- Bypass pengecekan closing ketika field2 tertentu berubah
    if (TG_OP = 'UPDATE') then 
      --if (Old.OtherTransactionXXX <> New.OtherTransactionXXX) then 
      --  ADoChecking := 0;
      --end if;  
    end if;
  end if;  
  
  if ADoChecking = 1 then
    if ATransactionDate <= fnGetClosingDate() then
      raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
    end if;
  end if;
  ---------------------------------------------------------------------------------------------------------
  
  -- Cek setting global
  select SetupValue from Setup    
  where SetupId = 'OPT11'
  into AUsingExpiredDate;
    
  if (TG_OP = 'DELETE') or (TG_OP = 'UPDATE') then
    select OtherTransactionDate, TransactionTypeId, WarehouseSource
    from OtherTransactionHd 
    where OtherTransactionId = Old.OtherTransactionId 
    into AOtherTransactionDate, ATransactionTypeId, AWarehouseSource;

    AStatusMethod = (select StatusCostMethod from Item where ItemId = Old.ItemId);
    AStatusTransaction = (select StatusTransaction from TransactionType where TransactionTypeId = ATransactionTypeId);

    if AStatusTransaction = '2' then -- Transfer
      if (TG_OP = 'UPDATE') then
        RAISE EXCEPTION '^ Transaksi mutasi tidak dapat di rubah !^';
      end if;  
    end if;      

    -- 1. Update Transaction
    -- pengecekan status LIFO, FIFO & AVG    
    if AStatusMethod <> '2' then 
      -- FIFO / LIFO
      delete from Transaction 
      where ReferenceId = Old.OtherTransactionId 
      and No = Old.No
      and ItemId = Old.ItemId;
    else
      -- AVG     
      if AStatusTransaction = '0' then -- In
        insert into Transaction 
          (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
        values
          (Old.OtherTransactionId, AOtherTransactionDate, 'TY006', Old.ItemId, AWarehouseSource,
          Old.Qty, Old.Price, 'Adjustment Transaksi (-) ' || Old.OtherTransactionId, Old.No);
      end if;

      if AStatusTransaction = '1' then -- Out
        insert into Transaction 
          (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
        values
          (Old.OtherTransactionId, AOtherTransactionDate, 'TY005', Old.ItemId, AWarehouseSource,
          Old.Qty, Old.Price, 'Adjustment Transaksi (+) ' || Old.OtherTransactionId, Old.No);
      end if;
    end if;
    
    -- 2. Update Stock Expired 
    if AUsingExpiredDate = '1' then
      if AStatusTransaction = '0' then -- In
        ASignQty = -1;
      end if;
      if AStatusTransaction = '1' then -- Out
        ASignQty = 1;
      end if;     
      if (select count(ItemId)
          from StockExpired
          where ItemId = Old.ItemId
          and WarehouseId = AWarehouseSource
          and ExpiredDate = Old.ExpiredDate) = 0 then
        insert into StockExpired (ItemId, WarehouseId, ExpiredDate, Qty)
        values (Old.ItemId, AWarehouseSource, Old.ExpiredDate, Old.Qty * ASignQty);
      else
        update StockExpired
        set Qty = Qty + (Old.Qty * ASignQty)
        where ItemId = Old.ItemId
        and WarehouseId = AWarehouseSource
        and ExpiredDate = Old.ExpiredDate;
      end if;  
    end if;
        
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    -- Initial    
    select OtherTransactionDate, TransactionTypeId, WarehouseSource, WarehouseDest
    from OtherTransactionHd 
    where OtherTransactionId = New.OtherTransactionId 
    into AOtherTransactionDate, ATransactionTypeId, AWarehouseSource, AWarehouseDest;    
    
    ATransactionTypeName = (select TransactionTypeName from TransactionType where TransactionTypeId = ATransactionTypeId);
    AStatusTransaction = (select StatusTransaction from TransactionType where TransactionTypeId = ATransactionTypeId);
    
    if AStatusTransaction = '2' then -- Transfer
      if (TG_OP = 'UPDATE') then
        RAISE EXCEPTION '^ Transaksi mutasi tidak dapat di ubah !^';
      end if;
    end if;      

    -- 1. Insert transaction
    insert into transaction 
      (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, WarehouseDest, Qty, Price, Memo, No)
    values
      (New.OtherTransactionId, AOtherTransactionDate, ATransactionTypeId, New.ItemId, AWarehouseSource, AWarehouseDest,
      New.Qty, New.Price, ATransactionTypeName || ' ' || New.OtherTransactionId, New.No);    
      
    -- 2. Update Stock Expired 
    if AUsingExpiredDate = '1' then    
      if AStatusTransaction = '0' then -- In
        ASignQty = 1;
      end if;
      if AStatusTransaction = '1' then -- Out
        ASignQty = -1;
      end if;       
      if (select count(ItemId)
         from StockExpired
         where ItemId = New.ItemId
         and WarehouseId = AWarehouseSource
         and ExpiredDate = New.ExpiredDate) = 0 then
        insert into StockExpired (ItemId, WarehouseId, ExpiredDate, Qty)
        values (New.ItemId, AWarehouseSource, New.ExpiredDate, New.Qty * ASignQty);
      else
        update StockExpired
        set Qty = Qty + (New.Qty * ASignQty)
        where ItemId = New.ItemId
        and WarehouseId = AWarehouseSource
        and ExpiredDate = New.ExpiredDate;
      end if;  
    end if;      
  end if;
  
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trOtherTransactionDt_After 
AFTER INSERT OR UPDATE OR DELETE ON OtherTransactionDt
  FOR EACH ROW EXECUTE PROCEDURE trOtherTransactionDt_After();


create or replace function trOtherTransactionHd_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  AStatusTransaction integer; 
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.OtherTransactionDate) <> extract(year from Old.OtherTransactionDate)) or
        (extract(month from New.OtherTransactionDate) <> extract(month from Old.OtherTransactionDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.OtherTransactionDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------

  if (TG_OP = 'UPDATE') then    
    -- perform old process here
    
    -- Do void process here
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      -- delete transaction
      delete from Transaction 
      where ReferenceId = New.OtherTransactionId;     
    end if;

    -- perform new process here, if not void process
    if New.StatusApprove <> '2' then
      -- Tanggal berubah
      if (Old.OtherTransactionDate <> New.OtherTransactionDate) then
        update transaction 
        set TransactionDate = New.OtherTransactionDate
        where ReferenceId = New.OtherTransactionId;
      end if;
   
      -- Gudang berubah
      if (Old.WarehouseSource <> New.WarehouseSource) then
        update transaction 
        set WarehouseSource = New.WarehouseSource
        where ReferenceId = New.OtherTransactionId;
      end if;
    end if;
  end if;  

  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trOtherTransactionHd_After
AFTER UPDATE OR INSERT OR DELETE ON OtherTransactionHd
  FOR EACH ROW EXECUTE PROCEDURE trOtherTransactionHd_After();


create or replace function trPurchaseInvoiceDt_After ()
  returns trigger AS
$$
declare
  APurchaseInvoiceDate DateWithoutTime;
  AVendorId varchar;
  AWarehouseId varchar;
  AFlagKonsinyasi flag;

  ATransactionTypeId varchar;
  ADiff currency;
  AStatusMethod integer;
  AQty quantity;
  
  AUsingExpiredDate varchar;
  
  AMaxPurchaseInvoiceId varchar;
  AMaxNo INT4;
  AMaxPrice currency;
  AMaxDiscItem disc;
  AMaxDiscItemPrice currency;
  AMaxDiscItem2 disc;
  AMaxDiscItemPrice2 currency;
  
  ACurrentItemId ItemId; 
  ACurrentLastPI varchar; 
  ACurrentLastPINo int4;
  ACurrentPurchaseInvoiceDate DateWithoutTime;
begin
  -- Cek setting global
  select SetupValue from Setup    
  where SetupId = 'OPT11'
  into AUsingExpiredDate;
  
  if (TG_OP = 'DELETE') or (TG_OP = 'UPDATE') then
    -- Initial 
    select PurchaseInvoiceDate, VendorId, WarehouseId, FlagKonsinyasi
    from PurchaseInvoiceHd 
    where PurchaseInvoiceId = Old.PurchaseInvoiceId 
    into APurchaseInvoiceDate, AVendorId, AWarehouseId, AFlagKonsinyasi;

    -- Pastikan bukan nota pembelian konsinyasi
    if AFlagKonsinyasi = '0' then
      -- Update Stock Expired
      if AUsingExpiredDate = '1' then 
        if (select count(ItemId)
           from StockExpired
           where ItemId = Old.ItemId
           and WarehouseId = AWarehouseId
           and ExpiredDate = Old.ExpiredDate) = 0 then
          insert into StockExpired (ItemId, WarehouseId, ExpiredDate, Qty)
          values (Old.ItemId, AWarehouseId, Old.ExpiredDate, Old.Qty * -1);
        else
          update StockExpired
          set Qty = Qty - Old.Qty
          where ItemId = Old.ItemId
          and WarehouseId = AWarehouseId
          and ExpiredDate = Old.ExpiredDate;
        end if;  
      end if;
    end if;

    -- Delete Transaction
    if (TG_OP = 'DELETE') then      
      if Old.Price <> 0 then -- Harga tidak nol, bukan barang bonus
        -- Initial      
        select a.LastPI, a.LastPINo
        from PurchasePrice a
        where a.ItemId = Old.ItemId
        and a.VendorId = AVendorId
        into ACurrentLastPI, ACurrentLastPINo;
      
        if (Old.PurchaseInvoiceId = ACurrentLastPI) and (Old.No = ACurrentLastPINo) then
          -- Seek new last purchase price
          select a.PurchaseInvoiceId, a.No, a.Price, a.DiscItem, a.DiscItemPrice, a.DiscItem2, a.DiscItemPrice2
          from PurchaseInvoiceDt a 
          left join PurchaseInvoiceHd b on a.PurchaseInvoiceId = b.PurchaseInvoiceId
          where a.ItemId = Old.ItemId 
          and b.VendorId = AVendorId
          and a.Price <> 0
          order by b.PurchaseInvoiceDate desc, a.PurchaseInvoiceId desc, a.No desc
          limit 1
          into AMaxPurchaseInvoiceId, AMaxNo, AMaxPrice, AMaxdiscItem, AMaxdiscItemPrice, AMaxdiscItem2, AMaxdiscItemPrice2;

          if not (AMaxPurchaseInvoiceId is null) then -- Found
            update PurchasePrice
            set LastPI = AMaxPurchaseInvoiceId, 
              LastPINo = AMaxNo,
              Price = AMaxPrice, 
              DiscItem = AMaxDiscItem,
              DiscItemPrice = AMaxDiscItemPrice,
              DiscItem2 = AMaxDiscItem2,
              DiscItemPrice2 = AMaxDiscItemPrice2
            where ItemId = Old.ItemId
            and VendorId = AVendorId;
          else  -- Not Found
            -- Tidak ada pembelian selain bonus (price = 0)
            delete from PurchasePrice
            where ItemId = Old.ItemId
            and VendorId = AVendorId;        
          end if;          
        end if;
      end if;
          
      -- Pastikan bukan nota pembelian konsinyasi
      if AFlagKonsinyasi = '0' then
        if Old.QtyReturnLeft <> Old.Qty then 
          -- jika sudah pernah diretur kemudian mau dihapus
          RAISE EXCEPTION '^Data tidak dapat dihapus, karena telah ada transaksi retur untuk barang ini !^';
        end if;

        AStatusMethod = (select StatusCostMethod from Item where ItemId = Old.ItemId);      
        -- pengecekan status LIFO, FIFO & AVG    
        if AStatusMethod <> '2' then 
          -- FIFO / LIFO
          delete from Transaction 
          where ReferenceId = Old.PurchaseInvoiceId 
          and No = Old.No
          and ItemId = Old.ItemId;
        else
          -- AVG
        end if;
      end if;

      -- Update PI Amount
      update PurchaseInvoiceHd     
      set  Amount = Amount - Old.Amount
      where PurchaseInvoiceId = Old.PurchaseInvoiceId;
    end if;
    
    -- Jika dari PO
    if not (Old.PurchaseOrderId is null) then   
      -- update QtyOutstanding PO (+)
      update PurchaseOrderDt
      set QtyOutstanding = QtyOutstanding + Old.Qty
      where PurchaseOrderId = Old.PurchaseOrderId
      and No = Old.PurchaseOrderNo;
    
      -- Update ItemOrderBalance
      if (select Count(ItemId) 
        from ItemOrderBalance
        where ItemId = Old.ItemId
        and Year = cast(Extract(Year from APurchaseInvoiceDate) as varchar)) = 0 then    
        insert into ItemOrderBalance (ItemId, Year, POQtyMinus)
        values (Old.ItemId, cast(Extract(Year from APurchaseInvoiceDate) as varchar), Old.Qty * -1);
      else
        update ItemOrderBalance
        set  POQtyMinus = POQtyMinus - Old.Qty
        where ItemId = Old.ItemId
        and Year = cast(Extract(Year from APurchaseInvoiceDate) as varchar);
      end if;    
    end if;    
  end if;
  
  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    -- Initial    
    select PurchaseInvoiceDate, VendorId, WarehouseId, FlagKonsinyasi
    from PurchaseInvoiceHd 
    where PurchaseInvoiceId = New.PurchaseInvoiceId 
    into APurchaseInvoiceDate, AVendorId, AWarehouseId, AFlagKonsinyasi;    
    
    if New.Price <> 0 then -- Harga tidak nol, bukan barang bonus
      -- Initial      
      select a.ItemId, a.LastPI, a.LastPINo, 
      case
        when not (b.PurchaseInvoiceDate is null) then b.PurchaseInvoiceDate else a.DateModified
      end as PurchaseInvoiceDate
      from PurchasePrice a
      left join PurchaseInvoiceHd b on a.LastPI = b.PurchaseInvoiceId 
      where a.ItemId = New.ItemId
      and a.VendorId = AVendorId
      into ACurrentItemId, ACurrentLastPI, ACurrentLastPINo, ACurrentPurchaseInvoiceDate;
      
      -- Update PurchasePrice      
      if ACurrentItemId is null then        
        insert into PurchasePrice (ItemId, VendorId, LastPI, LastPINo, Price, DiscItem, DiscItemPrice, DiscItem2, DiscItemPrice2)
        values(New.ItemId, AVendorId, New.PurchaseInvoiceId, New.No, New.Price, New.DiscItem, New.DiscItemPrice, New.DiscItem2, New.DiscItemPrice2);
      else    
        -- Bandingkan apakah data baru sama dengan data purchase price
        if (ACurrentLastPI = New.PurchaseInvoiceId) and (ACurrentLastPINo = New.No) then
          update PurchasePrice
          set Price = New.Price, 
            DiscItem = New.DiscItem,
            DiscItemPrice = New.DiscItemPrice,
            DiscItem2 = New.DiscItem2,
            DiscItemPrice2 = New.DiscItemPrice2
          where ItemId = New.ItemId
          and VendorId = AVendorId;        
        else
          -- Jika tgl lebih baru atau sama, maka update purchase price
          if APurchaseInvoiceDate >= ACurrentPurchaseInvoiceDate then
            update PurchasePrice
            set LastPI = New.PurchaseInvoiceId, 
              LastPINo = New.No,
              Price = New.Price, 
              DiscItem = New.DiscItem,
              DiscItemPrice = New.DiscItemPrice,
              DiscItem2 = New.DiscItem2,
              DiscItemPrice2 = New.DiscItemPrice2
            where ItemId = New.ItemId
            and VendorId = AVendorId;
          end if;
        end if;
      end if;
      
      -- Update SalesInvoiceDt SatusColor untuk MinSalePrice
      execute spSetSalesMinPriceColor(New.ItemId, New.Price);
    end if;
    
    -- Pastikan bukan nota pembelian konsinyasi
    if AFlagKonsinyasi = '0' then
      -- update stock expire 
      if AUsingExpiredDate = '1' then       
        if (select count(ItemId)
           from StockExpired
           where ItemId = New.ItemId
           and WarehouseId = AWarehouseId
           and ExpiredDate = New.ExpiredDate) = 0 then
          insert into StockExpired (ItemId, WarehouseId, ExpiredDate, Qty)
          values (New.ItemId, AWarehouseId, New.ExpiredDate, New.Qty);
        else
          update StockExpired
          set Qty = Qty + New.Qty
          where ItemId = New.ItemId
          and WarehouseId = AWarehouseId
          and ExpiredDate = New.ExpiredDate;
        end if; 
      end if;
    end if;

    -- Insert transaction
    if (TG_OP = 'INSERT') then
      -- Pastikan bukan nota pembelian konsinyasi
      if AFlagKonsinyasi = '0' then
        ATransactionTypeId := 'TY001';    
        insert into transaction 
          (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
        values
          (New.PurchaseInvoiceId, APurchaseInvoiceDate, ATransactionTypeId, New.ItemId, AWarehouseId, 
          New.Qty, (New.Price - New.DiscItemPrice - New.DiscItemPrice2 - New.VoucherItem), 'Pembelian ' || New.PurchaseInvoiceId, New.No);
      end if;

      -- Update PI Amount      
      update PurchaseInvoiceHd     
      set  Amount = Amount + New.Amount
      where PurchaseInvoiceId = New.PurchaseInvoiceId;
    end if;

    -- Jika dari PO 
    if not (New.PurchaseOrderId is null) then   
      -- update QtyOutstanding PO (-)
      update PurchaseOrderDt
      set QtyOutstanding = QtyOutstanding - New.Qty
      where PurchaseOrderId = New.PurchaseOrderId
      and No = New.PurchaseOrderNo;
    
      -- Update ItemOrderBalance
      if (select Count(ItemId) 
        from ItemOrderBalance
        where ItemId = New.ItemId
        and Year = cast(Extract(Year from APurchaseInvoiceDate) as varchar)) = 0 then    
        insert into ItemOrderBalance (ItemId, Year, POQtyMinus)
        values (New.ItemId, cast(Extract(Year from APurchaseInvoiceDate) as varchar), New.Qty);
      else
        update ItemOrderBalance
        set  POQtyMinus = POQtyMinus + New.Qty
        where ItemId = New.ItemId
        and Year = cast(Extract(Year from APurchaseInvoiceDate) as varchar);
      end if;    
    end if;
  end if;  

  if (TG_OP = 'UPDATE') then -- For transaction Only
    -- initial
    select PurchaseInvoiceDate, WarehouseId, FlagKonsinyasi
    from PurchaseInvoiceHd 
    where PurchaseInvoiceId = Old.PurchaseInvoiceId 
    into APurchaseInvoiceDate, AWarehouseId, AFlagKonsinyasi;
    
    -- Pastikan bukan nota pembelian konsinyasi
    if AFlagKonsinyasi = '0' then
      if (New.Price <> Old.Price) or (New.DiscItem <> Old.DiscItem) or (New.DiscItem2 <> Old.DiscItem2) or (New.VoucherItem <> Old.VoucherItem) then
        if (Old.QtyReturnLeft <> Old.Qty) then 
          -- jika sudah pernah diretur kemudian harga mau diubah
          RAISE EXCEPTION '^Perubahan harga/disc/voucher tidak dapat dilakukan, karena telah ada transaksi retur untuk barang ini !^';
        end if;
      end if;

      if New.ItemId <> Old.ItemId then -- jika item berubah
        -- Delete old
        AStatusMethod = (select StatusCostMethod from Item where ItemId = Old.ItemId);
        -- pengecekan status LIFO, FIFO & AVG    
        if AStatusMethod <> '2' then 
          -- FIFO / LIFO
          delete from Transaction 
          where ReferenceId = Old.PurchaseInvoiceId 
          and No = Old.No
          and ItemId = Old.ItemId;
        else
          -- AVG
          ATransactionTypeId := 'TY006';
          insert into Transaction 
            (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
          values
            (Old.PurchaseInvoiceId, APurchaseInvoiceDate, ATransactionTypeId, Old.ItemId, AWarehouseId,
            Old.Qty, (Old.Price - Old.DiscItemPrice - Old.DiscItemPrice2 - Old.VoucherItem), 'Perubahan Pembelian (-) ' || Old.PurchaseInvoiceId, Old.No);
        end if;

        -- Insert new
        ATransactionTypeId := 'TY001';          
        insert into transaction 
          (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
        values
          (New.PurchaseInvoiceId, APurchaseInvoiceDate, ATransactionTypeId, New.ItemId, AWarehouseId, 
          New.Qty, (New.Price - New.DiscItemPrice - New.DiscItemPrice2 - New.VoucherItem), 'Pembelian ' || New.PurchaseInvoiceId, New.No);    
      
      else

        -- Detail berubah
        if (New.No <> Old.No) or (New.Qty <> Old.Qty) or (New.Price <> Old.Price) or (New.DiscItemPrice <> Old.DiscItemPrice) or 
          (New.DiscItemPrice2 <> Old.DiscItemPrice2) or (New.VoucherItem <> Old.VoucherItem) then 
          
          select PurchaseInvoiceDate, WarehouseId 
          from PurchaseInvoiceHd 
          where PurchaseInvoiceId = New.PurchaseInvoiceId 
          into APurchaseInvoiceDate, AWarehouseId;
          
          select StatusCostMethod 
          from Item where ItemId = New.ItemId
          into AStatusMethod;
 
          if AStatusMethod <> '2' then
            update Transaction 
            set Qty = New.Qty, 
              Price = (New.Price - New.DiscItemPrice - New.DiscItemPrice2 - New.VoucherItem),
              No = New.No
            where ReferenceId = Old.PurchaseInvoiceId 
            and No = Old.No
            and ItemId = New.ItemId;
          else
            -- AVG
            if New.Qty > Old.Qty then
              AQty := New.Qty - Old.Qty;
              ATransactionTypeId := 'TY005';
            else
              AQty := Old.Qty - New.Qty;
              ATransactionTypeId := 'TY006';
            end if;
      
            insert into Transaction 
              (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
            values
              (New.PurchaseInvoiceId, APurchaseInvoiceDate, ATransactionTypeId, New.ItemId, AWarehouseId,
              AQty, Price, 'Perubahan Transaction ' || New.PurchaseInvoiceId, New.No);
          end if;
        end if;
      end if;    
    end if;
    
    -- Update PI Amount
    if (New.Qty <> Old.Qty) or (New.Price <> Old.Price) or (New.DiscItemPrice <> Old.DiscItemPrice) or 
      (New.DiscItemPrice2 <> Old.DiscItemPrice2) or (New.VoucherItem <> Old.VoucherItem) then 
      update PurchaseInvoiceHd     
      set  Amount = Amount - Old.Amount + New.Amount
      where PurchaseInvoiceId = New.PurchaseInvoiceId;
    end if;  
  end if;
  
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchaseInvoiceDt_After 
AFTER INSERT OR UPDATE OR DELETE ON PurchaseInvoiceDt
  FOR EACH ROW EXECUTE PROCEDURE trPurchaseInvoiceDt_After();


create or replace function trPurchaseInvoiceDt_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  ATransactionId varchar;
  ATransactionDate DateWithoutTime;
  ATransactionStatusApprove varchar;

  ASelisih quantity;
  AValid quantity;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  ADoChecking := 1;
  if (TG_OP = 'INSERT') then 
    ATransactionId := New.PurchaseInvoiceId; 
  else
    ATransactionId := Old.PurchaseInvoiceId;
  end if;
  execute 'select PurchaseInvoiceDate, StatusApprove from PurchaseInvoiceHd where PurchaseInvoiceId = ''' || ATransactionId || ''''
  into ATransactionDate, ATransactionStatusApprove;

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    if ATransactionStatusApprove = '2' then
      raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
    end if;
   
    -- Bypass pengecekan closing ketika field2 tertentu berubah
    if (TG_OP = 'UPDATE') then 
      if (Old.QtyReturnLeft <> New.QtyReturnLeft) then 
        ADoChecking := 0;
      end if;  
    end if;
  end if;  
  
  if ADoChecking = 1 then
    if ATransactionDate <= fnGetClosingDate() then
      raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
    end if;
  end if;
  ---------------------------------------------------------------------------------------------------------

  if (TG_OP = 'INSERT') then
    New.QtyReturnLeft = New.Qty;
  end if;
  
  if (TG_OP = 'UPDATE') then
    -- Qty berubah
    if New.Qty <> Old.Qty then  
      ASelisih = New.Qty - Old.Qty;
      if ASelisih > 0 then
        New.QtyReturnLeft = New.QtyReturnLeft + ASelisih;
      else
        AValid = New.QtyReturnLeft + ASelisih;
        if AValid >= 0 then
          New.QtyReturnLeft = New.QtyReturnLeft + ASelisih;
        else
          RAISE EXCEPTION '^Jumlah tidak bisa dirubah, karena lebih besar dari jumlah yang sudah di retur !^';
        end if;
      end if;
    end if;

    -- Qty Return Left berubah
    if New.QtyReturnLeft < 0 then  
      RAISE EXCEPTION '^Jumlah retur tidak bisa lebih besar dari jumlah yang sudah di retur !^';
    end if;

    -- Item berubah
    if (New.ItemId <> Old.ItemId) and (Old.PurchaseOrderId is not null) then
      RAISE EXCEPTION '^Barang tidak bisa dirubah, karena transaksi berdasarkan order pembelian !^';
    end if;
  end if;

  if (TG_OP='DELETE') then
    ASelisih = 0 - Old.Qty;
    AValid = Old.QtyReturnLeft + ASelisih;
    if AValid < 0 then
      RAISE EXCEPTION '^Jumlah tidak bisa dirubah, karena lebih besar dari jumlah yang sudah di retur !^';
    end if;
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchaseInvoiceDt_Before 
BEFORE INSERT OR UPDATE OR DELETE ON PurchaseInvoiceDt
  FOR EACH ROW EXECUTE PROCEDURE trPurchaseInvoiceDt_Before();


create or replace function trPurchaseInvoiceHd_After ()
  returns trigger AS
$$
declare
  AItemId ItemId;
  ANo integer;
  APrice currency;
  ADiscItem disc;
  ADiscItemPrice currency;
  ADiscItem2 disc;
  ADiscItemPrice2 currency;
  
  ATempPurchaseInvoiceId varchar;
  ATempNo integer;
  ATempPrice currency;
  ATempDiscItem disc;
  ATempDiscItemPrice currency;
  ATempDiscItem2 disc;
  ATempDiscItemPrice2 currency;  
  
  ACurrentLastPI varchar;
  ACurrentLastPINo integer;
  ACurrentPurchaseInvoiceDate DateWithoutTime; 
  
  AYear varchar;
  AMonth integer;    
  
  ADetailOrderPurchaseOrderId varchar;
  ADetailOrderPurchaseOrderNo integer; 
  ADetailOrderItemId ItemId;
  ADetailOrderQty quantity;
    
  CPurchaseInvoiceDt cursor for
    select ItemId, No, Price, DiscItem, DiscItemPrice, DiscItem2, DiscItemPrice2
    from PurchaseInvoiceDt
    where PurchaseInvoiceId = New.PurchaseInvoiceId
    and Price <> 0
    order by No;  

  CPurchaseInvoiceDtOrder cursor for
    select PurchaseOrderId, PurchaseOrderNo, ItemId, Qty
    from PurchaseInvoiceDt
    where PurchaseInvoiceId = New.PurchaseInvoiceId
    and (not PurchaseOrderId is null)
    order by No;  
begin

  if (TG_OP = 'UPDATE') then
    -- 1. perform old process here
    -- Tanggal Transaksi atau Vendor berubah atau proses void
    if (Old.PurchaseInvoiceDate <> New.PurchaseInvoiceDate) or (Old.VendorId <> New.VendorId) or 
      (New.StatusApprove = '2') then    
      -- Update purchase price (Proses Old Data)
      open CPurchaseInvoiceDt; 
      loop 
        fetch CPurchaseInvoiceDt into AItemId, ANo, APrice, ADiscItem, ADiscItemPrice, ADiscItem2, ADiscItemPrice2;
        exit when (AItemId is null);

        -- Initial      
        select a.LastPI
        from PurchasePrice a          
        where a.ItemId = AItemId
        and a.VendorId = Old.VendorId
        into ACurrentLastPI;
          
        if ACurrentLastPI = New.PurchaseInvoiceId then
          -- Jika data PurchasePrice sama dengan PI      
          -- Cari di PIdt yang tanggal terakhir
          select a.PurchaseInvoiceId, a.No, a.Price, a.DiscItem, a.DiscItemPrice, a.DiscItem2, a.DiscItemPrice2
          from PurchaseInvoiceDt a
          left join PurchaseInvoiceHd b on a.PurchaseInvoiceId = b.PurchaseInvoiceId          
          where b.VendorId = Old.VendorId
          and a.ItemId = AItemId
          and a.Price <> 0
          order by b.PurchaseInvoiceDate desc
          limit 1
          into ATempPurchaseInvoiceId, ATempNo, ATempPrice, ATempDiscItem, ATempDiscItemPrice, ATempDiscItem2, ATempDiscItemPrice2;
          
          if not (ATempPurchaseInvoiceId is null) then
            -- Jika ada, update PurchasePrice 
            update PurchasePrice
            set LastPI = ATempPurchaseInvoiceId, 
              LastPINo = ATempNo,
              Price = ATempPrice, 
              DiscItem = ATempDiscItem,
              DiscItemPrice = ATempDiscItemPrice,
              DiscItem2 = ATempDiscItem2,
              DiscItemPrice2 = ATempDiscItemPrice2
            where ItemId = AItemId
            and Vendorid = Old.VendorId;          
          else
            -- Jika tidak ada hapus PurchasePrice
            delete from PurchasePrice 
            where ItemId = AItemId
            and VendorId = Old.VendorId;
          end if;  
        end if;
      end loop;    
      close CPurchaseInvoiceDt;               
    end if;
    
    -- 2. Do void process here
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      -- Delete any payment detail first
      --delete from PurchasePaymentDt
      --using PurchasePayment b
      --where PurchasePaymentDt.PurchasePaymentId = b.PurchasePaymentId
      --and PurchasePaymentDt.PurchaseInvoiceId = New.PurchaseInvoiceId 
      --and b.StatusApprove = '1';
      if (Old.OutStandingTotalAmount <> Old.TotalAmount) then
        RAISE EXCEPTION '^Void tidak dapat dilakukan, karena telah dilakukan pembayaran !^';
      end if;            
    
      -- delete transaction
      delete from Transaction 
      where ReferenceId = New.PurchaseInvoiceId; 
      
      -- Update APBalanceVendor
      AYear  := EXTRACT(Year from New.PurchaseInvoiceDate);
      AMonth := EXTRACT(Month from New.PurchaseInvoiceDate);    
      execute spUpdateAPBalanceVendor(New.VendorId, AYear, AMonth, -1, New.TotalAmount, New.CurrencyId, New.Kurs); 

      -- Jika Detail dari PO
      open CPurchaseInvoiceDtOrder; 
      loop 
        fetch CPurchaseInvoiceDtOrder into 
          ADetailOrderPurchaseOrderId, ADetailOrderPurchaseOrderNo, ADetailOrderItemId, ADetailOrderQty;
        exit when (ADetailOrderItemId is null);
          
        -- update QtyOutstanding PO (+)
        update PurchaseOrderDt
        set QtyOutstanding = QtyOutstanding + ADetailOrderQty
        where PurchaseOrderId = ADetailOrderPurchaseOrderId
        and No = ADetailOrderPurchaseOrderNo;
           
        -- Update ItemOrderBalance
        if (select Count(ItemId) 
          from ItemOrderBalance
          where ItemId = ADetailOrderItemId
          and Year = cast(Extract(Year from New.PurchaseInvoiceDate) as varchar)) = 0 then    
          insert into ItemOrderBalance (ItemId, Year, POQtyMinus)
          values (ADetailOrderItemId, cast(Extract(Year from New.PurchaseInvoiceDate) as varchar), ADetailOrderQty * -1);
        else
          update ItemOrderBalance
          set  POQtyMinus = POQtyMinus - ADetailOrderQty
          where ItemId = ADetailOrderItemId
          and Year = cast(Extract(Year from New.PurchaseInvoiceDate) as varchar);
        end if;    
      end loop;    
      close CPurchaseInvoiceDtOrder;    
    end if;

    -- 3. perform new process here, if not void process
    if New.StatusApprove <> '2' then
      -- Transaction date changed
      if (Old.PurchaseInvoiceDate <> New.PurchaseInvoiceDate) then
        update transaction 
        set TransactionDate = New.PurchaseInvoiceDate
        where ReferenceId = New.PurchaseInvoiceId;
      end if;  
    
      -- Warehouse changed
      if (Old.WarehouseId <> New.WarehouseId) then
        update transaction 
        set WarehouseSource = New.WarehouseId
        where ReferenceId = New.PurchaseInvoiceId;
      end if;
      
      -- Tanggal Transaksi atau Vendor berubah atau proses void
      if (Old.PurchaseInvoiceDate <> New.PurchaseInvoiceDate) or (Old.VendorId <> New.VendorId) then      
        -- Update purchase price (Proses New Data)
        open CPurchaseInvoiceDt; 
        loop 
          fetch CPurchaseInvoiceDt into AItemId, ANo, APrice, ADiscItem, ADiscItemPrice, ADiscItem2, ADiscItemPrice2;
          exit when (AItemId is null);
        
          -- Initial      
          select a.LastPI, a.LastPINo, b.PurchaseInvoiceDate
          from PurchasePrice a
          left join PurchaseInvoiceHd b on a.LastPI = b.PurchaseInvoiceId 
          where a.ItemId = AItemId
          and a.VendorId = New.VendorId
          into ACurrentLastPI, ACurrentLastPINo, ACurrentPurchaseInvoiceDate;        
        
          if not (ACurrentLastPI is null) then
            if ACurrentLastPI = New.PurchaseInvoiceId then
              -- Jika data PurchasePrice sama dengan PI
              -- Cari di PIdt yang tanggal lebih besar dari tanggal PI
              select a.PurchaseInvoiceId, a.No, a.Price, a.DiscItem, a.DiscItemPrice, a.DiscItem2, a.DiscItemPrice2
              from PurchaseInvoiceDt a
              left join PurchaseInvoiceHd b on a.PurchaseInvoiceId = b.PurchaseInvoiceId
              where b.VendorId = New.VendorId
              and b.PurchaseInvoiceDate > New.PurchaseInvoiceDate
              and a.ItemId = AItemId
              and a.Price <> 0
              order by b.PurchaseInvoiceDate desc
              limit 1
              into ATempPurchaseInvoiceId, ATempNo, ATempPrice, ATempDiscItem, ATempDiscItemPrice, ATempDiscItem2, ATempDiscItemPrice2;
          
              if not (ATempPurchaseInvoiceId is null) then
                -- Jika ada update PurchasePrice 
                update PurchasePrice
                set LastPI = ATempPurchaseInvoiceId, 
                  LastPINo = ATempNo,
                  Price = ATempPrice, 
                  DiscItem = ATempDiscItem,
                  DiscItemPrice = ATempDiscItemPrice,
                  DiscItem2 = ATempDiscItem2,
                  DiscItemPrice2 = ATempDiscItemPrice2
                where ItemId = AItemId
                and Vendorid = New.VendorId;          
              end if;
            else
              -- Jika Data PurchasePrice tidak sama dengan PI
              if ACurrentPurchaseInvoiceDate < New.PurchaseInvoiceDate then
                -- Jika tanggal di PurchasePrice lebih kecil dari PI
                -- Update PurchasePrice
                update PurchasePrice
                set LastPI = New.PurchaseInvoiceId, 
                  LastPINo = ANo,
                  Price = APrice, 
                  DiscItem = ADiscItem,
                  DiscItemPrice = ADiscItemPrice,
                  DiscItem2 = ADiscItem2,
                  DiscItemPrice2 = ADiscItemPrice2
                where ItemId = AItemId
                and Vendorid = New.VendorId; 
              end if;
            end if;  
          else
            -- Jika data PurchasePrice tidak ada (insert)
            insert into PurchasePrice (ItemId, VendorId, LastPI, LastPINo, Price, DiscItem, DiscItemPrice, DiscItem2, DiscItemPrice2)
            values (AItemId, New.VendorId, New.PurchaseInvoiceId, ANo, APrice, ADiscItem, ADiscItemPrice, ADiscItem2, ADiscItemPrice2);
          end if;        
        end loop;    
        close CPurchaseInvoiceDt;      
      end if;
    end if;
  end if;  
  
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchaseInvoiceHd_After
AFTER INSERT OR UPDATE OR DELETE ON PurchaseInvoiceHd
  FOR EACH ROW EXECUTE PROCEDURE trPurchaseInvoiceHd_After();


create or replace function trPurchaseInvoiceHd_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;

  ADiff currency;
  ANewDiscAmount currency;  
  ANewDiscAmount2 currency;  
  ANewTaxAmount currency;  
  ANewPPH22Amount currency;  
  ANewTotalAmount currency;
  ANewOutstandingTotalAmount currency;
  AYear varchar;
  AMonth integer;    
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.PurchaseInvoiceDate) <> extract(year from Old.PurchaseInvoiceDate)) or
        (extract(month from New.PurchaseInvoiceDate) <> extract(month from Old.PurchaseInvoiceDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) or (Old.OutstandingTotalAmount <> New.OutstandingTotalAmount) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.PurchaseInvoiceDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
  
  if (TG_OP = 'UPDATE') then
    if (Old.VendorId <> New.VendorId) and (Old.OutStandingTotalAmount <> Old.TotalAmount) then
      RAISE EXCEPTION '^Vendor tidak dapat dirubah, karena telah dilakukan pembayaran !^';
    end if;  
  
    -- Amount, Disc, Disc2, Tax, Vaoucher, Vendor Changed
    if (Old.Amount <> New.Amount) or (Old.Disc <> New.Disc) or (Old.Disc2 <> New.Disc2) or (Old.VoucherAmount <> New.VoucherAmount) or 
      (Old.Tax <> New.Tax) or (Old.PPH22Amount <> New.PPH22Amount) or (Old.Meterai <> New.Meterai) or
      (Old.VendorId <> New.VendorId) then
      -- cari selisih tagihan dengan pembayaran
      ADiff = Old.TotalAmount - Old.OutstandingTotalAmount;
 
      -- Hitung nilai baru
      ANewDiscAmount = New.Amount * New.Disc / 100;
      ANewDiscAmount2 = (New.Amount - ANewDiscAmount) * New.Disc2 / 100;
      ANewTaxAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) * New.Tax / 100;
      ANewPPH22Amount = ((New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount) * New.PPH22 / 100;
      ANewTotalAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount + ANewPPH22Amount;
      ANewTotalAmount = ANewTotalAmount + New.Meterai;
      
      ANewOutstandingTotalAmount = ANewTotalAmount - ADiff;
      if ANewOutstandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan tidak dapat dilakukan, karena jumlah tagihan baru lebih kecil daripada pembayaran yang telah dilakukan !^';
      end if;
    
      New.DiscAmount = ANewDiscAmount;
      New.DiscAmount2 = ANewDiscAmount2;
      New.TaxAmount = ANewTaxAmount;
      New.PPH22Amount = ANewPPH22Amount;
      New.TotalAmount = ANewTotalAmount;
      New.OutStandingTotalAmount = ANewOutstandingTotalAmount;
    
      -- 2. Update APBalanceVendor
      AYear  := EXTRACT(Year from Old.PurchaseInvoiceDate);
      AMonth := EXTRACT(Month from Old.PurchaseInvoiceDate);    
      execute spUpdateAPBalanceVendor(Old.VendorId, AYear, AMonth, -1, Old.TotalAmount, Old.CurrencyId, Old.Kurs);    
      AYear  := EXTRACT(Year from New.PurchaseInvoiceDate);
      AMonth := EXTRACT(Month from New.PurchaseInvoiceDate);    
      execute spUpdateAPBalanceVendor(New.VendorId, AYear, AMonth, 1, ANewTotalAmount, New.CurrencyId, New.Kurs);
    end if;
  
    -- Outstanding Changed
    if (Old.OutStandingTotalAmount <> New.OutStandingTotalAmount) then
      if New.OutStandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan pembayaran tidak dapat dilakukan, karena jumlah pembayaran lebih besar daripada sisa nota !^';
      end if;
    end if;
  end if;  

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchaseInvoiceHd_Before
BEFORE INSERT OR UPDATE OR DELETE ON PurchaseInvoiceHd
  FOR EACH ROW EXECUTE PROCEDURE trPurchaseInvoiceHd_Before();


create or replace function trPurchaseOrderDt_After ()
  returns trigger AS
$$
declare
  APurchaseOrderDate DateWithoutTime;
  AVendorId varchar;
  AWarehouseId varchar;
  AFlagKonsinyasi flag;

  ATransactionTypeId varchar;
  ADiff currency;
  AStatusMethod integer;
  AQty quantity;
  
  AMaxPurchaseInvoiceId varchar;
  AMaxPurchaseOrderDate Date;
  AMaxPrice currency;
  AMaxDiscItem disc;
  AMaxDiscItemPrice currency;
  AMaxDiscItem2 disc;
  AMaxDiscItemPrice2 currency;
begin
  if (TG_OP = 'DELETE') or (TG_OP = 'UPDATE') then
    select PurchaseOrderDate
    from PurchaseOrderHd 
    where PurchaseOrderId = Old.PurchaseOrderId 
    into APurchaseOrderDate;

    -- Update PO Amount
    update PurchaseOrderHd     
    set  Amount = Amount - Old.Amount
    where PurchaseOrderId = Old.PurchaseOrderId;
    
    -- Update ItemOrderBalance
    if (select Count(ItemId) 
      from ItemOrderBalance
      where ItemId = Old.ItemId
      and Year = cast(Extract(Year from APurchaseOrderDate) as varchar)) = 0 then    
      insert into ItemOrderBalance (ItemId, Year, POQtyPlus)
      values (Old.ItemId, Extract(Year from APurchaseOrderDate), Old.Qty * -1);
    else
      update ItemOrderBalance
      set  POQtyPlus = POQtyPlus - Old.Qty
      where ItemId = Old.ItemId
      and Year = cast(Extract(Year from APurchaseOrderDate) as varchar);
    end if;  
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    -- Initial    
    select PurchaseOrderDate
    from PurchaseOrderHd 
    where PurchaseOrderId = New.PurchaseOrderId 
    into APurchaseOrderDate;
    
    -- Update PO Amount      
    update PurchaseOrderHd     
    set  Amount = Amount + New.Amount
    where PurchaseOrderId = New.PurchaseOrderId;  

    -- Update ItemOrderBalance
    if (select Count(ItemId) 
      from ItemOrderBalance
      where ItemId = New.ItemId
      and Year = cast(Extract(Year from APurchaseOrderDate) as varchar)) = 0 then    
      insert into ItemOrderBalance (ItemId, Year, POQtyPlus)
      values (New.ItemId, Extract(Year from APurchaseOrderDate), New.Qty);
    else
      update ItemOrderBalance
      set  POQtyPlus = POQtyPlus + New.Qty
      where ItemId = New.ItemId
      and Year = cast(Extract(Year from APurchaseOrderDate) as varchar);
    end if;  
  end if;

  if (TG_OP = 'UPDATE') then -- For transaction Only    
    if (New.Price <> Old.Price) or (New.DiscItem <> Old.DiscItem) or (New.DiscItem2 <> Old.DiscItem2) or (New.VoucherItem <> Old.VoucherItem) then
      if (Old.QtyOutstanding <> Old.Qty) then 
        -- jika sudah pernah didibeli/dijual berdasarkan order kemudian harga mau diubah
        RAISE EXCEPTION '^Perubahan harga/disc/voucher tidak dapat dilakukan, karena telah digunakan pada nota pembelian !^';
      end if;
    end if;
  end if;
  
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchaseOrderDt_After 
AFTER INSERT OR UPDATE OR DELETE ON PurchaseOrderDt
  FOR EACH ROW EXECUTE PROCEDURE trPurchaseOrderDt_After();


create or replace function trPurchaseOrderDt_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  ATransactionId varchar;
  ATransactionDate DateWithoutTime;
  ATransactionStatusApprove varchar;
  
  ASelisih quantity;
  AValid quantity;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  ADoChecking := 1;
  if (TG_OP = 'INSERT') then 
    ATransactionId := New.PurchaseOrderId; 
  else
    ATransactionId := Old.PurchaseOrderId;
  end if;
  execute 'select PurchaseOrderDate, StatusApprove from PurchaseOrderHd where PurchaseOrderId = ''' || ATransactionId || ''''
  into ATransactionDate, ATransactionStatusApprove;

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    if ATransactionStatusApprove = '2' then
      raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
    end if;
   
    -- Bypass pengecekan closing ketika field2 tertentu berubah
    if (TG_OP = 'UPDATE') then 
      if (Old.QtyOutstanding <> New.QtyOutstanding) then 
        ADoChecking := 0;
      end if;  
    end if;
  end if;  
  
  if ADoChecking = 1 then
    if ATransactionDate <= fnGetClosingDate() then
      raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
    end if;
  end if;
  ---------------------------------------------------------------------------------------------------------

  if (TG_OP = 'INSERT') then
    New.QtyOutstanding = New.Qty;
  end if;
  
  if (TG_OP = 'UPDATE') then
    -- Item berubah
    if (Old.ItemId <> New.ItemId) then
      if Old.QtyOutstanding <> Old.Qty then
        RAISE EXCEPTION '^Barang tidak dapat diubah, karena telah dipakai pada nota pembelian !^';
      end if;    
    end if;
      
    -- Qty berubah
    if New.Qty <> Old.Qty then  
      ASelisih = New.Qty - Old.Qty;
      if ASelisih > 0 then
        -- Qty baru lebih besar dari qty lama
        New.QtyOutstanding = Old.QtyOutstanding + ASelisih;
      else
        -- Qty baru lebih kecil dari qty lama
        AValid = Old.QtyOutstanding + ASelisih;
        if AValid >= 0 then
          New.QtyOutstanding = Old.QtyOutstanding + ASelisih;
        else
          RAISE EXCEPTION '%', '^Qty baru lebih kecil dari qty sudah diproses (' || (Old.Qty - Old.QtyOutstanding) || ') !^';
        end if;
      end if;
    end if;

    -- Qty Outstanding berubah
    if New.QtyOutstanding < 0 then  
      RAISE EXCEPTION '^Qty proses lebih besar dari qty sisa (qty outstanding) !^';
    end if;
  end if;

  if (TG_OP = 'DELETE') then
    if Old.QtyOutstanding <> Old.Qty then
      RAISE EXCEPTION '^Transaksi tidak bisa dihapus, karena telah dipakai pada nota pembelian !^';
    end if;
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchaseOrderDt_Before 
BEFORE INSERT OR UPDATE OR DELETE ON PurchaseOrderDt
  FOR EACH ROW EXECUTE PROCEDURE trPurchaseOrderDt_Before();


create or replace function trPurchaseOrderHd_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  ANewDiscAmount currency;
  ANewDiscAmount2 currency;
  ANewTaxAmount currency;
  ANewPPH22Amount currency;
  ANewTotalAmount currency;
  ACountItemDetailUsed integer;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.PurchaseOrderDate) <> extract(year from Old.PurchaseOrderDate)) or
        (extract(month from New.PurchaseOrderDate) <> extract(month from Old.PurchaseOrderDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.PurchaseOrderDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------

  if (TG_OP = 'UPDATE') then
    -- 0. Initialize
    select Count(ItemId)
    from PurchaseOrderDt
    where PurchaseOrderId = New.PurchaseOrderId
    and Qty <> QtyOutstanding
    into ACountItemDetailUsed;
    if ACountItemDetailUsed is null then
      ACountItemDetailUsed = 0;
    end if;
    
    -- 1. perform old process here
    
    -- 2. Do void process here
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      -- detail PO telah dipakai pada invoice 
      if ACountItemDetailUsed <> 0 then
        RAISE EXCEPTION '^Void tidak dapat dilakukan, karena order pembelian ini telah dipakai pada nota pembelian !^';
      end if; 
    end if;

    -- 3. perform new process here, if not void process
    if New.StatusApprove <> '2' then
      -- Vendor berubah
      if (Old.VendorId <> New.VendorId) then
        if ACountItemDetailUsed <> 0 then
          RAISE EXCEPTION '^Vendor tidak dapat diubah, karena order pembelian ini telah dipakai pada nota pembelian !^';
        end if;    
      end if;

      -- Jumlah, Disc, Disc2, Tax, Voucher berubah
      if (Old.Amount <> New.Amount) or (Old.Disc <> New.Disc) or (Old.Disc2 <> New.Disc2) or (Old.VoucherAmount <> New.VoucherAmount) or 
        (Old.Tax <> New.Tax) or (Old.PPH22Amount <> New.PPH22Amount) then
        
        -- Hitung nilai baru
        ANewDiscAmount = New.Amount * New.Disc / 100;
        ANewDiscAmount2 = (New.Amount - ANewDiscAmount) * New.Disc2 / 100;
        ANewTaxAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) * New.Tax / 100;
        ANewPPH22Amount = ((New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount) * New.PPH22 / 100;
        ANewTotalAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount + ANewPPH22Amount;
      
        New.DiscAmount = ANewDiscAmount;
        New.DiscAmount2 = ANewDiscAmount2;
        New.TaxAmount = ANewTaxAmount;
        New.PPH22Amount = ANewPPH22Amount;
        New.TotalAmount = ANewTotalAmount; 
      end if; 
    end if;
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchaseOrderHd_Before
BEFORE INSERT OR UPDATE OR DELETE ON PurchaseOrderHd
  FOR EACH ROW EXECUTE PROCEDURE trPurchaseOrderHd_Before();


create or replace function trPurchasePaymentDt_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  ATransactionId varchar;
  ATransactionDate DateWithoutTime;
  ATransactionStatusApprove varchar;

  APurchasePaymentDate DateWithoutTime;
  AVendorId varchar;
  AFlagBank varchar;
  ABankId varchar; 
  AAccountNo varchar;
  AMessage varchar;
  AYear varchar;
  AMonth varchar;
  AStatusApprove Flag;
  ACashBankTransactionTypeId varchar;
  ADepositBalance currency;
  
  APrefixCashBank varchar;
  APrefixCashBankLength integer;
  APrefixCashBankRunTotal integer;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  ADoChecking := 1;
  if (TG_OP = 'INSERT') then 
    ATransactionId := New.PurchasePaymentId; 
  else
    ATransactionId := Old.PurchasePaymentId;
  end if;
  execute 'select PurchasePaymentDate, StatusApprove from PurchasePayment where PurchasePaymentId = ''' || ATransactionId || ''''
  into ATransactionDate, ATransactionStatusApprove;

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    if ATransactionStatusApprove = '2' then
      raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
    end if;
   
    -- Bypass pengecekan closing ketika field2 tertentu berubah
    if (TG_OP = 'UPDATE') then 
      --if (Old.XXXXX <> New.XXXXX) then 
      --  ADoChecking := 0;
      --end if;  
    end if;
  end if;  
  
  if ADoChecking = 1 then
    if ATransactionDate <= fnGetClosingDate() then
      raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
    end if;
  end if;
  ---------------------------------------------------------------------------------------------------------

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    -- Initial
    select PurchasePaymentDate, VendorId
    from PurchasePayment
    where PurchasePaymentId = Old.PurchasePaymentId
    into APurchasePaymentDate, AVendorId;       

    AYear  := EXTRACT(Year from APurchasePaymentDate);
    AMonth := EXTRACT(Month from APurchasePaymentDate);
    
    select b.FlagBank
    from PaymentType a
    left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
    where a.PaymentTypeId = Old.PaymentTypeId 
    into AFlagBank; 
    
    if Old.PaymentTypeId <> 'PT003' then -- jika bukan potong deposit (Kondisi Normal)
      if (TG_OP = 'DELETE') then     
        -- Cash transaction
        if AFlagBank = '0' then   
          -- Void transaction
          update CashTransaction
          set StatusApprove = '2'
          where CashTransactionId = Old.ReferenceId;        
        end if;

        -- Bank transaction
        if AFlagBank = '1' then
          -- Void bank transaction
          update BankTransaction
          set StatusApprove = '2'
          where BankTransactionId = Old.ReferenceId;        
        end if;
      end if;
    else
      -- jika potong deposit
      -- Update AR Balance Vendor (+)
      execute spUpdateARBalanceVendor(AVendorId, AYear, cast(AMonth as integer), 1, Old.Amount, Old.CurrencyId, Old.Kurs);
      execute spUpdateVendorDeposit(AVendorId, 1, Old.Amount, Old.CurrencyId, Old.Kurs);
    end if;
        
    -- Update PI Outstanding (+)
    update PurchaseInvoiceHd
    set OutstandingTotalAmount = OutstandingTotalAmount + Old.Amount
    where PurchaseInvoiceId = Old.PurchaseInvoiceId;

    -- Update AP Balance Vendor (+)
    execute spUpdateAPBalanceVendor(AVendorId, AYear, cast(AMonth as integer), 1, Old.Amount, Old.CurrencyId, Old.Kurs);    
  end if;

  if (TG_OP = 'UPDATE') or (TG_OP = 'INSERT') then   
    -- initial    
    select a.PurchasePaymentDate, a.VendorId
    from PurchasePayment a
    where a.PurchasePaymentId = New.PurchasePaymentId
    into APurchasePaymentDate, AVendorId;
    
    AYear  := EXTRACT(Year from APurchasePaymentDate);
    AMonth := EXTRACT(Month from APurchasePaymentDate);

    select a.CashBankTransactionTypeId, b.FlagBank, a.BankId, a.AccountNo
    from PaymentType a
    left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
    where a.PaymentTypeId = New.PaymentTypeId 
    into ACashBankTransactionTypeId, AFlagBank, ABankId, AAccountNo;   
    
    if New.PaymentTypeId <> 'PT003' then -- bukan potong deposit (Kondisi Normal)
      -- Cash Transaction
      if AFlagBank = '0' then 
        -- Perform new value
        if (New.ReferenceId is null) or (New.ReferenceId = '') then 
          -- Ref is blank then auto generate cash transaction
          select SetupValue from Setup
          where SetupId = 'KK1'
          into APrefixCashBank;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'KK2'
          into APrefixCashBankLength;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'KK3'
          into APrefixCashBankRunTotal;
          
          New.ReferenceId = (select fnGetTransactionId('CashTransaction', APrefixCashBank, APrefixCashBankLength, APurchasePaymentDate, APrefixCashBankRunTotal));
          AMessage = 'Pembayaran nota ' || New.PurchaseInvoiceId;
          
          insert into CashTransaction 
            (CashTransactionId, CashTransactionDate, CashBankTransactionTypeId, Amount, VendorId, EmployeeId, Memo, FlagAutomatic, StatusApprove, CurrencyId, Kurs)
          values 
            (New.ReferenceId, APurchasePaymentDate, ACashBankTransactionTypeId, New.Amount, AVendorId, New.EmployeeId, AMessage, '1', '1', New.CurrencyId, New.Kurs);          
            
          -- Update Transaction Registery Counter
          execute spSetTransactionId('CashTransaction', APrefixCashBank, APurchasePaymentDate, APrefixCashBankRunTotal);
        else
          -- update amount & outstanding
          update CashTransaction
          set Amount = New.Amount,
            CurrencyId = New.CurrencyId, 
            Kurs = New.Kurs            
          where CashTransactionId = New.ReferenceId;        
        end if;
      end if;

      -- Bank Transaction
      if AFlagBank = '1' then
        -- Perform new value
        if (New.ReferenceId is null) or (New.ReferenceId = '') then 
          -- Ref is blank then auto generate bank transaction
          select SetupValue from Setup
          where SetupId = 'BK1'
          into APrefixCashBank;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'BK2'
          into APrefixCashBankLength;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'BK3'
          into APrefixCashBankRunTotal;
                    
          New.ReferenceId = (select fnGetTransactionId('BankTransaction', APrefixCashBank, APrefixCashBankLength, APurchasePaymentDate, APrefixCashBankRunTotal));
          AMessage = 'Pembayaran nota ' || New.PurchaseInvoiceId;
        
          insert into BankTransaction 
            (BankTransactionId, BankTransactionDate, CashBankTransactionTypeId, BankId, AccountNo, Amount, VendorId, EmployeeId, Memo, FlagAutomatic, StatusApprove, CurrencyId, Kurs)
          values 
            (New.ReferenceId, APurchasePaymentDate, ACashBankTransactionTypeId, ABankId, AAccountNo, New.Amount, AVendorId, New.EmployeeId, AMessage, '1', '1', New.CurrencyId, New.Kurs);        

          -- Update Transaction Registery Counter
          execute spSetTransactionId('BankTransaction', APrefixCashBank, APurchasePaymentDate, APrefixCashBankRunTotal);          
        else
          -- update amount & outstanding
          update BankTransaction
          set Amount = New.Amount,
            CurrencyId = New.CurrencyId, 
            Kurs = New.Kurs
          where BankTransactionId = New.ReferenceId;        
        end if;
      end if;
      
    else 
    
      -- jika potong deposit     
      select DepositBalance 
      from Vendor
      where VendorId = AVendorId
      into ADepositBalance;
  
      if New.Amount > ADepositBalance then
        Raise Exception '%', '^Jumlah deposit tidak mencukupi untuk pembayaran!^';
      end if;

      -- Update AR Balance Vendor (-)
      execute spUpdateARBalanceVendor(AVendorId, AYear, cast(AMonth as integer), -1, New.Amount, New.CurrencyId, New.Kurs);
      execute spUpdateVendorDeposit(AVendorId, -1, New.Amount, New.CurrencyId, New.Kurs);

      -- Always set reference id to null
      New.ReferenceId = Null;
    end if;  
        
    -- Update PI Outstanding (-)
    if (select OutstandingTotalAmount 
      from PurchaseInvoiceHd 
      where PurchaseInvoiceId = New.PurchaseInvoiceId) < New.Amount then
      Raise Exception '%', '^Jumlah pembayaran lebih besar dari sisa tagihan!^';
    else
      update PurchaseInvoiceHd
      set OutstandingTotalAmount = OutstandingTotalAmount - New.Amount
      where PurchaseInvoiceId = New.PurchaseInvoiceId;            
    end if;
    
    -- Update APBalanceVendor (-)
    execute spUpdateAPBalanceVendor(AVendorId, AYear, cast(AMonth as integer), -1, New.Amount, New.CurrencyId, New.Kurs);
  end if;
  
  if (TG_OP = 'DELETE') then
    return old;
  else
    return new;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchasePaymentDt_Before
BEFORE INSERT OR UPDATE OR DELETE ON PurchasePaymentDt
  FOR EACH ROW EXECUTE PROCEDURE trPurchasePaymentDt_Before();


create or replace function trPurchasePayment_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  AReferenceId varchar;
  APaymentTypeId varchar;
  APurchaseInvoiceId varchar;
  AAmount currency;
  
  AFlagBank varchar;
  ABankId varchar;
  AAccountNo varchar;
  AYear varchar;
  AMonth varchar;
  ACurrencyId varchar;
  AKurs currencyplus;

  CPurchasePaymentdt cursor for 
  select PaymentTypeId, Amount, PurchaseInvoiceId, ReferenceId, CurrencyId, Kurs
  from PurchasePaymentDt 
  where PurchasePaymentId = Old.PurchasePaymentId;  
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.PurchasePaymentDate) <> extract(year from Old.PurchasePaymentDate)) or
        (extract(month from New.PurchasePaymentDate) <> extract(month from Old.PurchasePaymentDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.PurchasePaymentDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
  
  if (TG_OP = 'UPDATE') then    
    -- 1. perform old process here
    
    -- 2. Do void process here
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      open CPurchasePaymentDt;
      loop
        fetch CPurchasePaymentDt into APaymentTypeId, AAmount, APurchaseInvoiceId, AReferenceId, ACurrencyId, AKurs;
        exit when (APaymentTypeId is null);

        AYear  := EXTRACT(Year from Old.PurchasePaymentDate);
        AMonth := EXTRACT(Month from Old.PurchasePaymentDate);

        select b.FlagBank
        from PaymentType a
        left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
        where a.PaymentTypeId = APaymentTypeId 
        into AFlagBank; 

        if APaymentTypeId <> 'PT003' then -- jika bukan potong deposit   
          -- Cash transaction
          if AFlagBank = '0' then
            -- undo cash transaction outstanding
            update CashTransaction
            set Outstanding = Outstanding + AAmount
            where CashTransactionId = AReferenceId;

            -- if cash transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from CashTransaction where CashTransactionId = AReferenceId) = '1' then
              -- Void transaction
              update CashTransaction
              set StatusApprove = '2'
              where CashTransactionId = AReferenceId;
            end if;
          end if;

          -- Bank transaction
          if AFlagBank = '1' then
            -- undo bank transaction outstanding
            update BankTransaction
            set Outstanding = Outstanding + AAmount
            where BankTransactionId = AReferenceId;

            -- if bank transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from BankTransaction where BankTransactionId = AReferenceId) = '1' then
              -- Void bank transaction
              update BankTransaction
              set StatusApprove = '2'
              where BankTransactionId = AReferenceId;
            end if;
          end if;          
        else
        
          -- jika potong deposit
          -- Update AR Balance Vendor (+)
          execute spUpdateARBalanceVendor(Old.VendorId, AYear, cast(AMonth as integer), 1, AAmount, ACurrencyId, AKurs);
          execute spUpdateVendorDeposit(Old.VendorId, 1, AAmount, ACurrencyId, AKurs);
        end if;

        -- Update PI Outstanding (+)
        update PurchaseInvoiceHd
        set OutstandingTotalAmount = OutstandingTotalAmount + AAmount
        where PurchaseInvoiceId = APurchaseInvoiceId;

        -- Update APBalanceVendor (+)
        execute spUpdateAPBalanceVendor(old.VendorId, AYear, cast(AMonth as integer), 1, AAmount, ACurrencyId, AKurs);
      end loop;
    
      close CPurchasePaymentDt;    
    end if;

    -- 3. perform new process here, if not void process
    if New.StatusApprove <> '2' then

    end if;
  end if; 
  
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchasePayment_After
AFTER INSERT OR UPDATE OR DELETE ON PurchasePayment
  FOR EACH ROW EXECUTE PROCEDURE trPurchasePayment_After();


create or replace function trPurchasePrice_After ()
  returns trigger AS
$$
declare
  AAutoUpdateMinSalePrice integer;  
begin 
  select SetupValue
  from Setup
  where SetupId = 'OPT06'
  into AAutoUpdateMinSalePrice;
  if AAutoUpdateMinSalePrice is null then
    AAutoUpdateMinSalePrice = 0;
  end if;
  
  if AAutoUpdateMinSalePrice = 1 then
    -- OnDelete
    if (TG_OP = 'DELETE') then    
      -- Tidak ada pembelian selain bonus (price = 0)
      update Item
      set MinSalePrice = 0,
        LastPI = ''
      where ItemId = Old.ItemId;      
    end if;
      
    -- OnInsert & Update
    if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
      update Item
      set MinSalePrice = New.Price,
        LastPI = New.LastPI
      where ItemId = New.ItemId;      
    end if;
  end if;
  
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchasePrice_After
AFTER INSERT OR UPDATE OR DELETE ON PurchasePrice
  FOR EACH ROW EXECUTE PROCEDURE trPurchasePrice_After();


create or replace function trPurchaseReturnDt_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  ATransactionId varchar;
  ATransactionDate DateWithoutTime;
  ATransactionStatusApprove varchar;
  
  APurchaseReturnDate DateWithoutTime;
  AVendorId varchar;
  AWarehouseId varchar;

  ATransactionTypeId varchar;
  ADiff currency;
  AStatusMethod integer;
  AQty quantity;
  
  AMaxPurchaseReturnId varchar;
  AMaxPurchaseReturnDate DateWithoutTime;
  AMaxPrice currency;
  AMaxDiscItem disc;
  AMaxDiscItemPrice currency;
  AMaxDiscItem2 disc;
  AMaxDiscItemPrice2 currency;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  ADoChecking := 1;
  if (TG_OP = 'INSERT') then 
    ATransactionId := New.PurchaseReturnId; 
  else
    ATransactionId := Old.PurchaseReturnId;
  end if;
  execute 'select PurchaseReturnDate, StatusApprove from PurchaseReturnHd where PurchaseReturnId = ''' || ATransactionId || ''''
  into ATransactionDate, ATransactionStatusApprove;

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    if ATransactionStatusApprove = '2' then
      raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
    end if;
   
    -- Bypass pengecekan closing ketika field2 tertentu berubah
    if (TG_OP = 'UPDATE') then 
      --if (Old.XXXXX <> New.XXXXX) then 
      --  ADoChecking := 0;
      --end if;  
    end if;
  end if;  
  
  if ADoChecking = 1 then
    if ATransactionDate <= fnGetClosingDate() then
      raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
    end if;
  end if;
  ---------------------------------------------------------------------------------------------------------

  if (TG_OP = 'DELETE') or (TG_OP = 'UPDATE') then
    select PurchaseReturnDate, VendorId, WarehouseId
    from PurchaseReturnHd 
    where PurchaseReturnId = Old.PurchaseReturnId 
    into APurchaseReturnDate, AVendorId, AWarehouseId;
    
    -- Update Stock Expired (+)
    if (select count(ItemId)
       from StockExpired
       where ItemId = Old.ItemId
       and WarehouseId = AWarehouseId
       and ExpiredDate = Old.ExpiredDate) = 0 then
      insert into StockExpired (ItemId, WarehouseId, ExpiredDate, Qty)
      values (Old.ItemId, AWarehouseId, Old.ExpiredDate, Old.Qty);
    else
      update StockExpired
      set Qty = Qty + Old.Qty
      where ItemId = Old.ItemId
      and WarehouseId = AWarehouseId
      and ExpiredDate = Old.ExpiredDate;
    end if;

    -- Update PI Amount
    update PurchaseReturnHd     
    set Amount = Amount - Old.Amount
    where PurchaseReturnId = Old.PurchaseReturnId;
      
    -- Update qty return left pada PI detail
    update PurchaseInvoiceDt 
    set QtyReturnLeft = QtyReturnLeft + Old.Qty
    where PurchaseInvoiceId = Old.PurchaseInvoiceId 
    and ItemId = Old.ItemId 
    and No = Old.NoPI;
    
    -- Delete State (Only) for process Qty
    if (TG_OP = 'DELETE') then      
      AStatusMethod = (select StatusCostMethod from Item where ItemId = Old.ItemId);
      -- pengecekan status LIFO, FIFO & AVG    
      if AStatusMethod <> '2' then 
        -- FIFO / LIFO
        delete from Transaction 
        where ReferenceId = Old.PurchaseReturnId 
        and No = Old.No
        and ItemId = Old.ItemId;
      else
        -- AVG
        ATransactionTypeId := 'TY005';
        insert into Transaction 
          (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
        values
          (Old.PurchaseReturnId, APurchaseReturnDate, ATransactionTypeId, Old.ItemId, AWarehouseId,
          Old.Qty, (Old.Price - Old.DiscItemPrice - Old.DiscItemPrice2 - Old.VoucherItem), 'Perubahan Retur Pembelian (+) ' || Old.PurchaseReturnId, Old.No);
      end if;
    end if;
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    -- Initial    
    select PurchaseReturnDate, VendorId, WarehouseId
    from PurchaseReturnHd 
    where PurchaseReturnId = New.PurchaseReturnId 
    into APurchaseReturnDate, AVendorId, AWarehouseId;        
    
    -- Update Stock Expired (-)
    if (select count(ItemId)
       from StockExpired
       where ItemId = New.ItemId
       and WarehouseId = AWarehouseId
       and ExpiredDate = New.ExpiredDate) = 0 then
      insert into StockExpired (ItemId, WarehouseId, ExpiredDate, Qty)
      values (New.ItemId, AWarehouseId, New.ExpiredDate, New.Qty * -1);
    else
      update StockExpired
      set Qty = Qty - New.Qty
      where ItemId = New.ItemId
      and WarehouseId = AWarehouseId
      and ExpiredDate = New.ExpiredDate;
    end if;

    -- Update PI Amount      
    update PurchaseReturnHd     
    set  Amount = Amount + New.Amount
    where PurchaseReturnId = New.PurchaseReturnId;

    -- Update qty return left pada PI detail
    update PurchaseInvoiceDt 
    set QtyReturnLeft = QtyReturnLeft - New.Qty
    where PurchaseInvoiceId = New.PurchaseInvoiceId 
    and ItemId = New.ItemId 
    and No = New.NoPI;

    -- Insert State (Only) for process Qty
    if (TG_OP = 'INSERT') then
      ATransactionTypeId := 'TY007';    
      insert into transaction 
        (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
      values
        (New.PurchaseReturnId, APurchaseReturnDate, ATransactionTypeId, New.ItemId, AWarehouseId, 
        New.Qty, (New.Price - New.DiscItemPrice - New.DiscItemPrice2 - New.VoucherItem), 'Retur Pembelian ' || New.PurchaseReturnId, New.No);    
    end if;
  end if;

  if (TG_OP = 'UPDATE') then -- Update State (Only) for process Qty
    -- initial
    select PurchaseReturnDate, WarehouseId 
    from PurchaseReturnHd 
    where PurchaseReturnId = Old.PurchaseReturnId 
    into APurchaseReturnDate, AWarehouseId;
    
    if New.ItemId <> Old.ItemId then -- jika item berubah
      -- Delete old
      AStatusMethod = (select StatusCostMethod from Item where ItemId = Old.ItemId);
      -- pengecekan status LIFO, FIFO & AVG    
      if AStatusMethod <> '2' then 
        -- FIFO / LIFO
        delete from Transaction 
        where ReferenceId = Old.PurchaseReturnId 
        and No = Old.No
        and ItemId = Old.ItemId;
      else
        -- AVG
        ATransactionTypeId := 'TY005';
        insert into Transaction 
          (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
        values
          (Old.PurchaseReturnId, APurchaseReturnDate, ATransactionTypeId, Old.ItemId, AWarehouseId,
          Old.Qty, (Old.Price - Old.DiscItemPrice - Old.DiscItemPrice2 - Old.VoucherItem), 'Perubahan Retur Pembelian (+) ' || Old.PurchaseReturnId, Old.No);
      end if;

      -- Insert new
      ATransactionTypeId := 'TY007';          
      insert into transaction 
        (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
      values
        (New.PurchaseReturnId, APurchaseReturnDate, ATransactionTypeId, New.ItemId, AWarehouseId, 
        New.Qty, (New.Price - New.DiscItemPrice - New.DiscItemPrice2 - New.VoucherItem), 'Retur Pembelian ' || New.PurchaseReturnId, New.No);    
    
    else
      -- ItemId tidak berubah
      select PurchaseReturnDate, WarehouseId 
      from PurchaseReturnHd 
      where PurchaseReturnId = New.PurchaseReturnId 
      into APurchaseReturnDate, AWarehouseId;
      AStatusMethod = (select StatusCostMethod from Item where ItemId = New.ItemId);

      if AStatusMethod <> '2' then
        update Transaction 
        set Qty = New.Qty, 
          Price = New.Price - New.DiscItemPrice - New.DiscItemPrice2 - New.VoucherItem,
          No = New.No
        where ReferenceId = Old.PurchaseReturnId 
        and No = Old.No
        and ItemId = New.ItemId;
      else
        -- AVG
        if New.Qty > Old.Qty then
          AQty := New.Qty - Old.Qty;
          ATransactionTypeId := 'TY006';
        else
          AQty := Old.Qty - New.Qty;
          ATransactionTypeId := 'TY005';
        end if;
      
        insert into Transaction 
          (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
        values
          (New.PurchaseReturnId, APurchaseReturnDate, ATransactionTypeId, New.ItemId, AWarehouseId,
          AQty, (New.Price - New.DiscItemPrice - New.DiscItemPrice2 - New.VoucherItem), 'Perubahan Transaction ' || New.PurchaseReturnId, New.No);
      end if;
    end if;    
  end if;
  
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchaseReturnDt_After 
AFTER INSERT OR UPDATE OR DELETE ON PurchaseReturnDt
  FOR EACH ROW EXECUTE PROCEDURE trPurchaseReturnDt_After();


create or replace function trPurchaseReturnHd_After ()
  returns trigger AS
$$
declare
  AReferenceId varchar;
  APurchaseInvoiceId varchar;
  AItemId varchar;
  ANoPI integer;
  AQty quantityplus;
  AYear integer;
  AMonth integer;
  
  CPurchaseReturnDt cursor for 
  select PurchaseInvoiceId, ItemId, NoPI, Qty
  from PurchaseReturnDt 
  where PurchaseReturnId = Old.PurchaseReturnId;    
begin
  if (TG_OP = 'UPDATE') then
    -- 0. Initialize (optional)

    -- 1. perform old process here (optional)
    
    -- 2. Do void process here (optional)
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      if New.OutStandingTotalAmount <> New.TotalAmount then
        RAISE EXCEPTION '^Void tidak dapat dilakukan, karena telah ada pembayaran untuk retur ini !^';
      else
        -- delete transaction
        delete from Transaction 
        where ReferenceId = New.PurchaseReturnId; 
      
        -- Update ARBalanceVendor (-)
        AYear  := EXTRACT(Year from Old.PurchaseReturnDate);
        AMonth := EXTRACT(Month from Old.PurchaseReturnDate);    
        execute spUpdateARBalanceVendor(Old.VendorId, AYear, AMonth, -1, Old.TotalAmount);   

        -- Update qty return left pada PI detail
        open CPurchaseReturnDt;
        loop 
          fetch CPurchaseReturnDt into APurchaseInvoiceId, AItemId, ANoPI, AQty;
          exit when (AItemId is null);

          update PurchaseInvoiceDt 
          set QtyReturnLeft = QtyReturnLeft + AQty
          where PurchaseInvoiceId = APurchaseInvoiceId 
          and ItemId = AItemId 
          and No = ANoPI;
        end loop;
        close CPurchaseReturnDt;
      end if;  
    end if;

    -- 3. perform new process here, if not void process (optional)
    if New.StatusApprove <> '2' then
      -- tanggal berubah
      if (Old.PurchaseReturnDate <> New.PurchaseReturnDate) then
        update transaction 
        set TransactionDate = New.PurchaseReturnDate
        where ReferenceId = New.PurchaseReturnId;
      end if;
 
      -- Gudang berubah
      if (Old.WarehouseId <> New.WarehouseId) then
        update transaction 
        set WarehouseSource = New.WarehouseId
        where ReferenceId = New.PurchaseReturnId;
      end if;
      
      -- Vendor berubah
      if (Old.VendorId <> New.VendorId) then
      end if;      
    end if;
  end if; --(TG_OP = 'UPDATE')  

  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchaseReturnHd_After
AFTER INSERT OR UPDATE OR DELETE ON PurchaseReturnHd
  FOR EACH ROW EXECUTE PROCEDURE trPurchaseReturnHd_After();


create or replace function trPurchaseReturnHd_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  ADiff currency;
  ANewDiscAmount currency;  
  ANewDiscAmount2 currency;  
  ANewTaxAmount currency;  
  ANewPPH22Amount currency;
  ANewTotalAmount currency;
  ANewOutstandingTotalAmount currency;
  AYear varchar;
  AMonth integer;  
  AMessage varchar;
  AVendorName varchar;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.PurchaseReturnDate) <> extract(year from Old.PurchaseReturnDate)) or
        (extract(month from New.PurchaseReturnDate) <> extract(month from Old.PurchaseReturnDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) or (Old.OutstandingTotalAmount <> New.OutstandingTotalAmount) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.PurchaseReturnDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------

  if (TG_OP = 'UPDATE') then
    if (Old.VendorId <> New.VendorId) and (Old.OutStandingTotalAmount <> Old.TotalAmount) then
      RAISE EXCEPTION '^Vendor tidak dapat dirubah, karena telah dilakukan pembayaran !^';
    end if;

    -- Amount, Disc, Disc2, Tax, Vaoucher, Vendor Changed
    if (Old.Amount <> New.Amount) or (Old.Disc <> New.Disc) or (Old.Disc2 <> New.Disc2) or (Old.VoucherAmount <> New.VoucherAmount) or 
      (Old.Tax <> New.Tax) or (Old.PPH22Amount <> New.PPH22Amount) or (Old.Meterai <> New.Meterai) or
      (Old.VendorId <> New.VendorId) then
      -- cari selisih tagihan dengan pembayaran
      ADiff = Old.TotalAmount - Old.OutstandingTotalAmount;
 
      -- Hitung nilai baru
      ANewDiscAmount = New.Amount * New.Disc / 100;
      ANewDiscAmount2 = (New.Amount - ANewDiscAmount) * New.Disc2 / 100;
      ANewTaxAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) * New.Tax / 100;
      ANewPPH22Amount = ((New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount) * New.PPH22 / 100;
      ANewTotalAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount + ANewPPH22Amount;
      ANewTotalAmount = ANewTotalAmount + New.Meterai;
      
      ANewOutstandingTotalAmount = ANewTotalAmount - ADiff;
      if ANewOutstandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan tidak dapat dilakukan, karena jumlah retur baru lebih kecil daripada pembayaran yang telah dilakukan !^';
      end if;
    
      New.DiscAmount = ANewDiscAmount;
      New.DiscAmount2 = ANewDiscAmount2;
      New.TaxAmount = ANewTaxAmount;
      New.PPH22Amount = ANewPPH22Amount;
      New.TotalAmount = ANewTotalAmount;
      New.OutStandingTotalAmount = ANewOutstandingTotalAmount;
        
      -- 2. Update ARBalanceVendor
      AYear  := EXTRACT(Year from Old.PurchaseReturnDate);
      AMonth := EXTRACT(Month from Old.PurchaseReturnDate);    
      execute spUpdateARBalanceVendor(Old.VendorId, AYear, AMonth, -1, Old.TotalAmount, Old.CurrencyId, Old.Kurs);    
      AYear  := EXTRACT(Year from New.PurchaseReturnDate);
      AMonth := EXTRACT(Month from New.PurchaseReturnDate);    
      execute spUpdateARBalanceVendor(New.VendorId, AYear, AMonth, 1, ANewTotalAmount, New.CurrencyId, New.Kurs);
    end if;

    if (Old.OutStandingTotalAmount <> New.OutStandingTotalAmount) then
      -- Validate Outstanding
      if New.OutStandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan pembayaran tidak dapat dilakukan, karena jumlah pembayaran lebih besar daripada sisa retur !^';
      end if;
    end if;    
  end if;
  
  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchaseReturnHd_Before
BEFORE INSERT OR UPDATE OR DELETE ON PurchaseReturnHd
  FOR EACH ROW EXECUTE PROCEDURE trPurchaseReturnHd_Before();


create or replace function trPurchaseReturnPaymentDt_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  ATransactionId varchar;
  ATransactionDate DateWithoutTime;
  ATransactionStatusApprove varchar;

  APurchaseReturnPaymentDate DateWithoutTime;
  AVendorId varchar;
  AFlagBank varchar;
  ABankId varchar; 
  AAccountNo varchar;
  AMessage varchar;
  AYear varchar;
  AMonth varchar;
  ACashBankTransactionTypeId varchar;
  ADepositBalance currency;
  
  APrefixCashBank varchar;
  APrefixCashBankLength integer;
  APrefixCashBankRunTotal integer;  
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  ADoChecking := 1;
  if (TG_OP = 'INSERT') then 
    ATransactionId := New.PurchaseReturnPaymentId; 
  else
    ATransactionId := Old.PurchaseReturnPaymentId;
  end if;
  execute 'select PurchaseReturnPaymentDate, StatusApprove from PurchaseReturnPaymentHd where PurchaseReturnPaymentId = ''' || ATransactionId || ''''
  into ATransactionDate, ATransactionStatusApprove;

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    if ATransactionStatusApprove = '2' then
      raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
    end if;
   
    -- Bypass pengecekan closing ketika field2 tertentu berubah
    if (TG_OP = 'UPDATE') then 
      --if (Old.XXXXX <> New.XXXXX) then 
      --  ADoChecking := 0;
      --end if;  
    end if;
  end if;  
  
  if ADoChecking = 1 then
    if ATransactionDate <= fnGetClosingDate() then
      raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
    end if;
  end if;
  ---------------------------------------------------------------------------------------------------------

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    -- Initial
    select PurchaseReturnPaymentDate, VendorId
    from PurchaseReturnPaymentHd
    where PurchaseReturnPaymentId = Old.PurchaseReturnPaymentId
    into APurchaseReturnPaymentDate, AVendorId;       

    AYear  := EXTRACT(Year from APurchaseReturnPaymentDate);
    AMonth := EXTRACT(Month from APurchaseReturnPaymentDate);
    
    select b.FlagBank
    from PaymentType a
    left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
    where a.PaymentTypeId = Old.PaymentTypeId 
    into AFlagBank;

    if Old.PaymentTypeId <> 'PT005' then -- jika bukan tambahkan ke deposit   
      if (TG_OP = 'DELETE') then     
        -- Cash transaction
        if AFlagBank = '0' then   
          -- Void transaction
          update CashTransaction
          set StatusApprove = '2'
          where CashTransactionId = Old.ReferenceId;        
        end if;

        -- Bank transaction
        if AFlagBank = '1' then
          -- Void bank transaction
          update BankTransaction
          set StatusApprove = '2'
          where BankTransactionId = Old.ReferenceId;        
        end if;        
      end if;
    else
      -- jika tambahkan ke deposit
      select DepositBalance 
      from Vendor
      where VendorId = AVendorId
      into ADepositBalance;
  
      if Old.Amount > ADepositBalance then
        Raise Exception '%', '^Transaksi tidak dapat dilakukan karena deposit tidak mencukupi !^';
      end if;

      -- Update AR Balance Vendor (-)
      execute spUpdateARBalanceVendor(AVendorId, AYear, cast(AMonth as integer), -1, Old.Amount, Old.CurrencyId, Old.Kurs);
      execute spUpdateVendorDeposit(AVendorId, -1, Old.Amount, Old.CurrencyId, Old.Kurs);
    end if;
        
    -- Update PR Outstanding (+)
    update PurchaseReturnHd
    set OutstandingTotalAmount = OutstandingTotalAmount + Old.Amount
    where PurchaseReturnId = Old.PurchaseReturnId;

    -- Update AR Balance Vendor (+)
    execute spUpdateARBalanceVendor(AVendorId, AYear, cast(AMonth as integer), 1, Old.Amount, Old.CurrencyId, Old.Kurs);    
  end if;

  if (TG_OP = 'UPDATE') or (TG_OP = 'INSERT') then   
    -- initial    
    select a.PurchaseReturnPaymentDate, a.VendorId
    from PurchaseReturnPaymentHd a
    left join Vendor b on a.VendorId = b.VendorId
    where a.PurchaseReturnPaymentId = New.PurchaseReturnPaymentId
    into APurchaseReturnPaymentDate, AVendorId;
    
    AYear  := EXTRACT(Year from APurchaseReturnPaymentDate);
    AMonth := EXTRACT(Month from APurchaseReturnPaymentDate);

    select a.CashBankTransactionTypeId, b.FlagBank, a.BankId, a.AccountNo
    from PaymentType a
    left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
    where a.PaymentTypeId = New.PaymentTypeId 
    into ACashBankTransactionTypeId, AFlagBank, ABankId, AAccountNo;      
    
    if New.PaymentTypeId <> 'PT005' then -- bukan tambahkan ke deposit
      -- Cash Transaction
      if AFlagBank = '0' then 
        -- Perform new value
        if (New.ReferenceId is null) or (New.ReferenceId = '') then 
          -- Ref is blank then auto generate cash transaction
          select SetupValue from Setup
          where SetupId = 'KM1'
          into APrefixCashBank;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'KM2'
          into APrefixCashBankLength;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'KM3'
          into APrefixCashBankRunTotal;

          New.ReferenceId = (select fnGetTransactionId('CashTransaction', APrefixCashBank, APrefixCashBankLength, APurchaseReturnPaymentDate, APrefixCashBankRunTotal));      
          AMessage = 'Penerimaan atas retur pembelian ' || New.PurchaseReturnId;
        
          insert into CashTransaction 
            (CashTransactionId, CashTransactionDate, CashBankTransactionTypeId, Amount, VendorId, EmployeeId, Memo, FlagFix, StatusApprove, CurrencyId, Kurs)
          values 
            (New.ReferenceId, APurchaseReturnPaymentDate, ACashBankTransactionTypeId, New.Amount, AVendorId, New.EmployeeId, AMessage, '1', '1', New.CurrencyId, New.Kurs);          

          -- Update Transaction Registery Counter
          execute spSetTransactionId('CashTransaction', APrefixCashBank, APurchaseReturnPaymentDate, APrefixCashBankRunTotal);
        else
          -- update amount & outstanding
          update CashTransaction
          set Amount = New.Amount,
            CurrencyId = New.CurrencyId, 
            Kurs = New.Kurs      
          where CashTransactionId = New.ReferenceId;        
        end if;
      end if;

      -- Bank Transaction
      if AFlagBank = '1' then
        -- Perform new value
        if (New.ReferenceId is null) or (New.ReferenceId = '') then 
          -- Ref is blank then auto generate bank transaction
          select SetupValue from Setup
          where SetupId = 'BM1'
          into APrefixCashBank;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'BM2'
          into APrefixCashBankLength;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'BM3'
          into APrefixCashBankRunTotal;

          New.ReferenceId = (select fnGetTransactionId('BankTransaction', APrefixCashBank, APrefixCashBankLength, APurchaseReturnPaymentDate, APrefixCashBankRunTotal));
          AMessage = 'Penerimaan atas retur pembelian ' || New.PurchaseReturnId;
        
          insert into BankTransaction 
            (BankTransactionId, BankTransactionDate, CashBankTransactionTypeId, BankId, AccountNo, Amount, VendorId, EmployeeId, Memo, FlagFix, StatusApprove, CurrencyId, Kurs)
          values 
            (New.ReferenceId, APurchaseReturnPaymentDate, ACashBankTransactionTypeId, ABankId, AAccountNo, New.Amount, AVendorId, New.EmployeeId, AMessage, '1', '1', New.CurrencyId, New.Kurs);        

          -- Update Transaction Registery Counter
          execute spSetTransactionId('BankTransaction', APrefixCashBank, APurchaseReturnPaymentDate, APrefixCashBankRunTotal);
        else
          -- update amount & outstanding
          update BankTransaction
          set Amount = New.Amount,
            CurrencyId = New.CurrencyId, 
            Kurs = New.Kurs      
          where BankTransactionId = New.ReferenceId;        
        end if;
      end if;
    else 
      -- jika tambah ke deposit     
      -- Update AR Balance Vendor (+)
      execute spUpdateARBalanceVendor(AVendorId, AYear, cast(AMonth as integer), 1, New.Amount, New.CurrencyId, New.Kurs);
      execute spUpdateVendorDeposit(AVendorId, 1, New.Amount, New.CurrencyId, New.Kurs);

      -- Always set reference id to null
      New.ReferenceId = Null;
    end if;  
        
    -- Update PR Outstanding (-)
    if (select OutstandingTotalAmount from PurchaseReturnHd where PurchaseReturnId = New.PurchaseReturnId) < New.Amount then
      Raise Exception '%', '^Jumlah pembayaran lebih besar dari sisa tagihan!^';
    else
      update PurchaseReturnHd
      set OutstandingTotalAmount = OutstandingTotalAmount - New.Amount
      where PurchaseReturnId = New.PurchaseReturnId;            
    end if;

    -- Update ARBalanceVendor (-)
    execute spUpdateARBalanceVendor(AVendorId, AYear, cast(AMonth as integer), -1, New.Amount, New.CurrencyId, New.Kurs);
  end if;
  
  if (TG_OP = 'DELETE') then
    return old;
  else
    return new;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchaseReturnPaymentDt_Before
BEFORE INSERT OR UPDATE OR DELETE ON PurchaseReturnPaymentDt
  FOR EACH ROW EXECUTE PROCEDURE trPurchaseReturnPaymentDt_Before();


create or replace function trPurchaseReturnPaymentHd_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  AReferenceId varchar;
  APaymentTypeId varchar;
  APurchaseReturnId varchar;
  AAmount currency;
  ADepositBalance currency;
  
  x integer;
  AFlagBank varchar;
  ABankId varchar;
  AAccountNo varchar;
  AYear varchar;
  AMonth varchar;

  CPurchaseReturnPaymentDt cursor for 
  select PaymentTypeId, Amount, PurchaseReturnId, ReferenceId
  from PurchaseReturnPaymentDt 
  where PurchaseReturnPaymentId = Old.PurchaseReturnPaymentId;  
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.PurchaseReturnPaymentDate) <> extract(year from Old.PurchaseReturnPaymentDate)) or
        (extract(month from New.PurchaseReturnPaymentDate) <> extract(month from Old.PurchaseReturnPaymentDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.PurchaseReturnPaymentDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------

  if (TG_OP = 'UPDATE') then
    -- 0. Initialize (optional)

    -- 1. perform old process here (optional)
    
    -- 2. Do void process here (optional)
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      open CPurchaseReturnPaymentDt;
      loop
        fetch CPurchaseReturnPaymentDt into APaymentTypeId, AAmount, APurchaseReturnId, AReferenceId;
        exit when (APaymentTypeId is null);

        AYear  := EXTRACT(Year from Old.PurchaseReturnPaymentDate);
        AMonth := EXTRACT(Month from Old.PurchaseReturnPaymentDate);

        select b.FlagBank
        from PaymentType a
        left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
        where a.PaymentTypeId = Old.PaymentTypeId 
        into AFlagBank;

        if APaymentTypeId <> 'PT005' then -- jika bukan tambahkan ke deposit   
          -- Cash transaction
          if AFlagBank = '0' then
            -- undo cash transaction outstanding
            update CashTransaction
            set Outstanding = Outstanding + AAmount
            where CashTransactionId = AReferenceId;

            -- if cash transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from CashTransaction where CashTransactionId = AReferenceId) = '1' then
              -- Void transaction
              update CashTransaction
              set StatusApprove = '2'
              where CashTransactionId = AReferenceId;
            end if;
          end if;

          -- Bank transaction
          if AFlagBank = '1' then
            -- undo bank transaction outstanding
            update BankTransaction
            set Outstanding = Outstanding + AAmount
            where BankTransactionId = AReferenceId;

            -- if bank transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from BankTransaction where BankTransactionId = AReferenceId) = '1' then
              -- Void bank transaction
              update BankTransaction
              set StatusApprove = '2'
              where BankTransactionId = AReferenceId;
            end if;
          end if;
        else
          -- jika tambahkan ke deposit
          select DepositBalance 
          from Vendor
          where VendorId = AVendorId
          into ADepositBalance;
  
          if AAmount > ADepositBalance then
            Raise Exception '%', '^Transaksi tidak dapat dilakukan karena deposit tidak mencukupi !^';
          end if;

          -- Update AR Balance Vendor (-)
          execute spUpdateARBalanceVendor(Old.VendorId, AYear, cast(AMonth as integer), -1, AAmount);
          execute spUpdateVendorDeposit(Old.VendorId, -1, AAmount);
        end if;

        -- Update PR Outstanding (+)
        update PurchaseReturnReturnHd
        set OutstandingTotalAmount = OutstandingTotalAmount + AAmount
        where PurchaseReturnId = APurchaseReturnId;

        -- Update ARBalanceVendor (+)
        execute spUpdateARBalanceVendor(Old.VendorId, AYear, cast(AMonth as integer), 1, AAmount);
      end loop;    
      close CPurchaseReturnPaymentDt;    
    end if;

    -- 3. perform new process here, if not void process (optional)
    if New.StatusApprove <> '2' then

    end if;
  end if; 
 
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trPurchaseReturnPaymentHd_After
AFTER INSERT OR UPDATE OR DELETE ON PurchaseReturnPaymentHd
  FOR EACH ROW EXECUTE PROCEDURE trPurchaseReturnPaymentHd_After();


create or replace function trRegisterSalesDt_After ()
  returns trigger AS
$$
declare
  ACashRegisterTransactionId varchar(15);
  AStatusClosing status;
  AEngineGroupJobCode varchar(20);
  ADefaultCounterIncQty quantityplus;
  
  CursorItemEngineGroupJob_Old cursor for 
    select EngineGroupJobCode, DefaultCounterIncQty      
    from ItemEngineGroupJob
    where ItemId = Old.ItemId;

  CursorItemEngineGroupJob_New cursor for 
    select EngineGroupJobCode, DefaultCounterIncQty      
    from ItemEngineGroupJob
    where ItemId = New.ItemId;
begin    
  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    -- Initialize
    select a.CashRegisterTransactionId, b.StatusPosting
    from RegisterSalesHd a
    left join CashRegisterTransaction b on b.CashRegisterTransactionId = a.CashRegisterTransactionId
    where a.RegisterSalesId = Old.RegisterSalesId 
    into ACashRegisterTransactionId, AStatusClosing;
    
    if AStatusClosing <> '3' then --> Process Closing Shift, Do Nothing !!!
      -- Update SI Amount
      update RegisterSalesHd
      set  Amount = Amount - Old.Amount
      where RegisterSalesId = Old.RegisterSalesId;

      -- Process Engine Counter
      open CursorItemEngineGroupJob_Old; 
      loop 
        fetch CursorItemEngineGroupJob_Old
        into AEngineGroupJobCode, ADefaultCounterIncQty;
        
        exit when (AEngineGroupJobCode is null);
        
        if exists
          (select CashRegisterTransactionId from ComputerCounter 
          where CashRegisterTransactionId = ACashRegisterTransactionId 
          and EngineGroupJobCode = AEngineGroupJobCode) then
          
          update ComputerCounter 
          set ValueBalance = ValueBalance - (Old.Qty * ADefaultCounterIncQty)
          where CashRegisterTransactionId = ACashRegisterTransactionId 
          and EngineGroupJobCode = AEngineGroupJobCode;
        else
          raise exception '^trRegisterSalesDt_After, OnUpdate/OnDelete Invalid Condition !^';
        end if;
      end loop;
      close CursorItemEngineGroupJob_Old;
    end if;
  end if;
    
  if (TG_OP = 'UPDATE') or (TG_OP = 'INSERT') then
    -- Initialize
    select a.CashRegisterTransactionId, b.StatusPosting
    from RegisterSalesHd a
    left join CashRegisterTransaction b on b.CashRegisterTransactionId = a.CashRegisterTransactionId
    where a.RegisterSalesId = new.RegisterSalesId 
    into ACashRegisterTransactionId, AStatusClosing;
    
    if AStatusClosing <> '3' then --> Process Closing Shift, Do Nothing !!!
      -- Update SI Amount      
      update RegisterSalesHd
      set  Amount = Amount + New.Amount
      where RegisterSalesId = New.RegisterSalesId;      

      -- Process Engine Counter
      open CursorItemEngineGroupJob_New; 
      loop 
        fetch CursorItemEngineGroupJob_New
        into AEngineGroupJobCode, ADefaultCounterIncQty;
        
        exit when (AEngineGroupJobCode is null);

        if exists
          (select CashRegisterTransactionId from ComputerCounter 
          where CashRegisterTransactionId = ACashRegisterTransactionId 
          and EngineGroupJobCode = AEngineGroupJobCode) then
          
          update ComputerCounter 
          set ValueBalance = ValueBalance + (New.Qty * ADefaultCounterIncQty)
          where CashRegisterTransactionId = ACashRegisterTransactionId 
          and EngineGroupJobCode = AEngineGroupJobCode;
        else
          insert into ComputerCounter (CashRegisterTransactionId, EngineGroupJobCode, ValueBalance) 
          values (ACashRegisterTransactionId, AEngineGroupJobCode, New.Qty * ADefaultCounterIncQty);
        end if;
      end loop;
      close CursorItemEngineGroupJob_New;        
    end if;    
  end if;

  return null;
end
$$ language 'plpgsql';

CREATE TRIGGER tr_trRegisterSalesDt_After
AFTER INSERT OR UPDATE OR DELETE ON RegisterSalesDt
  FOR EACH ROW EXECUTE PROCEDURE trRegisterSalesDt_After();


create or replace function trRegisterSalesHd_Before ()
  returns trigger AS
$$
declare
  AStatusClosing status;
  ADoChecking integer;
  AOptionSalesRoundingValue integer;
  
  ADiff currency;
  ANewDiscAmount currency;  
  ANewDiscAmount2 currency;  
  ANewRoundingAmount currency;    
  ANewTaxAmount currency;  
  ANewTotalAmount currency;
  ANewOutstandingTotalAmount currency;
  AYear varchar;
  AMonth integer;  
  AItemId itemid; 
  AQty QuantityPlus;
  AEngineGroupJobCode varchar;
  ADefaultCounterIncQty QuantityPlus;
  
  CursorRegisterSalesDt cursor for 
    select ItemId, Qty      
    from RegisterSalesDt
    where RegisterSalesId = New.RegisterSalesId;

  CursorItemEngineGroupJob cursor for 
    select EngineGroupJobCode, DefaultCounterIncQty      
    from ItemEngineGroupJob
    where ItemId = AItemId;  
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'UPDATE') then
    -- Initialize
    select b.StatusPosting
    from RegisterSalesHd a
    left join CashRegisterTransaction b on b.CashRegisterTransactionId = a.CashRegisterTransactionId
    where a.RegisterSalesId = Old.RegisterSalesId 
    into AStatusClosing;

    if AStatusClosing <> '3' then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;  
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
      
  if (TG_OP = 'UPDATE') and (AStatusClosing <> '3') then      
    -- Amount, Disc, Disc2, Tax, Vaoucher, Changed
    if (Old.Amount <> New.Amount) or (Old.Disc <> New.Disc) or (Old.Disc2 <> New.Disc2) or (Old.VoucherAmount <> New.VoucherAmount) then
      -- Nominal pembulatan
      select SetupValue
      from Setup
      where SetupId = 'OPT38'
      into AOptionSalesRoundingValue;
      if AOptionSalesRoundingValue is null then
        AOptionSalesRoundingValue = 0;
      end if;  

      -- cari selisih tagihan dengan pembayaran
      ADiff = Old.TotalAmount - Old.OutstandingTotalAmount;
  
      -- Hitung nilai baru
      ANewDiscAmount = New.Amount * New.Disc / 100;
      ANewDiscAmount2 = (New.Amount - ANewDiscAmount) * New.Disc2 / 100;
      ANewTaxAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) * New.Tax / 100;
      ANewTotalAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount;

      -- RoundUp
      if AOptionSalesRoundingValue <> 0 then
        ANewRoundingAmount = (Ceil(ANewTotalAmount / AOptionSalesRoundingValue) * AOptionSalesRoundingValue) - ANewTotalAmount;
      else
        ANewRoundingAmount = 0;
      end if;  
      ANewTotalAmount = ANewTotalAmount + ANewRoundingAmount;
      
      ANewOutstandingTotalAmount = ANewTotalAmount - ADiff;
      if ANewOutstandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan tidak dapat dilakukan, karena jumlah tagihan baru lebih kecil daripada pembayaran yang telah dilakukan !^';
      end if;
    
      New.DiscAmount = ANewDiscAmount;
      New.DiscAmount2 = ANewDiscAmount2;
      New.TaxAmount = ANewTaxAmount;
      New.RoundingAmount = ANewRoundingAmount;
      New.TotalAmount = ANewTotalAmount;
      New.OutStandingTotalAmount = ANewOutstandingTotalAmount;
    end if;

    -- Outstanding Changed
    if (Old.OutStandingTotalAmount <> New.OutStandingTotalAmount) then
      if New.OutStandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan pembayaran tidak dapat dilakukan, karena jumlah pembayaran lebih besar daripada sisa nota !^';
      end if;
    end if;    
    
    if New.StatusApprove = '2' then -- Do Void Process
      -- Process RegisterSalesDt
      open CursorRegisterSalesDt; 
      loop 
        fetch CursorRegisterSalesDt
        into AItemId, AQty;        
        exit when (AItemId is null);

        -- Process Engine Counter
        open CursorItemEngineGroupJob; 
        loop 
          fetch CursorItemEngineGroupJob
          into AEngineGroupJobCode, ADefaultCounterIncQty;        
          exit when (AEngineGroupJobCode is null);
        
          if exists
            (select CashRegisterTransactionId from ComputerCounter 
            where CashRegisterTransactionId = New.CashRegisterTransactionId 
            and EngineGroupJobCode = AEngineGroupJobCode) then
          
            update ComputerCounter 
            set ValueBalance = ValueBalance - (AQty * ADefaultCounterIncQty)
            where CashRegisterTransactionId = New.CashRegisterTransactionId 
            and EngineGroupJobCode = AEngineGroupJobCode;
          else
            raise exception '^trRegisterSalesDt_After, OnUpdate/OnDelete Invalid Condition !^';
          end if;
        end loop;
        close CursorItemEngineGroupJob;
      end loop;
      close CursorRegisterSalesDt;
    end if;      
  end if;  
  
  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trRegisterSalesHd_Before
BEFORE INSERT OR UPDATE OR DELETE ON RegisterSalesHd
  FOR EACH ROW EXECUTE PROCEDURE trRegisterSalesHd_Before();


create or replace function trRegisterSalesPayment_Before ()
  returns trigger AS
$$
declare
  ATransactionId varchar;
  ATransactionDate DateWithoutTime;
  ATransactionStatusApprove varchar;
  AStatusClosing status;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'INSERT') then 
    ATransactionId := New.RegisterSalesId; 
  else   
    ATransactionId := Old.RegisterSalesId;
  end if;

  select b.StatusPosting
  from RegisterSalesHd a 
  left join CashRegisterTransaction b on b.CashRegisterTransactionId = a.CashRegisterTransactionId
  where a.RegisterSalesId = ATransactionId
  into AStatusClosing;  
  
  execute 'select RegisterSalesDate, StatusApprove from RegisterSalesHd where RegisterSalesId = ''' || ATransactionId || ''''
  into ATransactionDate, ATransactionStatusApprove;

  if (ATransactionStatusApprove = '2') and (AStatusClosing <> '3') then
    if (TG_OP = 'INSERT') then
      raise exception '^Pembayaran tidak dapat dilakukan karena nota telah di void !^';
    end if;
    if (TG_OP = 'UPDATE') then
      raise exception '^Pembayaran tidak dapat diubah karena nota telah di void !^';
    end if;  
    if (TG_OP = 'DELETE') then    
      raise exception '^Pembayaran tidak dapat dibatalkan karena nota telah di void !^';
    end if;  
  end if;  
  
  ---------------------------------------------------------------------------------------------------------

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    if AStatusClosing <> '3' then --> Process Closing Shift, Do Nothing !!!  
      -- Update Invoice Outstanding (+)
      update RegisterSalesHd
      set OutstandingTotalAmount = OutstandingTotalAmount + Old.Amount
      where RegisterSalesId = Old.RegisterSalesId;
    end if;  
  end if;

  if (TG_OP = 'UPDATE') or (TG_OP = 'INSERT') then   
    if AStatusClosing <> '3' then --> Process Closing Shift, Do Nothing !!!    
      -- Update Invoice Outstanding (-)
      if (select OutstandingTotalAmount from RegisterSalesHd where RegisterSalesId = New.RegisterSalesId) < New.Amount then
        Raise Exception '%', '^Jumlah pembayaran lebih besar dari sisa tagihan nota !^';
      else
        update RegisterSalesHd
        set OutstandingTotalAmount = OutstandingTotalAmount - New.Amount
        where RegisterSalesId = New.RegisterSalesId;            
      end if;
    end if;
  end if;
  
  if (TG_OP = 'DELETE') then
    return old;
  else
    return new;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trRegisterSalesPayment_Before
BEFORE INSERT OR UPDATE OR DELETE ON RegisterSalesPayment
  FOR EACH ROW EXECUTE PROCEDURE trRegisterSalesPayment_Before();


create or replace function trSalesInvoiceDt_After ()
  returns trigger AS
$$
declare
  ASalesInvoiceDate DateWithoutTime;
  ACustomerId varchar;
  AWarehouseId varchar;

  ATransactionTypeId varchar;
  ADiff currency;
  AStatusMethod integer;
  AQty quantity;
  
  AUsingExpiredDate varchar;
  
  AMaxSalesInvoiceId varchar;
  AMaxNo INT4;
  AMaxPrice currency;
  AMaxDiscItem disc;
  AMaxDiscItemPrice currency;
  AMaxDiscItem2 disc;
  AMaxDiscItemPrice2 currency;
  
  ACurrentItemId ItemId;
  ACurrentLastSI varchar; 
  ACurrentLastSINo int4;
  ACurrentSalesInvoiceDate DateWithoutTime;  
begin
  -- Cek setting global
  select SetupValue from Setup    
  where SetupId = 'OPT11'
  into AUsingExpiredDate;

  if (TG_OP = 'DELETE') or (TG_OP = 'UPDATE') then
    -- Initial
    select SalesInvoiceDate, CustomerId, WarehouseId
    from SalesInvoiceHd 
    where SalesInvoiceId = Old.SalesInvoiceId 
    into ASalesInvoiceDate, ACustomerId, AWarehouseId;

    -- Update Stock Expired 
    if AUsingExpiredDate = '1' then
      if (select count(ItemId)
         from StockExpired
        where ItemId = Old.ItemId
         and WarehouseId = AWarehouseId
         and ExpiredDate = Old.ExpiredDate) = 0 then
        insert into StockExpired (ItemId, WarehouseId, ExpiredDate, Qty)
        values (Old.ItemId, AWarehouseId, Old.ExpiredDate, Old.Qty);
      else
        update StockExpired
        set Qty = Qty + Old.Qty
        where ItemId = Old.ItemId
        and WarehouseId = AWarehouseId
        and ExpiredDate = Old.ExpiredDate;
      end if;
    end if;  

    -- Update Transaction
    if (TG_OP = 'DELETE') then
      -- Update SalePrice
      if (Old.Price <> 0) then -- Harga tidak nol (bukan barang bonus) dan bukan penjualan barcode
        -- Initial      
        select a.LastSI, a.LastSINo
        from SalePrice a
        where a.ItemId = Old.ItemId
        and a.CustomerId = ACustomerId
        into ACurrentLastSI, ACurrentLastSINo;
      
        if (Old.SalesInvoiceId = ACurrentLastSI) and (Old.No = ACurrentLastSINo) then
          -- Seek new last Sales price
          select a.SalesInvoiceId, a.No, a.Price, a.DiscItem, a.DiscItemPrice, a.DiscItem2, a.DiscItemPrice2
          from SalesInvoiceDt a 
          left join SalesInvoiceHd b on a.SalesInvoiceId = b.SalesInvoiceId
          where a.ItemId = Old.ItemId 
          and b.CustomerId = ACustomerId
          and a.Price <> 0
          order by b.SalesInvoiceDate desc, a.SalesInvoiceId desc, a.No desc
          limit 1
          into AMaxSalesInvoiceId, AMaxNo, AMaxPrice, AMaxdiscItem, AMaxdiscItemPrice, AMaxdiscItem2, AMaxdiscItemPrice2;

          if not (AMaxSalesInvoiceId is null) then -- Found
            update SalePrice
            set LastSI = AMaxSalesInvoiceId, 
              LastSINo = AMaxNo,
              Price = AMaxPrice, 
              DiscItem = AMaxDiscItem,
              DiscItemPrice = AMaxDiscItemPrice,
              DiscItem2 = AMaxDiscItem2,
              DiscItemPrice2 = AMaxDiscItemPrice2
            where ItemId = Old.ItemId
            and CustomerId = ACustomerId;
          else  -- Not Found
            -- Tidak ada pembelian selain bonus (price = 0)
            delete from SalePrice
            where ItemId = Old.ItemId
            and CustomerId = ACustomerId;        
          end if;          
        end if;
      end if;
        
      if Old.QtyReturnLeft <> Old.Qty then 
        -- jika sudah pernah diretur kemudian mau dihapus
        RAISE EXCEPTION '^Data tidak dapat dihapus, karena telah ada transaksi retur untuk barang ini !^';
      end if;

      AStatusMethod = (select StatusCostMethod from Item where ItemId = Old.ItemId);
      -- pengecekan status LIFO, FIFO & AVG    
      if AStatusMethod <> '2' then 
        -- FIFO / LIFO
        delete from Transaction 
        where ReferenceId = Old.SalesInvoiceId 
        and No = Old.No
        and ItemId = Old.ItemId;
      else
        -- AVG
      end if;

      -- Update SI Amount
      update SalesInvoiceHd     
      set  Amount = Amount - Old.Amount
      where SalesInvoiceId = Old.SalesInvoiceId;
    end if;
    
    -- Jika dari SO 
    if not (Old.SalesOrderId is null) then
      -- update QtyOutstanding SO (+)
      update SalesOrderDt
      set QtyOutstanding = QtyOutstanding + Old.Qty
      where SalesOrderId = Old.SalesOrderId
      and No = Old.SalesOrderNo;    

      -- Update ItemOrderBalance
      if (select Count(ItemId) 
        from ItemOrderBalance
        where ItemId = Old.ItemId
        and Year = cast(Extract(Year from ASalesInvoiceDate) as varchar)) = 0 then    
        insert into ItemOrderBalance (ItemId, Year, SOQtyMinus)
        values (Old.ItemId, cast(Extract(Year from ASalesInvoiceDate) as varchar), Old.Qty * -1);
      else
        update ItemOrderBalance
        set  SOQtyMinus = SOQtyMinus - Old.Qty
        where ItemId = Old.ItemId
        and Year = cast(Extract(Year from ASalesInvoiceDate) as varchar);
      end if;    
    end if;    
  end if;



  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    -- Initial    
    select SalesInvoiceDate, CustomerId, WarehouseId
    from SalesInvoiceHd 
    where SalesInvoiceId = New.SalesInvoiceId 
    into ASalesInvoiceDate, ACustomerId, AWarehouseId;    
    
    -- Update SalePrice
    if (New.Price <> 0) then -- Harga tidak nol (bukan barang bonus), dan bukan penjualan barcode
      -- Initial      
      select a.ItemId, a.LastSI, a.LastSINo, 
      case
        when not (b.SalesInvoiceDate is null) then b.SalesInvoiceDate else a.DateModified
      end as SalesInvoiceDate
      from SalePrice a
      left join SalesInvoiceHd b on a.LastSI = b.SalesInvoiceId 
      where a.ItemId = New.ItemId
      and a.CustomerId = ACustomerId
      into ACurrentItemId, ACurrentLastSI, ACurrentLastSINo, ACurrentSalesInvoiceDate;
      
      -- Update SalePrice      
      if ACurrentItemId is null then        
        insert into SalePrice (ItemId, CustomerId, LastSI, LastSINo, Price, DiscItem, DiscItemPrice, DiscItem2, DiscItemPrice2)
        values(New.ItemId, ACustomerId, New.SalesInvoiceId, New.No, New.Price, New.DiscItem, New.DiscItemPrice, New.DiscItem2, New.DiscItemPrice2);
      else    
        -- Bandingkan apakah data baru sama dengan data sale price
        if (ACurrentLastSI = New.SalesInvoiceId) and (ACurrentLastSINo = New.No) then
          update SalePrice
          set Price = New.Price, 
            DiscItem = New.DiscItem,
            DiscItemPrice = New.DiscItemPrice,
            DiscItem2 = New.DiscItem2,
            DiscItemPrice2 = New.DiscItemPrice2            
          where ItemId = New.ItemId
          and CustomerId = ACustomerId;        
        else
          -- Jika tgl lebih baru, maka update Sales price
          if ASalesInvoiceDate >= ACurrentSalesInvoiceDate then
            update SalePrice
            set LastSI = New.SalesInvoiceId, 
              LastSINo = New.No,
              Price = New.Price, 
              DiscItem = New.DiscItem,
              DiscItemPrice = New.DiscItemPrice,
              DiscItem2 = New.DiscItem2,
              DiscItemPrice2 = New.DiscItemPrice2
            where ItemId = New.ItemId
            and CustomerId = ACustomerId;
          end if;
        end if;
      end if;
    end if;
    
    -- update stock expire 
    if AUsingExpiredDate = '1' then    
      if (select count(ItemId)
         from StockExpired
         where ItemId = New.ItemId
         and WarehouseId = AWarehouseId
         and ExpiredDate = New.ExpiredDate) = 0 then
        insert into StockExpired (ItemId, WarehouseId, ExpiredDate, Qty)
        values (New.ItemId, AWarehouseId, New.ExpiredDate, New.Qty * -1);
      else
        update StockExpired
        set Qty = Qty - New.Qty
        where ItemId = New.ItemId
        and WarehouseId = AWarehouseId
        and ExpiredDate = New.ExpiredDate;
      end if;  
    end if;

    if (TG_OP = 'INSERT') then
      -- Insert transaction
      ATransactionTypeId := 'TY002';    
      insert into transaction 
        (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, DefaultMargin, Memo, No)
      values
        (New.SalesInvoiceId, ASalesInvoiceDate, ATransactionTypeId, New.ItemId, AWarehouseId, 
        New.Qty, (New.Price - New.DiscItemPrice - New.DiscItemPrice2 - New.VoucherItem), New.DefaultMargin, 'Penjualan ' || New.SalesInvoiceId, New.No);    

      -- Update SI Amount      
      update SalesInvoiceHd     
      set  Amount = Amount + New.Amount
      where SalesInvoiceId = New.SalesInvoiceId;      
    else
      -- Update Transaction
      -- initial
      select SalesInvoiceDate, WarehouseId
      from SalesInvoiceHd 
      where SalesInvoiceId = Old.SalesInvoiceId 
      into ASalesInvoiceDate, AWarehouseId;
    
      if (New.Price <> Old.Price) or (New.DiscItem <> Old.DiscItem) or (New.DiscItem2 <> Old.DiscItem2) or (New.VoucherItem <> Old.VoucherItem) then
        if (Old.QtyReturnLeft <> Old.Qty) then 
          -- jika sudah pernah diretur kemudian harga mau diubah
          RAISE EXCEPTION '^Perubahan harga/disc/voucher tidak dapat dilakukan, karena telah ada transaksi retur untuk barang ini !^';
        end if;
      end if;

      if New.ItemId <> Old.ItemId then -- jika item berubah
        -- Delete old
        AStatusMethod = (select StatusCostMethod from Item where ItemId = Old.ItemId);
        -- pengecekan status LIFO, FIFO & AVG    
        if AStatusMethod <> '2' then 
          -- FIFO / LIFO
          delete from Transaction 
          where ReferenceId = Old.SalesInvoiceId 
          and No = Old.No
          and ItemId = Old.ItemId;
        else
          -- AVG
          --ATransactionTypeId := 'TY005';
          --insert into Transaction 
          --  (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, DefaultMargin, Memo, No)
          --values
          --  (Old.SalesInvoiceId, ASalesInvoiceDate, ATransactionTypeId, Old.ItemId, AWarehouseId,
          --  Old.Qty, (Old.Price - Old.DiscItemPrice - Old.DiscItemPrice2 - Old.VoucherItem), Old.DefaultMargin, 'Perubahan Penjualan (-) ' || Old.SalesInvoiceId, Old.No);
        end if;

        -- Insert new
        ATransactionTypeId := 'TY002';          
        insert into transaction 
          (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, DefaultMargin, Memo, No)
        values
          (New.SalesInvoiceId, ASalesInvoiceDate, ATransactionTypeId, New.ItemId, AWarehouseId, 
          New.Qty, (New.Price - New.DiscItemPrice - New.DiscItemPrice2 - New.VoucherItem), New.DefaultMargin, 'Penjualan ' || New.SalesInvoiceId, New.No);        
      else
        -- Detail berubah
        if (New.No <> Old.No) or (New.Qty <> Old.Qty) or (New.Price <> Old.Price)  or (New.DiscItemPrice <> Old.DiscItemPrice) or 
          (New.DiscItemPrice2 <> Old.DiscItemPrice2) or (New.VoucherItem <> Old.VoucherItem) then 
          select SalesInvoiceDate, WarehouseId 
          from SalesInvoiceHd 
          where SalesInvoiceId = New.SalesInvoiceId 
          into ASalesInvoiceDate, AWarehouseId;
          AStatusMethod = (select StatusCostMethod from Item where ItemId = New.ItemId);

          if AStatusMethod <> '2' then
            update Transaction 
            set Qty = New.Qty, 
              Price = (New.Price - New.DiscItemPrice - New.DiscItemPrice2 - New.VoucherItem),
              No = New.No
            where ReferenceId = Old.SalesInvoiceId 
            and No = Old.No
            and ItemId = New.ItemId;
          else
            -- AVG
            if New.Qty > Old.Qty then
              AQty := New.Qty - Old.Qty;
              ATransactionTypeId := 'TY006';
            else
              AQty := Old.Qty - New.Qty;
              ATransactionTypeId := 'TY005';
            end if;
      
            insert into Transaction 
              (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, DefaultMargin, Memo, No)
            values
              (New.SalesInvoiceId, ASalesInvoiceDate, ATransactionTypeId, New.ItemId, AWarehouseId,
              AQty, Price, New.DefaultMargin, 'Perubahan Transaction ' || New.SalesInvoiceId, New.No);
          end if;    
        end if;
      end if;

      -- Update SI Amount (if any change)
      if (New.Qty <> Old.Qty) or (New.Price <> Old.Price)  or (New.DiscItemPrice <> Old.DiscItemPrice) or 
        (New.DiscItemPrice2 <> Old.DiscItemPrice2) or (New.VoucherItem <> Old.VoucherItem) then       
        update SalesInvoiceHd     
        set  Amount = Amount - Old.Amount + New.Amount
        where SalesInvoiceId = Old.SalesInvoiceId;      
      end if;
    end if;
        
    -- Jika dari SO         
    if not (New.SalesOrderId is null) then
      --update QtyOutstanding SO (-)
      update SalesOrderDt
      set QtyOutstanding = QtyOutstanding - New.Qty
      where SalesOrderId = New.SalesOrderId
      and No = New.SalesOrderNo;     
 
      -- Update ItemOrderBalance
      if (select Count(ItemId) 
        from ItemOrderBalance
        where ItemId = New.ItemId
        and Year = cast(Extract(Year from ASalesInvoiceDate) as varchar)) = 0 then    
        insert into ItemOrderBalance (ItemId, Year, SOQtyMinus)
        values (New.ItemId, cast(Extract(Year from ASalesInvoiceDate) as varchar), New.Qty);
      else
        update ItemOrderBalance
        set  SOQtyMinus = SOQtyMinus + New.Qty
        where ItemId = New.ItemId
        and Year = cast(Extract(Year from ASalesInvoiceDate) as varchar);
      end if;    
    end if;    
  end if;

  return null;
end
$$ language 'plpgsql';

CREATE TRIGGER tr_trSalesInvoiceDt_After
AFTER INSERT OR UPDATE OR DELETE ON SalesInvoiceDt
  FOR EACH ROW EXECUTE PROCEDURE trSalesInvoiceDt_After();


create or replace function trSalesInvoiceDt_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  ATransactionId varchar;
  ATransactionDate DateWithoutTime;
  ATransactionStatusApprove varchar;

  ASelisih quantity;
  AValid quantity;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  ADoChecking := 1;
  if (TG_OP = 'INSERT') then 
    ATransactionId := New.SalesInvoiceId; 
  else
    ATransactionId := Old.SalesInvoiceId;
  end if;
  execute 'select SalesInvoiceDate, StatusApprove from SalesInvoiceHd where SalesInvoiceId = ''' || ATransactionId || ''''
  into ATransactionDate, ATransactionStatusApprove;

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    if ATransactionStatusApprove = '2' then
      raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
    end if;
   
    -- Bypass pengecekan closing ketika field2 tertentu berubah
    if (TG_OP = 'UPDATE') then 
      if (Old.QtyReturnLeft <> New.QtyReturnLeft) or (Old.StatusColor <> New.StatusColor) then 
        ADoChecking := 0;
      end if;  
    end if;
  end if;  
  
  if ADoChecking = 1 then
    if ATransactionDate <= fnGetClosingDate() then
      raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
    end if;
  end if;
  ---------------------------------------------------------------------------------------------------------

  if (TG_OP='INSERT') then
    New.QtyReturnLeft = New.Qty;
  end if;
  
  if (TG_OP='UPDATE') then
    -- Qty berubah
    if New.Qty <> Old.Qty then  
      ASelisih = New.Qty - Old.Qty;
      if ASelisih > 0 then 
        -- lebih besar
        New.QtyReturnLeft = New.QtyReturnLeft + ASelisih;
      else 
        -- lebih kecil 
        AValid = New.QtyReturnLeft + ASelisih;
        if AValid >= 0 then
          New.QtyReturnLeft = New.QtyReturnLeft + ASelisih;
        else
          RAISE EXCEPTION '^Quantity tidak bisa dirubah, karena lebih besar dari quantity yang sudah di retur !^';
        end if;
      end if;
    end if;

    -- Qty Return Left berubah
    if New.QtyReturnLeft < 0 then  
      RAISE EXCEPTION '^Jumlah retur tidak bisa lebih besar dari jumlah yang sudah di retur !^';
    end if;

    -- Item berubah
    if (New.ItemId <> Old.ItemId) and (Old.SalesOrderId is not null) then
      RAISE EXCEPTION '^Barang tidak bisa dirubah, karena transaksi berdasarkan order penjualan !^';
    end if;
  end if;

  if (TG_OP='DELETE') then
    ASelisih = 0 - Old.Qty;
    AValid = Old.QtyReturnLeft + ASelisih;
    if AValid < 0 then
      RAISE EXCEPTION '^Quantity tidak bisa dirubah, karena lebih besar dari quantity yang sudah di retur !^';
    end if;
  end if;

  if (TG_OP='INSERT') or (TG_OP='UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trSalesInvoiceDt_Before
BEFORE INSERT OR UPDATE OR DELETE ON SalesInvoiceDt
  FOR EACH ROW EXECUTE PROCEDURE trSalesInvoiceDt_Before();


create or replace function trSalesInvoiceHd_After ()
  returns trigger AS
$$
declare
  AItemId ItemId;
  ANo integer;  
  ACustomerId varchar;
  APrice currency;
  ADiscItem disc;
  ADiscItemPrice currency;
  ADiscItem2 disc;
  ADiscItemPrice2 currency;
  
  ATempSalesInvoiceId varchar;
  ATempNo integer;
  ATempPrice currency;
  ATempDiscItem disc;
  ATempDiscItemPrice currency;
  ATempDiscItem2 disc;
  ATempDiscItemPrice2 currency;
    
  ACurrentLastSI varchar;
  ACurrentLastSINo integer;
  ACurrentSalesInvoiceDate DateWithoutTime; 
    
  AYear varchar;
  AMonth integer;    
  
  ADetailOrderSalesOrderId varchar;
  ADetailOrderSalesOrderNo integer; 
  ADetailOrderItemId ItemId;
  ADetailOrderQty quantity;
    
  CSalesInvoiceDt cursor for
    select ItemId, No, Price, DiscItem, DiscItemPrice, DiscItem2, DiscItemPrice2
    from SalesInvoiceDt
    where SalesInvoiceId = New.SalesInvoiceId
    and Price <> 0
    order by No;  
    
  CSalesInvoiceDtOrder cursor for
    select SalesOrderId, SalesOrderNo, ItemId, Qty
    from SalesInvoiceDt
    where SalesInvoiceId = New.SalesInvoiceId
    and (not SalesOrderId is null)
    order by No;  
begin
  if (TG_OP = 'UPDATE') then
    -- 1. perform old process here
    -- Tanggal Transaksi atau Customer berubah atau proses void
    if (Old.SalesInvoiceDate <> New.SalesInvoiceDate) or (Old.CustomerId <> New.CustomerId) or (New.StatusApprove = '2') then
      -- Update Sales price (Proses Old Data, Old Customer)
      open CSalesInvoiceDt; 
      loop 
        fetch CSalesInvoiceDt into AItemId, ANo, APrice, ADiscItem, ADiscItemPrice, ADiscItem2, ADiscItemPrice2;
        exit when (AItemId is null);

        -- Initial      
        select a.LastSI
        from SalePrice a          
        where a.ItemId = AItemId
        and a.CustomerId = Old.CustomerId
        into ACurrentLastSI;
          
        if ACurrentLastSI = New.SalesInvoiceId then
          -- Jika data SalePrice sama dengan SI      
          -- Cari di SIdt yang tanggal terakhir
          select a.SalesInvoiceId, a.No, a.Price, a.DiscItem, a.DiscItemPrice, a.DiscItem2, a.DiscItemPrice2
          from SalesInvoiceDt a
          left join SalesInvoiceHd b on a.SalesInvoiceId = b.SalesInvoiceId          
          where b.CustomerId = Old.CustomerId
          and a.ItemId = AItemId
          and a.Price <> 0
          order by b.SalesInvoiceDate desc
          limit 1
          into ATempSalesInvoiceId, ATempNo, ATempPrice, ATempDiscItem, ATempDiscItemPrice, ATempDiscItem2, ATempDiscItemPrice2;
          
          if not (ATempSalesInvoiceId is null) then
            -- Jika ada update SalePrice 
            update SalePrice
            set LastSI = ATempSalesInvoiceId, 
              LastSINo = ATempNo,
              Price = ATempPrice, 
              DiscItem = ATempDiscItem,
              DiscItemPrice = ATempDiscItemPrice,
              DiscItem2 = ATempDiscItem2,
              DiscItemPrice2 = ATempDiscItemPrice2
            where ItemId = AItemId
            and Customerid = Old.CustomerId;          
          else
            -- Jika tidak ada hapus SalePrice
            delete from SalePrice 
            where ItemId = AItemId
            and CustomerId = Old.CustomerId;
          end if;            
        end if;  
      end loop;    
      close CSalesInvoiceDt;               
    end if;
    
    -- 2. Do void process here
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      -- Delete Any Payment first
      --delete from SalesPaymentDt
      --using SalesPayment b
      --where SalesPaymentDt.SalesPaymentId = b.SalesPaymentId
      --and SalesPaymentDt.SalesInvoiceId = New.SalesInvoiceId 
      --and b.StatusApprove = '1';
      if (Old.OutStandingTotalAmount <> Old.TotalAmount) then
        RAISE EXCEPTION '^Void tidak dapat dilakukan, karena telah dilakukan pembayaran !^';
      end if;        
    
      -- delete transaction
      delete from Transaction 
      where ReferenceId = New.SalesInvoiceId; 
      
      -- Update ARBalance
      AYear  := EXTRACT(Year from New.SalesInvoiceDate);
      AMonth := EXTRACT(Month from New.SalesInvoiceDate);    
      execute spUpdateARBalanceCustomer(New.CustomerId, AYear, AMonth, -1, New.TotalAmount, New.CurrencyId, New.Kurs);          

      -- Jika Detail dari SO
      open CSalesInvoiceDtOrder; 
      loop 
        fetch CSalesInvoiceDtOrder into 
          ADetailOrderSalesOrderId, ADetailOrderSalesOrderNo, ADetailOrderItemId, ADetailOrderQty;
        exit when (ADetailOrderItemId is null);
        
        -- update QtyOutstanding SO (+)
        update SalesOrderDt
        set QtyOutstanding = QtyOutstanding + ADetailOrderQty
        where SalesOrderId = ADetailOrderSalesOrderId
        and No = ADetailOrderSalesOrderNo;
         
        -- Update ItemOrderBalance
        if (select Count(ItemId) 
          from ItemOrderBalance
          where ItemId = ADetailOrderItemId
          and Year = cast(Extract(Year from New.SalesInvoiceDate) as varchar)) = 0 then    
          insert into ItemOrderBalance (ItemId, Year, SOQtyMinus)
          values (ADetailOrderItemId, cast(Extract(Year from New.SalesInvoiceDate) as varchar), ADetailOrderQty * -1);
        else
          update ItemOrderBalance
          set  SOQtyMinus = SOQtyMinus - ADetailOrderQty
          where ItemId = ADetailOrderItemId
          and Year = cast(Extract(Year from New.SalesInvoiceDate) as varchar);
        end if;    
      end loop;    
      close CSalesInvoiceDtOrder;
    end if;

    -- 3. perform new process here, if not void process
    if New.StatusApprove <> '2' then
      -- Transaction date changed
      if (Old.SalesInvoiceDate <> New.SalesInvoiceDate) then
        update transaction 
        set TransactionDate = New.SalesInvoiceDate
        where ReferenceId = New.SalesInvoiceId;
      end if;
  
      -- Warehouse changed
      if (Old.WarehouseId <> New.WarehouseId) then
        update transaction 
        set WarehouseSource = New.WarehouseId
        where ReferenceId = New.SalesInvoiceId;
      end if;

      -- Tanggal Transaksi atau Customer berubah
      if (Old.SalesInvoiceDate <> New.SalesInvoiceDate) or (Old.CustomerId <> New.CustomerId) then
       -- Update Sales price (Proses New Data)
        open CSalesInvoiceDt; 
        loop 
          fetch CSalesInvoiceDt into AItemId, ANo, APrice, ADiscItem, ADiscItemPrice, ADiscItem2, ADiscItemPrice2;
          exit when (AItemId is null);
        
          -- Initial      
          select a.LastSI, a.LastSINo, b.SalesInvoiceDate
          from SalePrice a
          left join SalesInvoiceHd b on a.LastSI = b.SalesInvoiceId 
          where a.ItemId = AItemId
          and a.CustomerId = New.CustomerId
          into ACurrentLastSI, ACurrentLastSINo, ACurrentSalesInvoiceDate;        
        
          if not (ACurrentLastSI is null) then
            -- Jika data SalePrice telah ada (update)
            if ACurrentLastSI = New.SalesInvoiceId then
              -- Jika data SalePrice sama dengan SI
              -- Cari di SIdt yang tanggal lebih besar dari tanggal SI
              select a.SalesInvoiceId, a.No, a.Price, a.DiscItem, a.DiscItemPrice, a.DiscItem2, a.DiscItemPrice2
              from SalesInvoiceDt a
              left join SalesInvoiceHd b on a.SalesInvoiceId = b.SalesInvoiceId
              where b.CustomerId = New.CustomerId
              and b.SalesInvoiceDate > New.SalesInvoiceDate
              and a.ItemId = AItemId
              and a.Price <> 0
              order by b.SalesInvoiceDate desc
              limit 1
              into ATempSalesInvoiceId, ATempNo, ATempPrice, ATempDiscItem, ATempDiscItemPrice, ATempDiscItem2, ATempDiscItemPrice2;
          
              if not (ATempSalesInvoiceId is null) then
                -- Jika ada update SalePrice 
                update SalePrice
                set LastSI = ATempSalesInvoiceId, 
                  LastSINo = ATempNo,
                  Price = ATempPrice, 
                  DiscItem = ATempDiscItem,
                  DiscItemPrice = ATempDiscItemPrice,
                  DiscItem2 = ATempDiscItem2,
                  DiscItemPrice2 = ATempDiscItemPrice2
                where ItemId = AItemId
                and Customerid = New.CustomerId;          
              end if;
            else
              -- Jika Data SalePrice tidak sama dengan SI
              if ACurrentSalesInvoiceDate < New.SalesInvoiceDate then
                -- Jika tanggal di SalePrice lebih kecil dari SI
                -- Update SalePrice
                update SalePrice
                set LastSI = New.SalesInvoiceId, 
                  LastSINo = ANo,
                  Price = APrice, 
                  DiscItem = ADiscItem,
                  DiscItemPrice = ADiscItemPrice,
                  DiscItem2 = ADiscItem2,
                  DiscItemPrice2 = ADiscItemPrice2
                where ItemId = AItemId
                and Customerid = New.CustomerId; 
              end if;
            end if;  
          else
            -- Jika data SalePrice tidak ada (insert)
            insert into SalePrice (ItemId, CustomerId, LastSI, LastSINo, Price, DiscItem, DiscItemPrice, DiscItem2, DiscItemPrice2)
            values (AItemId, New.CustomerId, New.SalesInvoiceId, ANo, APrice, ADiscItem, ADiscItemPrice, ADiscItem2, ADiscItemPrice2);         
          end if;        
        end loop;    
        close CSalesInvoiceDt;      
      end if;
    end if;
  end if; 

  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trSalesInvoiceHd_After
AFTER INSERT OR UPDATE OR DELETE ON SalesInvoiceHd
  FOR EACH ROW EXECUTE PROCEDURE trSalesInvoiceHd_After();


create or replace function trSalesInvoiceHd_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  AOptionSalesRoundingValue integer;  
  
  ADiff currency;
  ANewDiscAmount currency;  
  ANewDiscAmount2 currency; 
  ANewTaxAmount currency;  
  ANewPPH22Amount currency;
  ANewRoundingAmount currency;       
  ANewTotalAmount currency;
  ANewOutstandingTotalAmount currency;
  AYear varchar;
  AMonth integer;  
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if (extract(year from New.SalesInvoiceDate) <> extract(year from Old.SalesInvoiceDate)) or
        (extract(month from New.SalesInvoiceDate) <> extract(month from Old.SalesInvoiceDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) or (Old.OutstandingTotalAmount <> New.OutstandingTotalAmount) or 
        (Old.Margin <> New.Margin) or (Old.TotalMargin <> New.TotalMargin) then 
        ADoChecking = 0; 
      else
        if Old.StatusApprove = '2' then
          raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
        end if;
      end if;
    end if;

    if ADoChecking = 1 then
      if New.SalesInvoiceDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
      
  if (TG_OP = 'UPDATE') then
    if (Old.CustomerId <> New.CustomerId) and (Old.OutStandingTotalAmount <> Old.TotalAmount) then
      RAISE EXCEPTION '^Vendor tidak dapat dirubah, karena telah dilakukan pembayaran !^';
    end if; 
      
    -- Amount, Disc, Disc2, Tax, Vaoucher, Customer Changed
    if (Old.Amount <> New.Amount) or (Old.Disc <> New.Disc) or (Old.Disc2 <> New.Disc2) or (Old.VoucherAmount <> New.VoucherAmount) or 
      (Old.Tax <> New.Tax) or (Old.PPH22Amount <> New.PPH22Amount) or (Old.Meterai <> New.Meterai) or
      (Old.CustomerId <> New.CustomerId) then
      
      -- Nominal pembulatan
      select SetupValue
      from Setup
      where SetupId = 'OPT38'
      into AOptionSalesRoundingValue;
      if AOptionSalesRoundingValue is null then
        AOptionSalesRoundingValue = 0;
      end if;  

      -- cari selisih tagihan dengan pembayaran
      ADiff = Old.TotalAmount - Old.OutstandingTotalAmount;
  
      -- Hitung nilai baru
      ANewDiscAmount = New.Amount * New.Disc / 100;
      ANewDiscAmount2 = (New.Amount - ANewDiscAmount) * New.Disc2 / 100;
      ANewTaxAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) * New.Tax / 100;
      ANewPPH22Amount = ((New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount) * New.PPH22 / 100;
      ANewTotalAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount + ANewPPH22Amount;
      ANewTotalAmount = ANewTotalAmount + New.Meterai;
      
      -- RoundUp
      if AOptionSalesRoundingValue <> 0 then
        ANewRoundingAmount = (Ceil(ANewTotalAmount / AOptionSalesRoundingValue) * AOptionSalesRoundingValue) - ANewTotalAmount;
      else
        ANewRoundingAmount = 0;
      end if;  
      ANewTotalAmount = ANewTotalAmount + ANewRoundingAmount;

      ANewOutstandingTotalAmount = ANewTotalAmount - ADiff;
      if ANewOutstandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan tidak dapat dilakukan, karena jumlah tagihan baru lebih kecil daripada pembayaran yang telah dilakukan !^';
      end if;
    
      New.DiscAmount = ANewDiscAmount;
      New.DiscAmount2 = ANewDiscAmount2;
      New.TaxAmount = ANewTaxAmount;
      New.PPH22Amount = ANewPPH22Amount;
      New.RoundingAmount = ANewRoundingAmount;
      New.TotalAmount = ANewTotalAmount;
      New.OutStandingTotalAmount = ANewOutstandingTotalAmount;
    
      -- 2. Update APBalance
      AYear  := EXTRACT(Year from Old.SalesInvoiceDate);
      AMonth := EXTRACT(Month from Old.SalesInvoiceDate);    
      execute spUpdateARBalanceCustomer(Old.CustomerId, AYear, AMonth, -1, Old.TotalAmount, Old.CurrencyId, Old.Kurs);    
      AYear  := EXTRACT(Year from New.SalesInvoiceDate);
      AMonth := EXTRACT(Month from New.SalesInvoiceDate);    
      execute spUpdateARBalanceCustomer(New.CustomerId, AYear, AMonth, 1, ANewTotalAmount, New.CurrencyId, New.Kurs);
    end if;

    -- Outstanding Changed
    if (Old.OutStandingTotalAmount <> New.OutStandingTotalAmount) then
      if New.OutStandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan pembayaran tidak dapat dilakukan, karena jumlah pembayaran lebih besar daripada sisa nota !^';
      end if;
    end if;    
  end if;  
  
  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trSalesInvoiceHd_Before
BEFORE INSERT OR UPDATE OR DELETE ON SalesInvoiceHd
  FOR EACH ROW EXECUTE PROCEDURE trSalesInvoiceHd_Before();


create or replace function trSalesOrderDt_After ()
  returns trigger AS
$$
declare
  ASalesOrderDate DateWithoutTime;
  AVendorId varchar;
  AWarehouseId varchar;
  AFlagKonsinyasi flag;

  ATransactionTypeId varchar;
  ADiff currency;
  AStatusMethod integer;
  AQty quantity;
  
  AMaxSalesInvoiceId varchar;
  AMaxSalesInvoiceDate Date;
  AMaxPrice currency;
  AMaxDiscItem disc;
  AMaxDiscItemPrice currency;
  AMaxDiscItem2 disc;
  AMaxDiscItemPrice2 currency;
begin
  if (TG_OP = 'DELETE') or (TG_OP = 'UPDATE') then
    select SalesOrderDate
    from SalesOrderHd 
    where SalesOrderId = Old.SalesOrderId 
    into ASalesOrderDate;

    -- Update PI Amount
    update SalesOrderHd     
    set  Amount = Amount - Old.Amount
    where SalesOrderId = Old.SalesOrderId;
    
    -- Update ItemOrderBalance
    if (select Count(ItemId) 
      from ItemOrderBalance
      where ItemId = Old.ItemId
      and Year = cast(Extract(Year from ASalesOrderDate) as varchar)) = 0 then    
      insert into ItemOrderBalance (ItemId, Year, SOQtyPlus)
      values (Old.ItemId, Extract(Year from ASalesOrderDate), Old.Qty * -1);
    else
      update ItemOrderBalance
      set  SOQtyPlus = SOQtyPlus - Old.Qty
      where ItemId = Old.ItemId
      and Year = cast(Extract(Year from ASalesOrderDate) as varchar);
    end if;    
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    -- Initial    
    select SalesOrderDate
    from SalesOrderHd 
    where SalesOrderId = New.SalesOrderId 
    into ASalesOrderDate;
    
    -- Update PI Amount      
    update SalesOrderHd     
    set  Amount = Amount + New.Amount
    where SalesOrderId = New.SalesOrderId;  
    
    -- Update ItemOrderBalance
    if (select Count(ItemId) 
      from ItemOrderBalance
      where ItemId = New.ItemId
      and Year = cast(Extract(Year from ASalesOrderDate) as varchar)) = 0 then    
      insert into ItemOrderBalance (ItemId, Year, SOQtyPlus)
      values (New.ItemId, Extract(Year from ASalesOrderDate), New.Qty);
    else
      update ItemOrderBalance
      set  SOQtyPlus = SOQtyPlus + New.Qty
      where ItemId = New.ItemId
      and Year = cast(Extract(year from ASalesOrderDate) as varchar);
    end if;        
  end if;

  if (TG_OP = 'UPDATE') then -- For transaction Only    
    if (New.Price <> Old.Price) or (New.DiscItem <> Old.DiscItem) or (New.DiscItem2 <> Old.DiscItem2) or (New.VoucherItem <> Old.VoucherItem) then
      if (Old.QtyOutstanding <> Old.Qty) then     
        -- jika sudah pernah didibeli/dijual berdasarkan order kemudian harga mau diubah
        RAISE EXCEPTION '^Perubahan harga/disc/voucher tidak dapat dilakukan, karena telah digunakan pada nota pembelian !^';
      end if;
    end if;
  end if;
  
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trSalesOrderDt_After 
AFTER INSERT OR UPDATE OR DELETE ON SalesOrderDt
  FOR EACH ROW EXECUTE PROCEDURE trSalesOrderDt_After();


create or replace function trSalesOrderDt_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  ATransactionId varchar;
  ATransactionDate DateWithoutTime;
  ATransactionStatusApprove varchar;
  
  ASelisih quantity;
  AValid quantity;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  ADoChecking := 1;
  if (TG_OP = 'INSERT') then 
    ATransactionId := New.SalesOrderId; 
  else
    ATransactionId := Old.SalesOrderId;
  end if;
  execute 'select SalesOrderDate, StatusApprove from SalesOrderHd where SalesOrderId = ''' || ATransactionId || ''''
  into ATransactionDate, ATransactionStatusApprove;

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    if ATransactionStatusApprove = '2' then
      raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
    end if;
   
    -- Bypass pengecekan closing ketika field2 tertentu berubah
    if (TG_OP = 'UPDATE') then 
      if (Old.QtyOutstanding <> New.QtyOutstanding) then 
        ADoChecking := 0;
      end if;  
    end if;
  end if;  
  
  if ADoChecking = 1 then
    if ATransactionDate <= fnGetClosingDate() then
      raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
    end if;
  end if;
  ---------------------------------------------------------------------------------------------------------

  if (TG_OP = 'INSERT') then
    New.QtyOutstanding = New.Qty;
  end if;
  
  if (TG_OP = 'UPDATE') then
    -- Item berubah
    if (Old.ItemId <> New.ItemId) then
      if Old.QtyOutstanding <> Old.Qty then
        RAISE EXCEPTION '^Barang tidak dapat diubah, karena telah dipakai pada nota penjualan !^';
      end if;    
    end if;
      
    -- Qty berubah
    if New.Qty <> Old.Qty then  
      ASelisih = New.Qty - Old.Qty;
      if ASelisih > 0 then
        New.QtyOutstanding = New.QtyOutstanding + ASelisih;
      else
        AValid = New.QtyOutstanding + ASelisih;
        if AValid >= 0 then
          New.QtyOutstanding = New.QtyOutstanding + ASelisih;
        else
          RAISE EXCEPTION '%', '^Qty baru lebih kecil dari qty sudah diproses (' || (Old.Qty - Old.QtyOutstanding) || ') !^';
        end if;
      end if;
    end if;

    -- Qty Outstanding berubah
    if New.QtyOutstanding < 0 then  
      RAISE EXCEPTION '^Qty proses lebih besar dari qty sisa (qty outstanding) !^';
    end if;
  end if;

  if (TG_OP='DELETE') then
    ASelisih = 0 - Old.Qty;
    AValid = Old.QtyOutstanding + ASelisih;
    if AValid < 0 then
      RAISE EXCEPTION '^Transaksi tidak bisa dihapus, karena telah dipakai pada nota penjualan !^';
    end if;
  end if;

  if (TG_OP='INSERT') or (TG_OP='UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trSalesOrderDt_Before 
BEFORE INSERT OR UPDATE OR DELETE ON SalesOrderDt
  FOR EACH ROW EXECUTE PROCEDURE trSalesOrderDt_Before();


create or replace function trSalesOrderHd_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;

  ANewDiscAmount currency;
  ANewDiscAmount2 currency;
  ANewTaxAmount currency;
  ANewPPH22Amount currency;
  ANewTotalAmount currency;
  ACountItemDetailUsed integer;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.SalesOrderDate) <> extract(year from Old.SalesOrderDate)) or
        (extract(month from New.SalesOrderDate) <> extract(month from Old.SalesOrderDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.SalesOrderDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
  
  if (TG_OP = 'UPDATE') then
    -- 0. Initialize (optional)
    select count(ItemId)
    from SalesOrderDt
    where SalesOrderId = New.SalesOrderId
    and Qty <> QtyOutstanding
    into ACountItemDetailUsed;
    if ACountItemDetailUsed is null then
      ACountItemDetailUsed = 0;
    end if;    

    -- 1. perform old process here (optional)
    
    -- 2. Do void process here (optional)
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      if ACountItemDetailUsed <> 0 then
        RAISE EXCEPTION '^Void tidak dapat dilakukan, karena order penjualan ini telah dipakai pada nota penjualan !^';
      end if;     
    end if;

    -- 3. perform new process here, if not void process (optional)
    if New.StatusApprove <> '2' then      
      -- Customer berubah
      if (Old.CustomerId <> New.CustomerId) then
        if ACountItemDetailUsed <> 0 then
          RAISE EXCEPTION '^Customer tidak dapat diubah, karena order penjualan ini telah dipakai pada nota penjualan !^';
        end if;    
      end if;

      -- Jumlah, Disc, Disc2, Tax, Voucher berubah
      if (Old.Amount <> New.Amount) or (Old.Disc <> New.Disc) or (Old.Disc2 <> New.Disc2) or (Old.VoucherAmount <> New.VoucherAmount) or 
        (Old.Tax <> New.Tax) or (Old.PPH22Amount <> New.PPH22Amount) then

        -- Hitung nilai baru
        ANewDiscAmount = New.Amount * New.Disc / 100;
        ANewDiscAmount2 = (New.Amount - ANewDiscAmount) * New.Disc2 / 100;
        ANewTaxAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) * New.Tax / 100;
        ANewPPH22Amount = ((New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount) * New.PPH22 / 100;
        ANewTotalAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount + ANewPPH22Amount;
      
        New.DiscAmount = ANewDiscAmount;
        New.DiscAmount2 = ANewDiscAmount2;
        New.TaxAmount = ANewTaxAmount;
        New.PPH22Amount = ANewPPH22Amount;
        New.TotalAmount = ANewTotalAmount; 
      end if; 
    end if;
  end if; --(TG_OP = 'UPDATE')  

  if (TG_OP = 'DELETE') then
    return old;
  else
    return new;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trSalesOrderHd_Before
BEFORE INSERT OR UPDATE OR DELETE ON SalesOrderHd
  FOR EACH ROW EXECUTE PROCEDURE trSalesOrderHd_Before();


create or replace function trSalesPaymentDt_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  ATransactionId varchar;
  ATransactionDate DateWithoutTime;
  ATransactionStatusApprove varchar;
  
  ASalesPaymentDate DateWithoutTime;
  ACustomerId varchar;
  AFlagBank varchar;
  ABankId varchar; 
  AAccountNo varchar;
  AMessage varchar;
  AYear varchar;
  AMonth varchar;
  AStatusApprove flag;
  ADepositBalance currency;
  ACashBankTransactionTypeId varchar;

  APrefixCashBank varchar;
  APrefixCashBankLength integer;
  APrefixCashBankRunTotal integer;  
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  ADoChecking := 1;
  if (TG_OP = 'INSERT') then 
    ATransactionId := New.SalesPaymentId; 
  else
    ATransactionId := Old.SalesPaymentId;
  end if;
  execute 'select SalesPaymentDate, StatusApprove from SalesPayment where SalesPaymentId = ''' || ATransactionId || ''''
  into ATransactionDate, ATransactionStatusApprove;

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    if ATransactionStatusApprove = '2' then
      raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
    end if;
   
    -- Bypass pengecekan closing ketika field2 tertentu berubah
    if (TG_OP = 'UPDATE') then 
      --if (Old.XXXXX <> New.XXXXX) then 
      --  ADoChecking := 0;
      --end if;  
    end if;
  end if;  
  
  if ADoChecking = 1 then
    if ATransactionDate <= fnGetClosingDate() then
      raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
    end if;
  end if;
  ---------------------------------------------------------------------------------------------------------

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    -- Initial
    select SalesPaymentDate, CustomerId
    from SalesPayment
    where SalesPaymentId = Old.SalesPaymentId
    into ASalesPaymentDate, ACustomerId;       
    
    AYear  := EXTRACT(Year from ASalesPaymentDate);
    AMonth := EXTRACT(Month from ASalesPaymentDate);
    
    select b.FlagBank
    from PaymentType a
    left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
    where a.PaymentTypeId = Old.PaymentTypeId 
    into AFlagBank;    

    if Old.PaymentTypeId <> 'PT004' then -- bukan potong deposit          
      if (TG_OP = 'DELETE') then     
        -- Cash transaction
        if AFlagBank = '0' then  
          -- Void transaction
          update CashTransaction
          set StatusApprove = '2'
          where CashTransactionId = Old.ReferenceId;        
        end if; 

        -- Bank transaction
        if AFlagBank = '1' then
          -- Void bank transaction
          update BankTransaction
          set StatusApprove = '2'
          where BankTransactionId = Old.ReferenceId;        
        end if;        
      end if; 
    else
      -- jika potong deposit
      -- Update AP Balance Customer (+)
      execute spUpdateAPBalanceCustomer(ACustomerId, AYear, cast(AMonth as integer), 1, Old.Amount, Old.CurrencyId, Old.Kurs);
      execute spUpdateCustomerDeposit(ACustomerId, 1, Old.Amount, Old.CurrencyId, Old.Kurs);
    end if;
    
    -- Update SI Outstanding (+)
    update SalesInvoiceHd
    set OutstandingTotalAmount = OutstandingTotalAmount + Old.Amount
    where SalesInvoiceId = Old.SalesInvoiceId;

    -- Update AR BalanceCustomer (+)
    execute spUpdateARBalanceCustomer(ACustomerId, AYear, cast(AMonth as integer), 1, Old.Amount, Old.CurrencyId, Old.Kurs);    
  end if;

  if (TG_OP = 'UPDATE') or (TG_OP = 'INSERT') then   
    -- initial    
    select a.SalesPaymentDate, a.CustomerId
    from SalesPayment a
    left join Customer b on a.CustomerId = b.CustomerId
    where a.SalesPaymentId = New.SalesPaymentId
    into ASalesPaymentDate, ACustomerId;
    
    AYear  := EXTRACT(Year from ASalesPaymentDate);
    AMonth := EXTRACT(Month from ASalesPaymentDate);

    select a.CashBankTransactionTypeId, b.FlagBank, a.BankId, a.AccountNo
    from PaymentType a
    left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
    where a.PaymentTypeId = New.PaymentTypeId 
    into ACashBankTransactionTypeId, AFlagBank, ABankId, AAccountNo;   
    
    if New.PaymentTypeId <> 'PT004' then -- bukan potong deposit 
      -- Cash Transaction
      if AFlagBank = '0' then 
        -- if Ref is blank then Auto generate cash transaction        
        if (New.ReferenceId is null) or (New.ReferenceId = '') then 
          select SetupValue from Setup
          where SetupId = 'KM1'
          into APrefixCashBank;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'KM2'
          into APrefixCashBankLength;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'KM3'
          into APrefixCashBankRunTotal;
        
          New.ReferenceId = (select fnGetTransactionId('CashTransaction', APrefixCashBank, APrefixCashBankLength, ASalesPaymentDate, APrefixCashBankRunTotal));      
          AMessage = 'Penerimaan atas nota ' || New.SalesInvoiceId;
        
          insert into CashTransaction 
            (CashTransactionId, CashTransactionDate, CashBankTransactionTypeId, Amount, CustomerId, EmployeeId, Memo, FlagAutomatic, StatusApprove, CurrencyId, Kurs)
          values 
            (New.ReferenceId, ASalesPaymentDate, ACashBankTransactionTypeId, New.Amount, ACustomerId, New.EmployeeId, AMessage, '1', '1', New.CurrencyId, New.Kurs);          

          -- Update Transaction Registery Counter
          execute spSetTransactionId('CashTransaction', APrefixCashBank, ASalesPaymentDate, APrefixCashBankRunTotal);          
        else        
          -- update amount & outstanding
          update CashTransaction
          set Amount = New.Amount,
            CurrencyId = New.CurrencyId,
            Kurs = New.Kurs
          where CashTransactionId = New.ReferenceId;        
        end if;
      end if;      
         
      -- Bank Transaction
      if AFlagBank = '1' then
        -- Perform new value
        if (New.ReferenceId is null) or (New.ReferenceId = '') then 
          -- if Ref is blank then Auto generate bank transaction
          select SetupValue from Setup
          where SetupId = 'BM1'
          into APrefixCashBank;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'BM2'
          into APrefixCashBankLength;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'BM3'
          into APrefixCashBankRunTotal;
        
          New.ReferenceId = (select fnGetTransactionId('BankTransaction', APrefixCashBank, APrefixCashBankLength, ASalesPaymentDate, APrefixCashBankRunTotal));
          AMessage = 'Penerimaan atas nota ' || New.SalesInvoiceId;
        
          insert into BankTransaction 
            (BankTransactionId, BankTransactionDate, CashBankTransactionTypeId, BankId, AccountNo, Amount, CustomerId, EmployeeId, Memo, FlagFix, StatusApprove, CurrencyId, Kurs)
          values 
            (New.ReferenceId, ASalesPaymentDate, ACashBankTransactionTypeId, ABankId, AAccountNo, New.Amount, ACustomerId, New.EmployeeId, AMessage, '1', '1', New.CurrencyId, New.Kurs);        

          -- Update Transaction Registery Counter
          execute spSetTransactionId('BankTransaction', APrefixCashBank, ASalesPaymentDate, APrefixCashBankRunTotal);          
        else
          -- update amount & outstanding
          update BankTransaction
          set Amount = New.Amount,
            CurrencyId = New.CurrencyId,
            Kurs = New.Kurs
          where BankTransactionId = New.ReferenceId;        
        end if;
      end if;
            
    else
      -- jika potong deposit
      select DepositBalance 
      from Customer
      where CustomerId = ACustomerId
      into ADepositBalance;
  
      if New.Amount > ADepositBalance then
        Raise Exception '%', '^Jumlah deposit tidak mencukupi untuk pembayaran!^';
      end if;

      -- Update AP Balance Customer (-)
      execute spUpdateAPBalanceCustomer(ACustomerId, AYear, cast(AMonth as integer), -1, New.Amount, New.CurrencyId, New.Kurs);
      execute spUpdateCustomerDeposit(ACustomerId, -1, New.Amount, New.CurrencyId, New.Kurs);

      -- Always set reference id to null
      New.ReferenceId = null;
    end if;
      
    -- Update SI Outstanding (-)
    if (select OutstandingTotalAmount from SalesInvoiceHd where SalesInvoiceId = New.SalesInvoiceId) < New.Amount then
      Raise Exception '%', '^Jumlah pembayaran lebih besar dari sisa tagihan!^';
    else
      update SalesInvoiceHd
      set OutstandingTotalAmount = OutstandingTotalAmount - New.Amount
      where SalesInvoiceId = New.SalesInvoiceId;            
    end if;

    -- Update ARBalanceCustomer (-)
    execute spUpdateARBalanceCustomer(ACustomerId, AYear, cast(AMonth as integer), -1, New.Amount, New.CurrencyId, New.Kurs);
  end if;
  
  if (TG_OP = 'DELETE') then
    return old;
  else
    return new;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trSalesPaymentDt_Before
BEFORE INSERT OR UPDATE OR DELETE ON SalesPaymentDt
  FOR EACH ROW EXECUTE PROCEDURE trSalesPaymentDt_Before();


create or replace function trSalesPayment_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;

  AReferenceId varchar;
  APaymentTypeId varchar;
  ASalesInvoiceId varchar;
  AAmount currency;
  
  AFlagBank varchar;
  ABankId varchar;
  AAccountNo varchar;
  AYear varchar;
  AMonth varchar;

  CSalesPaymentdt cursor for 
  select PaymentTypeId, Amount, SalesInvoiceId, ReferenceId 
  from SalesPaymentDt 
  where SalesPaymentId = Old.SalesPaymentId;  
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.SalesPaymentDate) <> extract(year from Old.SalesPaymentDate)) or
        (extract(month from New.SalesPaymentDate) <> extract(month from Old.SalesPaymentDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.SalesPaymentDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------

  if (TG_OP = 'UPDATE') then    
    -- 1. perform old process here
    
    -- 2. Do void process here
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      open CSalesPaymentDt;
      loop
        fetch CSalesPaymentDt into APaymentTypeId, AAmount, ASalesInvoiceId, AReferenceId;
        exit when (APaymentTypeId is null);

        AYear  := EXTRACT(Year from old.SalesPaymentDate);
        AMonth := EXTRACT(Month from old.SalesPaymentDate);

        select b.FlagBank
        from PaymentType a
        left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
        where a.PaymentTypeId = APaymentTypeId 
        into AFlagBank;  
    
        if APaymentTypeId <> 'PT004' then -- bukan potong deposit 
          -- Cash transaction
          if AFlagBank = '0' then
            -- undo cash transaction outstanding
            update CashTransaction
            set Outstanding = Outstanding + AAmount
            where CashTransactionId = AReferenceId;

            -- if cash transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from CashTransaction where CashTransactionId = AReferenceId) = '1' then
              -- Void transaction
              update CashTransaction
              set StatusApprove = '2'
              where CashTransactionId = AReferenceId;
            end if;
          end if;

          -- Bank transaction
          if AFlagBank = '1' then
            -- undo bank transaction outstanding
            update BankTransaction
            set Outstanding = Outstanding + AAmount
            where BankTransactionId = AReferenceId;

            -- if bank transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from BankTransaction where BankTransactionId = AReferenceId) = '1' then
              -- Void bank transaction
              update BankTransaction
              set StatusApprove = '2'
              where BankTransactionId = AReferenceId;
            end if;
          end if;
        else
          -- jika potong deposit
          -- Update AP Balance Customer (+)
          execute spUpdateAPBalanceCustomer(Old.CustomerId, AYear, cast(AMonth as integer), 1, AAmount);
          execute spUpdateCustomerDeposit(Old.CustomerId, 1, AAmount);
        end if;

        -- Update SI Outstanding (+)
        update SalesInvoiceHd
        set OutstandingTotalAmount = OutstandingTotalAmount + AAmount
        where SalesInvoiceId = ASalesInvoiceId;

        -- Update ARBalanceCustomer (+)
        execute spUpdateARBalanceCustomer(Old.CustomerId, AYear, cast(AMonth as integer), 1, AAmount);
      end loop;
    
      close CSalesPaymentDt;    
    end if;

    -- 3. perform new process here, if not void process
    if New.StatusApprove <> '2' then

    end if;
  end if;
 
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trSalesPayment_After
AFTER INSERT OR UPDATE OR DELETE ON SalesPayment
  FOR EACH ROW EXECUTE PROCEDURE trSalesPayment_After();


create or replace function trSalesReturnDt_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  ATransactionId varchar;
  ATransactionDate DateWithoutTime;
  ATransactionStatusApprove varchar;

  ASalesReturnDate DateWithoutTime;
  ACustomerId varchar;
  AWarehouseId varchar;

  ATransactionTypeId varchar;
  ADiff currency;
  AStatusMethod integer;
  AQty quantity;
  
  AMaxSalesReturnId varchar;
  AMaxSalesReturnDate DateWithoutTime;
  AMaxPrice currency;
  AMaxDiscItem disc;
  AMaxDiscItemPrice currency;
  AMaxDiscItem2 disc;
  AMaxDiscItemPrice2 currency;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  ADoChecking := 1;
  if (TG_OP = 'INSERT') then 
    ATransactionId := New.SalesReturnId; 
  else
    ATransactionId := Old.SalesReturnId;
  end if;
  execute 'select SalesReturnDate, StatusApprove from SalesReturnHd where SalesReturnId = ''' || ATransactionId || ''''
  into ATransactionDate, ATransactionStatusApprove;

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    if ATransactionStatusApprove = '2' then
      raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
    end if;
   
    -- Bypass pengecekan closing ketika field2 tertentu berubah
    if (TG_OP = 'UPDATE') then 
      --if (Old.XXXXX <> New.XXXXX) then 
      --  ADoChecking := 0;
      --end if;  
    end if;
  end if;  
  
  if ADoChecking = 1 then
    if ATransactionDate <= fnGetClosingDate() then
      raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
    end if;
  end if;
  ---------------------------------------------------------------------------------------------------------

  if (TG_OP = 'DELETE') or (TG_OP = 'UPDATE') then
    select SalesReturnDate, CustomerId, WarehouseId
    from SalesReturnHd 
    where SalesReturnId = Old.SalesReturnId 
    into ASalesReturnDate, ACustomerId, AWarehouseId;

    -- Update Stock Expired (-)
    if (select count(ItemId)
       from StockExpired
       where ItemId = Old.ItemId
       and WarehouseId = AWarehouseId
       and ExpiredDate = Old.ExpiredDate) = 0 then
      insert into StockExpired (ItemId, WarehouseId, ExpiredDate, Qty)
      values (Old.ItemId, AWarehouseId, Old.ExpiredDate, Old.Qty * -1);
    else
      update StockExpired
      set Qty = Qty - Old.Qty
      where ItemId = Old.ItemId
      and WarehouseId = AWarehouseId
      and ExpiredDate = Old.ExpiredDate;
    end if;

    -- Update SR Amount
    update SalesReturnHd     
    set  Amount = Amount - Old.AmountInvoice
    where SalesReturnId = Old.SalesReturnId;
      
    -- Update qty return left pada SI detail
    update SalesInvoiceDt 
    set QtyReturnLeft = QtyReturnLeft + Old.Qty
    where SalesInvoiceId = Old.SalesInvoiceId 
    and ItemId = Old.ItemId 
    and No = Old.NoSI;

    -- Update QtyReturn at TransactionDt
    update TransactionDt
    set QtyReturn = QtyReturn - Old.Qty
    where TransactionDtId = Old.TransactionDtId;

    -- Delete State (Only) for process Qty
    if (TG_OP = 'DELETE') then      
      AStatusMethod = (select StatusCostMethod from Item where ItemId = Old.ItemId);
      -- pengecekan status LIFO, FIFO & AVG    
      if AStatusMethod <> '2' then 
        -- FIFO / LIFO
        delete from Transaction 
        where ReferenceId = Old.SalesReturnId 
        and No = Old.No
        and ItemId = Old.ItemId;
      else
        -- AVG
        ATransactionTypeId := 'TY006';
        insert into Transaction 
          (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
        values
          (Old.SalesReturnId, ASalesReturnDate, ATransactionTypeId, Old.ItemId, AWarehouseId,
          Old.Qty, (Old.Price - Old.DiscItemPrice - Old.DiscItemPrice2 - Old.VoucherItem), 'Perubahan Retur Penjualan (-) ' || Old.SalesReturnId, Old.No);
      end if;
    end if;
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    -- Initial    
    select SalesReturnDate, CustomerId, WarehouseId
    from SalesReturnHd 
    where SalesReturnId = New.SalesReturnId 
    into ASalesReturnDate, ACustomerId, AWarehouseId;        
    
    -- Update Stock Expired (+) 
    if (select count(ItemId)
       from StockExpired
       where ItemId = New.ItemId
       and WarehouseId = AWarehouseId
       and ExpiredDate = New.ExpiredDate) = 0 then
      insert into StockExpired (ItemId, WarehouseId, ExpiredDate, Qty)
      values (New.ItemId, AWarehouseId, New.ExpiredDate, New.Qty);
    else
      update StockExpired
      set Qty = Qty + New.Qty
      where ItemId = New.ItemId
      and WarehouseId = AWarehouseId
      and ExpiredDate = New.ExpiredDate;
    end if;

    -- Update SR Amount      
    update SalesReturnHd     
    set  Amount = Amount + New.AmountInvoice
    where SalesReturnId = New.SalesReturnId;

    -- Update qty return left pada SI detail
    update SalesInvoiceDt 
    set QtyReturnLeft = QtyReturnLeft - New.Qty
    where SalesInvoiceId = New.SalesInvoiceId 
    and ItemId = New.ItemId 
    and No = New.NoSI;

    -- Update QtyReturn at TransactionDt
    update TransactionDt
    set QtyReturn = QtyReturn + New.Qty
    where TransactionDtId = New.TransactionDtId;

    -- Insert State (Only) for process Qty
    if (TG_OP = 'INSERT') then
      ATransactionTypeId := 'TY008';    
      insert into transaction 
        (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
      values
        (New.SalesReturnId, ASalesReturnDate, ATransactionTypeId, New.ItemId, AWarehouseId, 
        New.Qty, (New.Price - New.DiscItemPrice - New.DiscItemPrice2 - New.VoucherItem), 'Retur Penjualan ' || New.SalesReturnId, New.No);    
    end if;
  end if;

  if (TG_OP = 'UPDATE') then -- Update State (Only) for process Qty
    -- initial
    select SalesReturnDate, WarehouseId 
    from SalesReturnHd 
    where SalesReturnId = Old.SalesReturnId 
    into ASalesReturnDate, AWarehouseId;
    
    if New.ItemId <> Old.ItemId then -- jika item berubah
      -- Delete old
      AStatusMethod = (select StatusCostMethod from Item where ItemId = Old.ItemId);
      -- pengecekan status LIFO, FIFO & AVG    
      if AStatusMethod <> '2' then 
        -- FIFO / LIFO
        delete from Transaction 
        where ReferenceId = Old.SalesReturnId 
        and No = Old.No
        and ItemId = Old.ItemId;
      else
        -- AVG
        ATransactionTypeId := 'TY006';
        insert into Transaction 
          (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
        values
          (Old.SalesReturnId, ASalesReturnDate, ATransactionTypeId, Old.ItemId, AWarehouseId,
          Old.Qty, (Old.Price - Old.DiscItemPrice - Old.DiscItemPrice2 - Old.VoucherItem), 'Perubahan Retur Penjualan (-) ' || Old.SalesReturnId, Old.No);
      end if;

      -- Insert new
      ATransactionTypeId := 'TY008';          
      insert into transaction 
        (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
      values
        (New.SalesReturnId, ASalesReturnDate, ATransactionTypeId, New.ItemId, AWarehouseId, 
        New.Qty, (New.Price - New.DiscItemPrice - New.DiscItemPrice2 - New.VoucherItem), 'Retur Penjualan ' || New.SalesReturnId, New.No);    
    
    else
      -- ItemId tidak berubah
      select SalesReturnDate, WarehouseId 
      from SalesReturnHd 
      where SalesReturnId = New.SalesReturnId 
      into ASalesReturnDate, AWarehouseId;
      AStatusMethod = (select StatusCostMethod from Item where ItemId = New.ItemId);

      if AStatusMethod <> '2' then
        update Transaction 
        set Qty = New.Qty, 
          Price = New.Price - New.DiscItemPrice - New.DiscItemPrice2 - New.VoucherItem,
          No = New.No
        where ReferenceId = Old.SalesReturnId 
        and No = Old.No
        and ItemId = New.ItemId;
      else
        -- AVG
        if New.Qty > Old.Qty then
          AQty := New.Qty - Old.Qty;
          ATransactionTypeId := 'TY005';
        else
          AQty := Old.Qty - New.Qty;
          ATransactionTypeId := 'TY006';
        end if;
      
        insert into Transaction 
          (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
        values
          (New.SalesReturnId, ASalesReturnDate, ATransactionTypeId, New.ItemId, AWarehouseId,
          AQty, (New.Price - New.DiscItemPrice - New.DiscItemPrice2 - New.VoucherItem), 'Perubahan Transaction ' || New.SalesReturnId, New.No);
      end if;    
    end if;
  end if;
  
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trSalesReturnDt_After
AFTER INSERT OR UPDATE OR DELETE ON SalesReturnDt
  FOR EACH ROW EXECUTE PROCEDURE trSalesReturnDt_After();


create or replace function trSalesReturnHd_After ()
  returns trigger AS
$$
declare
  AReferenceId varchar;
  ASalesInvoiceId varchar;
  AItemId varchar;
  ANoSI int4;
  AQty quantityplus;
  ACOGSDate datewithouttime;
  ACOGSPrice currency;
  AYear integer;
  AMonth integer;
  
  CSalesReturnDt cursor for 
  select SalesInvoiceId, ItemId, NoSI, Qty, COGSDate, Price
  from SalesReturnDt 
  where SalesReturnId = Old.SalesReturnId;    
begin
  if (TG_OP = 'UPDATE') then
    -- 0. Initialize (optional)

    -- 1. perform old process here (optional)
    
    -- 2. Do void process here (optional)
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      if New.OutStandingTotalAmount <> New.TotalAmount then
        RAISE EXCEPTION '^Void tidak dapat dilakukan, karena telah ada pembayaran untuk retur ini !^';
      end if;
        
      -- delete transaction
      delete from Transaction 
      where ReferenceId = New.SalesReturnId; 
      
      -- Update APBalanceCustomer (-)
      AYear  := EXTRACT(Year from Old.SalesReturnDate);
      AMonth := EXTRACT(Month from Old.SalesReturnDate);    
      execute spUpdateAPBalanceCustomer(Old.CustomerId, AYear, AMonth, -1, Old.TotalAmount);   

      -- Process void SalesReturnDt
      open CSalesReturnDt;
      loop
        fetch CSalesReturnDt into ASalesInvoiceId, AItemId, ANoSI, AQty, ACOGSDate, ACOGSPrice;
        exit when (AItemId is null);

        -- Update qty return left pada SalesInvoice detail
        update SalesInvoiceDt 
        set QtyReturnLeft = QtyReturnLeft + AQty
        where SalesInvoiceId = ASalesInvoiceId 
        and ItemId = AItemId 
        and No = ANoSI;

        -- Update QtyReturn (-) at TransactionDt
        update TransactionDt
        set QtyReturn = QtyReturn - AQty
        from Transaction b
        where b.ReferenceId = ASalesInvoiceId
        and b.ItemId = AItemId
        and b.No = ANoSI
        and TransactionDt.TransactionId = b.TransactionId
        and TransactionDt.DateCOGS = ACOGSDate
        and TransactionDt.COGS = ACOGSPrice;
      end loop;
      close CSalesReturnDt;    
    end if;

    -- 3. perform new process here, if not void process (optional)
    if New.StatusApprove <> '2' then
      -- Tanggal berubah
      if (Old.SalesReturnDate <> New.SalesReturnDate) then
        update transaction 
        set TransactionDate = New.SalesReturnDate
        where ReferenceId = New.SalesReturnId;
      end if;
  
      -- Gudang berubah
      if (Old.WarehouseId <> New.WarehouseId) then
        update transaction 
        set WarehouseSource = New.WarehouseId
        where ReferenceId = New.SalesReturnId;
      end if;
      
      -- Customer berubah
      if (Old.CustomerId <> New.CustomerId) then
      end if;
    end if;
  end if;
  
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trSalesReturnHd_After
AFTER INSERT OR UPDATE OR DELETE ON SalesReturnHd
  FOR EACH ROW EXECUTE PROCEDURE trSalesReturnHd_After();


create or replace function trSalesReturnHd_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  ADiff currency;
  ANewDiscAmount currency;  
  ANewDiscAmount2 currency;  
  ANewTaxAmount currency;  
  ANewPPH22Amount currency;
  ANewTotalAmount currency;
  ANewOutstandingTotalAmount currency;  
  AYear varchar;
  AMonth integer;  
  AMessage varchar;
  ACustomerName varchar;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.SalesReturnDate) <> extract(year from Old.SalesReturnDate)) or
        (extract(month from New.SalesReturnDate) <> extract(month from Old.SalesReturnDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) or (Old.OutstandingTotalAmount <> New.OutstandingTotalAmount) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.SalesReturnDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------

  if (TG_OP = 'UPDATE') then
    if (Old.CustomerId <> New.CustomerId) and (Old.OutStandingTotalAmount <> Old.TotalAmount) then
      RAISE EXCEPTION '^Vendor tidak dapat dirubah, karena telah dilakukan pembayaran !^';
    end if; 
      
    -- Amount, Disc, Disc2, Tax, Vaoucher, Customer Changed
    if (Old.Amount <> New.Amount) or (Old.Disc <> New.Disc) or (Old.Disc2 <> New.Disc2) or (Old.VoucherAmount <> New.VoucherAmount) or 
      (Old.Tax <> New.Tax) or (Old.PPH22Amount <> New.PPH22Amount) or (Old.Meterai <> New.Meterai) or
      (Old.CustomerId <> New.CustomerId) then
      
      -- cari selisih tagihan dengan pembayaran
      ADiff = Old.TotalAmount - Old.OutstandingTotalAmount;
  
      -- Hitung nilai baru
      ANewDiscAmount = New.Amount * New.Disc / 100;
      ANewDiscAmount2 = (New.Amount - ANewDiscAmount) * New.Disc2 / 100;
      ANewTaxAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) * New.Tax / 100;
      ANewPPH22Amount = ((New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount) * New.PPH22 / 100;
      ANewTotalAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount + ANewPPH22Amount;
      ANewTotalAmount = ANewTotalAmount + New.Meterai;
      
      ANewOutstandingTotalAmount = ANewTotalAmount - ADiff;
      if ANewOutstandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan tidak dapat dilakukan, karena jumlah retur baru lebih kecil daripada pembayaran yang telah dilakukan !^';
      end if;
    
      New.DiscAmount = ANewDiscAmount;
      New.DiscAmount2 = ANewDiscAmount2;
      New.TaxAmount = ANewTaxAmount;
      New.PPH22Amount = ANewPPH22Amount;
      New.TotalAmount = ANewTotalAmount;
      New.OutStandingTotalAmount = ANewOutstandingTotalAmount;
    
      -- 2. Update APBalanceCustomer
      AYear  := EXTRACT(Year from Old.SalesReturnDate);
      AMonth := EXTRACT(Month from Old.SalesReturnDate);    
      execute spUpdateAPBalanceCustomer(Old.CustomerId, AYear, AMonth, -1, Old.TotalAmount, Old.CurrencyId, Old.Kurs);    
      AYear  := EXTRACT(Year from New.SalesReturnDate);
      AMonth := EXTRACT(Month from New.SalesReturnDate);    
      execute spUpdateAPBalanceCustomer(New.CustomerId, AYear, AMonth, 1, ANewTotalAmount, New.CurrencyId, New.Kurs);
    end if;
  
    if (Old.OutStandingTotalAmount <> New.OutStandingTotalAmount) then
      -- Validate Outstanding
      if New.OutStandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan pembayaran tidak dapat dilakukan, karena jumlah pembayaran lebih besar daripada sisa retur !^';
      end if;
    end if;
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trSalesReturnHd_Before
BEFORE INSERT OR UPDATE OR DELETE ON SalesReturnHd
  FOR EACH ROW EXECUTE PROCEDURE trSalesReturnHd_Before();


create or replace function trSalesReturnPaymentDt_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  ATransactionId varchar;
  ATransactionDate DateWithoutTime;
  ATransactionStatusApprove varchar;

  ASalesReturnPaymentDate DateWithoutTime;
  ACustomerId varchar;
  AFlagBank varchar;
  ABankId varchar; 
  AAccountNo varchar;
  AMessage varchar;
  AYear varchar;
  AMonth varchar;
  ACashBankTransactionTypeId varchar;
  ADepositBalance currency;
  
  APrefixCashBank varchar;
  APrefixCashBankLength integer;
  APrefixCashBankRunTotal integer;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  ADoChecking := 1;
  if (TG_OP = 'INSERT') then 
    ATransactionId := New.SalesReturnPaymentId; 
  else
    ATransactionId := Old.SalesReturnPaymentId;
  end if;
  execute 'select SalesReturnPaymentDate, StatusApprove from SalesReturnPaymentHd where SalesReturnPaymentId = ''' || ATransactionId || ''''
  into ATransactionDate, ATransactionStatusApprove;

  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    if ATransactionStatusApprove = '2' then
      raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
    end if;
   
    -- Bypass pengecekan closing ketika field2 tertentu berubah
    if (TG_OP = 'UPDATE') then 
      --if (Old.XXXXX <> New.XXXXX) then 
      --  ADoChecking := 0;
      --end if;  
    end if;
  end if;  
  
  if ADoChecking = 1 then
    if ATransactionDate <= fnGetClosingDate() then
      raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
    end if;
  end if;
  ---------------------------------------------------------------------------------------------------------
  
  if (TG_OP = 'UPDATE') or (TG_OP = 'DELETE') then
    -- Initial
    select SalesReturnPaymentDate, CustomerId
    from SalesReturnPaymentHd
    where SalesReturnPaymentId = Old.SalesReturnPaymentId
    into ASalesReturnPaymentDate, ACustomerId;       

    AYear  := EXTRACT(Year from ASalesReturnPaymentDate);
    AMonth := EXTRACT(Month from ASalesReturnPaymentDate);
    
    select b.FlagBank
    from PaymentType a
    left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
    where a.PaymentTypeId = Old.PaymentTypeId 
    into AFlagBank;     

    if Old.PaymentTypeId <> 'PT006' then -- jika bukan tambahkan deposit customer
      if (TG_OP = 'DELETE') then     
        -- Cash transaction
        if AFlagBank = '0' then   
          -- Void transaction
          update CashTransaction
          set StatusApprove = '2'
          where CashTransactionId = Old.ReferenceId;        
        end if;

        -- Bank transaction
        if AFlagBank = '1' then
          -- Void bank transaction
          update BankTransaction
          set StatusApprove = '2'
          where BankTransactionId = Old.ReferenceId;        
        end if;        
      end if;
    else
      -- jika tambahkan deposit customer
      select DepositBalance 
      from Customer
      where CustomerId = ACustomerId
      into ADepositBalance;
  
      if Old.Amount > ADepositBalance then
        Raise Exception '%', '^Transaksi tidak dapat dilakukan karena deposit tidak mencukupi !^';
      end if;

      -- Update AP Balance Customer (-)
      execute spUpdateAPBalanceCustomer(ACustomerId, AYear, cast(AMonth as integer), -1, Old.Amount, Old.CurrencyId, Old.Kurs);
      execute spUpdateCustomerDeposit(ACustomerId, -1, Old.Amount, Old.CurrencyId, Old.Kurs);
    end if;
        
    -- Update SR Outstanding (+)
    update SalesReturnHd
    set OutstandingTotalAmount = OutstandingTotalAmount + Old.Amount
    where SalesReturnId = Old.SalesReturnId;

    -- Update AP Balance Customer (+)
    execute spUpdateAPBalanceCustomer(ACustomerId, AYear, cast(AMonth as integer), 1, Old.Amount, Old.CurrencyId, Old.Kurs);    
  end if;

  if (TG_OP = 'UPDATE') or (TG_OP = 'INSERT') then   
    -- initial    
    select a.SalesReturnPaymentDate, a.CustomerId
    from SalesReturnPaymentHd a
    left join Customer b on a.CustomerId = b.CustomerId
    where a.SalesReturnPaymentId = New.SalesReturnPaymentId
    into ASalesReturnPaymentDate, ACustomerId;
    
    AYear  := EXTRACT(Year from ASalesReturnPaymentDate);
    AMonth := EXTRACT(Month from ASalesReturnPaymentDate);

    select a.CashBankTransactionTypeId, b.FlagBank, a.BankId, a.AccountNo
    from PaymentType a
    left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
    where a.PaymentTypeId = New.PaymentTypeId 
    into ACashBankTransactionTypeId, AFlagBank, ABankId, AAccountNo;    
    
    if New.PaymentTypeId <> 'PT006' then -- bukan tambahkan deposit customer
      -- Cash Transaction
      if AFlagBank = '0' then 
        -- Perform new value
        if (New.ReferenceId is null) or (New.ReferenceId = '') then 
          -- Ref is blank then auto generate cash transaction
          select SetupValue from Setup
          where SetupId = 'KK1'
          into APrefixCashBank;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'KK2'
          into APrefixCashBankLength;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'KK3'
          into APrefixCashBankRunTotal;

          New.ReferenceId = (select fnGetTransactionId('CashTransaction', APrefixCashBank, APrefixCashBankLength, ASalesReturnPaymentDate, APrefixCashBankRunTotal));      
          AMessage = 'Pembayaran retur penjualan ' || New.SalesReturnId;
        
          insert into CashTransaction 
            (CashTransactionId, CashTransactionDate, CashBankTransactionTypeId, Amount, CustomerId, EmployeeId, Memo, FlagFix, StatusApprove, CurrencyId, Kurs)
          values 
            (New.ReferenceId, ASalesReturnPaymentDate, ACashBankTransactionTypeId, New.Amount, ACustomerId, New.EmployeeId, AMessage, '1', '1', New.CurrencyId, New.Kurs);          

          -- Update Transaction Registery Counter
          execute spSetTransactionId('CashTransaction', APrefixCashBank, ASalesReturnPaymentDate, APrefixCashBankRunTotal);
        else
          -- update amount & outstanding
          update CashTransaction
          set Amount = New.Amount,
            CurrencyId = New.CurrencyId, 
            Kurs = New.Kurs      
          where CashTransactionId = New.ReferenceId;        
        end if;
      end if;

      -- Bank Transaction
      if AFlagBank = '1' then
        -- Perform new value
        if (New.ReferenceId is null) or (New.ReferenceId = '') then 
          -- Ref is blank then auto generate bank transaction
          select SetupValue from Setup
          where SetupId = 'BK1'
          into APrefixCashBank;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'BK2'
          into APrefixCashBankLength;
          
          select cast(SetupValue as integer) from Setup
          where SetupId = 'BK3'
          into APrefixCashBankRunTotal;
          
          New.ReferenceId = (select fnGetTransactionId('BankTransaction', APrefixCashBank, APrefixCashBankLength, ASalesReturnPaymentDate, APrefixCashBankRunTotal));
          AMessage = 'Pembayaran retur penjualan ' || New.SalesReturnId;
        
          insert into BankTransaction 
            (BankTransactionId, BankTransactionDate, CashBankTransactionTypeId, BankId, AccountNo, Amount, CustomerId, EmployeeId, Memo, FlagFix, StatusApprove, CurrencyId, Kurs)
          values 
            (New.ReferenceId, ASalesReturnPaymentDate, ACashBankTransactionTypeId, ABankId, AAccountNo, New.Amount, ACustomerId, New.EmployeeId, AMessage, '1', '1', New.CurrencyId, New.Kurs);        

          -- Update Transaction Registery Counter
          execute spSetTransactionId('BankTransaction', APrefixCashBank, ASalesReturnPaymentDate, APrefixCashBankRunTotal);
        else
          -- update amount & outstanding
          update BankTransaction
          set Amount = New.Amount,
            CurrencyId = New.CurrencyId, 
            Kurs = New.Kurs      
          where BankTransactionId = New.ReferenceId;        
        end if;
      end if;
    else 
      -- jika tambah deposit customer
      -- Update AP Balance Customer (+)
      execute spUpdateAPBalanceCustomer(ACustomerId, AYear, cast(AMonth as integer), 1, New.Amount, New.CurrencyId, New.Kurs);
      execute spUpdateCustomerDeposit(ACustomerId, 1, New.Amount, New.CurrencyId, New.Kurs);

      -- Always set reference id to null
      New.ReferenceId = Null;
    end if;  
        
    -- Update PR Outstanding (-)
    if (select OutstandingTotalAmount from SalesReturnHd where SalesReturnId = New.SalesReturnId) < New.Amount then
      Raise Exception '%', '^Jumlah pembayaran lebih besar dari sisa tagihan!^';
    else
      update SalesReturnHd
      set OutstandingTotalAmount = OutstandingTotalAmount - New.Amount
      where SalesReturnId = New.SalesReturnId;            
    end if;

    -- Update APBalanceCustomer (-)
    execute spUpdateAPBalanceCustomer(ACustomerId, AYear, cast(AMonth as integer), -1, New.Amount, New.CurrencyId, New.Kurs);
  end if;
  
  if (TG_OP = 'DELETE') then
    return old;
  else
    return new;
  end if;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trSalesReturnPaymentDt_Before
BEFORE INSERT OR UPDATE OR DELETE ON SalesReturnPaymentDt
  FOR EACH ROW EXECUTE PROCEDURE trSalesReturnPaymentDt_Before();


create or replace function trSalesReturnPaymentHd_After ()
  returns trigger AS
$$
declare
  ADoChecking integer;

  AReferenceId varchar;
  APaymentTypeId varchar;
  ASalesReturnId varchar;
  AAmount currency;
  ADepositBalance currency;
  
  AFlagBank varchar;
  ABankId varchar;
  AAccountNo varchar;
  AYear varchar;
  AMonth varchar;

  CSalesReturnPaymentDt cursor for 
  select PaymentTypeId, Amount, SalesReturnId, ReferenceId 
  from SalesReturnPaymentDt 
  where SalesReturnPaymentId = Old.SalesReturnPaymentId;  
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.SalesReturnPaymentDate) <> extract(year from Old.SalesReturnPaymentDate)) or
        (extract(month from New.SalesReturnPaymentDate) <> extract(month from Old.SalesReturnPaymentDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.SalesReturnPaymentDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
 
  if (TG_OP = 'UPDATE') then
    -- 0. Initialize (optional)

    -- 1. perform old process here (optional)
    
    -- 2. Do void process here (optional)
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      open CSalesReturnPaymentDt;
      loop
        fetch CSalesReturnPaymentDt into APaymentTypeId, AAmount, ASalesReturnId, AReferenceId;
        exit when (APaymentTypeId is null);
        
        AYear  := EXTRACT(Year from Old.SalesReturnPaymentDate);
        AMonth := EXTRACT(Month from Old.SalesReturnPaymentDate);

        select b.FlagBank
        from PaymentType a
        left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
        where a.PaymentTypeId = Old.PaymentTypeId 
        into AFlagBank;

        if APaymentTypeId <> 'PT006' then -- jika bukan tambahkan deposit customer
          -- Cash transaction
          if AFlagBank = '0' then
            -- undo cash transaction outstanding
            update CashTransaction
            set Outstanding = Outstanding + AAmount
            where CashTransactionId = AReferenceId;

            -- if cash transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from CashTransaction where CashTransactionId = AReferenceId) = '1' then
              -- Void transaction
              update CashTransaction
              set StatusApprove = '2'
              where CashTransactionId = AReferenceId;
            end if;
          end if;

          -- Bank transaction
          if AFlagBank = '1' then
            -- undo bank transaction outstanding
            update BankTransaction
            set Outstanding = Outstanding + AAmount
            where BankTransactionId = AReferenceId;

            -- if bank transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from BankTransaction where BankTransactionId = AReferenceId) = '1' then
              -- Void bank transaction
              update BankTransaction
              set StatusApprove = '2'
              where BankTransactionId = AReferenceId;
            end if;
          end if;
        else
          -- jika tambahkan ke deposit
          select DepositBalance 
          from Customer
          where CustomerId = ACustomerId
          into ADepositBalance;
  
          if AAmount > ADepositBalance then
            Raise Exception '%', '^Transaksi tidak dapat dilakukan karena deposit tidak mencukupi !^';
          end if;

          -- Update AP Balance Customer (-)
          execute spUpdateAPBalanceCustomer(Old.CustomerId, AYear, cast(AMonth as integer), -1, AAmount);
          execute spUpdateCustomerDeposit(Old.CustomerId, -1, AAmount);
        end if;

        -- Update SR Outstanding (+)
        update SalesReturnReturnHd
        set OutstandingTotalAmount = OutstandingTotalAmount + AAmount
        where SalesReturnId = ASalesReturnId;

        -- Update APBalanceCustomer (+)
        execute spUpdateAPBalanceCustomer(Old.CustomerId, AYear, cast(AMonth as integer), 1, AAmount);
      end loop;
    
      close CSalesReturnPaymentDt;    
    end if;

    -- 3. perform new process here, if not void process (optional)
    if New.StatusApprove <> '2' then

    end if;
  end if;
 
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trSalesReturnPaymentHd_After
AFTER INSERT OR UPDATE OR DELETE ON SalesReturnPaymentHd
  FOR EACH ROW EXECUTE PROCEDURE trSalesReturnPaymentHd_After();


create or replace function trStockOnHandValue_After ()
returns trigger
as $$
begin 
  if (TG_OP = 'DELETE') or (TG_OP = 'UPDATE') then
    if Old.Qty <> 0 then
      if (select count(ItemId) 
        from StockOnHand 
        where ItemId = Old.ItemId 
        and WarehouseId = Old.WarehouseId) = 0 then
        insert into StockOnHand (ItemId, WarehouseId, EndQty, EndValue)
        values (Old.ItemId, Old.WarehouseId, Old.Qty * -1, (Old.Qty * Old.Price) * -1);
      else
        update StockOnHand 
        set EndQty = EndQty - Old.Qty, 
          EndValue = EndValue - (Old.Qty * Old.Price) 
        where ItemId = Old.ItemId 
        and WarehouseId = Old.WarehouseId;  
      end if;
    end if;
  end if;
  
  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    if New.Qty <> 0 then
      if (select count(ItemId) 
        from StockOnHand 
        where ItemId = New.ItemId 
        and WarehouseId = New.WarehouseId) = 0 then
        insert into StockOnHand (ItemId, WarehouseId, EndQty, EndValue)
        values (New.ItemId, New.WarehouseId, New.Qty, (New.Qty * New.Price));
      else
        update StockOnHand
        set EndQty = EndQty + New.Qty,
          EndValue = EndValue + (New.Qty * New.Price)
        where ItemId = New.ItemId
        and WarehouseId = New.WarehouseId;
      end if;  
    else
      -- Qty = 0 then delete
      delete from StockOnHandValue
      where ItemId = New.ItemId
      and WarehouseId = New.WarehouseId
      and Date = New.Date
      and Qty = New.Qty;
    end if;
  end if;
  
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trStockOnHandValue_After
AFTER INSERT OR UPDATE OR DELETE ON StockOnHandValue
  FOR EACH ROW EXECUTE PROCEDURE trStockOnHandValue_After();


create or replace function trTransactionDt_After ()
returns trigger
as $$
declare  
  ATransactionDate datewithouttime;
  AItemId ItemId;
  AWarehouseSource varchar;
  ATransactionTypeId varchar;
  AReferenceId varchar;
  AYear varchar;
  AMonth integer;
begin
  if (TG_OP = 'DELETE') or (TG_OP = 'UPDATE') then
    if Old.Qty <> 0 then
      select TransactionDate, ItemId, WarehouseSource, TransactionTypeId, ReferenceId
      from Transaction
      where TransactionId = Old.TransactionId
      into ATransactionDate, AItemId, AWarehouseSource, ATransactionTypeId, AReferenceId;
      
      AYear  := EXTRACT(Year from ATransactionDate);
      AMonth := EXTRACT(Month from ATransactionDate);

      if ATransactionTypeId = 'TY002' then -- Sales
        execute spUpdateTransactionBalance(AItemId, AWarehouseSource, ATransactionTypeId, AYear, AMonth,
          -1, abs(Old.Qty), Old.SalePrice);
        execute spUpdateRevenueBalance(AItemId, AYear, AMonth, -1, Old.Margin, Old.TotalMargin);
        
        -- Update Margin at SalesInvoiceHd
        if (Old.Margin <> 0) or (Old.TotalMargin <> 0) then        
          update SalesInvoiceHd
          set Margin = Margin - Old.Margin,
            TotalMargin = TotalMargin - Old.TotalMargin
          where SalesInvoiceId = AReferenceId;
        end if;  
      else
        execute spUpdateTransactionBalance(AItemId, AWarehouseSource, ATransactionTypeId, AYear, AMonth,
          -1, abs(Old.Qty), Old.COGS);
      end if;
    end if;
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    if New.Qty <> 0 then
      select TransactionDate, ItemId, WarehouseSource, TransactionTypeId, ReferenceId
      from Transaction
      where TransactionId = New.TransactionId                                
      into ATransactionDate, AItemId, AWarehouseSource, ATransactionTypeId, AReferenceId;

      AYear  := EXTRACT(Year from ATransactionDate);
      AMonth := EXTRACT(Month from ATransactionDate);

      if ATransactionTypeId = 'TY002' then -- Sales
        execute spUpdateTransactionBalance(AItemId, AWarehouseSource, ATransactionTypeId, AYear, AMonth,
          1, abs(New.Qty), New.SalePrice);
        execute spUpdateRevenueBalance(AItemId, AYear, AMonth, 1, New.Margin, New.TotalMargin);

        -- Update Margin at SalesInvoiceHd
        if (New.Margin <> 0) or (New.TotalMargin <> 0) then        
          update SalesInvoiceHd
          set Margin = Margin + New.Margin,
            TotalMargin = TotalMargin + New.TotalMargin
          where SalesInvoiceId = AReferenceId;  
        end if;  
      else      
        execute spUpdateTransactionBalance(AItemId, AWarehouseSource, ATransactionTypeId, AYear, AMonth,
          1, abs(New.Qty), New.COGS);
      end if;
    else
      -- New.Qty = 0 then delete
      delete from TransactionDt
      where TransactionDtId = New.TransactionDtId;
    end if;
  end if;

  return null;
end;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER tr_trTransactionDt_After
AFTER INSERT OR UPDATE OR DELETE ON TransactionDt
FOR EACH ROW EXECUTE PROCEDURE trTransactionDt_After();


create or replace function trTransactionDt_Before ()
returns trigger
as $$
declare  
  AYear varchar;
  AMonth integer;
  AReturnValue currency;
begin
  if (TG_OP = 'DELETE') or (TG_OP = 'UPDATE') then
    -- do nothing
  end if;
  
  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    select Price 
    from Transaction
    where TransactionId = New.TransactionId
    into New.SalePrice;
  
    -- Calculate Out Costing
    New.TotalCOGS = abs(New.Qty) * New.COGS;
    New.TotalSales = abs(New.Qty) * New.SalePrice;
    if New.Qty > 0 then
      New.Margin = New.TotalSales - New.TotalCOGS;
    else
      New.Margin = 0;
    end if;
    if New.TotalSales > 0 then
      New.Percent = round((New.Margin / New.TotalSales * 100), 4);
    else 
      New.Percent = 0;
    end if;  
    
    -- Calculate Return Costing
    New.TotalReturn = (New.QtyReturn * New.SalePrice) - (New.QtyReturn * New.COGS);
    New.TotalMargin = New.Margin - New.TotalReturn;
    if New.TotalSales > 0 then
      New.TotalPercent = round((New.TotalMargin / New.TotalSales * 100), 4);
    else
      New.TotalPercent = 0;
    end if;  
  end if;
  
  if (TG_OP='INSERT') or (TG_OP='UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER tr_trTransactionDt_Before
BEFORE INSERT OR UPDATE ON TransactionDt
FOR EACH ROW EXECUTE PROCEDURE trTransactionDt_Before();


create or replace function trTransaction_After ()
returns trigger
as $$
declare 
  -- GENERAL
  AYear varchar; 
  AMonth integer;
  AStatusTransaction varchar;
  AStatusItem varchar;
  AStatusCostMethod varchar;
  ACount integer;
  
  AProsesTransactionDate datewithouttime;
  AProsesYear varchar;
  AProsesMonth integer;
  AQtyProcess quantity;
  AQtySave quantity;
  
  AOldCOGS currency;
  AServicePrice currency;
  AQtyMinus quantity;  

  -- FOR INSERT & UPDATE
  AOldEndQty quantity;
  ANewCOGS currency;
  
  ATransactionIdMinus integer;
  ATransactionDateMinus datewithouttime;
  ASalePriceMinus currency;
  
  ADateCOGSMinus datewithouttime;
  
  ASOHDatePlus datewithouttime;
  ASOHQtyPlus quantity; 
  ASOHPricePlus currency;
    
  CTransactionDt_QtyMinus_FIFO_NEW cursor for
    select b.TransactionId, b.TransactionDate, b.Price, a.Qty, a.DateCOGS
    from TransactionDt a
    left join Transaction b on a.TransactionId = b.TransactionId
    where b.WarehouseSource = New.WarehouseSource
    and b.ItemId = New.ItemId
    and a.Qty < 0
    order by b.TransactionDate asc; --> FIFO/LIFO date here

  CTransactionDt_QtyMinus_LIFO_NEW cursor for
    select b.TransactionId, b.TransactionDate, b.Price, a.Qty, a.DateCOGS
    from TransactionDt a
    left join Transaction b on a.TransactionId = b.TransactionId
    where b.WarehouseSource = New.WarehouseSource
    and b.ItemId = New.ItemId
    and a.Qty < 0
    order by b.TransactionDate desc; --> FIFO/LIFO date here

  CStockOnHandValue_QtyPlus_FIFO_NEW cursor for
    select Date, Qty, Price 
    from StockOnHandValue
    where ItemId = New.ItemId
    and WarehouseId = New.WarehouseSource
    and Qty > 0
    order by Date asc; --> FIFO/LIFO date here

  CStockOnHandValue_QtyPlus_LIFO_NEW cursor for
    select Date, Qty, Price 
    from StockOnHandValue
    where ItemId = New.ItemId
    and WarehouseId = New.WarehouseSource
    and Qty > 0
    order by Date desc; --> FIFO/LIFO date here
begin


   
  /*################################################################################################
  ##################################################################################################
  ##                                    INSERT & UPDATE (NEW)                                     ##
  ##################################################################################################
  ################################################################################################*/
  
  

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then --H.2
    -- Initial
    AYear = Extract(Year from New.TransactionDate);
    AMonth = Extract(Month from New.TransactionDate);
    AStatusTransaction = (select StatusTransaction from TransactionType where TransactionTypeId = New.TransactionTypeId);
    select StatusItem, StatusCostMethod 
    from Item 
    where ItemId = New.ItemId
    into AStatusItem, AStatusCostMethod;
    
    
    -- ================================== OnNew - Process stock in (+) ==================================================
    
    
    -- H.2.1
    if AStatusTransaction = '0' then 
      -- Process stock in (+)            
      if (AStatusItem = '1') or (AStatusItem = '3') then -- H.2.1.1 
        -- jika barang stock atau barang konsinyasi                
        
        -- H.2.1.1.1
        -- Tambah Item balance (+) sesuai transaksi masuk
        execute spUpdateItemBalanceTransactionIn(New.ItemId, New.WarehouseSource, AYear, AMonth, 1, New.Qty, New.Price);

        -- H.2.1.1.2
        if (AStatusCostMethod = '0') then -- FIFO (COGS sesuai harga di transaction)          
          ANewCOGS = New.Price;          
          open CTransactionDt_QtyMinus_FIFO_NEW; 
        end if;
        
        -- H.2.1.1.3
        if (AStatusCostMethod = '1') then -- LIFO (COGS sesuai harga di transaction)
          ANewCOGS = New.Price;          
          open CTransactionDt_QtyMinus_LIFO_NEW;
        end if;
        
        -- H.2.1.1.4
        if AStatusCostMethod = '2' then -- AVG (COGS baru sesuai perhitungan COGS rata2 lama ditambah COGS baru)
          RAISE EXCEPTION '%', 'Trigger raise exception because data invalid (H.2.1.1.4)';
          
          select Qty, Price
          from StockOnHandValue 
          where ItemId = New.ItemId 
          and WarehouseId = New.WarehouseSource 
          and Qty > 0
          into AOldEndQty, AOldCOGS;
          
          if AOldEndQty Is Null then 
            AOldEndQty = 0;
          end if;
          if AOldCOGS Is Null then 
            AOldCOGS = 0; 
          end if;          
          
          ANewCOGS = ((AOldEndQty * AOldCOGS) + (New.Qty * New.Price)) / (AOldEndQty + New.Qty);                    
          open CTransactionDt_QtyMinus_FIFO_NEW; 
        end if;
        
        -- H.2.1.1.5
        -- Alokasikan qty barang masuk dengan semua qty minus pada TransactionDt yang ada
        AQtyProcess = New.Qty;
        loop       
          if (AStatusCostMethod = '0') or (AStatusCostMethod = '2') then --FIFO & AVG
            fetch CTransactionDt_QtyMinus_FIFO_NEW                  
            into ATransactionIdMinus, ATransactionDateMinus, ASalePriceMinus, AQtyMinus, ADateCOGSMinus;        
          else -- LIFO
            fetch CTransactionDt_QtyMinus_LIFO_NEW 
            into ATransactionIdMinus, ATransactionDateMinus, ASalePriceMinus, AQtyMinus, ADateCOGSMinus;
          end if;

          exit when (ATransactionIdMinus is null) or (AQtyProcess = 0);  

          if AQtyProcess > ABS(AQtyMinus) then
            AQtySave = ABS(AQtyMinus);
          else
            AQtySave = AQtyProcess;
          end if;

          -- H.2.1.1.5.1
          -- Kurangi qty minus pada TransactionDt (-)          
          execute spUpdateQtyMinusTransactionDt(ATransactionIdMinus, -1, AQtySave, ADateCOGSMinus);

          -- H.2.1.1.5.2
          -- Kurangi qty minus di StockOnHandValue (-)
          execute spUpdateQtyMinusStockOnHandValue(New.WarehouseSource, New.ItemId, ADateCOGSMinus, -1, AQtySave);          
          
          -- H.2.1.1.5.3
          -- Ambil Tanggal transaksi yg sedang dirubah
          AProsesTransactionDate = (select TransactionDate from Transaction where TransactionId = ATransactionIdMinus);
          AProsesYear = Extract(Year from AProsesTransactionDate);
          AProsesMonth = Extract(Month from AProsesTransactionDate);
          
          -- H.2.1.1.5.4
          -- Tambah Item balance (+) dengan harga 0 sesuai tanggal TransactionDt yg dirubah   
          execute spUpdateItemBalanceTransactionIn(New.ItemId, New.WarehouseSource, AProsesYear, AProsesMonth, 1, AQtySave, 0);

          -- H.2.1.1.5.5
          -- Tambah qty plus pada TransactionDt (+)
          execute spUpdateQtyPlusTransactionDt(ATransactionIdMinus, 1, AQtySave, New.TransactionDate, ANewCOGS);
          
          -- H.2.1.1.5.6
          -- Kurangi Item balance (-) sesuai tanggal TransactionDt yg dirubah
          execute spUpdateItemBalanceTransactionIn(New.ItemId, New.WarehouseSource, AProsesYear, AProsesMonth, -1, AQtySave, ANewCOGS);
          
          -- Qty proses dikurangi dengan qty yang telah di simpan
          AQtyProcess = AQtyProcess - AQtySave;
        end loop;
        if (AStatusCostMethod = '0') or (AStatusCostMethod = '2') then
          close CTransactionDt_QtyMinus_FIFO_NEW;
        else
          close CTransactionDt_QtyMinus_LIFO_NEW;
        end if;
        -- F.2.1.1.5      
        
        -- H.2.1.1.6
        if AQtyProcess > 0 then -- Jika qty proses masih tersisa 
          -- Tambah qty plus pada stock on hand value (+)
          execute spUpdateQtyPlusStockOnHandValue(New.WarehouseSource, New.ItemId, New.TransactionDate, 1, AQtyProcess, ANewCOGS);
        end if; 
      end if; -- F.2.1.1
            
      if (AStatusItem = '0') or (AStatusItem = '2') then  -- H.2.1.2
        -- jika barang dengan jenis service atau non stock 
        -- Maka tidak ada perhitungan qty stock
      end if;
    
      -- H.2.1.3
      -- Update transaction balance (+)      
      execute spUpdateTransactionBalance(New.ItemId, New.WarehouseSource, New.TransactionTypeId, AYear, AMonth, 1, New.Qty, New.Price);
    end if; -- F.2.1


    -- ====================================== OnNew - Process stock out (-) ==============================================
        
        
    -- H.2.2
    if (AStatusTransaction = '1') or (AStatusTransaction = '2') then 
      -- Process stock in (-) atau mutasi
      if (AStatusItem = '1') or (AStatusItem = '3') then -- H.2.2.1
        -- jika barang stock atau barang konsinyasi
        
        -- Prepare cursor             
        if (AStatusCostMethod = '0') or (AStatusCostMethod = '2') then -- FIFO or AVERAGE
          open CStockOnHandValue_QtyPlus_FIFO_NEW;
        else -- LIFO
          open CStockOnHandValue_QtyPlus_LIFO_NEW;
        end if;
          
        -- H.2.2.1.1 
        -- Alokasikan qty keluar dengan qty plus di StockOnHandValue
        AQtyProcess = New.Qty;
        loop
          if (AStatusCostMethod = '0') or (AStatusCostMethod = '2') then 
            -- FIFO or AVERAGE
            fetch CStockOnHandValue_QtyPlus_FIFO_NEW into ASOHDatePlus, ASOHQtyPlus, ASOHPricePlus;
          end if;
          if (AStatusCostMethod = '1') then 
            -- LIFO
            fetch CStockOnHandValue_QtyPlus_LIFO_NEW into ASOHDatePlus, ASOHQtyPlus, ASOHPricePlus;
          end if;
          
          exit when (ASOHDatePlus is null) or (AQtyProcess = 0);  
          
          if AQtyProcess > ASOHQtyPlus then
            AQtySave = ASOHQtyPlus;
          else
            AQtySave = AQtyProcess;
          end if;

          -- H.2.2.1.1.1
          if (AStatusCostMethod = '0') or (AStatusCostMethod = '1') then -- Jika cost method FIFO / LIFO           
            -- H.2.2.1.1.1.1
            -- Kurangi qty plus pada stock on hand value (-)
            execute spUpdateQtyPlusStockOnHandValue(New.WarehouseSource, New.ItemId, ASOHDatePlus, -1, AQtySave, ASOHPricePlus);  
            
            -- H.2.2.1.1.1.2
            -- Tambah qty plus pada TransactionDt (+)
            execute spUpdateQtyPlusTransactionDt(New.TransactionId, 1, AQtySave, ASOHDatePlus, ASOHPricePlus);
          end if;
          
          if (AStatusCostMethod = '2') then -- H.2.2.1.1.2            
            RAISE EXCEPTION '%', 'Trigger raise exception because data invalid (H.2.2.1.1.2)';
          end if;
          
          -- H.2.2.1.1.3
          -- Kurangi item balance (-) dengan harga sesuai COGS 
          execute spUpdateItemBalanceTransactionOut(New.ItemId, New.WarehouseSource, AYear, AMonth, -1, AQtySave, ASOHPricePlus);

          -- H.2.2.1.1.4
          -- cek apakah ini proses mutasi, maka buat transaksi mutasi masuk (TY004)
          if (AStatusTransaction = '2') then            
            insert into transaction (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
            values (New.ReferenceId, New.TransactionDate, 'TY004', New.ItemId, New.WarehouseDest, AQtySave, ASOHPricePlus, 
              'AUTO CREATE TRANSFER IN', New.No);
          end if;              
          
          -- Qty proses dikurangi dengan qty yang telah di proses
          AQtyProcess = AQtyProcess - AQtySave;
        end loop;
        if (AStatusCostMethod = '0') or (AStatusCostMethod = '2') then -- FIFO or AVERAGE
          close CStockOnHandValue_QtyPlus_FIFO_NEW;
        end if;        
        if (AStatusCostMethod = '1') then -- LIFO
          close CStockOnHandValue_QtyPlus_LIFO_NEW;
        end if;
        -- F.2.2.1.1 
                
        -- H.2.2.1.2        
        if AQtyProcess > 0 then -- Apabila qty keluar masih belum habis 
          -- H.2.2.1.2.1
          if (AStatusTransaction = '2') then 
            -- Untuk transaksi mutasi qty stock harus lebih besar atau sama dengan qty keluar 
            -- (qty keluar tidak boleh ada sisa)
            RAISE EXCEPTION '^Update mutasi tidak dapat dilakukan karena stok tidak mencukupi^';
          end if;
            
          -- H.2.2.1.2.2
          -- Tambah qty minus pada TransactionDt (+)          
          execute spUpdateQtyMinusTransactionDt(New.TransactionId, 1, AQtyProcess, New.TransactionDate);
  
          -- H.2.2.1.2.3
          -- Tambah qty minus di StockOnHandValue (+)
          execute spUpdateQtyMinusStockOnHandValue(New.WarehouseSource, New.ItemId, New.TransactionDate, 1, AQtyProcess);          

          -- H.2.2.1.2.4
          -- Kurangi Item balance (-) dengan harga 0 (qty minus)
          execute spUpdateItemBalanceTransactionOut(New.ItemId, New.WarehouseSource, AYear, AMonth, -1, AQtyProcess, 0);
        end if;  
      end if; -- F.2.2.1

      if (AStatusItem = '0') or (AStatusItem = '2') then -- H.2.2.2
        -- jika barang dengan jenis service atau non stock        

        -- H.2.2.2.1
        -- Tambah transaction balance (+) 
        execute spUpdateTransactionBalance(New.ItemId, New.WarehouseSource, New.TransactionTypeId, AYear, AMonth, 1, New.Qty, New.Price);

        -- H.2.2.2.2
        -- Apabila transaksi adalah transaksi penjualan maka tambah RevenueBalance
        if New.TransactionTypeId = 'TY002' then
          -- Perhitungan margin untuk status item service dan non-stock adalah 
          -- Margin = Price * DefaultMargin / 100          
          AServicePrice = (New.Price * New.DefaultMargin) / 100;        
        
          -- H.1.2.2.2.1
          -- Tambah revenue balance (+) 
          execute spUpdateRevenueBalance(New.ItemId, AYear, AMonth, 1, (New.Qty * AServicePrice), (New.Qty * AServicePrice));
          
          -- H.1.2.2.2.2  
          -- Tambah Margin dan Total Margin pada SalesInvoiceHd                
          update SalesInvoiceHd
          set Margin = Margin + (AServicePrice * New.Qty),
            TotalMargin = TotalMargin + (AServicePrice * New.Qty)
          where SalesInvoiceId = New.ReferenceId;            
        end if;
      end if;
      
      -- Note : update Transaction balance untuk transaksi keluar dilakukan oleh tigger TransactionDt
      -- karena untuk penjualan di simpan adalah harga jual, sedangan untuk yg lain yg di simpan 
      -- adalah COGS (untuk mengetahui costing), KECUALI untuk item service dan non stock (H.2.2.2.2)
    end if;
  end if;
  
  return null;
end;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER tr_trTransaction_After
AFTER INSERT OR UPDATE OR DELETE ON Transaction
FOR EACH ROW EXECUTE PROCEDURE trTransaction_After();


create or replace function trTransaction_Before ()
returns trigger
as $$
declare 
  -- GENERAL
  AYear varchar; 
  AMonth integer;
  AStatusTransaction varchar;
  AStatusItem varchar;
  AStatusCostMethod varchar;
  ACount integer;
  
  AProsesTransactionDate datewithouttime;
  AProsesYear varchar;
  AProsesMonth integer;
  AQtyProcess quantity;
  AQtySave quantity;
  
  AOldCOGS currency;
  AServicePrice currency;
  AQtyMinus quantity;  
  
  -- FOR DELETE & UPDATE  
  ATransactionIdPlus integer;
  AQtyPlus quantity;
  ACOGSPlus currency;
  ADateCOGSPlus datewithouttime;
  
  ATempQtyProcess quantity;
  ATempTransactionIdMinus integer;
  ATempTransactionDateMinus datewithouttime;
  ATempSalePriceMinus currency;
  ATempQtyMinus quantity;
  ATempDateCOGSMinus datewithouttime;
  ATempQtySave quantity;

  CTransactionDt_QtyPlus_TGLAWAL_OLD cursor for
    select b.TransactionId, a.Qty
    from TransactionDt a
    left join Transaction b on a.TransactionId = b.TransactionId
    where b.WarehouseSource = Old.WarehouseSource
    and b.ItemId = Old.ItemId
    and a.DateCOGS = Old.TransactionDate --> FIFO/LIFO date here
    and a.COGS = Old.Price
    and a.Qty > 0
    order by b.TransactionDate desc; -- > diurutkan dari tanggal transaksi terakhir !
    
  CTransactionDt_QtyPlus_TGLAKHIR_OLD cursor for
    select b.TransactionId, a.Qty
    from TransactionDt a
    left join Transaction b on a.TransactionId = b.TransactionId
    where b.WarehouseSource = Old.WarehouseSource
    and b.ItemId = Old.ItemId
    and a.DateCOGS = Old.TransactionDate --> FIFO/LIFO date here
    and a.COGS = Old.Price
    and a.Qty > 0
    order by b.TransactionDate asc; -- > diurutkan dari tanggal transaksi pertama !

  CTransactionDt_QtyPlus_FIFO_OLD cursor for
    select Qty, COGS, DateCOGS
    from TransactionDt
    where TransactionId = Old.TransactionId 
    and Qty > 0
    order by DateCOGS desc; --> FIFO/LIFO date here
    
  CTransactionDt_QtyPlus_LIFO_OLD cursor for
    select Qty, COGS, DateCOGS
    from TransactionDt
    where TransactionId = Old.TransactionId 
    and Qty > 0
    order by DateCOGS asc; --> FIFO/LIFO date here
    
  CTransactionDt_QtyMinus_FIFO_NEW_TEMP cursor for
    select b.TransactionId, b.TransactionDate, b.Price, a.Qty, a.DateCOGS
    from TransactionDt a
    left join Transaction b on a.TransactionId = b.TransactionId
    where b.WarehouseSource = Old.WarehouseSource
    and b.ItemId = Old.ItemId
    and a.Qty < 0
    order by b.TransactionDate asc; --> FIFO/LIFO date here

  CTransactionDt_QtyMinus_LIFO_NEW_TEMP cursor for
    select b.TransactionId, b.TransactionDate, b.Price, a.Qty, a.DateCOGS
    from TransactionDt a
    left join Transaction b on a.TransactionId = b.TransactionId
    where b.WarehouseSource = Old.WarehouseSource
    and b.ItemId = Old.ItemId
    and a.Qty < 0
    order by b.TransactionDate desc; --> FIFO/LIFO date here
begin



  /*################################################################################################
  ##################################################################################################
  ##                                    DELETE & UPDATE (OLD)                                     ##
  ##################################################################################################
  ################################################################################################*/



  if (TG_OP = 'DELETE') or (TG_OP = 'UPDATE') then -- H.1
    -- Initial
    AYear = Extract(Year from Old.TransactionDate);
    AMonth = Extract(Month from Old.TransactionDate);
    AStatusTransaction = (select StatusTransaction from TransactionType where TransactionTypeId = Old.TransactionTypeId);
    select StatusItem, StatusCostMethod
    from Item where ItemId = Old.ItemId
    into AStatusItem, AStatusCostMethod;


    -- ================================= OnOld - Process stock in (+) =============================================


    -- H.1.1
    if AStatusTransaction = '0' then 
      if (AStatusItem = '1') or (AStatusItem = '3') then -- H.1.1.1
        -- jika barang stock atau barang konsinyasi        

        -- H.1.1.1.1
        -- Kurangi item balance (-) sesuai transaksi masuk yg dihapus
        execute spUpdateItemBalanceTransactionIn(Old.ItemId, Old.WarehouseSource, AYear, AMonth, -1, Old.Qty, Old.Price);

        -- H.1.1.1.2
        if (AStatusCostMethod = '0') then -- FIFO
          AOldCOGS = Old.Price;          
        end if;
        
        -- H.1.1.1.3
        if (AStatusCostMethod = '1') then -- LIFO 
          AOldCOGS = Old.Price;
        end if;
        
        -- H.1.1.1.4
        if AStatusCostMethod = '2' then -- AVERAGE         
          RAISE EXCEPTION '^Transaksi item dengan metode rata-rata tidak dapat diubah !^';
        end if;

        -- H.1.1.1.5
        -- Alokasikan qty masuk dengan qty plus StockOnHandValue apabila ada
        -- Kurangi qty plus pada stock on hand value (-)
        AQtyProcess = Old.Qty;
        select Qty 
        from StockOnHandValue 
        where WarehouseId = Old.WarehouseSource 
        and ItemId = Old.ItemId
        and Date = Old.TransactionDate
        and Price = Old.Price
        and Qty > 0
        into AQtyPlus;
        
        if not (AQtyPlus is null) then
          if AQtyProcess > AQtyPlus then
            AQtySave = AQtyPlus;
          else
            AQtySave = AQtyProcess;
          end if;

          execute spUpdateQtyPlusStockOnHandValue(Old.WarehouseSource, Old.ItemId, Old.TransactionDate, -1, AQtySave, Old.Price);

          -- Qty proses dikurangi dengan qty yang telah di simpan
          AQtyProcess = AQtyProcess - AQtySave;
        end if;

        -- H.1.1.1.6
        -- Apabila setelah dialokasikan qty masuk masih tersisa maka alokasikan qty masuk 
        -- dengan qty plus TransactionDt (semua)
        if AQtyProcess > 0 then 
          
          -- Prepare cursor
          if (AStatusCostMethod = '0') then -- FIFO
            open CTransactionDt_QtyPlus_TGLAWAL_OLD;
          end if;       
          if (AStatusCostMethod = '1') then -- LIFO
            open CTransactionDt_QtyPlus_TGLAKHIR_OLD;
          end if;        
          if AStatusCostMethod = '2' then -- AVG
            open CTransactionDt_QtyPlus_TGLAWAL_OLD;
          end if;
          
          loop
            if (AStatusCostMethod = '0') or (AStatusCostMethod = '2') then 
              --FIFO & AVG
              fetch CTransactionDt_QtyPlus_TGLAWAL_OLD into ATransactionIdPlus, AQtyPlus;
            else          
              -- LIFO
              fetch CTransactionDt_QtyPlus_TGLAKHIR_OLD into ATransactionIdPlus, AQtyPlus;
            end if;

            exit when (ATransactionIdPlus is null) or (AQtyProcess = 0);  

            if AQtyProcess > AQtyPlus then
              AQtySave = AQtyPlus;
            else
              AQtySave = AQtyProcess;
            end if;
                      
            -- H.1.1.1.6.1
            -- Ambil tanggal transaksi dari TransactionDt yang diubah            
            AProsesTransactionDate = (select TransactionDate from Transaction where TransactionId = ATransactionIdPlus);
            AProsesYear = Extract(Year from AProsesTransactionDate);
            AProsesMonth = Extract(Month from AProsesTransactionDate);             
            
            -- H.1.1.1.6.2
            -- Kurangi qty plus pada TransactionDt (-)
            execute spUpdateQtyPlusTransactionDt(ATransactionIdPlus, -1, AQtySave, Old.TransactionDate, Old.Price);

            -- H.1.1.1.6.3
            -- Tambah item balance (+) sesuai tanggal transaksi yang diubah
            execute spUpdateItemBalanceTransactionIn(Old.ItemId, Old.WarehouseSource, AProsesYear, AProsesMonth, 1, AQtySave, Old.Price);
                 
            -- H.1.1.1.6.4
            -- Tambah qty minus pada TransactionDt (+) dengan COGSDate sesuai tanggal transaksi yang diubah
            execute spUpdateQtyMinusTransactionDt(ATransactionIdPlus, 1, AQtySave, AProsesTransactionDate);
            
            -- H.1.1.1.6.5
            -- Tambah qty minus di StockOnHandValue (+)
            execute spUpdateQtyMinusStockOnHandValue(Old.WarehouseSource, Old.ItemId, AProsesTransactionDate, 1, AQtySave);

            -- H.1.1.1.6.6           
            -- Kurangi item balance (-) harga 0 sesuai tanggal transaksi yang diubah
            execute spUpdateItemBalanceTransactionIn(Old.ItemId, Old.WarehouseSource, AProsesYear, AProsesMonth, -1, AQtySave, 0);

            -- Qty proses dikurangi dengan qty yang telah di simpan
            AQtyProcess = AQtyProcess - AQtySave;
          end loop; 
          if (AStatusCostMethod = '0') or (AStatusCostMethod = '2') then 
            close CTransactionDt_QtyPlus_TGLAWAL_OLD;
          else          
            close CTransactionDt_QtyPlus_TGLAKHIR_OLD;
          end if;
        end if; -- F.1.1.1.6

        -- H.1.1.1.7
        if AQtyProcess > 0 then -- Jika setelah dialokasikan qty masuk masih tersisa
          Raise Exception '%', '^Trigger raise exception because data invalid (H.1.1.1.7)^!';
          -- setelah dipotongkan stock dan transaksi keluar harusnya tidak ada 'qty masuk' yg tersisa lagi.
        end if;
      end if; -- F.1.1.1
      
      -- H.1.1.2 
      if (AStatusItem = '0') or (AStatusItem = '2') then 
        -- Jika status item adalah item-service (0) atau item-non-stock (2) maka tidak ada perhitungan qty stock
      end if;

      -- H.1.1.3
      -- Update transaction balance (-) 
      execute spUpdateTransactionBalance(Old.ItemId, Old.WarehouseSource, Old.TransactionTypeId, AYear, AMonth, -1, Old.Qty, Old.Price);      
    end if;
  
  
    -- =================================== OnOld - Process stock out (-) ================================================


    -- H.1.2 
    if (AStatusTransaction = '1') or (AStatusTransaction = '2') then 
      -- Process stock in (-) atau mutasi
      
      if (AStatusTransaction = '2') then -- H.1.2.1
        if (TG_OP = 'UPDATE') then 
          RAISE EXCEPTION '^Transaksi mutasi tidak dapat dirubah (dihapus bisa) !^';
        end if;  
      end if;
      
      if (AStatusItem = '1') or (AStatusItem = '3') then -- H.1.2.2
        -- jika barang stock atau barang konsinyasi

        if AStatusCostMethod = '2' then -- H.1.2.2.1
          -- AVERAGE         
          RAISE EXCEPTION '^Transaksi item dengan metode rata-rata tidak dapat dirubah !^';
        end if;        

        -- H.1.2.2.2
        -- Alokasikan qty keluar dengan qty minus TransactionDt nya sendiri
        -- Tidak perlu cursor, karena hanya untuk transaksi ini saja (hanya ada 1 record per tgl per cogs)
        AQtyProcess = Old.Qty;        
        select Qty 
        from TransactionDt
        where TransactionId = Old.TransactionId 
        and Qty < 0
        into AQtyMinus;        
        if not (AQtyMinus is null) then   
          if AQtyProcess > ABS(AQtyMinus) then
            AQtySave = ABS(AQtyMinus);
          else
            AQtySave = AQtyProcess;
          end if;          

          -- H.1.2.2.2.1 
          -- Kurangi qty minus di TransactionDt (-)
          -- default COGSDate (unt qty minus) adalah sama dengan tgl transaksi keluarnya          
          execute spUpdateQtyMinusTransactionDt(Old.TransactionId, -1, AQtySave, Old.TransactionDate);
          
          -- H.1.2.2.2.2
          -- Kurangi qty minus di StockOnHandValue (-)
          execute spUpdateQtyMinusStockOnHandValue(Old.WarehouseSource, Old.ItemId, Old.TransactionDate, -1, AQtySave);          
 
          -- H.1.2.2.2.3
          -- Tambah Item balance (+) dengan harga 0 (qty saja yg terpengaruh)
          execute spUpdateItemBalanceTransactionOut(Old.ItemId, Old.WarehouseSource, AYear, AMonth, 1, AQtySave, 0);

          -- Qty masuk dikurangi dengan qty yang telah di proses
          AQtyProcess = AQtyProcess - AQtySave;
        end if; -- F.1.2.2.2 

        -- H.1.2.2.3 
        -- Alokasikan sisa qty keluar dengan qty plus TransactionDt nya sendiri       
        -- Prepare Cursor
        if (AStatusCostMethod = '0') then        
          open CTransactionDt_QtyPlus_FIFO_OLD; 
        end if;
        if (AStatusCostMethod = '1') then
          open CTransactionDt_QtyPlus_LIFO_OLD;
        end if;
        if AStatusCostMethod = '2' then -- H.2.1.1.3
          open CTransactionDt_QtyPlus_FIFO_OLD;
        end if;

        loop
          if (AStatusCostMethod = '0') or (AStatusCostMethod = '2') then --FIFO & AVG
            fetch CTransactionDt_QtyPlus_FIFO_OLD into AQtyPlus, ACOGSPlus, ADateCOGSPlus;
          end if;
          if (AStatusCostMethod = '1') then -- LIFO
            fetch CTransactionDt_QtyPlus_LIFO_OLD into AQtyPlus, ACOGSPlus, ADateCOGSPlus;
          end if;

          exit when (AQtyPlus is null) or (AQtyProcess = 0);  
      
          if AQtyProcess > AQtyPlus then
            AQtySave = AQtyPlus;
          else
            AQtySave = AQtyProcess;
          end if;          

          -- H.1.2.2.3.1
          -- Kurangi qty plus di TransactionDt (-)
          execute spUpdateQtyPlusTransactionDt(Old.TransactionId, -1, AQtySave, ADateCOGSPlus, ACOGSPlus);

          -- H.1.2.2.3.2
          -- Tambah Item balance (+) 
          execute spUpdateItemBalanceTransactionOut(Old.ItemId, Old.WarehouseSource, AYear, AMonth, 1, AQtySave, ACOGSPlus);
          
          -- H.1.2.2.3.3 ******************************************************************************
          -- Qty plus yang tidak terpakai tadi harus dimasukan kembali ke dalam sistem (bukan recursif !)
          -- Proses nya sama seperti pada H.2.1.1.5 s/d H.2.1.1.6
          -- (tanpa Cost method average !)            

          if (AStatusCostMethod = '0') then
            -- FIFO (COGS sesuai harga di transaction)
            open CTransactionDt_QtyMinus_FIFO_NEW_TEMP; 
          end if;        
          if (AStatusCostMethod = '1') then
            -- LIFO (COGS sesuai harga di transaction)
            open CTransactionDt_QtyMinus_LIFO_NEW_TEMP;
          end if;        
          if AStatusCostMethod = '2' then
            -- Transaksi AVG tidak boleh di edit
            RAISE EXCEPTION '%', 'Trigger raise exception because data invalid (H.1.2.2.3.3)';
          end if;
        
          -- (like H.2.1.1.5)
          -- Alokasikan qty masuk dengan qty minus TransactionDt (semua)
          ATempQtyProcess = AQtySave;
          loop       
            if (AStatusCostMethod = '0') or (AStatusCostMethod = '2') then 
              --FIFO & AVG
              fetch CTransactionDt_QtyMinus_FIFO_NEW_TEMP
              into ATempTransactionIdMinus, ATempTransactionDateMinus, ATempSalePriceMinus, ATempQtyMinus, ATempDateCOGSMinus;        
            else          
              -- LIFO
              fetch CTransactionDt_QtyMinus_LIFO_NEW_TEMP
              into ATempTransactionIdMinus, ATempTransactionDateMinus, ATempSalePriceMinus, ATempQtyMinus, ATempDateCOGSMinus;
            end if;

            exit when (ATempTransactionIdMinus is null) or (ATempQtyProcess = 0);  
  
            if ATempQtyProcess > ABS(ATempQtyMinus) then
              ATempQtySave = ABS(ATempQtyMinus);
            else
              ATempQtySave = ATempQtyProcess;
            end if;

            -- Kurangi qty minus pada TransactionDt (-) (like H.2.1.1.5.1)
            execute spUpdateQtyMinusTransactionDt(ATempTransactionIdMinus, -1, ATempQtySave, ATempDateCOGSMinus);
          
            -- Kurangi qty minus di StockOnHandValue (-) (like H.2.1.1.5.2)
            execute spUpdateQtyMinusStockOnHandValue(Old.WarehouseSource, Old.ItemId, ATempDateCOGSMinus, -1, ATempQtySave);

            -- Ambil Tanggal transaksi yg edang dirubah (like H.2.1.1.5.3)
            AProsesTransactionDate = (select TransactionDate from Transaction where TransactionId = ATempTransactionIdMinus);
            AProsesYear = Extract(Year from AProsesTransactionDate);
            AProsesMonth = Extract(Month from AProsesTransactionDate);
          
            -- Tambah Item balance (+) dengan harga 0 sesuai tanggal TransactionDt yg dirubah (like H.2.1.1.5.4)
            execute spUpdateItemBalanceTransactionIn(Old.ItemId, Old.WarehouseSource, AProsesYear, AProsesMonth, 1, ATempQtySave, 0);

            -- Tambah qty plus pada TransactionDt (+) (like H.2.1.1.5.5)
            execute spUpdateQtyPlusTransactionDt(ATempTransactionIdMinus, 1, ATempQtySave, ADateCOGSPlus, ACOGSPlus);
          
            -- Kurangi Item balance (-) sesuai tanggal TransactionDt yg dirubah (like H.2.1.1.5.5)
            execute spUpdateItemBalanceTransactionIn(Old.ItemId, Old.WarehouseSource, AProsesYear, AProsesMonth, -1, ATempQtySave, ACOGSPlus);            
            
            -- Qty proses dikurangi dengan qty yang telah di simpan
            ATempQtyProcess = ATempQtyProcess - ATempQtySave;
          end loop;
          if (AStatusCostMethod = '0') or (AStatusCostMethod = '2') then
            close CTransactionDt_QtyMinus_FIFO_NEW_TEMP;
          else
            close CTransactionDt_QtyMinus_LIFO_NEW_TEMP;
          end if;
          
          -- H.2.1.1.6
          -- Jika setelah dialokasikan qty masuk masih tersisa           
          if ATempQtyProcess > 0 then
            -- tambah qty plus pada StockOnHandValue dengan qty sisa (denggan tanggal COGS)
            execute spUpdateQtyPlusStockOnHandValue(Old.WarehouseSource, Old.ItemId, ADateCOGSPlus, 1, ATempQtyProcess, ACOGSPlus);
          end if; 
          -- F.1.2.2.3.3 ******************************************************************************

          -- Qty proses dikurangi dengan qty yang telah di simpan
          AQtyProcess = AQtyProcess - AQtySave;
        end loop; 
        if (AStatusCostMethod = '0') or (AStatusCostMethod = '2') then        
          close CTransactionDt_QtyPlus_FIFO_OLD; 
        else
          close CTransactionDt_QtyPlus_LIFO_OLD;
        end if;
        -- F.1.2.2.3 

        if AQtyProcess > 0 then -- H.1.2.2.4
          -- Jika setelah dialokasikan qty keluar masih tersisa 
          Raise Exception '%', '^Trigger raise exception because data invalid (H.1.2.2.4)^!';
        end if;
      end if; -- F.1.2.2

      if (AStatusItem = '0') or (AStatusItem = '2') then -- H.1.2.3
        -- jika barang dengan jenis service atau non stock 
        
        -- H.1.2.3.1
        -- Kurangi transaction balance (-) harga sesuai transaksi
        execute spUpdateTransactionBalance(Old.ItemId, Old.WarehouseSource, Old.TransactionTypeId, AYear, AMonth, -1, Old.Qty, Old.Price);

        -- H.1.2.3.2 
        -- Jika transaksi adalah transaksi penjualan maka kurangi RevenueBalance
        if Old.TransactionTypeId = 'TY002' then          
          -- Perhitungan margin untuk status item service dan non-stock adalah 
          AServicePrice = (Old.DefaultMargin * Old.Price) / 100;
        
          -- H.1.2.3.2.1
          -- Kurangi revenue balance (-) 
          execute spUpdateRevenueBalance(Old.ItemId, AYear, AMonth, -1, (Old.Qty * AServicePrice), (Old.Qty * AServicePrice));

          -- H.1.2.3.2.2  
          -- Kurangi Margin dan Total Margin pada SalesInvoiceHd                
          update SalesInvoiceHd
          set Margin = Margin - (AServicePrice * Old.Qty),
            TotalMargin = TotalMargin - (AServicePrice * Old.Qty)
          where SalesInvoiceId = Old.ReferenceId;  
        end if;
      end if;

      -- Note : update Transaction balance untuk transaksi keluar dilakukan oleh tigger TransactionDt
      -- karena untuk penjualan di simpan adalah harga jual, sedangan untuk yg lain yg di simpan 
      -- adalah COGS (untuk mengetahui costing), KECUALI untuk item service dan non stock (H.1.2.3.2)
    end if;    
  end if;  
    
  if (TG_OP='INSERT') or (TG_OP='UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER tr_trTransaction_Before
BEFORE INSERT OR UPDATE OR DELETE ON Transaction
FOR EACH ROW EXECUTE PROCEDURE trTransaction_Before();


create or replace function trWarehouse_After ()
  returns trigger AS
$$
declare
  AItemId ItemId;
  
  CItem cursor for
    select ItemId
    from Item
    where StatusItem = '1'
    or StatusItem = '3';
begin 

  -- 1.OnInsert
  if (TG_OP = 'INSERT') then
    -- Buat record baru di StockOnHand untuk gudang yang baru
    -- dengan seluruh item yang ada (hanya item yg di stok aja) 
    -- agar pada display stok muncul meskipun belum pernah 
    -- ada transaksi untuk item ini sama sekali.  
    open CItem;
    loop
      fetch CItem into AItemId;   
      exit when (AItemId is null);
      
      insert into StockOnHand (WarehouseId, ItemId, EndQty, EndValue)
      values (New.WarehouseId, AItemId, 0, 0);
    end loop;
    close CItem;
  end if;
  
  return null;
end;
$$ language 'plpgsql';

CREATE TRIGGER tr_trWarehouse_After
AFTER INSERT OR UPDATE OR DELETE ON Warehouse
  FOR EACH ROW EXECUTE PROCEDURE trWarehouse_After();


drop type if exists CompvwAPnARVendor cascade;

create type CompvwAPnARVendor AS (VendorId varchar, VendorName varchar, 
  Address varchar, CityName varchar,  CategoryName varchar, 
  CreditLimit Currency, AP Currency, AR Currency, CurrencyId varchar(10));
  
create or replace function vwAPnARVendor (int4, int4, varchar)
returns setof CompvwAPnARVendor as $$
select
  a.VendorId, a.VendorName, a.Address, b.CityName,
  c.CategoryName, a.CreditLimit,
  fnGetAPBalanceVendor(a.VendorId, $1, $2, d.CurrencyId) as AP,
  fnGetARBalanceVendor(a.VendorId, $1, $2, d.CurrencyId) as AR,
  d.CurrencyId
from Vendor a
left join City b on a.CityId = b.CityId
left join Category c on a.CategoryId = c.CategoryId
, CurrencyMaster d
where a.VendorId like $3
order by a.VendorName
$$ language 'sql';


drop type if exists CompvwSalesRevenue cascade;

create type CompvwSalesRevenue AS (
  SalesInvoiceDate datewithouttime, SalesInvoiceId varchar, SalesInvoiceIdInternal varchar,
  CustomerName varchar, CityName varchar, ProvinceName varchar, CountryName varchar,
  WarehouseName varchar, OutletName varchar, ProjectName varchar,
  Salesman varchar, Amount currencyplus, Disc disc, DiscAmount currencyplus, 
  Disc2 disc, DiscAmount2 currencyplus, Tax disc, TaxAmount currencyplus, 
  Voucher varchar, VoucherAmount currencyplus, 
  TotalAmount currencyplus, OutstandingTotalAmount currencyplus,
  Margin currency, Percent percentbig, TotalMargin currency, TotalPercent percentbig);
  
create or replace function vwSalesRevenue (integer, integer)
returns setof CompvwSalesRevenue as $$
select
  a.SalesInvoiceDate, a.SalesInvoiceId, a.SalesInvoiceIdInternal,   
  b.CustomerName, g.CityName, h.ProvinceName, i.CountryName,
  c.WarehouseName, d.OutletName, e.ProjectName,
  f.EmployeeName as Salesman, 
  a.Amount, a.Disc, a.DiscAmount, a.Disc2, a.DiscAmount2, 
  a.Tax, a.TaxAmount, a.Voucher, a.VoucherAmount, 
  a.TotalAmount, a.OutstandingTotalAmount,
  cast(a.Margin + a.TaxAmount - (a.DiscAmount + a.DiscAmount2 + a.VoucherAmount) as currency) as Margin, 
  cast((case when a.TotalAmount > 0 then 
    ((a.Margin + a.TaxAmount - (a.DiscAmount + a.DiscAmount2 + a.VoucherAmount)) / a.TotalAmount*100) 
   else 0 end) as percentbig) as Percent,
  cast(a.TotalMargin + a.TaxAmount - (a.DiscAmount + a.DiscAmount2 + a.VoucherAmount) as currency) as TotalMargin,   
  cast((case when a.TotalAmount > 0 then 
    ((a.TotalMargin + a.TaxAmount - (a.DiscAmount + a.DiscAmount2 + a.VoucherAmount)) / a.TotalAmount*100) 
   else 0 end) as percentbig) as TotalPercent
from SalesInvoiceHd a
left join Customer b on a.CustomerId = b.CustomerId
left join Warehouse c on a.WarehouseId = c.WarehouseId
left join Outlet d on a.OutletId = d.OutletId
left join Project e on a.ProjectId = e.ProjectId
left join Employee f on a.SalesmanId = f.EmployeeId
left join City g on b.CityId = g.CityId
left join Province h on g.ProvinceId = h.ProvinceId
left join Country i on h.CountryId = i.CountryId
where a.StatusApprove <> '2'
and extract(year from a.SalesInvoiceDate) = $1
and extract(month from a.SalesInvoiceDate) = $2
order by a.SalesInvoiceId
$$ language 'sql';


drop type if exists CompvwSalesRevenueDt cascade;

create type CompvwSalesRevenueDt AS (
  ReferenceId varchar, ItemIdExternal varchar, ItemName varchar, 
  Type varchar, ItemNameChinese varchar,
  DateCOGS datewithouttime, Qty quantity, QtyReturn quantity, 
  COGS currency, TotalCOGS currency, SalePrice currency, TotalSales currency,
  Margin currency, Percent percentbig, TotalMargin currency, TotalPercent percentbig, 
  StatusItem status);
  
create or replace function vwSalesRevenueDt (varchar)
returns setof CompvwSalesRevenueDt as $$
select
  c.ReferenceId, b.ItemIdExternal, b.ItemName, b.Type, b.ItemNameChinese,
  a.DateCOGS, a.Qty, a.QtyReturn, a.COGS, a.TotalCOGS, a.SalePrice, a.TotalSales,
  a.Margin, a.Percent, a.TotalMargin, a.TotalPercent,
  b.StatusItem
from TransactionDt a
left join Transaction c on a.TransactionId = c.TransactionId
left join Item b on c.ItemId = b.ItemId
where c.TransactionTypeId = 'TY002'
and a.Qty <> 0
and c.ReferenceId = $1
union all
select
  a.ReferenceId, b.ItemIdExternal, b.ItemName, b.Type, b.ItemNameChinese,
  a.TransactionDate as DateCOGS, a.Qty, cast(0 as quantity) as QtyReturn, 
  cast(0 as currency) as COGS, cast(0 as currency) as TotalCOGS,
  a.Price as SalePrice, cast((a.Qty * a.Price) as currency) as TotalSales,
  cast(((a.Price * a.DefaultMargin / 100) * a.Qty) as currency) as Margin,
  cast((case when (a.Qty * a.Price) > 0 then
     ((a.Price * a.DefaultMargin / 100) * a.Qty) / (a.Qty * a.Price) * 100
   else 0 end) as percentbig) as Percent,
  cast(((a.Price * a.DefaultMargin / 100) * a.Qty) as currency) as TotalMargin,
  cast((case when (a.Qty * a.Price) > 0 then
     ((a.Price * a.DefaultMargin / 100) * a.Qty) / (a.Qty * a.Price) * 100
   else 0 end) as percentbig) as TotalPercent,
  b.StatusItem
from Transaction a
left join Item b on a.ItemId = b.ItemId
where a.TransactionTypeId = 'TY002'
and (b.StatusItem = '0' or b.StatusItem = '2')
and a.ReferenceId = $1
$$ language 'sql';


drop type if exists CompvwSalesRevenueDtGroup cascade;

create type CompvwSalesRevenueDtGroup AS (
  ReferenceId varchar, ItemIdExternal varchar, ItemName varchar, 
  Type varchar, ItemNameChinese varchar,
  Qty quantity, QtyReturn quantity, COGS currency, TotalCOGS currency,
  SalePrice currency, TotalSales currency, Margin currency, 
  Percent percentbig, TotalMargin currency, PercentTotal percentbig);
  
create or replace function vwSalesRevenueDtGroup (varchar)
returns setof CompvwSalesRevenueDtGroup as $$
select
  ReferenceId, ItemIdExternal, ItemName, Type, ItemNameChinese,
  cast(sum(Qty) as quantity) as Qty, 
  cast(sum(QtyReturn) as quantity) as QtyReturn, 
  COGS, 
  cast(sum(TotalCOGS) as currency) as TotalCOGS,
  SalePrice, 
  cast(sum(TotalSales) as currency) as TotalSales,
  cast(sum(Margin) as currency) as Margin, 
  cast((case when sum(TotalSales) > 0 then (sum(Margin)/sum(TotalSales)*100) 
    else 0 end) as percentbig) as Percent, 
  cast(sum(TotalMargin) as currency) as TotalMargin, 
  cast((case when sum(TotalSales) > 0 then (sum(TotalMargin)/sum(TotalSales)*100) 
    else 0 end) as percentbig) as PercentTotal
from vwSalesRevenueDt($1)
group by ReferenceId, ItemIdExternal, ItemName, Type, ItemNameChinese, COGS, SalePrice
$$ language 'sql';


drop type if exists CompvwSalesRevenueDtSimple cascade;

create type CompvwSalesRevenueDtSimple AS (
  ReferenceId varchar, ItemIdExternal varchar, ItemName varchar, 
  Type varchar, ItemNameChinese varchar,
  Qty quantity, QtyReturn quantity, COGS currency, TotalCOGS currency,
  SalePrice currency, TotalSales currency, Margin currency, 
  Percent percentbig, TotalMargin currency, PercentTotal percentbig);
  
create or replace function vwSalesRevenueDtSimple (varchar)
returns setof CompvwSalesRevenueDtSimple as $$
select
  ReferenceId, ItemIdExternal, ItemName, Type, ItemNameChinese,
  cast(sum(Qty) as quantity) as Qty, 
  cast(sum(QtyReturn) as quantity) as QtyReturn, 
  cast((case when sum(Qty) > 0 then (sum(TotalCOGS)/sum(Qty)) 
    else 0 end) as currency) as COGS, 
  cast(sum(TotalCOGS) as currency) as TotalCOGS,
  SalePrice, 
  cast(sum(TotalSales) as currency) as TotalSales,
  cast(sum(Margin) as currency) as Margin, 
  cast((case when sum(TotalSales) > 0 then (sum(Margin)/sum(TotalSales)*100) 
    else 0 end) as percentbig) as Percent, 
  cast(sum(TotalMargin) as currency) as TotalMargin, 
  cast((case when sum(TotalSales) > 0 then (sum(TotalMargin)/sum(TotalSales)*100) 
    else 0 end) as percentbig) as PercentTotal
from vwSalesRevenueDt($1)
group by ReferenceId, ItemIdExternal, ItemName, Type, ItemNameChinese, SalePrice
$$ language 'sql';


drop type if exists CompvwStockOnHand cascade;

create type CompvwStockOnHand AS (
  WarehouseId varchar, WarehouseName varchar, 
  ItemId ItemId, ItemIdExternal varchar, ItemName varchar, ItemNameChinese varchar,
  Type varchar, UnitMeasure varchar, ItemCategoryId varchar, ItemCategoryName varchar, MinStockQty quantity,
  EndQty quantity, EndValue currency, PriceAVG currency, ReorderQty quantity,
  Qty1 quantityplus, UnitMeasure1 varchar, Price1 currencyplus,
  Qty2 quantityplus, UnitMeasure2 varchar, Price2 currencyplus,
  Qty3 quantityplus, UnitMeasure3 varchar, Price3 currencyplus,
  Qty4 quantityplus, UnitMeasure4 varchar, Price4 currencyplus, 
  Qty5 quantityplus, UnitMeasure5 varchar, Price5 currencyplus,
  QtyAwal quantity, QtyMasuk quantity, QtyKeluar quantity,
  ValueAwal currency, ValueMasuk currency, ValueKeluar currency,
  RackCode varchar, RackName varchar, RackLocation1 varchar, RackLocation2 varchar, RackLocation3 varchar, 
  RackLocation4 varchar, RackLocation5 varchar, RackLocation6 varchar, RackLocation7 varchar);
  
create or replace function vwStockOnHand (varchar)
returns setof CompvwStockOnHand as $$
select
  a.WarehouseId, c.WarehouseName, a.ItemId, b.ItemIdExternal, b.ItemName, b.ItemNameChinese,
  b.Type, b.UnitMeasure, b.ItemCategoryId, e.ItemCategoryName, 
  cast((case when d.MinStockQty is null then 0 else d.MinStockQty end) as Quantity) as MinStockQty,
  a.EndQty, a.EndValue,
  cast((case when a.EndQty <> 0 then a.EndValue / a.EndQty else 0 end) as currency) as PriceAVG,
  b.ReorderQty,
  f.Qty1, f.UnitMeasure1, f.Price1,
  f.Qty2, f.UnitMeasure2, f.Price2,
  f.Qty3, f.UnitMeasure3, f.Price3,
  f.Qty4, f.UnitMeasure4, f.Price4,
  f.Qty5, f.UnitMeasure5, f.Price5,
  cast((case when g.Qty0 is null then 0 else g.Qty0 end) as Quantity) as QtyAwal,
  cast((case when g.TotalQtyIn is null then 0 else g.TotalQtyIn end) as Quantity) as QtyMasuk,
  cast((case when g.TotalQtyOut is null then 0 else g.TotalQtyOut end) as Quantity) as QtyKeluar,
  cast((case when g.Value0 is null then 0 else g.Value0 end) as currency) as ValueAwal,
  cast((case when g.TotalValueIn is null then 0 else g.TotalValueIn end) as currency) as ValueMasuk,
  cast((case when g.TotalValueOut is null then 0 else g.TotalValueOut end) as currency) as ValueKeluar,
  h.RackCode, i.RackName, 
  i.RackLocation1, i.RackLocation2, i.RackLocation3, i.RackLocation4,
  i.RackLocation5, i.RackLocation6, i.RackLocation7
from StockOnHand a
left join Item b on a.ItemId = b.ItemId
left join Warehouse c on a.WarehouseId = c.WarehouseId
left join ItemMinStock d on (a.ItemId = d.ItemId and a.WarehouseId = d.WarehouseId)
left join ItemCategory e on b.ItemCategoryId = e.ItemCategoryId
left join Price f on b.ItemId = f.ItemId
left join ItemBalance g on (a.ItemId = g.ItemId and a.WarehouseId = g.WarehouseId
  and g.Year = cast(Date_part('year', GetDate()) as varchar))
left join ItemRack h on a.ItemId = h.ItemId 
left join WarehouseRack i on i.WarehouseId = a.WarehouseId and h.RackCode = i.RackCode 
where c.FlagInactive = '0'
and a.WarehouseId like $1
and b.StatusItem <> '0' --Service
and b.StatusItem <> '2' --NonStock
order by c.WarehouseName, b.ItemName
$$ language 'sql';


drop type if exists CompvwStockOnHandTotal cascade;

create type CompvwStockOnHandTotal AS (
  WarehouseId varchar, WarehouseName varchar, 
  ItemId integer, ItemIdExternal varchar, ItemName varchar, ItemNameChinese varchar,
  Type varchar, UnitMeasure varchar, ItemCategoryId varchar, ItemCategoryName varchar, MinStockQty quantity,
  EndQty quantity, EndValue currency, PriceAVG currency, ReorderQty quantity,
  Qty1 quantityplus, UnitMeasure1 varchar, Price1 currencyplus,
  Qty2 quantityplus, UnitMeasure2 varchar, Price2 currencyplus,
  Qty3 quantityplus, UnitMeasure3 varchar, Price3 currencyplus,
  Qty4 quantityplus, UnitMeasure4 varchar, Price4 currencyplus, 
  Qty5 quantityplus, UnitMeasure5 varchar, Price5 currencyplus,
  QtyAwal quantity, QtyMasuk quantity, QtyKeluar quantity,
  ValueAwal currency, ValueMasuk currency, ValueKeluar currency,
  RackCode varchar, RackName varchar, RackLocation1 varchar, RackLocation2 varchar, RackLocation3 varchar, 
  RackLocation4 varchar, RackLocation5 varchar, RackLocation6 varchar, RackLocation7 varchar);
  
create or replace function vwStockOnHandTotal ()
returns setof CompvwStockOnHandTotal as $$
select 
  cast('#' as varchar) as WarehouseId, cast('Total' as varchar) as WarehouseName, 
  a.ItemId, a.ItemIdExternal, a.ItemName, a.ItemNameChinese, 
  a.Type, a.UnitMeasure, a.ItemCategoryId, b.ItemCategoryName, 
  a.MinStockQty, 
  fnGetItemTotalEndQty(a.ItemId) as EndQty,
  fnGetItemTotalEndValue(a.ItemId) as EndValue,
  cast((case when fnGetItemTotalEndQty(a.ItemId) <> 0 then
    fnGetItemTotalEndValue(a.ItemId) / fnGetItemTotalEndQty(a.ItemId)
    else 0 end) as currency) as PriceAVG,
  a.ReorderQty,
  c.Qty1, c.UnitMeasure1, c.Price1,
  c.Qty2, c.UnitMeasure2, c.Price2,
  c.Qty3, c.UnitMeasure3, c.Price3,
  c.Qty4, c.UnitMeasure4, c.Price4,
  c.Qty5, c.UnitMeasure5, c.Price5,
  fnGetItemTotalEndQtyOpening(a.ItemId) as QtyAwal,
  fnGetItemTotalEndQtyIn(a.ItemId) as QtyMasuk,
  fnGetItemTotalEndQtyOut(a.ItemId) as QtyKeluar,
  fnGetItemTotalEndValueOpening(a.ItemId) as ValueAwal,
  fnGetItemTotalEndValueIn(a.ItemId) as ValueMasuk,
  fnGetItemTotalEndValueOut(a.ItemId) as ValueKeluar,
  cast(' ' as varchar) as RackCode, cast(' ' as varchar) as RackName, 
  cast(' ' as varchar) as RackLocation1, cast(' ' as varchar) as RackLocation2, 
  cast(' ' as varchar) as RackLocation3, cast(' ' as varchar) as RackLocation4, 
  cast(' ' as varchar) as RackLocation5, cast(' ' as varchar) as RackLocation6, 
  cast(' ' as varchar) as RackLocation7 
from Item a
left join ItemCategory b on a.ItemCategoryId = b.ItemCategoryId
left join Price c on a.ItemId = c.ItemId
and a.StatusItem <> '0' --Service
and a.StatusItem <> '2' --NonStock
order by WarehouseName, a.ItemName
$$ language 'sql';

