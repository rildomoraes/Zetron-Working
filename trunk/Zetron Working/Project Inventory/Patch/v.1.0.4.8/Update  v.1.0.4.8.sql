1.

CREATE OR REPLACE FUNCTION fnGetTransactionId (ATableName varchar, APrefix varchar, ALength integer, 
  ATransactionDate DateWithoutTime, AUseTotalRun integer)
  RETURNS varchar AS
$$
declare
  Counter integer;
  PrefixId varchar;
  PrefixLength integer;
  AMonth integer;
  AYear varchar;
  ASyntax varchar;
  
  NewId varchar;
begin
  if AUseTotalRun = 0 then
    -- Counter per tahun
    PrefixId = upper(APrefix) || to_char(ATransactionDate, 'YYYYMM') || '-';
  else  
    -- Counter per bulan
    PrefixId = upper(APrefix) || '-';
  end if;  
  PrefixLength = char_length(PrefixId);
  AMonth = Extract(month from ATransactionDate);
  AYear = Extract(year from ATransactionDate);
  
  if (select count(TableName) from TransactionRegistry
     where TableName = ATableName
     and Prefix = APrefix
     and Year = AYear) = 0 then  
    -- New Record
    Counter = 1; 
  else
    -- Already Record 
    if AUseTotalRun = 0 then
      ASyntax =      
        'select Value' || AMonth || ' from TransactionRegistry ' ||
        'where TableName = ''' || ATableName || ''' ' ||
        'and Prefix = ''' || APrefix || ''' ' ||
        'and Year = ''' || AYear || '''';
    else
      ASyntax =      
        'select ValueRun from TransactionRegistry ' ||
        'where TableName = ''' || ATableName || ''' ' ||
        'and Prefix = ''' || APrefix || ''' ' ||
        'and Year = ''' || AYear || '''';
    end if;
    execute ASyntax 
    into Counter;
  end if;
  
  -- Generate Id
  NewId := PrefixId || lpad(cast(Counter as varchar), ALength - PrefixLength , '0');

  Return NewId;
end;
$$ LANGUAGE 'plpgsql';

2.

Update SalesInvoiceHd
set Margin = 0
where Margin is null;

Update SalesInvoiceHd
set TotalMargin = 0
where TotalMargin is null;

3.

alter table Report
drop FlagFix;