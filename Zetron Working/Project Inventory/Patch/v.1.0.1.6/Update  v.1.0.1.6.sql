1.Jalankan 

alter table purchaseinvoicedt
add column statuscolor status;

alter table salesinvoicedt
add column statuscolor status;

alter table othertransactiondt
add column statuscolor status;

2. Setting Global

Auto Edit = ya