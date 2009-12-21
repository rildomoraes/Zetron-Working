1.

alter table PurchaseOrderHd
add PPH22 disc, add PPH22Amount CurrencyPlus;
alter table PurchaseInvoiceHd
add PPH22 disc, add PPH22Amount CurrencyPlus;
alter table PurchaseReturnHd
add PPH22 disc, add PPH22Amount CurrencyPlus;

alter table SalesOrderHd
add PPH22 disc, add PPH22Amount CurrencyPlus;
alter table SalesInvoiceHd
add PPH22 disc, add PPH22Amount CurrencyPlus;
alter table SalesReturnHd
add PPH22 disc, add PPH22Amount CurrencyPlus;

2. 

create or replace function trPurchaseInvoiceHd_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;

  ADiff currency;
  ANewDiscAmount currency;  
  ANewDiscAmount2 currency;  
  ANewTaxAmount currency;  
  ANewPPH22Amount currency;  
  ANewTotalAmount currency;
  ANewOutstandingTotalAmount currency;
  AYear varchar;
  AMonth integer;    
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.PurchaseInvoiceDate) <> extract(year from Old.PurchaseInvoiceDate)) or
        (extract(month from New.PurchaseInvoiceDate) <> extract(month from Old.PurchaseInvoiceDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) or (Old.OutstandingTotalAmount <> New.OutstandingTotalAmount) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.PurchaseInvoiceDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
  
  if (TG_OP = 'UPDATE') then
    if (Old.VendorId <> New.VendorId) and (Old.OutStandingTotalAmount <> Old.TotalAmount) then
      RAISE EXCEPTION '^Vendor tidak dapat dirubah, karena telah dilakukan pembayaran !^';
    end if;  
  
    -- Amount, Disc, Disc2, Tax, Vaoucher, Vendor Changed
    if (Old.Amount <> New.Amount) or (Old.Disc <> New.Disc) or (Old.Disc2 <> New.Disc2) or (Old.Tax <> New.Tax) or 
      (Old.VoucherAmount <> New.VoucherAmount) or (Old.PPH22Amount <> New.PPH22Amount) or (Old.Meterai <> New.Meterai) or
      (Old.VendorId <> New.VendorId) then
      -- cari selisih tagihan dengan pembayaran
      ADiff = Old.TotalAmount - Old.OutstandingTotalAmount;
 
      -- Hitung nilai baru
      ANewDiscAmount = New.Amount * New.Disc / 100;
      ANewDiscAmount2 = (New.Amount - ANewDiscAmount) * New.Disc2 / 100;
      ANewTaxAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) * New.Tax / 100;
      ANewPPH22Amount = ((New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount) * New.PPH22 / 100;
      ANewTotalAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount + ANewPPH22Amount;
      ANewTotalAmount = ANewTotalAmount + New.Meterai;
      
      ANewOutstandingTotalAmount = ANewTotalAmount - ADiff;
      if ANewOutstandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan tidak dapat dilakukan, karena jumlah tagihan baru lebih kecil daripada pembayaran yang telah dilakukan !^';
      end if;
    
      New.DiscAmount = ANewDiscAmount;
      New.DiscAmount2 = ANewDiscAmount2;
      New.TaxAmount = ANewTaxAmount;
      New.PPH22Amount = ANewPPH22Amount;
      New.TotalAmount = ANewTotalAmount;
      New.OutStandingTotalAmount = ANewOutstandingTotalAmount;
    
      -- 2. Update APBalanceVendor
      AYear  := EXTRACT(Year from Old.PurchaseInvoiceDate);
      AMonth := EXTRACT(Month from Old.PurchaseInvoiceDate);    
      execute spUpdateAPBalanceVendor(Old.VendorId, AYear, AMonth, -1, Old.TotalAmount, Old.CurrencyId, Old.Kurs);    
      AYear  := EXTRACT(Year from New.PurchaseInvoiceDate);
      AMonth := EXTRACT(Month from New.PurchaseInvoiceDate);    
      execute spUpdateAPBalanceVendor(New.VendorId, AYear, AMonth, 1, ANewTotalAmount, New.CurrencyId, New.Kurs);
    end if;
  
    -- Outstanding Changed
    if (Old.OutStandingTotalAmount <> New.OutStandingTotalAmount) then
      if New.OutStandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan pembayaran tidak dapat dilakukan, karena jumlah pembayaran lebih besar daripada sisa nota !^';
      end if;
    end if;
  end if;  

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

create or replace function trPurchaseOrderHd_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  ANewDiscAmount currency;
  ANewDiscAmount2 currency;
  ANewTaxAmount currency;
  ANewPPH22Amount currency;
  ANewTotalAmount currency;
  ACountItemDetailUsed integer;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.PurchaseOrderDate) <> extract(year from Old.PurchaseOrderDate)) or
        (extract(month from New.PurchaseOrderDate) <> extract(month from Old.PurchaseOrderDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.PurchaseOrderDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------

  if (TG_OP = 'UPDATE') then
    -- 0. Initialize
    select Count(ItemId)
    from PurchaseOrderDt
    where PurchaseOrderId = New.PurchaseOrderId
    and Qty <> QtyOutstanding
    into ACountItemDetailUsed;
    if ACountItemDetailUsed is null then
      ACountItemDetailUsed = 0;
    end if;
    
    -- 1. perform old process here
    
    -- 2. Do void process here
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      -- detail PO telah dipakai pada invoice 
      if ACountItemDetailUsed <> 0 then
        RAISE EXCEPTION '^Void tidak dapat dilakukan, karena order pembelian ini telah dipakai pada nota pembelian !^';
      end if; 
    end if;

    -- 3. perform new process here, if not void process
    if New.StatusApprove <> '2' then
      -- Vendor berubah
      if (Old.VendorId <> New.VendorId) then
        if ACountItemDetailUsed <> 0 then
          RAISE EXCEPTION '^Vendor tidak dapat diubah, karena order pembelian ini telah dipakai pada nota pembelian !^';
        end if;    
      end if;

      -- Jumlah, Disc, Disc2, Tax, Voucher berubah
      if (Old.Amount <> New.Amount) or (Old.Disc <> New.Disc) or (Old.Disc2 <> New.Disc2) or (Old.VoucherAmount <> New.VoucherAmount) or 
        (Old.Tax <> New.Tax) or (Old.PPH22Amount <> New.PPH22Amount) then
        
        -- Hitung nilai baru
        ANewDiscAmount = New.Amount * New.Disc / 100;
        ANewDiscAmount2 = (New.Amount - ANewDiscAmount) * New.Disc2 / 100;
        ANewTaxAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) * New.Tax / 100;
        ANewPPH22Amount = ((New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount) * New.PPH22 / 100;
        ANewTotalAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount + ANewPPH22Amount;
      
        New.DiscAmount = ANewDiscAmount;
        New.DiscAmount2 = ANewDiscAmount2;
        New.TaxAmount = ANewTaxAmount;
        New.PPH22Amount = ANewPPH22Amount;
        New.TotalAmount = ANewTotalAmount; 
      end if; 
    end if;
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

create or replace function trPurchaseReturnHd_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  ADiff currency;
  ANewDiscAmount currency;  
  ANewDiscAmount2 currency;  
  ANewTaxAmount currency;  
  ANewPPH22Amount currency;
  ANewTotalAmount currency;
  ANewOutstandingTotalAmount currency;
  AYear varchar;
  AMonth integer;  
  AMessage varchar;
  AVendorName varchar;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.PurchaseReturnDate) <> extract(year from Old.PurchaseReturnDate)) or
        (extract(month from New.PurchaseReturnDate) <> extract(month from Old.PurchaseReturnDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) or (Old.OutstandingTotalAmount <> New.OutstandingTotalAmount) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.PurchaseReturnDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------

  if (TG_OP = 'UPDATE') then
    if (Old.VendorId <> New.VendorId) and (Old.OutStandingTotalAmount <> Old.TotalAmount) then
      RAISE EXCEPTION '^Vendor tidak dapat dirubah, karena telah dilakukan pembayaran !^';
    end if;

    -- Amount, Disc, Disc2, Tax, Vaoucher, Vendor Changed
    if (Old.Amount <> New.Amount) or (Old.Disc <> New.Disc) or (Old.Disc2 <> New.Disc2) or (Old.VoucherAmount <> New.VoucherAmount) or 
      (Old.Tax <> New.Tax) or (Old.PPH22Amount <> New.PPH22Amount) or (Old.Meterai <> New.Meterai) or
      (Old.VendorId <> New.VendorId) then
      -- cari selisih tagihan dengan pembayaran
      ADiff = Old.TotalAmount - Old.OutstandingTotalAmount;
 
      -- Hitung nilai baru
      ANewDiscAmount = New.Amount * New.Disc / 100;
      ANewDiscAmount2 = (New.Amount - ANewDiscAmount) * New.Disc2 / 100;
      ANewTaxAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) * New.Tax / 100;
      ANewPPH22Amount = ((New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount) * New.PPH22 / 100;
      ANewTotalAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount + ANewPPH22Amount;
      ANewTotalAmount = ANewTotalAmount + New.Meterai;
      
      ANewOutstandingTotalAmount = ANewTotalAmount - ADiff;
      if ANewOutstandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan tidak dapat dilakukan, karena jumlah retur baru lebih kecil daripada pembayaran yang telah dilakukan !^';
      end if;
    
      New.DiscAmount = ANewDiscAmount;
      New.DiscAmount2 = ANewDiscAmount2;
      New.TaxAmount = ANewTaxAmount;
      New.PPH22Amount = ANewPPH22Amount;
      New.TotalAmount = ANewTotalAmount;
      New.OutStandingTotalAmount = ANewOutstandingTotalAmount;
        
      -- 2. Update ARBalanceVendor
      AYear  := EXTRACT(Year from Old.PurchaseReturnDate);
      AMonth := EXTRACT(Month from Old.PurchaseReturnDate);    
      execute spUpdateARBalanceVendor(Old.VendorId, AYear, AMonth, -1, Old.TotalAmount, Old.CurrencyId, Old.Kurs);    
      AYear  := EXTRACT(Year from New.PurchaseReturnDate);
      AMonth := EXTRACT(Month from New.PurchaseReturnDate);    
      execute spUpdateARBalanceVendor(New.VendorId, AYear, AMonth, 1, ANewTotalAmount, New.CurrencyId, New.Kurs);
    end if;

    if (Old.OutStandingTotalAmount <> New.OutStandingTotalAmount) then
      -- Validate Outstanding
      if New.OutStandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan pembayaran tidak dapat dilakukan, karena jumlah pembayaran lebih besar daripada sisa retur !^';
      end if;
    end if;    
  end if;
  
  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

create or replace function trSalesInvoiceHd_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  ADiff currency;
  ANewDiscAmount currency;  
  ANewDiscAmount2 currency;  
  ANewTaxAmount currency;  
  ANewPPH22Amount currency;
  ANewTotalAmount currency;
  ANewOutstandingTotalAmount currency;
  AYear varchar;
  AMonth integer;  
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if (extract(year from New.SalesInvoiceDate) <> extract(year from Old.SalesInvoiceDate)) or
        (extract(month from New.SalesInvoiceDate) <> extract(month from Old.SalesInvoiceDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) or (Old.OutstandingTotalAmount <> New.OutstandingTotalAmount) or 
        (Old.Margin <> New.Margin) or (Old.TotalMargin <> New.TotalMargin) then 
        ADoChecking = 0; 
      else
        if Old.StatusApprove = '2' then
          raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
        end if;
      end if;
    end if;

    if ADoChecking = 1 then
      if New.SalesInvoiceDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
      
  if (TG_OP = 'UPDATE') then
    if (Old.CustomerId <> New.CustomerId) and (Old.OutStandingTotalAmount <> Old.TotalAmount) then
      RAISE EXCEPTION '^Vendor tidak dapat dirubah, karena telah dilakukan pembayaran !^';
    end if; 
      
    -- Amount, Disc, Disc2, Tax, Vaoucher, Customer Changed
    if (Old.Amount <> New.Amount) or (Old.Disc <> New.Disc) or (Old.Disc2 <> New.Disc2) or (Old.VoucherAmount <> New.VoucherAmount) or 
      (Old.Tax <> New.Tax) or (Old.PPH22Amount <> New.PPH22Amount) or (Old.Meterai <> New.Meterai) or
      (Old.CustomerId <> New.CustomerId) then
      
      -- cari selisih tagihan dengan pembayaran
      ADiff = Old.TotalAmount - Old.OutstandingTotalAmount;
  
      -- Hitung nilai baru
      ANewDiscAmount = New.Amount * New.Disc / 100;
      ANewDiscAmount2 = (New.Amount - ANewDiscAmount) * New.Disc2 / 100;
      ANewTaxAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) * New.Tax / 100;
      ANewPPH22Amount = ((New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount) * New.PPH22 / 100;
      ANewTotalAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount + ANewPPH22Amount;
      ANewTotalAmount = ANewTotalAmount + New.Meterai;
      
      ANewOutstandingTotalAmount = ANewTotalAmount - ADiff;
      if ANewOutstandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan tidak dapat dilakukan, karena jumlah tagihan baru lebih kecil daripada pembayaran yang telah dilakukan !^';
      end if;
    
      New.DiscAmount = ANewDiscAmount;
      New.DiscAmount2 = ANewDiscAmount2;
      New.TaxAmount = ANewTaxAmount;
      New.PPH22Amount = ANewPPH22Amount;
      New.TotalAmount = ANewTotalAmount;
      New.OutStandingTotalAmount = ANewOutstandingTotalAmount;
    
      -- 2. Update APBalance
      AYear  := EXTRACT(Year from Old.SalesInvoiceDate);
      AMonth := EXTRACT(Month from Old.SalesInvoiceDate);    
      execute spUpdateARBalanceCustomer(Old.CustomerId, AYear, AMonth, -1, Old.TotalAmount, Old.CurrencyId, Old.Kurs);    
      AYear  := EXTRACT(Year from New.SalesInvoiceDate);
      AMonth := EXTRACT(Month from New.SalesInvoiceDate);    
      execute spUpdateARBalanceCustomer(New.CustomerId, AYear, AMonth, 1, ANewTotalAmount, New.CurrencyId, New.Kurs);
    end if;

    -- Outstanding Changed
    if (Old.OutStandingTotalAmount <> New.OutStandingTotalAmount) then
      if New.OutStandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan pembayaran tidak dapat dilakukan, karena jumlah pembayaran lebih besar daripada sisa nota !^';
      end if;
    end if;    
  end if;  
  
  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

create or replace function trSalesOrderHd_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;

  ANewDiscAmount currency;
  ANewDiscAmount2 currency;
  ANewTaxAmount currency;
  ANewPPH22Amount currency;
  ANewTotalAmount currency;
  ACountItemDetailUsed integer;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.SalesOrderDate) <> extract(year from Old.SalesOrderDate)) or
        (extract(month from New.SalesOrderDate) <> extract(month from Old.SalesOrderDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.SalesOrderDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------
  
  if (TG_OP = 'UPDATE') then
    -- 0. Initialize (optional)
    select count(ItemId)
    from SalesOrderDt
    where SalesOrderId = New.SalesOrderId
    and Qty <> QtyOutstanding
    into ACountItemDetailUsed;
    if ACountItemDetailUsed is null then
      ACountItemDetailUsed = 0;
    end if;    

    -- 1. perform old process here (optional)
    
    -- 2. Do void process here (optional)
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      if ACountItemDetailUsed <> 0 then
        RAISE EXCEPTION '^Void tidak dapat dilakukan, karena order penjualan ini telah dipakai pada nota penjualan !^';
      end if;     
    end if;

    -- 3. perform new process here, if not void process (optional)
    if New.StatusApprove <> '2' then      
      -- Customer berubah
      if (Old.CustomerId <> New.CustomerId) then
        if ACountItemDetailUsed <> 0 then
          RAISE EXCEPTION '^Customer tidak dapat diubah, karena order penjualan ini telah dipakai pada nota penjualan !^';
        end if;    
      end if;

      -- Jumlah, Disc, Disc2, Tax, Voucher berubah
      if (Old.Amount <> New.Amount) or (Old.Disc <> New.Disc) or (Old.Disc2 <> New.Disc2) or (Old.VoucherAmount <> New.VoucherAmount) or 
        (Old.Tax <> New.Tax) or (Old.PPH22Amount <> New.PPH22Amount) then

        -- Hitung nilai baru
        ANewDiscAmount = New.Amount * New.Disc / 100;
        ANewDiscAmount2 = (New.Amount - ANewDiscAmount) * New.Disc2 / 100;
        ANewTaxAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) * New.Tax / 100;
        ANewPPH22Amount = ((New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount) * New.PPH22 / 100;
        ANewTotalAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount + ANewPPH22Amount;
      
        New.DiscAmount = ANewDiscAmount;
        New.DiscAmount2 = ANewDiscAmount2;
        New.TaxAmount = ANewTaxAmount;
        New.PPH22Amount = ANewPPH22Amount;
        New.TotalAmount = ANewTotalAmount; 
      end if; 
    end if;
  end if; --(TG_OP = 'UPDATE')  

  if (TG_OP = 'DELETE') then
    return old;
  else
    return new;
  end if;
end;
$$ language 'plpgsql';

create or replace function trSalesReturnHd_Before ()
  returns trigger AS
$$
declare
  ADoChecking integer;
  
  ADiff currency;
  ANewDiscAmount currency;  
  ANewDiscAmount2 currency;  
  ANewTaxAmount currency;  
  ANewPPH22Amount currency;
  ANewTotalAmount currency;
  ANewOutstandingTotalAmount currency;  
  AYear varchar;
  AMonth integer;  
  AMessage varchar;
  ACustomerName varchar;
begin
  ------------------------------------------------ Validate ----------------------------------------------  
  if (TG_OP = 'DELETE') then 
    raise exception '^Transaksi yang telah disimpan tidak dapat dihapus !^';
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    ADoChecking := 1;
    if (TG_OP = 'UPDATE') then
      if Old.StatusApprove = '2' then
        raise exception '^Transaksi tidak dapat diubah karena telah di void !^';
      end if;
      if (extract(year from New.SalesReturnDate) <> extract(year from Old.SalesReturnDate)) or
        (extract(month from New.SalesReturnDate) <> extract(month from Old.SalesReturnDate)) then
        raise exception '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
      end if;

      -- Bypass pengecekan closing untuk field2 tertentu 
      if (Old.CounterPrint <> New.CounterPrint) or (Old.OutstandingTotalAmount <> New.OutstandingTotalAmount) then 
        ADoChecking = 0; 
      end if;
    end if;

    if ADoChecking = 1 then
      if New.SalesReturnDate <= fnGetClosingDate() then -- closing date
        raise exception '^Transaksi tidak dapat diubah karena telah melewati tanggal closing !^';
      end if;
    end if;
  end if;
  -------------------------------------------------------------------------------------------------------

  if (TG_OP = 'UPDATE') then
    if (Old.CustomerId <> New.CustomerId) and (Old.OutStandingTotalAmount <> Old.TotalAmount) then
      RAISE EXCEPTION '^Vendor tidak dapat dirubah, karena telah dilakukan pembayaran !^';
    end if; 
      
    -- Amount, Disc, Disc2, Tax, Vaoucher, Customer Changed
    if (Old.Amount <> New.Amount) or (Old.Disc <> New.Disc) or (Old.Disc2 <> New.Disc2) or (Old.VoucherAmount <> New.VoucherAmount) or 
      (Old.Tax <> New.Tax) or (Old.PPH22Amount <> New.PPH22Amount) or (Old.Meterai <> New.Meterai) or
      (Old.CustomerId <> New.CustomerId) then
      
      -- cari selisih tagihan dengan pembayaran
      ADiff = Old.TotalAmount - Old.OutstandingTotalAmount;
  
      -- Hitung nilai baru
      ANewDiscAmount = New.Amount * New.Disc / 100;
      ANewDiscAmount2 = (New.Amount - ANewDiscAmount) * New.Disc2 / 100;
      ANewTaxAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) * New.Tax / 100;
      ANewPPH22Amount = ((New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount) * New.PPH22 / 100;
      ANewTotalAmount = (New.Amount - ANewDiscAmount - ANewDiscAmount2 - New.VoucherAmount) + ANewTaxAmount + ANewPPH22Amount;
      ANewTotalAmount = ANewTotalAmount + New.Meterai;
      
      ANewOutstandingTotalAmount = ANewTotalAmount - ADiff;
      if ANewOutstandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan tidak dapat dilakukan, karena jumlah retur baru lebih kecil daripada pembayaran yang telah dilakukan !^';
      end if;
    
      New.DiscAmount = ANewDiscAmount;
      New.DiscAmount2 = ANewDiscAmount2;
      New.TaxAmount = ANewTaxAmount;
      New.PPH22Amount = ANewPPH22Amount;
      New.TotalAmount = ANewTotalAmount;
      New.OutStandingTotalAmount = ANewOutstandingTotalAmount;
    
      -- 2. Update APBalanceCustomer
      AYear  := EXTRACT(Year from Old.SalesReturnDate);
      AMonth := EXTRACT(Month from Old.SalesReturnDate);    
      execute spUpdateAPBalanceCustomer(Old.CustomerId, AYear, AMonth, -1, Old.TotalAmount, Old.CurrencyId, Old.Kurs);    
      AYear  := EXTRACT(Year from New.SalesReturnDate);
      AMonth := EXTRACT(Month from New.SalesReturnDate);    
      execute spUpdateAPBalanceCustomer(New.CustomerId, AYear, AMonth, 1, ANewTotalAmount, New.CurrencyId, New.Kurs);
    end if;
  
    if (Old.OutStandingTotalAmount <> New.OutStandingTotalAmount) then
      -- Validate Outstanding
      if New.OutStandingTotalAmount < 0 then
        RAISE EXCEPTION '^Perubahan pembayaran tidak dapat dilakukan, karena jumlah pembayaran lebih besar daripada sisa retur !^';
      end if;
    end if;
  end if;

  if (TG_OP = 'INSERT') or (TG_OP = 'UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';







