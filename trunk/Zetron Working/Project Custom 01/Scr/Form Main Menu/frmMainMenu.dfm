inherited fmMainMenu: TfmMainMenu
  Caption = 'fmMainMenu'
  ClientHeight = 651
  ExplicitHeight = 700
  PixelsPerInch = 96
  TextHeight = 13
  inherited stbMainMenu: TStatusBar
    Top = 632
    ExplicitTop = 632
  end
  inherited MainMenu1: TMainMenu
    inherited mnuOptions: TMenuItem
      inherited mnuSettingGlobal: TMenuItem
        OnClick = mnuSettingGlobalClick
      end
    end
    inherited mnuMaster: TMenuItem
      object CustomerSupplier1: TMenuItem
        Caption = 'Customer && Supplier'
        object mnuKategori: TMenuItem
          Caption = 'Kategori'
          OnClick = mnuKategoriClick
        end
        object N2: TMenuItem
          Caption = '-'
        end
        object mnuSupplier: TMenuItem
          Caption = 'Supplier'
          OnClick = mnuSupplierClick
        end
        object mnuSupplierInsertOnly: TMenuItem
          Caption = 'Supplier (Insert Only)'
          OnClick = mnuSupplierInsertOnlyClick
        end
        object mnuCustomer: TMenuItem
          Caption = 'Customer'
          OnClick = mnuCustomerClick
        end
        object mnuCustomerInsertOnly: TMenuItem
          Caption = 'Customer (Insert Only)'
          OnClick = mnuCustomerInsertOnlyClick
        end
      end
      object Inventory1: TMenuItem
        Caption = 'Inventory'
        object mnuTransactionType: TMenuItem
          Caption = 'Tipe Transaksi'
          OnClick = mnuTransactionTypeClick
        end
        object mnuWarehouse: TMenuItem
          Caption = 'Gudang'
          OnClick = mnuWarehouseClick
        end
        object N1: TMenuItem
          Caption = '-'
        end
        object mnuItemCategory: TMenuItem
          Caption = 'Kategori Barang'
          OnClick = mnuItemCategoryClick
        end
        object mnuItem: TMenuItem
          Caption = 'Barang'
          OnClick = mnuItemClick
        end
        object mnuItemInsertOnly: TMenuItem
          Caption = 'Barang (Insert Only)'
          OnClick = mnuItemInsertOnlyClick
        end
      end
      object Accounting1: TMenuItem
        Caption = 'Accounting'
        object mnuCurrency: TMenuItem
          Caption = 'Mata Uang'
          OnClick = mnuCurrencyClick
        end
        object N3: TMenuItem
          Caption = '-'
        end
        object mnuPaymentType: TMenuItem
          Caption = 'Tipe Pembayaran'
          OnClick = mnuPaymentTypeClick
        end
        object N4: TMenuItem
          Caption = '-'
        end
        object mnuBank: TMenuItem
          Caption = 'Bank'
          OnClick = mnuBankClick
        end
        object mnuBankAccount: TMenuItem
          Caption = 'Bank Account'
          OnClick = mnuBankAccountClick
        end
        object mnuBankCustomer: TMenuItem
          Caption = 'Bank Customer'
          OnClick = mnuBankCustomerClick
        end
        object mnuBankSupplier: TMenuItem
          Caption = 'Bank Supplier'
          OnClick = mnuBankSupplierClick
        end
      end
    end
    object mnuPembelian: TMenuItem [3]
      Caption = 'Pembelian'
      object mnuHargaBeli: TMenuItem
        Caption = 'Harga Beli'
        OnClick = mnuHargaBeliClick
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object mnuTitipanSupplier: TMenuItem
        Caption = 'Titipan Supplier'
        object mnuPDEntry: TMenuItem
          Caption = 'Titipan Supplier - Entry'
          OnClick = mnuPDEntryClick
        end
        object mnuPDApproval: TMenuItem
          Caption = 'Titipan Supplier - Approval'
          OnClick = mnuPDApprovalClick
        end
      end
      object N19: TMenuItem
        Caption = '-'
      end
      object mnuIndentPembelian: TMenuItem
        Caption = 'Indent Pembelian'
        object mnuPOEntry: TMenuItem
          Caption = 'PO - Entry'
          OnClick = mnuPOEntryClick
        end
        object mnuPOApproval1: TMenuItem
          Caption = 'PO - Approval 1'
          OnClick = mnuPOApproval1Click
        end
        object mnuPOApproval2: TMenuItem
          Caption = 'PO - Approval 2'
          OnClick = mnuPOApproval2Click
        end
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object mnuNotaPembelian: TMenuItem
        Caption = 'Nota Pembelian'
        object mnuPIEntry: TMenuItem
          Caption = 'PI - Entry'
          OnClick = mnuPIEntryClick
        end
        object mnuPIApproval: TMenuItem
          Caption = 'PI - Approval'
          OnClick = mnuPIApprovalClick
        end
        object mnuPIApprovalShowPrice: TMenuItem
          Caption = 'PI - Approval (Show Price)'
          OnClick = mnuPIApprovalShowPriceClick
        end
        object N11: TMenuItem
          Caption = '-'
        end
        object mnuPIEditing: TMenuItem
          Caption = 'PI - Editing'
          OnClick = mnuPIEditingClick
        end
      end
      object mnuPembayaranPembelian: TMenuItem
        Caption = 'Pembayaran Pembelian'
        object mnuPPEntry: TMenuItem
          Caption = 'Pembayaran Pembelian - Entry'
          OnClick = mnuPPEntryClick
        end
        object mnuPPTunaiApproval: TMenuItem
          Caption = 'Pembayaran Pembelian Tunai - Approval '
          OnClick = mnuPPTunaiApprovalClick
        end
        object mnuPPKreditApproval: TMenuItem
          Caption = 'Pembayaran Pembelian Kredit - Approval '
          OnClick = mnuPPKreditApprovalClick
        end
      end
      object N20: TMenuItem
        Caption = '-'
      end
      object mnuReturPembelian: TMenuItem
        Caption = 'Retur Pembelian'
        object mnuPREntry: TMenuItem
          Caption = 'Retur Pembelian - Entry'
          OnClick = mnuPREntryClick
        end
        object mnuPRApproval: TMenuItem
          Caption = 'Retur Pembelian - Approval'
          OnClick = mnuPRApprovalClick
        end
      end
    end
    object mnuTerimaBarang: TMenuItem [4]
      Caption = 'Terima Barang'
      object mnuRRSemuaGudang: TMenuItem
        Caption = 'RR Gudang'
        object mnuRREntry: TMenuItem
          Caption = 'RR - Entry'
          OnClick = mnuRREntryClick
        end
        object mnuRRApproval: TMenuItem
          Caption = 'RR - Approval'
          OnClick = mnuRRApprovalClick
        end
        object mnuRRReject: TMenuItem
          Caption = 'RR - Reject'
          OnClick = mnuRRRejectClick
        end
      end
      object mnuRRToko: TMenuItem
        Caption = 'RR Toko'
        object mnuRRTokoEntry: TMenuItem
          Caption = 'RR Toko - Entry'
          OnClick = mnuRRTokoEntryClick
        end
        object mnuRRTokoApproval: TMenuItem
          Caption = 'RR Toko - Approval'
          OnClick = mnuRRTokoApprovalClick
        end
      end
      object mnuRRVirtual: TMenuItem
        Caption = 'RR Virtual'
        object mnuRRVirtualEntry: TMenuItem
          Caption = 'RR Virtual - Entry'
          OnClick = mnuRRVirtualEntryClick
        end
        object mnuRRVirtualApproval: TMenuItem
          Caption = 'RR Virtual - Approval'
          OnClick = mnuRRVirtualApprovalClick
        end
      end
    end
    object mnuPenjualan: TMenuItem [5]
      Caption = 'Penjualan'
      object mnuHargaJual: TMenuItem
        Caption = 'Harga Jual'
        OnClick = mnuHargaJualClick
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object mnuTitipanCustomer: TMenuItem
        Caption = 'Titipan Customer'
        object mnuSDEntry: TMenuItem
          Caption = 'Titipan Customer - Entry'
          OnClick = mnuSDEntryClick
        end
        object mnuSDApproval: TMenuItem
          Caption = 'Titipan Customer - Approval'
          OnClick = mnuSDApprovalClick
        end
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object IndentPenjualan1: TMenuItem
        Caption = 'Indent Penjualan'
        object mnuSOEntry: TMenuItem
          Caption = 'SO - Entry'
          OnClick = mnuSOEntryClick
        end
        object mnuSOApproval: TMenuItem
          Caption = 'SO - Approval'
          OnClick = mnuSOApprovalClick
        end
      end
      object N23: TMenuItem
        Caption = '-'
      end
      object mnuNotaPenjualan: TMenuItem
        Caption = 'Nota Penjualan'
        object mnuSIEntry: TMenuItem
          Caption = 'SI - Entry'
          OnClick = mnuSIEntryClick
        end
        object mnuSIApproval1: TMenuItem
          Caption = 'SI - Approval 1'
          OnClick = mnuSIApproval1Click
        end
        object mnuSIApproval2: TMenuItem
          Caption = 'SI - Approval 2'
          OnClick = mnuSIApproval2Click
        end
        object About3: TMenuItem
          Caption = '-'
        end
        object mnuSIReprint: TMenuItem
          Caption = 'SI - Reprint'
          OnClick = mnuSIReprintClick
        end
        object mnuSIEditing: TMenuItem
          Caption = 'SI - Editing'
          OnClick = mnuSIEditingClick
        end
      end
      object PembayaranPenjualan1: TMenuItem
        Caption = 'Pembayaran Penjualan'
        object mnuSPEntry: TMenuItem
          Caption = 'Pembayaran Penjualan - Entry'
          OnClick = mnuSPEntryClick
        end
        object mnuSPTunaiApproval: TMenuItem
          Caption = 'Pembayaran Penjualan Tunai - Approval '
          OnClick = mnuSPTunaiApprovalClick
        end
        object mnuSPKreditApproval: TMenuItem
          Caption = 'Pembayaran Penjualan Kredit - Approval '
          OnClick = mnuSPKreditApprovalClick
        end
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object ReturPenjualan1: TMenuItem
        Caption = 'Retur Penjualan'
        object mnuSREntry: TMenuItem
          Caption = 'Retur Penjualan - Entry'
          OnClick = mnuSREntryClick
        end
        object mnuSRApproval1: TMenuItem
          Caption = 'Retur Penjualan - Approval 1'
          OnClick = mnuSRApproval1Click
        end
        object mnuSRApproval2: TMenuItem
          Caption = 'Retur Penjualan - Approval 2'
          OnClick = mnuSRApproval2Click
        end
      end
    end
    object mnuKirimBarang: TMenuItem [6]
      Caption = 'Kirim Barang'
      object mnuDOGudang: TMenuItem
        Caption = 'DO Gudang'
        object mnuDOEntry: TMenuItem
          Caption = 'DO Gudang'
          OnClick = mnuDOEntryClick
        end
        object mnuDOEntryPrintOnly: TMenuItem
          Caption = 'DO Gudang - Print Only'
          OnClick = mnuDOEntryPrintOnlyClick
        end
        object N7: TMenuItem
          Caption = '-'
        end
        object mnuDOReprint: TMenuItem
          Caption = 'DO - Reprint '
          OnClick = mnuDOReprintClick
        end
        object N14: TMenuItem
          Caption = '-'
        end
        object mnuDOReadOnly: TMenuItem
          Caption = 'DO Semua Gudang - Read Only'
          OnClick = mnuDOReadOnlyClick
        end
        object mnuDOSemuaGudangPending: TMenuItem
          Caption = 'DO Semua Gudang - Pending'
          OnClick = mnuDOSemuaGudangPendingClick
        end
        object mnuDOSemuaGudangReject: TMenuItem
          Caption = 'DO Semua Gudang - Reject'
          OnClick = mnuDOSemuaGudangRejectClick
        end
        object mnuDOSemuaGudangPendingReject: TMenuItem
          Caption = 'DO Semua Gudang - Pending && Reject'
          OnClick = mnuDOSemuaGudangPendingRejectClick
        end
      end
      object mnuDOTokoEntry: TMenuItem
        Caption = 'DO Toko'
        OnClick = mnuDOTokoEntryClick
      end
      object mnuDOVirtualEntry: TMenuItem
        Caption = 'DO Virtual'
        OnClick = mnuDOVirtualEntryClick
      end
    end
    object mnuTransaksi: TMenuItem [7]
      Caption = 'Transaksi'
      object mnuTransaksiLainlain: TMenuItem
        Caption = 'Transaksi Lain-lain'
        object mnuOTEntry: TMenuItem
          Caption = 'OT - Entry'
          OnClick = mnuOTEntryClick
        end
        object mnuOTApproval: TMenuItem
          Caption = 'OT - Approval'
          OnClick = mnuOTApprovalClick
        end
      end
      object mnuMutasiGudang: TMenuItem
        Caption = 'Mutasi Gudang'
        object mnuMutasiEntry: TMenuItem
          Caption = 'Mutasi - Entry'
          OnClick = mnuMutasiEntryClick
        end
        object mnuMutasiAsal: TMenuItem
          Caption = 'Mutasi - Asal'
          OnClick = mnuMutasiAsalClick
        end
        object mnuMutasiTujuan: TMenuItem
          Caption = 'Mutasi - Tujuan'
          OnClick = mnuMutasiTujuanClick
        end
      end
      object mnuCouple: TMenuItem
        Caption = 'Couple'
        object mnuCoupleEntry: TMenuItem
          Caption = 'Couple - Entry'
          OnClick = mnuCoupleEntryClick
        end
        object mnuCoupleApproval: TMenuItem
          Caption = 'Couple - Approval'
          OnClick = mnuCoupleApprovalClick
        end
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object mnuTutupTahun: TMenuItem
        Caption = 'Proses Tutup Tahun'
        OnClick = mnuTutupTahunClick
      end
    end
    inherited mnuDisplay: TMenuItem
      object mnuStokQuantity: TMenuItem
        Caption = 'Stok - Quantity'
        OnClick = mnuStokQuantityClick
      end
      object mnuStokNilai: TMenuItem
        Caption = 'Stok - Nilai'
        OnClick = mnuStokNilaiClick
      end
      object mnuStokFisik: TMenuItem
        Caption = 'Stok - Fisik'
        OnClick = mnuStokFisikClick
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object mnuHutangSupplier: TMenuItem
        Caption = 'Hutang Supplier'
        OnClick = mnuHutangSupplierClick
      end
      object mnuPiutangCustomer: TMenuItem
        Caption = 'Piutang Customer'
        OnClick = mnuPiutangCustomerClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object mnuDisplayIndent: TMenuItem
        Caption = 'Display Indent'
        OnClick = mnuDisplayIndentClick
      end
      object mnuDisplayNotaLunas: TMenuItem
        Caption = 'Display Nota Lunas'
        OnClick = mnuDisplayNotaLunasClick
      end
    end
    inherited mnuHelp: TMenuItem
      object mnuRemainder: TMenuItem
        Caption = 'Remainder'
        OnClick = mnuRemainderClick
      end
    end
  end
  object qryGNWarehouse: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'vcIdwarehouse'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from tbGNWarehouse'
      'where vcIdwarehouse = :vcIdwarehouse')
    Left = 8
    Top = 40
  end
end
