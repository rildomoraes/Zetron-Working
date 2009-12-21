1. New Fields ProgramId

drop table Program cascade;

alter table Report 
add column ProgramId varchar(10);

alter table Display
add column ProgramId varchar(10);

alter table PositionAccess
add column ProgramId varchar(10);

alter table LogProgram
add column ProgramId varchar(10);

alter table MenuOptions
add column ProgramId varchar(10);

update Report 
set ProgramId = 'ZEINV_PRO'; 

update Display
set ProgramId = 'ZEINV_PRO';

update PositionAccess
set ProgramId = 'ZEINV_PRO';

update LogProgram
set ProgramId = 'ZEINV_PRO';

update MenuOptions
set ProgramId = 'ZEINV_PRO';

2.

alter table JobPosition
drop column CompanyId cascade;

alter table JobPosition
add constraint pk_jobposition primary key (PositionId);
--update jobposition -- ubah data yang kembar
--set positionid = 'STACC'
--where positionid = 'ST'
--and departmentid = 'ACC'

alter table department
drop constraint pk_department;

alter table department
add constraint pk_department primary key (DepartmentId);
--update department -- ubah data yang kembar
--set departmentid = 'ACC'
--where departmentid = 'ACC'
--and companyid = 'XXX'

alter table Employee
drop column Departmentid,
drop column Companyid;

alter table PositionAccess
drop column DepartmentId,
drop column CompanyId;

3. 

lakukan Option\Security load dan simpan tiap job position, kemudian execute:

alter table positionaccess
add constraint pk_positionaccess primary key (ProgramId, PositionId, MenuId, ActionName);

4.

alter table city
drop column countryid cascade;

alter table city
add constraint pk_city primary key (CityId);

alter table province
drop constraint pk_province;

alter table province
add constraint pk_province primary key (ProvinceId);

alter table warehouse
drop column CountryId,
drop column ProvinceId;

alter table outlet
drop column CountryId,
drop column ProvinceId;

alter table shipping
drop column CountryId,
drop column ProvinceId;

alter table customer
drop column CountryId,
drop column ProvinceId;

alter table vendor
drop column CountryId,
drop column ProvinceId;

alter table Setup
rename column Value to SetupValue;

5. Backup Restore Database