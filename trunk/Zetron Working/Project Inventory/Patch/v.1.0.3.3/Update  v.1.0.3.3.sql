1.

create or replace function fnPurchaseInvoiceDt_Before ()
  returns trigger AS
$$
declare
  ASelisih quantity;
  AValid quantity;
begin
  if (TG_OP = 'INSERT') then
    New.QtyReturnLeft = New.Qty;
  end if;
  
  if (TG_OP = 'UPDATE') then
    -- Qty berubah
    if New.Qty <> Old.Qty then  
      ASelisih = New.Qty - Old.Qty;
      if ASelisih > 0 then
        New.QtyReturnLeft = New.QtyReturnLeft + ASelisih;
      else
        AValid = New.QtyReturnLeft + ASelisih;
        if AValid >= 0 then
          New.QtyReturnLeft = New.QtyReturnLeft + ASelisih;
        else
          RAISE EXCEPTION '^Jumlah tidak bisa dirubah, karena lebih besar dari jumlah yang sudah di retur !^';
        end if;
      end if;
    end if;

    -- Qty Return Left berubah
    if New.QtyReturnLeft < 0 then  
      RAISE EXCEPTION '^Jumlah retur tidak bisa lebih besar dari jumlah yang sudah di retur !^';
    end if;

    -- Item berubah
    if (New.ItemId <> Old.ItemId) and (Old.PurchaseOrderId is not null) then
      RAISE EXCEPTION '^Barang tidak bisa dirubah, karena transaksi berdasarkan order pembelian !^';
    end if;
  end if;

  if (TG_OP='DELETE') then
    ASelisih = 0 - Old.Qty;
    AValid = Old.QtyReturnLeft + ASelisih;
    if AValid < 0 then
      RAISE EXCEPTION '^Jumlah tidak bisa dirubah, karena lebih besar dari jumlah yang sudah di retur !^';
    end if;
  end if;

  if (TG_OP='INSERT') or (TG_OP='UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';


2.

create or replace function fnSalesInvoiceDt_Before ()
  returns trigger AS
$$
declare
  ASelisih quantity;
  AValid quantity;
begin
  if (TG_OP='INSERT') then
    New.QtyReturnLeft = New.Qty;
  end if;
  
  if (TG_OP='UPDATE') then
    -- Qty berubah
    if New.Qty <> Old.Qty then  
      ASelisih = New.Qty - Old.Qty;
      if ASelisih > 0 then 
        -- lebih besar
        New.QtyReturnLeft = New.QtyReturnLeft + ASelisih;
      else 
        -- lebih kecil 
        AValid = New.QtyReturnLeft + ASelisih;
        if AValid >= 0 then
          New.QtyReturnLeft = New.QtyReturnLeft + ASelisih;
        else
          RAISE EXCEPTION '^Quantity tidak bisa dirubah, karena lebih besar dari quantity yang sudah di retur !^';
        end if;
      end if;
    end if;

    -- Qty Return Left berubah
    if New.QtyReturnLeft < 0 then  
      RAISE EXCEPTION '^Jumlah retur tidak bisa lebih besar dari jumlah yang sudah di retur !^';
    end if;

    -- Item berubah
    if (New.ItemId <> Old.ItemId) and (Old.SalesOrderId is not null) then
      RAISE EXCEPTION '^Barang tidak bisa dirubah, karena transaksi berdasarkan order penjualan !^';
    end if;
  end if;

  if (TG_OP='DELETE') then
    ASelisih = 0 - Old.Qty;
    AValid = Old.QtyReturnLeft + ASelisih;
    if AValid < 0 then
      RAISE EXCEPTION '^Quantity tidak bisa dirubah, karena lebih besar dari quantity yang sudah di retur !^';
    end if;
  end if;

  if (TG_OP='INSERT') or (TG_OP='UPDATE') then
    return New;
  else
    return Old;
  end if;
end;
$$ language 'plpgsql';

