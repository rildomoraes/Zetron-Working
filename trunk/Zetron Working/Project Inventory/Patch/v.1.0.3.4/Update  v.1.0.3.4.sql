1.

alter table Price
add column MinQty1 quantityplus,
add column MinQty2 quantityplus,
add column MinQty3 quantityplus,
add column MinQty4 quantityplus,
add column MinQty5 quantityplus;

2.

alter table Employee
add column PrefixCode varchar(5);