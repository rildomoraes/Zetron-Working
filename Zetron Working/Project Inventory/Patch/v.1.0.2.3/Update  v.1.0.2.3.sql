1. Update Struktur Database (backup data -> create new schema -> restore data only) atau CompareDB

2.

update ItemBalance
set TotalQtyOut = 0
where TotalQtyOut is Null;

update ItemBalance
set TotalQtyIn = 0
where TotalQtyIn is Null;

update ItemBalance
set TotalValueOut = 0
where TotalValueOut is Null;

update ItemBalance
set TotalValueIn = 0
where TotalValueIn is Null;