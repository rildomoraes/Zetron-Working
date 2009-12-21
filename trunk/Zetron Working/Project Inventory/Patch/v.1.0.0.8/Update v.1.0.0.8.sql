Issue nota penjualan tidak sama dengan transactiondt 

1. Retur barang minus. 

2. Barang Masuk -> di mutasi -> mutasi lagi -> mutasi  lagi -> barang di jual
   kemudian barang masuk ingin di edit.

3. Stock on hand yang tidak sesuai item balance dan kartu stok.

4. Setelah update perhatikan report, mungkin ada yang perlu disesuaikan

Solusi:

1. Buat database baru dengan schema baru

2. Transfer data lama ke database baru dengan aplikasi Migration Tools 4.0.    
   karena dengan transfer data trigger tetap berjalan, sedangkan jika mengggunakan 
   backup-restore database (data only) trigger tidak berjalan sehingga data tetap salah !!

3.Load file migrasi1008.txt

4.Sebelum mulai transfer lakukan
  - Cek pembayaran pd DB lama (pembayaran > nota) dengan Check_Payment.sql
  - alter domain currencyplus drop constraint currencyplus_check; (DB BARU)
  - Cek tanggal closing pada table setup apakah telah terinisialisai. (DB LAMA)

5.Transfer data master

6.- Sebelum transfer PurchaseInvoiceHd, disable all trigger 


  - Setelah transfer PurchaseInvoiceHd lakukan :
      * update PurchaseInvoiceHd set outstandingtotalamount = totalamount;
      * update PurchaseInvoiceHd set amount = 0, totalamount = 0, outstandingtotalamount = 0;
  - Sesudah transfer enable all trigger 


7.Untuk transaksi OtherTransaction, 
    lakukan transaksi selain mutasi terlebih dahulu (TransactionTypeId <> TY003), 
    baru kemudian transaksi mutasi (TransactionTypeId = TY003)

8.- Sebelum transfer PurchaseReturnHd, disable all trigger
  - Setelah transfer PurchaseReturnHd lakukan
    update PurchaseReturnHd set amount = 0, totalamount = 0, outstandingtotalamount = 0;
  - Setelah transfer enable all trigger 

9.- Sebelum transfer SalesInvoiceHd, disable all trigger
  - Setelah transfer SalesInvoiceHd lakukan :
      * update SalesinvoiceHd set outstandingtotalamount = totalamount;
      * update SalesinvoiceHd set voucheramount=0 where voucheramount isnull;
      * update SalesInvoiceHd set amount = 0, totalamount = 0, outstandingtotalamount = 0;
  - Setelah transfer enable all trigger 

10.- Sebelum transfer SalesReturnHd, disable all trigger
  - Setelah transfer SalesReturnHd lakukan
    update SalesReturnHd set amount = 0, totalamount = 0, outstandingtotalamount = 0;
  - Setelah transfer enable all trigger 

11.Setelah Transfer CashTransaction Lakukan
  update CashTransaction set Outstanding = 0 where FlagFix = '1' and StatusApprove <> '2';

12.Setelah Transfer BankTransaction Lakukan
  update BankTransaction set Outstanding = 0 where FlagFix = '1' and StatusApprove <> '2';

13.Update Sequence item_itemid_seq lihat dengan
   select max(itemid) from item;

14.Backup DB

15.Buat DB Baru

16.Restore DB