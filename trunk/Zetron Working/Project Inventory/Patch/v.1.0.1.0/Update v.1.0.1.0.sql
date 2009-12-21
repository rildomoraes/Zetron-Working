1.Jalankan script

  update salespayment set flagbarcode='1' where customerid='999';
  update salesinvoicehd set flagbarcode='1' where customerid='999';

2.Buat new field di item 

  alter table item add column BarcodeId varchar(60);

  update Item
  set BarcodeId = ItemIdExternal;

3.Backup DB
4.Create New DB schema
5.Restore DB
