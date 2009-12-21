1. Jalankan 

alter table PaymentType
add CashBankTransactionTypeId varchar(10);

update PaymentType
set CashBankTransactionTypeId = 'C0002'
where FlagBank = '0'
and (FlagPurchasePayment = '1' Or FlagSalesReturnPayment = '1');

update PaymentType
set CashBankTransactionTypeId = 'B0002'
where FlagBank = '1'
and (FlagPurchasePayment = '1' Or FlagSalesReturnPayment = '1');

update PaymentType
set CashBankTransactionTypeId = 'C0001'
where FlagBank = '0'
and (FlagSalesPayment = '1' Or FlagPurchaseReturnPayment = '1');

update PaymentType
set CashBankTransactionTypeId = 'B0001'
where FlagBank = '1'
and (FlagSalesPayment = '1' Or FlagPurchaseReturnPayment = '1');

3. cek tabel PaymentType field CashBankTransactionTypeId apa sudah benar !!
   select * from PaymentType

3. Update Struktur Database (backup data -> create new schema -> restore data only)

4. update purchaseprice
   set DateModified = getdate()
   where DateModified is null;

5. update saleprice
   set DateModified = getdate()
   where DateModified is null;

6. Jalankan aplikasi, masuk ke menu options\access
   panggil satu per satu data yg ada kemudian simpan.

