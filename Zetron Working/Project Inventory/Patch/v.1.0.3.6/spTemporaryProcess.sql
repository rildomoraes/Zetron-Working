create or replace function spTemporaryProcess()
returns void
as $$
declare
  ATableName varchar;
  AFieldName varchar;
  AKode varchar;
  AId varchar;
  APrefix varchar;
  APrefixLength integer;
  AMonth integer;
  AYear varchar;
  ASyntax varchar;
  ACounter integer;

  CTransaction cursor for 
select 
  'BankTransaction' as TableName, 2 as PrefixLength,
  substring(BankTransactionId, 1, 8) as Kode, max(BankTransactionId) as Id
from BankTransaction 
where extract(year from BankTransactionDate) = 2009 -- OPTIONAL UNTUK DATA RUWET !!!! ************************************
group by substring(BankTransactionId, 1, 8) 
union all
select 
  'CashTransaction' as TableName, 2 as PrefixLength,
  substring(CashTransactionId, 1, 8) as Kode, max(CashTransactionId) as Id
from CashTransaction 
where extract(year from CashTransactionDate) = 2009 -- OPTIONAL UNTUK DATA RUWET !!!! ************************************
group by substring(CashTransactionId, 1, 8) 
union all
select  
  'CoupleHd' as TableName, 2 as PrefixLength,
  substring(CoupleId, 1, 8) as Kode, max(CoupleId) as Id
from CoupleHd 
group by substring(CoupleId, 1, 8) 
union all
select  
  'OtherTransactionHd' as TableName, 2 as PrefixLength,
  substring(OtherTransactionId, 1, 8) as Kode, max(OtherTransactionId) as Id
from OtherTransactionHd 
--where extract(year from OtherTransactionDate) = 2009 -- OPTIONAL UNTUK DATA RUWET !!!! ************************************
group by substring(OtherTransactionId, 1, 8) 
union all
select  
  'PurchaseInvoiceHd' as TableName, 2 as PrefixLength,
  substring(PurchaseInvoiceId, 1, 8) as Kode, max(PurchaseInvoiceId) as Id
from PurchaseInvoiceHd 
where extract(year from PurchaseInvoiceDate) = 2009 -- OPTIONAL UNTUK DATA RUWET !!!! ************************************
group by substring(PurchaseInvoiceId, 1, 8) 
union all
select   
  'PurchaseOrderHd' as TableName, 2 as PrefixLength,
  substring(PurchaseOrderId, 1, 8) as Kode, max(PurchaseOrderId) as Id
from PurchaseOrderHd 
--where extract(year from PurchaseOrderDate) = 2009 -- OPTIONAL UNTUK DATA RUWET !!!! ************************************
group by substring(PurchaseOrderId, 1, 8) 
union all
select   
  'PurchasePayment' as TableName, 2 as PrefixLength,
  substring(PurchasePaymentId, 1, 8) as Kode, max(PurchasePaymentId) as Id
from PurchasePayment
where extract(year from PurchasePaymentDate) = 2009 -- OPTIONAL UNTUK DATA RUWET !!!! ************************************
group by substring(PurchasePaymentId, 1, 8) 
union all
select   
  'PurchaseReturnHd' as TableName, 2 as PrefixLength,
  substring(PurchaseReturnId, 1, 8) as Kode, max(PurchaseReturnId) as Id
from PurchaseReturnHd 
--where extract(year from PurchaseReturnDate) = 2008 -- OPTIONAL UNTUK DATA RUWET !!!! ************************************
group by substring(PurchaseReturnId, 1, 8) 
union all
select   
  'PurchaseReturnPaymentHd' as TableName, 3 as PrefixLength,
  substring(PurchaseReturnPaymentId, 1, 9) as Kode, max(PurchaseReturnPaymentId) as Id
from PurchaseReturnPaymentHd 
--where extract(year from PurchaseReturnDate) = 2008 -- OPTIONAL UNTUK DATA RUWET !!!! ************************************
group by substring(PurchaseReturnPaymentId, 1, 9) 
union all
select   
  'SalesInvoiceHd' as TableName, 2 as PrefixLength,
  substring(SalesInvoiceId, 1, 8) as Kode, max(SalesInvoiceId) as Id
from SalesInvoiceHd 
where extract(year from SalesInvoiceDate) = 2009 -- OPTIONAL UNTUK DATA RUWET !!!! ************************************
group by substring(SalesInvoiceId, 1, 8) 
union all
select   
  'SalesOrderHd' as TableName, 2 as PrefixLength,
  substring(SalesOrderId, 1, 8) as Kode, max(SalesOrderId) as Id
from SalesOrderHd 
group by substring(SalesOrderId, 1, 8) 
union all
select   
  'SalesPayment' as TableName, 2 as PrefixLength,
  substring(SalesPaymentId, 1, 8) as Kode, max(SalesPaymentId) as Id
from SalesPayment
where extract(year from SalesPaymentDate) = 2009 -- OPTIONAL UNTUK DATA RUWET !!!! ************************************
group by substring(SalesPaymentId, 1, 8) 
union all
select   
  'SalesReturnHd' as TableName, 2 as PrefixLength,
  substring(SalesReturnId, 1, 8) as Kode, max(SalesReturnId) as Id
from SalesReturnHd 
group by substring(SalesReturnId, 1, 8) 
union all
select   
  'SalesReturnPaymentHd' as TableName, 3 as PrefixLength,
  substring(SalesReturnPaymentId, 1, 9) as Kode, max(SalesReturnPaymentId) as Id
from SalesReturnPaymentHd 
group by substring(SalesReturnPaymentId, 1, 9) 
order by Kode;

begin
  open CTransaction;
  loop
    fetch CTransaction into ATableName, APrefixLength, AKode, AId;
    exit when (AKode is null);

    if trim(AKode) <> '' then
      APrefix := substring(AKode, 1, APrefixLength);
      AYear  := substring(AKode, APrefixLength + 1, 4); 
      AMonth := cast(substring(AKode, APrefixLength + 1 + 4, 2) as integer);
      ACounter := substring(AId, APrefixLength + 1 + 4 + 2 + 1, 7); 

      if AMonth <> 0 then
        if (select count(TableName) from TransactionRegistry
            where TableName = ATableName
            and Prefix = APrefix
            and Year = AYear) = 0 then
          ASyntax = 
           'insert into TransactionRegistry (TableName, Prefix, Year, Value' || AMonth || ')' ||
           'values (''' || ATableName || ''',''' || APrefix || ''',''' || AYear || ''',' || ACounter || ')';
        else
          ASyntax = 
           'update TransactionRegistry ' || 
           'set Value' || AMonth || ' = ' || ACounter || ' ' ||
           'where TableName = ''' || ATableName || '''' ||
           'and Prefix = ''' || APrefix || '''' ||
           'and Year = ''' || AYear || '''';
        end if;   
      end if;
      if not (ASyntax is null) then
        execute ASyntax;
      end if;            
    end if;    
  end loop;  
  close CTransaction;
end;
$$ language 'plpgsql';


--------------------------------------------------
/*

select spTemporaryProcess();

select * from TransactionRegistry;

--delete from TransactionRegistry;

drop function spTemporaryProcess();

*/

