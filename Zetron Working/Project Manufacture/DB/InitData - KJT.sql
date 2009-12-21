/*---------------------------------------------------------------------------
PROJECT      : Zetron ERP
DESCRIPTION  : CREATE DEFAULT VALUE, MUST BE RUN FOR FIRST TIME ONLY !!!
---------------------------------------------------------------------------*/

-- Package General
delete from City;
delete from Province;
delete from Country;
delete from Employee;
delete from JobPosition;
delete from Department;
delete from Company;
delete from LogType;
delete from CurrencyMaster;
-- Package ERP
delete from Warehouse;
delete from Report;

-- Insert fixed Company
insert into Company (CompanyId, CompanyName, Address, Telephone, Website, FlagFix) 
values ('COMPANY', 'Rename To Your Company Name', '', '', 'http://www.YourCompany.Com', 1);

-- Insert fixed Department
insert into Department (CompanyId, DepartmentId, DepartmentName, FlagFix) 
values ('COMPANY', 'IT', 'Information Technology', 1);

-- Insert fixed JobPosition
insert into JobPosition (DepartmentId, PositionId, PositionName, FlagFix) 
values ('IT', 'OT', 'Other', 1);

-- Insert fixed Employee
insert into Employee (PositionId, EmployeeId, EmployeeName, UserName, FlagFix) 
values ('OT', 'SUPERUSER', 'Superuser', 'SUPERUSER', 1);

-- Insert Country
insert into Country (CountryId, CountryName, CountryExt)
values ('ID','Indonesia','62');

-- Insert Province
insert into Province (CountryId, ProvinceId, ProvinceName)
values ('ID','JABAR','Jawa Barat');
insert into Province (CountryId, ProvinceId, ProvinceName)
values ('ID','JATENG','Jawa Tengah');
insert into Province (CountryId, ProvinceId, ProvinceName)
values ('ID','JATIM','Jawa Timur');

-- Insert City
insert into City (ProvinceId, CityId, CityName, CityExt)
values ('JATIM','MLG','Malang','');
insert into City (ProvinceId, CityId, CityName, CityExt)
values ('JATIM','SBY','Surabaya','031');

-- Insert CurrencyMaster
insert into CurrencyMaster (CurrencyId, CurrencyName)
values('IDR', 'Indonesia Rupiah');

-- Insert Fixed LogType
--insert into LogType (LogTypeId, LogTypeName)
--values('001', 'Barang Bonus Penjualan');

-- Insert Warehouse
insert into Warehouse (WarehouseCode, WarehouseName)
values ('GD', 'Gudang');

-- Insert Report
insert into Report (ProgramId, ReportId, ReportName)
values ('ZEMAN_TIM', 'PO_ITEM_01', 'Order Pembelian Bahan Penolong');
insert into Report (ProgramId, ReportId, ReportName)
values ('ZEMAN_TIM', 'PO_BALOK_01', 'Order Pembelian Sawn Timber / square');
insert into Report (ProgramId, ReportId, ReportName)
values ('ZEMAN_TIM', 'PO_LOG_01', 'Order Pembelian Log');

-- Insert ItemCategory
insert into ItemCategory (ItemCategoryCode, ItemCategoryName, FlagFix)
values ('SOLID', 'SOLID', '1');
insert into ItemCategory (ItemCategoryCode, ItemCategoryName, FlagFix)
values ('PANEL', 'PANEL', '1');
insert into ItemCategory (ItemCategoryCode, ItemCategoryName, FlagFix)
values ('VENEER', 'VENEER', '1');
insert into ItemCategory (ItemCategoryCode, ItemCategoryName, FlagFix)
values ('ASSY', 'ASSY', '1');

-- Insert fixed transaction type in TransactionType-- Insert fixed transaction type in TransactionType
insert into TransactionType (TransactionTypeId, TransactionTypeCode, TransactionTypeName, StatusTransaction, StatusPairTransaction, FlagFix)
values (1, 'TY001', 'Pembelian', '0', '0', '1');
insert into TransactionType (TransactionTypeId, TransactionTypeCode, TransactionTypeName, StatusTransaction, StatusPairTransaction, FlagFix)
values (2, 'TY002', 'Penjualan', '1', '0', '1');
insert into TransactionType (TransactionTypeId, TransactionTypeCode, TransactionTypeName, StatusTransaction, StatusPairTransaction, FlagFix)
values (3, 'TY006', 'Mutasi Keluar', '1', '1', '1');
insert into TransactionType (TransactionTypeId, TransactionTypeCode, TransactionTypeName, StatusTransaction, StatusPairTransaction, FlagFix)
values (4, 'TY007', 'Mutasi Masuk', '0', '1', '1');

insert into TransactionType (TransactionTypeId, TransactionTypeCode, TransactionTypeName, StatusTransaction, StatusPairTransaction, FlagFix)
values (10, 'TY004', 'Opname Plus', '0', '0', '0');
insert into TransactionType (TransactionTypeId, TransactionTypeCode, TransactionTypeName, StatusTransaction, StatusPairTransaction, FlagFix)
values (11, 'TY005', 'Opname Minus', '1', '0', '0');