1.

drop type if exists CompvwStockOnHand cascade;

create type CompvwStockOnHand AS (
  WarehouseId varchar, WarehouseName varchar, 
  ItemId ItemId, ItemIdExternal varchar, ItemName varchar, ItemNameChinese varchar,
  Type varchar, UnitMeasure varchar, ItemCategoryId varchar, ItemCategoryName varchar, MinStockQty quantity,
  EndQty quantity, EndValue currency, PriceAVG currency, ReorderQty quantity,
  Qty1 quantityplus, UnitMeasure1 varchar, Price1 currencyplus,
  Qty2 quantityplus, UnitMeasure2 varchar, Price2 currencyplus,
  Qty3 quantityplus, UnitMeasure3 varchar, Price3 currencyplus,
  Qty4 quantityplus, UnitMeasure4 varchar, Price4 currencyplus, 
  Qty5 quantityplus, UnitMeasure5 varchar, Price5 currencyplus,
  QtyAwal quantity, QtyMasuk quantity, QtyKeluar quantity,
  ValueAwal currency, ValueMasuk currency, ValueKeluar currency);
  
create or replace function vwStockOnHand (varchar)
returns setof CompvwStockOnHand as $$
select
  a.WarehouseId, c.WarehouseName, a.ItemId, b.ItemIdExternal, b.ItemName, b.ItemNameChinese,
  b.Type, b.UnitMeasure, b.ItemCategoryId, e.ItemCategoryName, 
  cast((case when d.MinStockQty is null then 0 else d.MinStockQty end) as Quantity) as MinStockQty,
  a.EndQty, a.EndValue,
  cast((case when a.EndQty <> 0 then a.EndValue / a.EndQty else 0 end) as currency) as PriceAVG,
  b.ReorderQty,
  f.Qty1, f.UnitMeasure1, f.Price1,
  f.Qty2, f.UnitMeasure2, f.Price2,
  f.Qty3, f.UnitMeasure3, f.Price3,
  f.Qty4, f.UnitMeasure4, f.Price4,
  f.Qty5, f.UnitMeasure5, f.Price5,
  cast((case when g.Qty0 is null then 0 else g.Qty0 end) as Quantity) as QtyAwal,
  cast((case when g.TotalQtyIn is null then 0 else g.TotalQtyIn end) as Quantity) as QtyMasuk,
  cast((case when g.TotalQtyOut is null then 0 else g.TotalQtyOut end) as Quantity) as QtyKeluar,
  cast((case when g.Value0 is null then 0 else g.Value0 end) as currency) as ValueAwal,
  cast((case when g.TotalValueIn is null then 0 else g.TotalValueIn end) as currency) as ValueMasuk,
  cast((case when g.TotalValueOut is null then 0 else g.TotalValueOut end) as currency) as ValueKeluar
from StockOnHand a
left join Item b on a.ItemId = b.ItemId
left join Warehouse c on a.WarehouseId = c.WarehouseId
left join ItemMinStock d on (a.ItemId = d.ItemId and a.WarehouseId = d.WarehouseId)
left join ItemCategory e on b.ItemCategoryId = e.ItemCategoryId
left join Price f on b.ItemId = f.ItemId
left join ItemBalance g on (a.ItemId = g.ItemId and a.WarehouseId = g.WarehouseId
  and g.Year = cast(Date_part('year', GetDate()) as varchar))
where c.FlagInactive = '0'
and a.WarehouseId like $1
order by c.WarehouseName, b.ItemName
$$ language 'sql';

2.

drop type if exists CompvwStockOnHandTotal cascade;

create type CompvwStockOnHandTotal AS (
  WarehouseId varchar, WarehouseName varchar, 
  ItemId integer, ItemIdExternal varchar, ItemName varchar, ItemNameChinese varchar,
  Type varchar, UnitMeasure varchar, ItemCategoryId varchar, ItemCategoryName varchar, MinStockQty quantity,
  EndQty quantity, EndValue currency, PriceAVG currency, ReorderQty quantity,
  Qty1 quantityplus, UnitMeasure1 varchar, Price1 currencyplus,
  Qty2 quantityplus, UnitMeasure2 varchar, Price2 currencyplus,
  Qty3 quantityplus, UnitMeasure3 varchar, Price3 currencyplus,
  Qty4 quantityplus, UnitMeasure4 varchar, Price4 currencyplus, 
  Qty5 quantityplus, UnitMeasure5 varchar, Price5 currencyplus,
  QtyAwal quantity, QtyMasuk quantity, QtyKeluar quantity,
  ValueAwal currency, ValueMasuk currency, ValueKeluar currency);
  
create or replace function vwStockOnHandTotal ()
returns setof CompvwStockOnHandTotal as $$
select 
  cast('#' as varchar) as WarehouseId, cast('Total' as varchar) as WarehouseName, 
  a.ItemId, a.ItemIdExternal, a.ItemName, a.ItemNameChinese, 
  a.Type, a.UnitMeasure, a.ItemCategoryId, b.ItemCategoryName, 
  a.MinStockQty, 
  fnGetItemTotalEndQty(a.ItemId) as EndQty,
  fnGetItemTotalEndValue(a.ItemId) as EndValue,
  cast((case when fnGetItemTotalEndQty(a.ItemId) <> 0 then
    fnGetItemTotalEndValue(a.ItemId) / fnGetItemTotalEndQty(a.ItemId)
    else 0 end) as currency) as PriceAVG,
  a.ReorderQty,
  c.Qty1, c.UnitMeasure1, c.Price1,
  c.Qty2, c.UnitMeasure2, c.Price2,
  c.Qty3, c.UnitMeasure3, c.Price3,
  c.Qty4, c.UnitMeasure4, c.Price4,
  c.Qty5, c.UnitMeasure5, c.Price5,
  fnGetItemTotalEndQtyOpening(a.ItemId) as QtyAwal,
  fnGetItemTotalEndQtyIn(a.ItemId) as QtyMasuk,
  fnGetItemTotalEndQtyOut(a.ItemId) as QtyKeluar,
  fnGetItemTotalEndValueOpening(a.ItemId) as ValueAwal,
  fnGetItemTotalEndValueIn(a.ItemId) as ValueMasuk,
  fnGetItemTotalEndValueOut(a.ItemId) as ValueKeluar
from Item a
left join ItemCategory b on a.ItemCategoryId = b.ItemCategoryId
left join Price c on a.ItemId = c.ItemId
order by WarehouseName, a.ItemName
$$ language 'sql';

3.

alter table display
drop column ProgramId;

alter table setup
drop column ProgramId;

alter table positionaccess
drop column ProgramId;

alter table reportcounter
drop column ProgramId;

alter table display
drop column RepProgramId;

alter table report
drop column ProgramId;

drop table Program;

----------------------------------------------------------------------------

DBChange

vwStockOnHand
