1.

update item
set BarcodeId = ItemIdExternal
where BarcodeId is null;

alter table PaymentType
add column FlagSalesBarcodePayment Flag;

alter table SalesPaymentDt
add CardNo varchar(20),
add CardHolderName varchar(30);

alter table SalesInvoiceHd
drop PaymentAmount;

alter table SalesInvoiceDt
drop PriceLevelPrice,
drop PriceLevelQty,
drop BarcodeId;

alter table SalesPayment
drop FlagBarcode;

delete from Setup 
where SetupId = 'GLB01'

alter table CashTransaction
add FlagAutomatic Flag;

update CashTransaction
set FlagAutomatic = FlagFix;

alter table CashTransaction
drop FlagFix,
drop Outstanding,
drop No,
drop CoaId;

alter table PurchasePayment
add CashRegisterTransactionId varchar(15);

alter table SalesPayment
add CashRegisterTransactionId varchar(15);

alter table SalesInvoiceHd
drop constraint fk_salesinvoicehd_salescategory;

alter table SalesInvoiceHd
   add constraint FK_SalesInvoiceHd_SalesCategory foreign key (SalesCategoryId)
      references SalesCategory (SalesCategoryId)
      on delete restrict on update cascade;

delete from Setup
where SetupId = 'GLB01';

update SalesCategory
set SalesCategoryId = 'CR',
  SalesCategoryName = 'Cash Register',
  Prefix = 'CR'
where SalesCategoryId = 'BC'

alter table SalesCategory
add FlagAutomatic Flag;

alter table PurchaseCategory
add FlagAutomatic Flag;

update SalesCategory
set FlagAutomatic = '1'
where SalesCategoryId = 'CR';

alter table BankTransaction
add FlagAutomatic Flag;

update BankTransaction
set FlagAutomatic = FlagFix;

alter table BankTransaction
drop No,
drop Outstanding,
drop FlagFix,
drop CoaId;

alter table SalesInvoiceHd
drop FlagBarcode;

alter table Item
add LevelValidation INT2 null default 0,
add FlagNeedValidation Flag null;

update Item
set LevelValidation = 0,
  FlagNeedValidation = '0';

alter table Setup
alter column SetupId Type Varchar(30);

alter table Price
add Disc1_1              Disc                 null,
add Disc1_2              Disc                 null,
add Disc1_3              Disc                 null,
add Disc1_4              Disc                 null,
add Disc1_5              Disc                 null,
add Disc1_6              Disc                 null,
add Disc1_7              Disc                 null;