1.

drop index if exists ID_CurrencyMaster cascade;
drop table if exists CurrencyMaster cascade;

/*==============================================================*/
/* 
Table: CurrencyMaster                                        
*/
/*==============================================================*/

create table CurrencyMaster (
CurrencyId           varchar(10)          not null,
CurrencyName         varchar(60)          not null,
FlagFix              flag,
constraint PK_CurrencyMaster primary key (CurrencyId)
);

/*==============================================================*/
/* 
Index: ID_CurrencyMaster                                     
*/
/*==============================================================*/

create unique index ID_CurrencyMaster on CurrencyMaster (
CurrencyId
);

2.

insert into CurrencyMaster (CurrencyId, CurrencyName, FlagFix)
values('IDR', 'Indonesia Rupiah', '1');

3.

alter table PurchaseInvoiceHd
add column currencyId varchar(10),
add column kurs currencyplus;

alter table PurchasePaymentDt
add column currencyId varchar(10),
add column kurs currencyplus;

alter table SalesInvoiceHd
add column currencyId varchar(10),
add column kurs currencyplus;

alter table SalesPaymentDt
add column currencyId varchar(10),
add column kurs currencyplus;

alter table PurchaseReturnHd
add column currencyId varchar(10),
add column kurs currencyplus;

alter table PurchaseReturnPaymentDt
add column currencyId varchar(10),
add column kurs currencyplus;

alter table SalesReturnHd
add column currencyId varchar(10),
add column kurs currencyplus;

alter table SalesReturnPaymentDt
add column currencyId varchar(10),
add column kurs currencyplus;

alter table CashTransaction
add column currencyId varchar(10),
add column kurs currencyplus;

alter table BankTransaction
add column currencyId varchar(10),
add column kurs currencyplus;


alter table APBalanceVendor
add column currencyId varchar(10);

alter table ARBalanceVendor
add column currencyId varchar(10);

alter table APBalanceCustomer
add column currencyId varchar(10);

alter table ARBalanceCustomer
add column currencyId varchar(10);

alter table CashBalance
add column currencyId varchar(10);

alter table BankBalance
add column currencyId varchar(10);

4.

-- lakukan disable trigger 

alter table PurchaseInvoiceHd 
DISABLE TRIGGER tr_fnpurchaseinvoicehd_before, DISABLE TRIGGER tr_fnpurchaseinvoicehd_after;

alter table SalesInvoiceHd
DISABLE TRIGGER tr_fnsalesinvoicehd_after, DISABLE TRIGGER tr_fnsalesinvoicehd_before;

alter table PurchaseReturnHd
DISABLE TRIGGER tr_fnpurchasereturnhd_a_u, DISABLE TRIGGER tr_fnpurchasereturnhd_b_u;

alter table SalesReturnHd
DISABLE TRIGGER tr_fnsalesreturnhd_a_u, DISABLE TRIGGER tr_fnsalesreturnhd_b_u;

alter table PurchasePaymentDt
DISABLE TRIGGER tr_fnpurchasepaymentdt_before;

alter table SalesPaymentDt
DISABLE TRIGGER tr_fnsalespaymentdt_before;

alter table PurchaseReturnPaymentDt
DISABLE TRIGGER tr_fnpurchasereturnpaymentdt_before;

alter table SalesReturnPaymentDt
DISABLE TRIGGER tr_fnsalesreturnpaymentdt_before;

alter table CashTransaction
DISABLE TRIGGER tr_fncashtransaction_before;

alter table BankTransaction
DISABLE TRIGGER tr_fnbanktransaction_before;

-- Rubah data

update PurchaseInvoiceHd
set CurrencyId = 'IDR', Kurs = 1;

update SalesInvoiceHd
set CurrencyId = 'IDR', Kurs = 1;

update PurchaseReturnHd
set CurrencyId = 'IDR', Kurs = 1;

update SalesReturnHd
set CurrencyId = 'IDR', Kurs = 1;

update PurchasePaymentDt
set CurrencyId = 'IDR', Kurs = 1;

update SalesPaymentDt
set CurrencyId = 'IDR', Kurs = 1;

update PurchaseReturnPaymentDt
set CurrencyId = 'IDR', Kurs = 1;

update SalesReturnPaymentDt
set CurrencyId = 'IDR', Kurs = 1;

update CashTransaction
set CurrencyId = 'IDR', Kurs = 1;

update BankTransaction
set CurrencyId = 'IDR', Kurs = 1;

update APBalanceVendor
set CurrencyId = 'IDR';

update ARBalanceVendor
set CurrencyId = 'IDR';

update APBalanceCustomer
set CurrencyId = 'IDR';

update ARBalanceCustomer
set CurrencyId = 'IDR';

update CashBalance
set CurrencyId = 'IDR';

update BankBalance
set CurrencyId = 'IDR';

-- lakukan enable trigger kembali

alter table PurchaseInvoiceHd 
ENABLE TRIGGER tr_fnpurchaseinvoicehd_before, ENABLE TRIGGER tr_fnpurchaseinvoicehd_after;

alter table SalesInvoiceHd
ENABLE TRIGGER tr_fnsalesinvoicehd_after, ENABLE TRIGGER tr_fnsalesinvoicehd_before;

alter table PurchaseReturnHd
ENABLE TRIGGER tr_fnpurchasereturnhd_a_u, ENABLE TRIGGER tr_fnpurchasereturnhd_b_u;

alter table SalesReturnHd
ENABLE TRIGGER tr_fnsalesreturnhd_a_u, ENABLE TRIGGER tr_fnsalesreturnhd_b_u;

alter table PurchasePaymentDt
ENABLE TRIGGER tr_fnpurchasepaymentdt_before;

alter table SalesPaymentDt
ENABLE TRIGGER tr_fnsalespaymentdt_before;

alter table PurchaseReturnPaymentDt
ENABLE TRIGGER tr_fnpurchasereturnpaymentdt_before;

alter table SalesReturnPaymentDt
ENABLE TRIGGER tr_fnsalesreturnpaymentdt_before;

alter table CashTransaction
ENABLE TRIGGER tr_fncashtransaction_before;

alter table BankTransaction
ENABLE TRIGGER tr_fnbanktransaction_before;

5.

drop index if exists ID_APAdjustmentVendor cascade;

drop table if exists APAdjustmentVendor cascade;

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
/* Index: ID_APAdjustmentVendor                                 */
/*==============================================================*/
create unique index ID_APAdjustmentVendor on APAdjustmentVendor (
APAdjustmentVendorId
);

alter table APAdjustmentVendor
   add constraint FK_APAdjustmentVendor_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete restrict on update cascade;

alter table APAdjustmentVendor
   add constraint FK_APAdjustmentVendor_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

drop index if exists ID_ARAdjustmentVendor cascade;

drop table if exists ARAdjustmentVendor cascade;

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
/* Index: ID_ARAdjustmentVendor                                 */
/*==============================================================*/
create unique index ID_ARAdjustmentVendor on ARAdjustmentVendor (
ARAdjustmentVendorId
);

alter table ARAdjustmentVendor
   add constraint FK_ARAdjustmentVendor_Vendor foreign key (VendorId)
      references Vendor (VendorId)
      on delete restrict on update cascade;

alter table ARAdjustmentVendor
   add constraint FK_ARAdjustmentVendor_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;


drop index if exists ID_APAdjustmentCustomer cascade;

drop table if exists APAdjustmentCustomer cascade;

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
/* Index: ID_APAdjustmentCustomer                               */
/*==============================================================*/
create unique index ID_APAdjustmentCustomer on APAdjustmentCustomer (
APAdjustmentCustomerId
);

alter table APAdjustmentCustomer
   add constraint FK_APAdjustmentCustomer_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete restrict on update cascade;

alter table APAdjustmentCustomer
   add constraint FK_APAdjustmentCustomer_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

drop index if exists ID_ARAdjustmentCustomer cascade;

drop table if exists ARAdjustmentCustomer cascade;

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
/* Index: ID_ARAdjustmentCustomer                               */
/*==============================================================*/
create unique index ID_ARAdjustmentCustomer on ARAdjustmentCustomer (
ARAdjustmentCustomerId
);

alter table ARAdjustmentCustomer
   add constraint FK_ARAdjustmentCustomer_Customer foreign key (CustomerId)
      references Customer (CustomerId)
      on delete restrict on update cascade;

alter table ARAdjustmentCustomer
   add constraint FK_ARAdjustmentCustomer_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

drop index if exists ID_BankAdjustment cascade;

drop table if exists BankAdjustment cascade;

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
EmployeeId           varchar(10)          null,
Memo                 text                 null,
CounterPrint         integer              null,
StatusApprove        Status               not null,
FlagFix              Flag                 not null
);

alter table BankAdjustment
   add constraint PK_BankAdjustment primary key (BankAdjustmentId);

/*==============================================================*/
/* Index: ID_BankAdjustment                                     */
/*==============================================================*/
create unique index ID_BankAdjustment on BankAdjustment (
BankAdjustmentId
);

alter table BankAdjustment
   add constraint FK_BankAdjustment_Bank foreign key (AccountNo, BankId)
      references Bank (AccountNo, BankId)
      on delete restrict on update cascade;

alter table BankAdjustment
   add constraint FK_BankAdjustment_CurrencyMaster foreign key (CurrencyId)
      references CurrencyMaster (CurrencyId)
      on delete restrict on update restrict;

6.

alter table Setup
alter column SetupId type varchar(10);

alter table BankTransaction
add column No integer;

alter table CashTransaction
add column No integer;

alter table PaymentType
drop column flagbank,
drop column flaguseable;

alter table purchasereturnhd
DISABLE TRIGGER tr_fnpurchasereturnhd_after, DISABLE TRIGGER tr_fnpurchasereturnhd_before;

update purchasereturnhd
set meterai = 0 
where meterai is null;

alter table salesreturnhd
DISABLE TRIGGER tr_fnsalesreturnhd_after, DISABLE TRIGGER tr_fnsalesreturnhd_before;

update salesreturnhd
set meterai = 0 
where meterai is null;

7. Backup Restore Database
8. Lakukan Setting Global