/*==============================================================*/
/* DBMS name:      PostgreSQL 8.0 (Zetron)                      */
/* Created on:     20/06/2008 8:43:45                           */
/*==============================================================*/


/*==============================================================*/
/* Domain: ItemId                                               */
/*==============================================================*/
create domain ItemId as INT4;

/*==============================================================*/
/* Table: ItemImage                                             */
/*==============================================================*/
create table ItemImage (
ItemId               ItemId               not null,
No                   integer              not null,
ItemImage            bytea                null,
constraint PK_ItemImage primary key (ItemId, No)
);

/*==============================================================*/
/* Index: ID_ItemImage                                          */
/*==============================================================*/
create unique index ID_ItemImage on ItemImage (
ItemId,
No
);

