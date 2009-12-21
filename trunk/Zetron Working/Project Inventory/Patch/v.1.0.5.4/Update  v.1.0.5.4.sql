alter table Report
add FlagDoCounter Flag;

drop table if exists ReportCategory cascade;

/*==============================================================*/
/* Table: ReportCategory                                        */
/*==============================================================*/
create table ReportCategory (
ReportCategoryId     SERIAL not null,
ReportCategoryName   varchar(20)          not null,
FlagHide             Flag                 null,
constraint PK_ReportCategory primary key (ReportCategoryId)
);

alter table Report
add ReportCategoryId integer;

alter table Report
   add constraint FK_Report_ReportCategory foreign key (ReportCategoryId)
      references ReportCategory (ReportCategoryId)
      on delete restrict on update restrict;

