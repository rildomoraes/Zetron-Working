alter table PositionAccess
drop constraint PK_POSITIONACCESS;

alter table PositionAccess
add constraint PK_POSITIONACCESS primary key nonclustered (ProgramId, MenuId, ActionName, PositionId);