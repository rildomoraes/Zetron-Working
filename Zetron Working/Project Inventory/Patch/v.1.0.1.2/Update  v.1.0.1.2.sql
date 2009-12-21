1.Jalankan 
create table LogType (
LogTypeId varchar(15) not null default '0',
LogTypeName varchar(40) null,
constraint PK_LogType primary key (LogTypeId));

create unique index ID_LogType on LogType (LogTypeId);

insert into LogType (LogTypeId, LogTypeName)
values('001', 'Barang Bonus Penjualan');
insert into LogType (LogTypeId, LogTypeName)
values('002', 'Barang Bonus Pembelian');
insert into LogType (LogTypeId, LogTypeName)
values('003', 'Barang Penjualan Dihapus');
insert into LogType (LogTypeId, LogTypeName)
values('004', 'Barang Pembelian Dihapus');
insert into LogType (LogTypeId, LogTypeName)
values('005', 'Penjualan Barang Opname');
insert into LogType (LogTypeId, LogTypeName)
values('006', 'Pembelian Barang Opname');
insert into LogType (LogTypeId, LogTypeName)
values('007', 'Qty Barang Minus (Penjualan)');
insert into LogType (LogTypeId, LogTypeName)
values('008', 'Harga Lebih Mahal (Pembelian)');

2.Jalankan 
update SalesInvoiceDt
set QtyDisplay = Qty
where QtyDisplay = 0;