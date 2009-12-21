alter table Display
alter programid type varchar(30);

alter table LogProgram
alter programid type varchar(30);

alter table MenuOptions
alter programid type varchar(30);

alter table PositionAccess
alter programid type varchar(30);

alter table Report
alter programid type varchar(30);

alter table ReportCounter
alter programid type varchar(30);

alter table Setup
alter programid type varchar(30);

---- Set with valid application
--zaInventoryStandard, zaInventoryProfesional, zaInventoryEnterprise, zaInventoryCashier, 
--zaInventoryCustom01, zaTimeAttandance, zaPayroll, zaEkspedisi, 
--zaManufactureTimber, zaManufacturePackaging
    
update Display
set programid = 'zaInventoryEnterprise';

update LogProgram
set programid = 'zaInventoryEnterprise';

update MenuOptions
set programid = 'zaInventoryEnterprise';

update PositionAccess
set programid = 'zaInventoryEnterprise';

update Report
set programid = 'zaInventoryEnterprise';

update ReportCounter
set programid = 'zaInventoryEnterprise';

update Setup
set programid = 'zaInventoryEnterprise';

alter table RegisterSalesDt
drop FlagDelete;

-- Set Security Again !!!!
