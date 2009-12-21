/*---------------------------------------------------------------------------
PROJECT      : Zetron Point Of Sales
DESCRIPTION  : CREATE DEFAULT VALUE, MUST BE RUN FOR FIRST TIME ONLY !!!
---------------------------------------------------------------------------*/

delete from City;
delete from Province;
delete from Country;
delete from Setup;
delete from Warehouse;
delete from Report;
delete from PaymentType;
delete from CashBankTransactionType;
delete from AccTransactionType;
delete from TransactionType;
delete from Employee;
delete from JobPosition;
delete from Department;
delete from Company;
delete from LogType;
delete from CurrencyMaster;

-- Insert fixed Company
insert into Company (CompanyId, CompanyName, Address, Telephone, Website, FlagFix) 
values ('COMPANY', 'PATRA', '', '', 'http://www.YourCompany.Com', 1);

-- Insert fixed Department
insert into Department (CompanyId, DepartmentId, DepartmentName, FlagFix) 
values ('COMPANY', 'IT', 'Information Technology', 1);

-- Insert fixed JobPosition
insert into JobPosition (DepartmentId, PositionId, PositionName, FlagFix) 
values ('IT', 'MNG', 'Manager IT', 1);
insert into JobPosition (DepartmentId, PositionId, PositionName, FlagFix) 
values ('IT', 'SPV', 'Supervisor', 1);

-- Insert fixed Employee
insert into Employee (PositionId, EmployeeId, EmployeeName, UserName, FlagFix) 
values ('MNG', 'USER', 'Superuser', 'SUPERUSER', 1);

-- Insert fixed transaction type in TransactionType
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY001', 'Pembelian', '0', '1');
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY002', 'Penjualan', '1', '1');
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY003', 'Mutasi Keluar', '2', '0');
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY004', 'Mutasi Masuk (Auto)', '0', '1');
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY005', 'Auto Adjust Item AVG (+)', '0', '1');
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY006', 'Auto Adjust Item AVG (-)', '1', '1');
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY007', 'Retur Pembelian', '1', '1');
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY008', 'Retur penjualan', '0', '1');
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY009', 'Hasil Couple', '0', '1');
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY010', 'Bahan Baku Couple', '1', '1');
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY011', 'Proses UnCouple (-)', '1', '1');
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY012', 'Proses UnCouple (+)', '0', '1');
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY013', 'Opname Plus', '0', '0');
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY014', 'Opname Minus', '1', '0');
insert into TransactionType (TransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY015', 'Terima Konsinyasi', '0', '0');

-- Insert fixed Acconting transaction type in AccTransactionType
insert into AccTransactionType (AccTransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY001', 'Hutang (Bertambah)', '0', '1');
insert into AccTransactionType (AccTransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY002', 'Hutang (Berkurang)', '1', '1');
insert into AccTransactionType (AccTransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY003', 'Piutang (Bertambah)', '0', '1');
insert into AccTransactionType (AccTransactionTypeId, TransactionTypeName, StatusTransaction, FlagFix)
values ('TY004', 'Piutang (Berkurang)', '1', '1');

-- Insert Cash Bank transaction type
insert into CashBankTransactionType (CashBankTransactionTypeId, CashBankTransactionTypeName, FlagBank, FlagOut, FlagFix, FlagUsable)
values ('C0001','Kas Masuk','0','0','1','0');
insert into CashBankTransactionType (CashBankTransactionTypeId, CashBankTransactionTypeName, FlagBank, FlagOut, FlagFix, FlagUsable)
values ('C0002','Kas Keluar','0','1','1','0');
insert into CashBankTransactionType (CashBankTransactionTypeId, CashBankTransactionTypeName, FlagBank, FlagOut, FlagFix, FlagUsable)
values ('C0003','Terima Deposit Customer (Tunai)','0','0','1','0');
insert into CashBankTransactionType (CashBankTransactionTypeId, CashBankTransactionTypeName, FlagBank, FlagOut, FlagFix, FlagUsable)
values ('C0004','Kembalikan Deposit Customer (Tunai)','0','1','1','0');
insert into CashBankTransactionType (CashBankTransactionTypeId, CashBankTransactionTypeName, FlagBank, FlagOut, FlagFix, FlagUsable)
values ('C0005','Deposit ke Vendor (Tunai)','0','1','1','0');
insert into CashBankTransactionType (CashBankTransactionTypeId, CashBankTransactionTypeName, FlagBank, FlagOut, FlagFix, FlagUsable)
values ('C0006','Ambil Deposit dari Vendor (Tunai)','0','0','1','0');

insert into CashBankTransactionType (CashBankTransactionTypeId, CashBankTransactionTypeName, FlagBank, FlagOut, FlagFix, FlagUsable)
values ('B0001','Bank Masuk','1','0','1','0');
insert into CashBankTransactionType (CashBankTransactionTypeId, CashBankTransactionTypeName, FlagBank, FlagOut, FlagFix, FlagUsable)
values ('B0002','Bank Keluar','1','1','1','0');
insert into CashBankTransactionType (CashBankTransactionTypeId, CashBankTransactionTypeName, FlagBank, FlagOut, FlagFix, FlagUsable)
values ('B0003','Terima Deposit Customer (Bank)','1','0','1','0');
insert into CashBankTransactionType (CashBankTransactionTypeId, CashBankTransactionTypeName, FlagBank, FlagOut, FlagFix, FlagUsable)
values ('B0004','Kembalikan Deposit Customer (Bank)','1','1','1','0');
insert into CashBankTransactionType (CashBankTransactionTypeId, CashBankTransactionTypeName, FlagBank, FlagOut, FlagFix, FlagUsable)
values ('B0005','Deposit ke Vendor (Bank)','1','1','1','0');
insert into CashBankTransactionType (CashBankTransactionTypeId, CashBankTransactionTypeName, FlagBank, FlagOut, FlagFix, FlagUsable)
values ('B0006','Ambil Deposit dari Vendor (Bank)','1','0','1','0');

insert into CashBankTransactionType (CashBankTransactionTypeId, CashBankTransactionTypeName, FlagBank, FlagOut, FlagFix, FlagUsable)
values ('B0007','Giro Masuk','1','0','1','1');
insert into CashBankTransactionType (CashBankTransactionTypeId, CashBankTransactionTypeName, FlagBank, FlagOut, FlagFix, FlagUsable)
values ('B0008','Giro Keluar','1','1','1','1');

-- Insert fixed payment type in PaymentType
insert into PaymentType (PaymentTypeId, PaymentTypeName, CashBankTransactionTypeId, FlagPurchasePayment, FlagSalesPayment, FlagSalesBarcodePayment, FlagPurchaseReturnPayment, FlagSalesReturnPayment, FlagFix)
values ('PT001', 'Bayar Tunai', 'C0002', '1', '0', '0', '0', '1', '1');
insert into PaymentType (PaymentTypeId, PaymentTypeName, CashBankTransactionTypeId, FlagPurchasePayment, FlagSalesPayment, FlagSalesBarcodePayment, FlagPurchaseReturnPayment, FlagSalesReturnPayment, FlagFix)
values ('PT002', 'Terima Tunai', 'C0001', '0', '1', '1', '1', '0', '1');
insert into PaymentType (PaymentTypeId, PaymentTypeName, CashBankTransactionTypeId, FlagPurchasePayment, FlagSalesPayment, FlagSalesBarcodePayment, FlagPurchaseReturnPayment, FlagSalesReturnPayment, FlagFix)
values ('PT003', 'Potong Deposit', 'C0002', '1', '0', '0', '0', '0', '1');
insert into PaymentType (PaymentTypeId, PaymentTypeName, CashBankTransactionTypeId, FlagPurchasePayment, FlagSalesPayment, FlagSalesBarcodePayment, FlagPurchaseReturnPayment, FlagSalesReturnPayment, FlagFix)
values ('PT004', 'Potong Deposit', 'C0001', '0', '1', '0', '0', '0', '1');
insert into PaymentType (PaymentTypeId, PaymentTypeName, CashBankTransactionTypeId, FlagPurchasePayment, FlagSalesPayment, FlagSalesBarcodePayment, FlagPurchaseReturnPayment, FlagSalesReturnPayment, FlagFix)
values ('PT005', 'Tambah Deposit pada Vendor', 'C0001', '0', '0', '0', '1', '0', '1');
insert into PaymentType (PaymentTypeId, PaymentTypeName, CashBankTransactionTypeId, FlagPurchasePayment, FlagSalesPayment, FlagSalesBarcodePayment, FlagPurchaseReturnPayment, FlagSalesReturnPayment, FlagFix)
values ('PT006', 'Tambah Deposit Customer', 'C0002', '0', '0', '0', '0', '1', '1');

-- Insert Fixed LogType
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

-- Insert Warehouse
insert into Warehouse (WarehouseId, WarehouseName)
values ('1', 'Gudang');

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

-- Insert Purchase Category
insert into PurchaseCategory (PurchaseCategoryId, PurchaseCategoryName, Prefix, FlagFix)
Values ('NR', 'Normal', 'PI', '1');

-- Insert Sales Category
insert into SalesCategory (SalesCategoryId, SalesCategoryName, Prefix, FlagFix, FlagAutomatic)
Values ('NR', 'Normal', 'SI', '1', '0');
insert into SalesCategory (SalesCategoryId, SalesCategoryName, Prefix, FlagFix, FlagAutomatic)
Values ('CR', 'Cash Register', 'CR', '1', '1');
insert into SalesCategory (SalesCategoryId, SalesCategoryName, Prefix, FlagFix, FlagAutomatic)
Values ('KN', 'Konosemen', 'KN', '1', '1');

-- Insert CurrencyMaster
insert into CurrencyMaster (CurrencyId, CurrencyName, FlagFix)
values('IDR', 'Indonesia Rupiah', '1');

---------------------------------------------------------------------------------------------------------
--Set with valid application
--zaInventoryStandard, zaInventoryProfesional, zaInventoryEnterprise, zaInventoryCashier, 
--zaInventoryCustom01, zaTimeAttandance, zaPayroll, zaEkspedisi, 
--zaManufactureTimber, zaManufacturePackaging
-- Insert Fixed Report
insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDPO','Order Pembelian','1');
insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDPI','Nota Pembelian','1');
insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDPP','Bukti Pembayaran','1');
insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDPRT','Bukti Retur Pembelian','1');
insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDPRP','Bukti Pembayaran Retur','1');
insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDSO','Order Penjualan','1');
insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDSI','Nota Penjualan','1');
insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDSP','Bukti Pembayaran','1');
insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDSRT','Bukti Retur Penjualan','1');
insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDSRP','Bukti Pembayaran Retur','1');

insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDOT','Bukti Transaksi','1');
insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDCOP','Bukti Couple','1');

insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDCT','Bukti Transaksi Kas','1');
insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDBT','Bukti Transaksi Bank','1');

insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDBC','Cetak Barcode','1');
insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDPC','Cetak Harga','1');
insert into Report (ProgramId, ReportId, ReportName, FlagHide)
values('zaInventoryEnterprise', 'RPSDSB','Nota Barcode','1');