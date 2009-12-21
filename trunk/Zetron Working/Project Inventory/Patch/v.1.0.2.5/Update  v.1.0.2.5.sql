1. 

Alter table PurchaseInvoiceHd
add column Meterai CurrencyPlus;

Alter table SalesInvoiceHd
add column Meterai CurrencyPlus;

update PurchaseInvoiceHd
set Meterai = 0;

update SalesInvoiceHd
set Meterai = 0;

alter table SalesReturnDt
alter column cogsdate drop not null;

alter table Company
add column Year int2;

2. Buat Database Image, dan ODBC baru POSPIC

3. drop table ItemImage

4. Jalankan buat Zetron.DLL baru (DLL application v 4.0)

5. Jalankan ConnectionBuilder baru

----------------------------------------------------------------------------

DBChange

  fnPurchasePayment_After
  fnSalesPayment_After
  fnPurchaseInvoiceHd_Before
  fnSalesInvoiceHd_Before
  SalesReturnDt