1. 

alter table LogProgram
drop column "no";

alter table SalesInvoiceHd
drop column Supervisor;

2. Apabila tidak membutuhkan fitur expired date

Setting Global -> Barang menggunakan sistem kadaluarsa -> unChecked

delete from stockexpired;

update Setup
set Value = '0'
where SetupId = 'OPT11'

4.

update SalesInvoiceHd
set
  Margin = 
    (select sum(margin) 
    from TransactionDt a
    left join Transaction b on a.TransactionId = b.TransactionId
    where b.ReferenceId = SalesInvoiceId),
  TotalMargin = 
    (select sum(totalmargin) 
    from TransactionDt a
    left join Transaction b on a.TransactionId = b.TransactionId
    where b.ReferenceId = SalesInvoiceId)
where SalesInvoiceDate >= 'Your v1.0.2.6 Update Date';

5.

alter table PurchaseReturnHd
add column meterai numeric(18,2);

update PurchaseReturnHd
set Meterai = 0;

alter table SalesReturnHd
add column meterai numeric(18,2);

update SalesReturnHd
set Meterai = 0;

Update Vendor
set flagpkp = '0'
where flagpkp is null;

Update Customer
set flagpkp = '0'
where flagpkp is null;

Update vendor
set flagshippingcost = '0'
where flagshippingcost is null;

Update Customer
set flagshippingcost = '0'
where flagshippingcost is null;

Update banktransaction
set flagfix = '0'
where flagfix is null;

Update cashtransaction
set flagfix = '0'
where flagfix is null;

update salesinvoicedt
set price = 0
where price is null;

create or replace function fnPurchasePayment_After ()
  returns trigger AS
$$
declare
  AReferenceId varchar;
  APaymentTypeId varchar;
  APurchaseInvoiceId varchar;
  AAmount currency;
  
  AFlagBank varchar;
  ABankId varchar;
  AAccountNo varchar;
  AYear varchar;
  AMonth varchar;

  CPurchasePaymentdt cursor for 
  select PaymentTypeId, Amount, PurchaseInvoiceId, ReferenceId
  from PurchasePaymentDt 
  where PurchasePaymentId = Old.PurchasePaymentId;  
begin
  if (TG_OP = 'UPDATE') then -- For transaction Only
    -- Validate transaction date
    if GetPeriod(New.PurchasePaymentDate) <> GetPeriod(Old.PurchasePaymentDate) then
      raise exception '%', '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
    end if;

    -- Void
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      open CPurchasePaymentDt;
      loop
        fetch CPurchasePaymentDt into APaymentTypeId, AAmount, APurchaseInvoiceId, AReferenceId;
        exit when (APaymentTypeId is null);

        AYear  := EXTRACT(Year from Old.PurchasePaymentDate);
        AMonth := EXTRACT(Month from Old.PurchasePaymentDate);

        select b.FlagBank
        from PaymentType a
        left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
        where a.PaymentTypeId = APaymentTypeId 
        into AFlagBank; 

        if APaymentTypeId <> 'PT003' then -- jika bukan potong deposit   
          -- Cash transaction
          if AFlagBank = '0' then
            -- undo cash transaction outstanding
            update CashTransaction
            set Outstanding = Outstanding + AAmount
            where CashTransactionId = AReferenceId;

            -- if cash transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from CashTransaction where CashTransactionId = AReferenceId) = '1' then
              -- Void transaction
              update CashTransaction
              set StatusApprove = '2'
              where CashTransactionId = AReferenceId;
            end if;
          end if;

          -- Bank transaction
          if AFlagBank = '1' then
            -- undo bank transaction outstanding
            update BankTransaction
            set Outstanding = Outstanding + AAmount
            where BankTransactionId = AReferenceId;

            -- if bank transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from BankTransaction where BankTransactionId = AReferenceId) = '1' then
              -- Void bank transaction
              update BankTransaction
              set StatusApprove = '2'
              where BankTransactionId = AReferenceId;
            end if;
          end if;          
        else
        
          -- jika potong deposit
          -- Update AR Balance Vendor (+)
          execute spUpdateARBalanceVendor(Old.VendorId, AYear, cast(AMonth as integer), 1, AAmount);
          execute spUpdateVendorDeposit(Old.VendorId, 1, AAmount);
        end if;

        -- Update PI Outstanding (+)
        update PurchaseInvoiceHd
        set OutstandingTotalAmount = OutstandingTotalAmount + AAmount
        where PurchaseInvoiceId = APurchaseInvoiceId;

        -- Update APBalanceVendor (+)
        execute spUpdateAPBalanceVendor(old.VendorId, AYear, cast(AMonth as integer), 1, AAmount);
      end loop;
    
      close CPurchasePaymentDt;
    end if;
  end if;
 
  return null;
end;
$$ language 'plpgsql';

create or replace function fnPurchaseReturnPaymentHd_After ()
  returns trigger AS
$$
declare
  AReferenceId varchar;
  APaymentTypeId varchar;
  APurchaseReturnId varchar;
  AAmount currency;
  ADepositBalance currency;
  
  x integer;
  AFlagBank varchar;
  ABankId varchar;
  AAccountNo varchar;
  AYear varchar;
  AMonth varchar;

  CPurchaseReturnPaymentDt cursor for 
  select PaymentTypeId, Amount, PurchaseReturnId, ReferenceId
  from PurchaseReturnPaymentDt 
  where PurchaseReturnPaymentId = Old.PurchaseReturnPaymentId;  
begin
  if (TG_OP = 'UPDATE') then -- For transaction Only
    -- Validate transaction date
    if GetPeriod(New.PurchaseReturnPaymentDate) <> GetPeriod(Old.PurchaseReturnPaymentDate) then
      raise exception '%', '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
    end if;

    -- Void
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      open CPurchaseReturnPaymentDt;
      loop
        fetch CPurchaseReturnPaymentDt into APaymentTypeId, AAmount, APurchaseReturnId, AReferenceId;
        exit when (APaymentTypeId is null);

        AYear  := EXTRACT(Year from Old.PurchaseReturnPaymentDate);
        AMonth := EXTRACT(Month from Old.PurchaseReturnPaymentDate);

        select b.FlagBank
        from PaymentType a
        left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
        where a.PaymentTypeId = Old.PaymentTypeId 
        into AFlagBank;

        if APaymentTypeId <> 'PT005' then -- jika bukan tambahkan ke deposit   
          -- Cash transaction
          if AFlagBank = '0' then
            -- undo cash transaction outstanding
            update CashTransaction
            set Outstanding = Outstanding + AAmount
            where CashTransactionId = AReferenceId;

            -- if cash transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from CashTransaction where CashTransactionId = AReferenceId) = '1' then
              -- Void transaction
              update CashTransaction
              set StatusApprove = '2'
              where CashTransactionId = AReferenceId;
            end if;
          end if;

          -- Bank transaction
          if AFlagBank = '1' then
            -- undo bank transaction outstanding
            update BankTransaction
            set Outstanding = Outstanding + AAmount
            where BankTransactionId = AReferenceId;

            -- if bank transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from BankTransaction where BankTransactionId = AReferenceId) = '1' then
              -- Void bank transaction
              update BankTransaction
              set StatusApprove = '2'
              where BankTransactionId = AReferenceId;
            end if;
          end if;
        else
          -- jika tambahkan ke deposit
          select DepositBalance 
          from Vendor
          where VendorId = AVendorId
          into ADepositBalance;
  
          if AAmount > ADepositBalance then
            Raise Exception '%', '^Transaksi tidak dapat dilakukan karena deposit tidak mencukupi !^';
          end if;

          -- Update AR Balance Vendor (-)
          execute spUpdateARBalanceVendor(Old.VendorId, AYear, cast(AMonth as integer), -1, AAmount);
          execute spUpdateVendorDeposit(Old.VendorId, -1, AAmount);
        end if;

        -- Update PR Outstanding (+)
        update PurchaseReturnReturnHd
        set OutstandingTotalAmount = OutstandingTotalAmount + AAmount
        where PurchaseReturnId = APurchaseReturnId;

        -- Update ARBalanceVendor (+)
        execute spUpdateARBalanceVendor(Old.VendorId, AYear, cast(AMonth as integer), 1, AAmount);
      end loop;
    
      close CPurchaseReturnPaymentDt;
    end if;
  end if;
 
  return null;
end;
$$ language 'plpgsql';

create or replace function fnSalesPayment_After ()
  returns trigger AS
$$
declare
  AReferenceId varchar;
  APaymentTypeId varchar;
  ASalesInvoiceId varchar;
  AAmount currency;
  
  AFlagBank varchar;
  ABankId varchar;
  AAccountNo varchar;
  AYear varchar;
  AMonth varchar;

  CSalesPaymentdt cursor for 
  select PaymentTypeId, Amount, SalesInvoiceId, ReferenceId 
  from SalesPaymentDt 
  where SalesPaymentId = Old.SalesPaymentId;  
begin
  if (TG_OP = 'UPDATE') then -- For transaction Only
    -- Validate transaction date
    if GetPeriod(New.SalesPaymentDate) <> GetPeriod(Old.SalesPaymentDate) then
      raise exception '%', '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
    end if;

    -- Void
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      open CSalesPaymentDt;
      loop
        fetch CSalesPaymentDt into APaymentTypeId, AAmount, ASalesInvoiceId, AReferenceId;
        exit when (APaymentTypeId is null);

        AYear  := EXTRACT(Year from old.SalesPaymentDate);
        AMonth := EXTRACT(Month from old.SalesPaymentDate);

        select b.FlagBank
        from PaymentType a
        left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
        where a.PaymentTypeId = APaymentTypeId 
        into AFlagBank;  
    
        if APaymentTypeId <> 'PT004' then -- bukan potong deposit 
          -- Cash transaction
          if AFlagBank = '0' then
            -- undo cash transaction outstanding
            update CashTransaction
            set Outstanding = Outstanding + AAmount
            where CashTransactionId = AReferenceId;

            -- if cash transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from CashTransaction where CashTransactionId = AReferenceId) = '1' then
              -- Void transaction
              update CashTransaction
              set StatusApprove = '2'
              where CashTransactionId = AReferenceId;
            end if;
          end if;

          -- Bank transaction
          if AFlagBank = '1' then
            -- undo bank transaction outstanding
            update BankTransaction
            set Outstanding = Outstanding + AAmount
            where BankTransactionId = AReferenceId;

            -- if bank transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from BankTransaction where BankTransactionId = AReferenceId) = '1' then
              -- Void bank transaction
              update BankTransaction
              set StatusApprove = '2'
              where BankTransactionId = AReferenceId;
            end if;
          end if;
        else
          -- jika potong deposit
          -- Update AP Balance Customer (+)
          execute spUpdateAPBalanceCustomer(Old.CustomerId, AYear, cast(AMonth as integer), 1, AAmount);
          execute spUpdateCustomerDeposit(Old.CustomerId, 1, AAmount);
        end if;

        -- Update SI Outstanding (+)
        update SalesInvoiceHd
        set OutstandingTotalAmount = OutstandingTotalAmount + AAmount
        where SalesInvoiceId = ASalesInvoiceId;

        -- Update ARBalanceCustomer (+)
        execute spUpdateARBalanceCustomer(Old.CustomerId, AYear, cast(AMonth as integer), 1, AAmount);
      end loop;
    
      close CSalesPaymentDt;
    end if;
  end if;
  
  return null;
end;
$$ language 'plpgsql';

create or replace function fnSalesReturnPaymentHd_After ()
  returns trigger AS
$$
declare
  AReferenceId varchar;
  APaymentTypeId varchar;
  ASalesReturnId varchar;
  AAmount currency;
  ADepositBalance currency;
  
  AFlagBank varchar;
  ABankId varchar;
  AAccountNo varchar;
  AYear varchar;
  AMonth varchar;

  CSalesReturnPaymentDt cursor for 
  select PaymentTypeId, Amount, SalesReturnId, ReferenceId 
  from SalesReturnPaymentDt 
  where SalesReturnPaymentId = Old.SalesReturnPaymentId;  
begin
  if (TG_OP = 'UPDATE') then -- For transaction Only
    -- Validate transaction date
    if GetPeriod(New.SalesReturnPaymentDate) <> GetPeriod(Old.SalesReturnPaymentDate) then
      raise exception '%', '^Periode tanggal baru tidak sama dengan periode tanggal lama !^';
    end if;

    -- Void
    if (New.StatusApprove <> Old.StatusApprove) and (New.StatusApprove = '2') then
      open CSalesReturnPaymentDt;
      loop
        fetch CSalesReturnPaymentDt into APaymentTypeId, AAmount, ASalesReturnId, AReferenceId;
        exit when (APaymentTypeId is null);
        
        AYear  := EXTRACT(Year from Old.SalesReturnPaymentDate);
        AMonth := EXTRACT(Month from Old.SalesReturnPaymentDate);

        select b.FlagBank
        from PaymentType a
        left join CashBankTransactionType b on a.CashBankTransactionTypeId = b.CashBankTransactionTypeId
        where a.PaymentTypeId = Old.PaymentTypeId 
        into AFlagBank;

        if APaymentTypeId <> 'PT006' then -- jika bukan tambahkan deposit customer
          -- Cash transaction
          if AFlagBank = '0' then
            -- undo cash transaction outstanding
            update CashTransaction
            set Outstanding = Outstanding + AAmount
            where CashTransactionId = AReferenceId;

            -- if cash transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from CashTransaction where CashTransactionId = AReferenceId) = '1' then
              -- Void transaction
              update CashTransaction
              set StatusApprove = '2'
              where CashTransactionId = AReferenceId;
            end if;
          end if;

          -- Bank transaction
          if AFlagBank = '1' then
            -- undo bank transaction outstanding
            update BankTransaction
            set Outstanding = Outstanding + AAmount
            where BankTransactionId = AReferenceId;

            -- if bank transaction is auto generate set to void !
            -- note : if update transction, status will be set to approved again later
            if (select FlagFix from BankTransaction where BankTransactionId = AReferenceId) = '1' then
              -- Void bank transaction
              update BankTransaction
              set StatusApprove = '2'
              where BankTransactionId = AReferenceId;
            end if;
          end if;
        else
          -- jika tambahkan ke deposit
          select DepositBalance 
          from Customer
          where CustomerId = ACustomerId
          into ADepositBalance;
  
          if AAmount > ADepositBalance then
            Raise Exception '%', '^Transaksi tidak dapat dilakukan karena deposit tidak mencukupi !^';
          end if;

          -- Update AP Balance Customer (-)
          execute spUpdateAPBalanceCustomer(Old.CustomerId, AYear, cast(AMonth as integer), -1, AAmount);
          execute spUpdateCustomerDeposit(Old.CustomerId, -1, AAmount);
        end if;

        -- Update SR Outstanding (+)
        update SalesReturnReturnHd
        set OutstandingTotalAmount = OutstandingTotalAmount + AAmount
        where SalesReturnId = ASalesReturnId;

        -- Update APBalanceCustomer (+)
        execute spUpdateAPBalanceCustomer(Old.CustomerId, AYear, cast(AMonth as integer), 1, AAmount);
      end loop;
    
      close CSalesReturnPaymentDt;
    end if;
  end if;
 
  return null;
end;
$$ language 'plpgsql';

6. Execute

Update PurchasePayment
set flagautomatic = '0'
where flagautomatic is null;

Update SalesPayment
set flagautomatic = '0'
where flagautomatic is null;

7. Backup and Restore Data (update database schema)

----------------------------------------------------------------------------

DBChange

fnPurchasePayment_After
fnSalesPayment_After
fnPurchaseReturnPaymentHd_After
fnSalesReturnPaymentHd_After