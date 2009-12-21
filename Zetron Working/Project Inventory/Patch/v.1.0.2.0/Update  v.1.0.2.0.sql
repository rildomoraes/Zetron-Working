1. Jalankan

alter table salesinvoicehd
add column Margin Currency, 
add column TotalMargin Currency;

2. Jalankan (proses lama apabila data besar !!)

update SalesInvoiceHd
set 
  Margin = 
    ((select IsCurrencyNull(sum(z.Margin), 0) -- Stocked Item
    from TransactionDt z
    left join Transaction x on z.TransactionId = x.TransactionId
    where x.ReferenceId = SalesInvoiceHd.SalesInvoiceId
    and x.TransactionTypeId = 'TY002'
    and z.Qty > 0)
    +
    (select IsCurrencyNull(sum((z.Price * z.DefaultMargin / 100) * z.Qty), 0) -- ServiceItem & NonStock
    from Transaction z
    left join Item x on z.ItemId = x.ItemId
    where z.ReferenceId = SalesInvoiceHd.SalesInvoiceId
    and z.TransactionTypeId = 'TY002'
    and (x.StatusItem = '0' or x.StatusItem = '2'))),

  TotalMargin = 
    ((select IsCurrencyNull(sum(z.TotalMargin), 0) -- Stocked Item
    from TransactionDt z
    left join Transaction x on z.TransactionId = x.TransactionId
    where x.ReferenceId = SalesInvoiceHd.SalesInvoiceId
    and x.TransactionTypeId = 'TY002'
    and z.Qty > 0)
    +
    (select IsCurrencyNull(sum((z.Price * z.DefaultMargin / 100) * z.Qty), 0) -- ServiceItem & NonStock
    from Transaction z
    left join Item x on z.ItemId = x.ItemId
    where z.ReferenceId = SalesInvoiceHd.SalesInvoiceId
    and z.TransactionTypeId = 'TY002'
    and (x.StatusItem = '0' or x.StatusItem = '2')))

3. Jalankan

alter table ItemBalance
add column TotalQtyIn Quantity, 
add column TotalQtyOut Quantity,
add column TotalValueIn Currency, 
add column TotalValueOut Currency;

4. Jalankan (proses lama apabila data besar !!)

update ItemBalance
set 
  TotalQtyIn = 
    (select sum(z.Qty1 + z.Qty2 + z.Qty3 + z.Qty4 + z.Qty5 + z.Qty6 + 
    z.Qty7 + z.Qty8 + z.Qty9 + z.Qty10 + z.Qty11 + z.Qty12)
    from TransactionBalance z
    left join TransactionType y on z.TransactionTypeId = y.TransactionTypeId
    where z.Year = ItemBalance.Year
    and y.StatusTransaction = '0' -- Masuk
    and z.ItemId = ItemBalance.ItemId
    and z.WarehouseId = ItemBalance.WarehouseId),
  TotalQtyOut = 
    (select sum(z.Qty1 + z.Qty2 + z.Qty3 + z.Qty4 + z.Qty5 + z.Qty6 + 
    z.Qty7 + z.Qty8 + z.Qty9 + z.Qty10 + z.Qty11 + z.Qty12)
    from TransactionBalance z
    left join TransactionType y on z.TransactionTypeId = y.TransactionTypeId
    where z.Year = ItemBalance.Year
    and (y.StatusTransaction = '1' -- Keluar
    or y.StatusTransaction = '2') -- Keluar (Mutasi)
    and z.ItemId = ItemBalance.ItemId
    and z.WarehouseId = ItemBalance.WarehouseId),
  TotalValueIn = 
    (select sum(z.Value1 + z.Value2 + z.Value3 + z.Value4 + z.Value5 + z.Value6 + 
    z.Value7 + z.Value8 + z.Value9 + z.Value10 + z.Value11 + z.Value12)
    from TransactionBalance z
    left join TransactionType y on z.TransactionTypeId = y.TransactionTypeId
    where z.Year = ItemBalance.Year
    and y.StatusTransaction = '0' -- Masuk
    and z.ItemId = ItemBalance.ItemId
    and z.WarehouseId = ItemBalance.WarehouseId),
  TotalValueOut = 
    (select sum(z.Value1 + z.Value2 + z.Value3 + z.Value4 + z.Value5 + z.Value6 + 
    z.Value7 + z.Value8 + z.Value9 + z.Value10 + z.Value11 + z.Value12)
    from TransactionBalance z
    left join TransactionType y on z.TransactionTypeId = y.TransactionTypeId
    where z.Year = ItemBalance.Year
    and (y.StatusTransaction = '1' -- Keluar
    or y.StatusTransaction = '2') -- Keluar (Mutasi)
    and z.ItemId = ItemBalance.ItemId
    and z.WarehouseId = ItemBalance.WarehouseId)

5. Backup DB

6. Buat DB Baru

7. Restore DB