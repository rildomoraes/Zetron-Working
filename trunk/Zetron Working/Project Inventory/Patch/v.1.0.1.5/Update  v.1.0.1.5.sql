1.Jalankan 

insert into price (itemid, price1, qty1, unitmeasure1, lastmodified, employeeid)
select itemid, pricelist, 1, unitmeasure, getdate(), 'USER'
from item

2.

alter table purchaseprice
add column LastPINo INT4;

alter table saleprice
add column LastSINo INT4;

3. Backup DB

4.Buat DB Baru

5.Restore DB