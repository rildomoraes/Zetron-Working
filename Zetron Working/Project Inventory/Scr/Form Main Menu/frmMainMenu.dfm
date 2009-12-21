inherited fmMainMenu: TfmMainMenu
  Caption = 'fmMainMenu'
  ExplicitWidth = 800
  ExplicitHeight = 605
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainMenu1: TMainMenu
    inherited mnuOptions: TMenuItem
      inherited mnuSettingGlobal: TMenuItem
        OnClick = mnuSettingGlobalClick
      end
    end
    inherited mnuMaster: TMenuItem
      inherited mnuGeneral: TMenuItem
        object SP1_4: TMenuItem
          Caption = '-'
        end
        object mnuSalesman: TMenuItem
          Caption = 'Salesman'
          OnClick = mnuSalesmanClick
        end
        object mnuGudang: TMenuItem
          Caption = 'Gudang'
          OnClick = mnuGudangClick
        end
        object mnuOutlet: TMenuItem
          Caption = 'Outlet'
          OnClick = mnuOutletClick
        end
      end
      object mnuSupplierCustomer: TMenuItem
        Caption = 'Supplier && Customer'
        object mnuCategory: TMenuItem
          Caption = 'Kelompok'
          OnClick = mnuCategoryClick
        end
        object mnuVendor: TMenuItem
          Caption = 'Vendor'
          OnClick = mnuVendorClick
        end
        object mnuCustomer: TMenuItem
          Caption = 'Customer'
          OnClick = mnuCustomerClick
        end
      end
      object mnuInventory: TMenuItem
        Caption = 'Inventory'
        object mnuItemCategory: TMenuItem
          Caption = 'Kelompok Barang'
          OnClick = mnuItemCategoryClick
        end
        object mnuItem: TMenuItem
          Caption = 'Barang'
          OnClick = mnuItemClick
        end
      end
    end
    object mnuProcess: TMenuItem [3]
      Caption = 'Proses'
      object mnuAdjustmentStockPlus: TMenuItem
        Caption = 'Adjustment Stock Plus'
        OnClick = mnuAdjustmentStockPlusClick
      end
      object SP1_1: TMenuItem
        Caption = '-'
      end
      object mnuAdjustmentStockMinus: TMenuItem
        Caption = 'Adjustment Stock Minus'
        OnClick = mnuAdjustmentStockMinusClick
      end
      object mnuAdjustmentStockMinusQty: TMenuItem
        Caption = 'Adjustment Stock Minus (Qty)'
        OnClick = mnuAdjustmentStockMinusQtyClick
      end
      object SP1_2: TMenuItem
        Caption = '-'
      end
      object mnuTransaksiMutasi: TMenuItem
        Caption = 'Transaksi Mutasi'
        OnClick = mnuTransaksiMutasiClick
      end
      object mnuTransaksiMutasiQty: TMenuItem
        Caption = 'Transaksi Mutasi (Qty)'
        OnClick = mnuTransaksiMutasiQtyClick
      end
      object SP1_3: TMenuItem
        Caption = '-'
      end
      object mnuClosingDate: TMenuItem
        Caption = 'Tanggal Closing'
        OnClick = mnuClosingDateClick
      end
      object mnuClosingYear: TMenuItem
        Caption = 'Tutup Tahun'
        OnClick = mnuClosingYearClick
      end
    end
    object mnuPurchase: TMenuItem [4]
      Caption = 'Pembelian'
      object mnuNotaPembelian: TMenuItem
        Caption = 'Nota Pembelian'
        OnClick = mnuNotaPembelianClick
      end
      object mnuPembayaranPembelian: TMenuItem
        Caption = 'Pembayaran Pembelian'
        OnClick = mnuPembayaranPembelianClick
      end
      object SP1_7: TMenuItem
        Caption = '-'
      end
      object mnuReturPembelian: TMenuItem
        Caption = 'Retur Pembelian'
        OnClick = mnuReturPembelianClick
      end
      object mnuPembayaranReturPembelian: TMenuItem
        Caption = 'Pembayaran Retur Pembelian'
        OnClick = mnuPembayaranReturPembelianClick
      end
    end
    object mnuSales: TMenuItem [5]
      Caption = 'Penjualan'
      object mnuNotaPenjualan: TMenuItem
        Caption = 'Nota Penjualan'
        OnClick = mnuNotaPenjualanClick
      end
      object mnuPembayaranPenjualan: TMenuItem
        Caption = 'Pembayaran Penjualan'
        OnClick = mnuPembayaranPenjualanClick
      end
      object SP1_9: TMenuItem
        Caption = '-'
      end
      object mnuReturPenjualan: TMenuItem
        Caption = 'Retur Penjualan'
        OnClick = mnuReturPenjualanClick
      end
      object mnuPembayaranReturPenjualan: TMenuItem
        Caption = 'Pembayaran Retur Penjualan'
        OnClick = mnuPembayaranReturPenjualanClick
      end
    end
    inherited mnuDisplay: TMenuItem
      object mnuDisplayStock: TMenuItem
        Caption = 'Display Stock'
        OnClick = mnuDisplayStockClick
      end
      object mnuDisplayStockQty: TMenuItem
        Caption = 'Display Stock (Qty)'
        OnClick = mnuDisplayStockQtyClick
      end
      object SP3_4: TMenuItem
        Caption = '-'
      end
      object mnuDisplayPembelian: TMenuItem
        Caption = 'Display Pembelian'
        OnClick = mnuDisplayPembelianClick
      end
      object mnuDisplayPembayaranPembelian: TMenuItem
        Caption = 'Display Pembayaran Pembelian'
        OnClick = mnuDisplayPembayaranPembelianClick
      end
      object mnuDisplayReturPembelian: TMenuItem
        Caption = 'Display Retur Pembelian'
        OnClick = mnuDisplayReturPembelianClick
      end
      object mnuDisplayPembayaranReturPembelian: TMenuItem
        Caption = 'Display Pembayaran Retur Pembelian'
        OnClick = mnuDisplayPembayaranReturPembelianClick
      end
      object SP3_5: TMenuItem
        Caption = '-'
      end
      object mnuDisplayPenjualan: TMenuItem
        Caption = 'Display Penjualan'
        OnClick = mnuDisplayPenjualanClick
      end
      object mnuDisplayLabaperNotaPenjualan: TMenuItem
        Caption = 'Display Laba per Nota Penjualan'
        OnClick = mnuDisplayLabaperNotaPenjualanClick
      end
      object mnuDisplayPembayaranPenjualan: TMenuItem
        Caption = 'Display Pembayaran Penjualan'
        OnClick = mnuDisplayPembayaranPenjualanClick
      end
      object mnuDisplayReturPenjualan: TMenuItem
        Caption = 'Display Retur Penjualan'
        OnClick = mnuDisplayReturPenjualanClick
      end
      object mnuDisplayPembayaranReturPenjualan: TMenuItem
        Caption = 'Display Pembayaran Retur Penjualan'
        OnClick = mnuDisplayPembayaranReturPenjualanClick
      end
      object SP3_6: TMenuItem
        Caption = '-'
      end
      object mnuDisplayTransaksiLainlain: TMenuItem
        Caption = 'Display Transaksi Lain-lain'
        OnClick = mnuDisplayTransaksiLainlainClick
      end
    end
  end
end
