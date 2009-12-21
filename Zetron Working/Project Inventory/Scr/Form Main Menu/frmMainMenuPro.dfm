inherited fmMainMenuPro: TfmMainMenuPro
  Caption = 'fmMainMenuPro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainMenu1: TMainMenu
    inherited mnuMaster: TMenuItem
      inherited mnuSupplierCustomer: TMenuItem
        object mnuPengirimanEkspedisi: TMenuItem [0]
          Caption = 'Pengiriman / Ekspedisi'
        end
        object SP2_6: TMenuItem [1]
          Caption = '-'
        end
        object PencarianBarang1: TMenuItem
          Caption = 'Pencarian Barang'
          OnClick = PencarianBarang1Click
        end
      end
      inherited mnuInventory: TMenuItem
        object mnuTransactionType1: TMenuItem [0]
          Caption = 'Tipe Transaksi'
          OnClick = mnuTransactionType1Click
        end
        object mnuItemQty: TMenuItem
          Caption = 'Barang (Qty)'
          OnClick = mnuItemQtyClick
        end
      end
      object mnuMasterAccounting: TMenuItem
        Caption = 'Accounting'
        object mnuProyek: TMenuItem
          Caption = 'Proyek'
          OnClick = mnuProyekClick
        end
        object mnuBank: TMenuItem
          Caption = 'Bank'
          OnClick = mnuBankClick
        end
        object SP2_1: TMenuItem
          Caption = '-'
        end
        object mnuTipeTransaksiKasBank: TMenuItem
          Caption = 'Tipe Transaksi Kas Bank'
          OnClick = mnuTipeTransaksiKasBankClick
        end
        object mnuTipePembayaran: TMenuItem
          Caption = 'Tipe Pembayaran'
          OnClick = mnuTipePembayaranClick
        end
      end
    end
    inherited mnuProcess: TMenuItem
      object mnuTransaksiAssemblyCouple: TMenuItem [8]
        Caption = 'Transaksi Assembly / Couple'
        OnClick = mnuTransaksiAssemblyCoupleClick
      end
      object SP2_2: TMenuItem [9]
        Caption = '-'
      end
    end
    inherited mnuPurchase: TMenuItem
      object mnuKategoriPembelian: TMenuItem [0]
        Caption = 'Kategori Pembelian'
        OnClick = mnuKategoriPembelianClick
      end
      object mnuPerubahanHargaBeli: TMenuItem [1]
        Caption = 'Perubahan Harga Beli'
        OnClick = mnuPerubahanHargaBeliClick
      end
      inherited SP1_7: TMenuItem [2]
      end
      object mnuOrderPembelian: TMenuItem [3]
        Caption = 'Order Pembelian'
        OnClick = mnuOrderPembelianClick
      end
      inherited mnuNotaPembelian: TMenuItem [4]
      end
      inherited mnuPembayaranPembelian: TMenuItem [5]
      end
      object SP2_3: TMenuItem [6]
        Caption = '-'
      end
    end
    inherited mnuSales: TMenuItem
      object mnuKategoriPenjualan: TMenuItem [0]
        Caption = 'Kategori Penjualan'
        OnClick = mnuKategoriPenjualanClick
      end
      object mnuPerubahanHargaJual: TMenuItem [1]
        Caption = 'Perubahan Harga Jual'
        OnClick = mnuPerubahanHargaJualClick
      end
      object mnuPerubahanLevelHarga1: TMenuItem [2]
        Caption = 'Perubahan Level Harga'
        OnClick = mnuPerubahanLevelHarga1Click
      end
      object mnuPerubahanLevelHargaApprove: TMenuItem [3]
        Caption = 'Perubahan Level Harga (Approve)'
        OnClick = mnuPerubahanLevelHargaApproveClick
      end
      object SP2_4: TMenuItem [4]
        Caption = '-'
      end
      object mnuOrderPenjualan: TMenuItem [5]
        Caption = 'Order Penjualan'
        OnClick = mnuOrderPenjualanClick
      end
    end
    object mnuAccounting: TMenuItem [6]
      Caption = 'Accounting'
      object mnuKasMasuk: TMenuItem
        Caption = 'Kas Masuk'
        OnClick = mnuKasMasukClick
      end
      object mnuKasMasukUser: TMenuItem
        Caption = 'Kas Masuk (per user)'
        OnClick = mnuKasMasukUserClick
      end
      object mnuKasKeluar: TMenuItem
        Caption = 'Kas Keluar'
        OnClick = mnuKasKeluarClick
      end
      object mnuKasKeluarUser: TMenuItem
        Caption = 'Kas Keluar (per user)'
        OnClick = mnuKasKeluarUserClick
      end
      object SP2_5: TMenuItem
        Caption = '-'
      end
      object mnuBankMasuk: TMenuItem
        Caption = 'Bank Masuk'
        OnClick = mnuBankMasukClick
      end
      object mnuBankMasukUser: TMenuItem
        Caption = 'Bank Masuk (per user)'
        OnClick = mnuBankMasukUserClick
      end
      object mnuBankKeluar: TMenuItem
        Caption = 'Bank Keluar'
        OnClick = mnuBankKeluarClick
      end
      object mnuBankKeluarUser: TMenuItem
        Caption = 'Bank Keluar (per user)'
        OnClick = mnuBankKeluarUserClick
      end
    end
    inherited mnuDisplay: TMenuItem
      object mnuDisplayOrderBarang: TMenuItem [2]
        Caption = 'Display Order Barang'
        OnClick = mnuDisplayOrderBarangClick
      end
      object mnuDisplayOrderPembelian: TMenuItem [4]
        Caption = 'Display Order Pembelian'
        OnClick = mnuDisplayOrderPembelianClick
      end
      object mnuDisplayOrderPenjualan: TMenuItem [10]
        Caption = 'Display Order Penjualan'
        OnClick = mnuDisplayOrderPenjualanClick
      end
      object mnuDisplayAssemblyCouple: TMenuItem
        Caption = 'Display Assembly / Couple'
        OnClick = mnuDisplayAssemblyCoupleClick
      end
      object mnuDisplayTransaksiKas: TMenuItem
        Caption = 'Display Transaksi Kas'
        OnClick = mnuDisplayTransaksiKasClick
      end
      object mnuDisplayTransaksiBank: TMenuItem
        Caption = 'Display Transaksi Bank'
        OnClick = mnuDisplayTransaksiBankClick
      end
      object SP3_8: TMenuItem
        Caption = '-'
      end
      object mnuDisplayHutangPiutangVendor: TMenuItem
        Caption = 'Display Hutang Piutang Vendor'
        OnClick = mnuDisplayHutangPiutangVendorClick
      end
      object mnuDisplayHutangPiutangCustomer: TMenuItem
        Caption = 'Display Hutang Piutang Customer'
        OnClick = mnuDisplayHutangPiutangCustomerClick
      end
    end
  end
end
