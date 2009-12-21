1.

create or replace function fnOtherTransactionDt_After ()
  returns trigger AS
$$
declare
  AOtherTransactionDate DateWithoutTime;
  AWarehouseSource varchar;
  AWarehouseDest varchar;
  ATransactionTypeId varchar;  
  AStatusApprove flag;
  
  AStatusMethod integer;
  AStatusTransaction integer;  
  ATransactionTypeName varchar;  
  AQty quantity;
  ASignQty integer;
  
  AUsingExpiredDate varchar;
begin
  -- Cek setting global
  select Value from Setup    
  where SetupId = 'OPT11'
  into AUsingExpiredDate;
    
  if (TG_OP = 'DELETE') or (TG_OP = 'UPDATE') then
    select OtherTransactionDate, TransactionTypeId, WarehouseSource, StatusApprove
    from OtherTransactionHd 
    where OtherTransactionId = Old.OtherTransactionId 
    into AOtherTransactionDate, ATransactionTypeId, AWarehouseSource, AStatusApprove;

    AStatusMethod = (select StatusCostMethod from Item where ItemId = Old.ItemId);
    AStatusTransaction = (select StatusTransaction from TransactionType where TransactionTypeId = ATransactionTypeId);

    -- Void checking
    if AStatusApprove = '2' then       
      RAISE EXCEPTION '^Perubahan tidak dapat dilakukan, karena transaksi telah di void !^';
    end if;

    if AStatusTransaction = '2' then -- Transfer
      if (TG_OP = 'UPDATE') then
        RAISE EXCEPTION '^ Transaksi mutasi tidak dapat di ubah !^';
      end if;  
    end if;      

    -- 1. Update Transaction
    -- pengecekan status LIFO, FIFO & AVG    
    if AStatusMethod <> '2' then 
      -- FIFO / LIFO
      delete from Transaction 
      where ReferenceId = Old.OtherTransactionId 
      and No = Old.No
      and ItemId = Old.ItemId;
    else
      -- AVG     
      if AStatusTransaction = '0' then -- In
        ATransactionTypeId := 'TY006';
        insert into Transaction 
          (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
        values
          (Old.OtherTransactionId, AOtherTransactionDate, ATransactionTypeId, Old.ItemId, AWarehouseSource,
          Old.Qty, Old.Price, 'Adjustment Transaksi (-) ' || Old.OtherTransactionId, Old.No);
      end if;

      if AStatusTransaction = '1' then -- Out
        ATransactionTypeId := 'TY005';
        insert into Transaction 
          (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, Qty, Price, Memo, No)
        values
          (Old.OtherTransactionId, AOtherTransactionDate, ATransactionTypeId, Old.ItemId, AWarehouseSource,
          Old.Qty, Old.Price, 'Adjustment Transaksi (+) ' || Old.OtherTransactionId, Old.No);
      end if;
    end if;
    
    -- 2. Update Stock Expired 
    if AUsingExpiredDate = '1' then
      if AStatusTransaction = '0' then -- In
        ASignQty = -1;
      end if;
      if AStatusTransaction = '1' then -- Out
        ASignQty = 1;
      end if;     
      if (select count(ItemId)
          from StockExpired
          where ItemId = Old.ItemId
          and WarehouseId = AWarehouseSource
          and ExpiredDate = Old.ExpiredDate) = 0 then
        insert into StockExpired (ItemId, WarehouseId, ExpiredDate, Qty)
        values (Old.ItemId, AWarehouseSource, Old.ExpiredDate, Old.Qty * ASignQty);
      else
        update StockExpired
        set Qty = Qty + (Old.Qty * ASignQty)
        where ItemId = Old.ItemId
        and WarehouseId = AWarehouseSource
        and ExpiredDate = Old.ExpiredDate;
      end if;  
    end if;
        
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    -- Initial    
    select OtherTransactionDate, TransactionTypeId, WarehouseSource, WarehouseDest, StatusApprove
    from OtherTransactionHd 
    where OtherTransactionId = New.OtherTransactionId 
    into AOtherTransactionDate, ATransactionTypeId, AWarehouseSource, AWarehouseDest, AStatusApprove;    
    
    ATransactionTypeName = (select TransactionTypeName from TransactionType where TransactionTypeId = ATransactionTypeId);
    AStatusTransaction = (select StatusTransaction from TransactionType where TransactionTypeId = ATransactionTypeId);
    
    -- Void checking
    if AStatusApprove = '2' then       
      RAISE EXCEPTION '^Perubahan tidak dapat dilakukan, karena transaksi telah di void !^';
    end if;

    if AStatusTransaction = '2' then -- Transfer
      if (TG_OP = 'UPDATE') then
        RAISE EXCEPTION '^ Transaksi mutasi tidak dapat di ubah !^';
      end if;
    end if;      

    -- 1. Insert transaction
    insert into transaction 
      (ReferenceId, TransactionDate, TransactionTypeId, ItemId, WarehouseSource, WarehouseDest, Qty, Price, Memo, No)
    values
      (New.OtherTransactionId, AOtherTransactionDate, ATransactionTypeId, New.ItemId, AWarehouseSource, AWarehouseDest,
      New.Qty, New.Price, ATransactionTypeName || ' ' || New.OtherTransactionId, New.No);    
      
    -- 2. Update Stock Expired 
    if AUsingExpiredDate = '1' then    
      if AStatusTransaction = '0' then -- In
        ASignQty = 1;
      end if;
      if AStatusTransaction = '1' then -- Out
        ASignQty = -1;
      end if;       
      if (select count(ItemId)
         from StockExpired
         where ItemId = New.ItemId
         and WarehouseId = AWarehouseSource
         and ExpiredDate = New.ExpiredDate) = 0 then
        insert into StockExpired (ItemId, WarehouseId, ExpiredDate, Qty)
        values (New.ItemId, AWarehouseSource, New.ExpiredDate, New.Qty * ASignQty);
      else
        update StockExpired
        set Qty = Qty + (New.Qty * ASignQty)
        where ItemId = New.ItemId
        and WarehouseId = AWarehouseSource
        and ExpiredDate = New.ExpiredDate;
      end if;  
    end if;      
  end if;
  
  return null;
end;
$$ language 'plpgsql';