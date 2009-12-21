alter table item
add StatusProduction Status;

update Item
set StatusProduction = '0' -- bahan Baku
where ItemTypeId = '2';

update Item
set StatusProduction = '1' -- Bahan Penolong
where ItemTypeId = '1';

update Item
set StatusProduction = '4' -- Barang Setengah Jadi
where ItemTypeId = '3';

update Item
set StatusProduction = '4' -- Barang Jadi
where ItemTypeId = '4';

alter table BillMaterialHd
add QtyBOM QuantityBigPlus;

update BillMaterialHd
set QtyBOM = 1;