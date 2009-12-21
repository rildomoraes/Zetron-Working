1. 

create table JobPosition (
CompanyId            varchar(10)          not null,
DepartmentId         varchar(5)           not null,
PositionId           varchar(5)           not null,
PositionName         varchar(40)          not null,
FlagFix              Flag                 null,
constraint PK_JobPosition primary key (CompanyId, DepartmentId, PositionId)
);

create unique index ID_JobPosition on JobPosition (
CompanyId,
DepartmentId,
PositionId
);

alter table JobPosition
   add constraint FK_JobPosition_Department foreign key (DepartmentId, CompanyId)
      references Department (DepartmentId, CompanyId)
      on delete restrict on update cascade;

2.

alter table CustomerPhone
add column JobPosition varchar(20);
alter table CustomerPhone
drop column "Position";

alter table VendorPhone
add column JobPosition varchar(20);
alter table VendorPhone
drop column "Position";

3.

insert into jobposition
select * from position

alter table positionaccess
drop constraint fk_positionaccess_position;

alter table employee
drop constraint fk_employee_position;

drop table position;


4. Backup and Restore Data

----------------------------------------------------------------------------

DBChange
