1.

alter table Price 
add Price6               CurrencyPlus         null,
add Price7               CurrencyPlus         null,
add Qty6                 QuantityPlus         null,
add Qty7                 QuantityPlus         null,
add MinQty6              QuantityPlus         null,
add MinQty7              QuantityPlus         null,
add UnitMeasure6         varchar(20)          null,
add UnitMeasure7         varchar(20)          null,
add NewPrice6            CurrencyPlus         null,
add NewPrice7            CurrencyPlus         null,
add FlagUpDown6          Flag                 null,
add FlagUpDown7          Flag                 null;

2.

drop table if exists FingerPrint cascade;

/*==============================================================*/
/* Table: FingerPrint                                           */
/*==============================================================*/
create table FingerPrint (
EmployeeId           varchar(10)          not null,
FingerMask           INT2                 not null,
FingerData           bytea                null
);

alter table FingerPrint
   add constraint PK_FingerPrint primary key (EmployeeId, FingerMask);

alter table FingerPrint
   add constraint FK_FingerPrint_Employee foreign key (EmployeeId)
      references Employee (EmployeeId)
      on delete restrict on update restrict;
