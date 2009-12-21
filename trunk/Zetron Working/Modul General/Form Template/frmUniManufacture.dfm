inherited FormUniManufacture: TFormUniManufacture
  Caption = 'FormUniManufacture'
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainMenu1: TMainMenu
    inherited mnuMaster: TMenuItem [1]
      inherited mnuGeneral: TMenuItem
        object SP8: TMenuItem
          Caption = '-'
        end
        object mnuOutlet: TMenuItem
          Caption = 'Outlet'
          OnClick = mnuOutletClick
        end
        object mnuProject: TMenuItem
          Caption = 'Project'
          OnClick = mnuProjectClick
        end
        object SP16: TMenuItem
          Caption = '-'
        end
        object mnuMataUang: TMenuItem
          Caption = 'Mata Uang'
          OnClick = mnuMataUangClick
        end
        object mnuKursHarian: TMenuItem
          Caption = 'Kurs Harian'
          OnClick = mnuKursHarianClick
        end
      end
      object mnuSupplierCustomer: TMenuItem
        Caption = 'Supplier && Customer'
        object mnuExpedisi: TMenuItem
          Caption = 'Pengiriman / Expedisi'
          OnClick = mnuExpedisiClick
        end
        object SP9: TMenuItem
          Caption = '-'
        end
        object mnuKategoriSupplier: TMenuItem
          Caption = 'Kelompok Supplier'
          OnClick = mnuKategoriSupplierClick
        end
        object mnuSupplier: TMenuItem
          Caption = 'Supplier'
          OnClick = mnuSupplierClick
        end
        object SP10: TMenuItem
          Caption = '-'
        end
        object mnuKategoriCustomer: TMenuItem
          Caption = 'Kelompok Customer'
          OnClick = mnuKategoriCustomerClick
        end
        object mnuCustomer: TMenuItem
          Caption = 'Customer'
          OnClick = mnuCustomerClick
        end
      end
      object mnuInventory: TMenuItem
        Caption = 'Inventory'
        object mnuItemCategory: TMenuItem
          Caption = 'Kelompok Stok'
          OnClick = mnuItemCategoryClick
        end
        object mnuMaterial: TMenuItem
          Caption = 'Kelompok Material'
          OnClick = mnuMaterialClick
        end
        object SP11: TMenuItem
          Caption = '-'
        end
        object mnuItem: TMenuItem
          Caption = 'Barang'
        end
        object mnuGudang: TMenuItem
          Caption = 'Gudang'
          OnClick = mnuGudangClick
        end
      end
      object mnuProduction: TMenuItem
        Caption = 'Produksi'
        object mnuBOM: TMenuItem
          Caption = 'Bill Of Material'
          OnClick = mnuBOMClick
        end
        object SP12: TMenuItem
          Caption = '-'
        end
        object mnuProductionUnit: TMenuItem
          Caption = 'Unit Produksi'
          OnClick = mnuProductionUnitClick
        end
        object mnuEngine: TMenuItem
          Caption = 'Mesin'
          OnClick = mnuEngineClick
        end
      end
      object mnuPerson: TMenuItem
        Caption = 'Person'
        object mnuTallyman: TMenuItem
          Caption = 'Tallyman'
          OnClick = mnuTallymanClick
        end
        object mnuKoordinatorGrader: TMenuItem
          Caption = 'Koordinator Grader'
          OnClick = mnuKoordinatorGraderClick
        end
        object mnuGrader: TMenuItem
          Caption = 'Grader'
          OnClick = mnuGraderClick
        end
      end
      object mnuAkunting: TMenuItem
        Caption = 'Akunting'
        object mnuCOA: TMenuItem
          Caption = 'Nomor Akun'
          OnClick = mnuCOAClick
        end
      end
    end
    inherited mnuOptions: TMenuItem [2]
      object mnuClosingDate: TMenuItem [7]
        Caption = 'Proses Closing'
        OnClick = mnuClosingDateClick
      end
      object SP14: TMenuItem [8]
        Caption = '-'
      end
    end
    object mnuPembelian: TMenuItem [3]
      Caption = 'Pembelian'
      object mnuHargaBeli: TMenuItem
        Caption = 'Harga Beli'
        object mnuPriceListSupplier: TMenuItem
          Caption = 'Price List'
          OnClick = mnuPriceListSupplierClick
        end
        object mnuHargaPerSupplier: TMenuItem
          Caption = 'Harga per Supplier'
          OnClick = mnuHargaPerSupplierClick
        end
      end
      object SP13: TMenuItem
        Caption = '-'
      end
      object mnuOrderPembelian: TMenuItem
        Caption = 'Order Pembelian'
      end
      object mnuLPB: TMenuItem
        Caption = 'Penerimaan Barang'
      end
      object mnuPI: TMenuItem
        Caption = 'Nota Pembelian'
        OnClick = mnuPIClick
      end
    end
    object mnuCosting: TMenuItem [4]
      Caption = 'Costing'
      object mnuHargaCosting: TMenuItem
        Caption = 'Harga Costing'
        OnClick = mnuHargaCostingClick
      end
      object mnuCostingBarang: TMenuItem
        Caption = 'Costing Barang'
        OnClick = mnuCostingBarangClick
      end
    end
    object mnuProduksi: TMenuItem [5]
      Caption = 'Produksi'
      object mnuSPK: TMenuItem
        Caption = 'Surat Perintah Kerja'
      end
      object mnuBPPB: TMenuItem
        Caption = 'Bon Permintaan Bahan'
      end
      object mnuLHP: TMenuItem
        Caption = 'Laporan Hasil Produksi'
      end
    end
    object mnuPenjualan: TMenuItem [6]
      Caption = 'Penjualan'
      object mnuHargaJual: TMenuItem
        Caption = 'Harga Jual'
        object mnuPriceListCustomer: TMenuItem
          Caption = 'Price List'
          OnClick = mnuPriceListCustomerClick
        end
        object mnuHargaPerCustomer: TMenuItem
          Caption = 'Harga per Customer'
          OnClick = mnuHargaPerCustomerClick
        end
      end
      object SP15: TMenuItem
        Caption = '-'
      end
      object mnuOrderPenjualan: TMenuItem
        Caption = 'Order Penjualan'
      end
    end
    object mnuTransaksi: TMenuItem [7]
      Caption = 'Transaksi'
      object mnuTransaksiLainLain: TMenuItem
        Caption = 'Transaksi Lain-Lain'
      end
    end
    inherited mnuDisplay: TMenuItem
      object mnuDisplayStock: TMenuItem
        Caption = 'Display Stok'
        OnClick = mnuDisplayStockClick
      end
      object mnuDisplayStockQty: TMenuItem
        Caption = 'Display Stoc (Qty Only)'
        OnClick = mnuDisplayStockQtyClick
      end
    end
  end
end
