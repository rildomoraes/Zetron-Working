unit untConstantaPos;

interface

type
  TUpdateTable = (utReceivingRecord, utPurchaseOrder, utPurchaseInvoice,
    utPurchasePayment, utSalesOrder, utSalesInvoice, utDeliveryOrder,
    utSalesPayment, utOtherTransaction, utPurchaseDownPayment,
    utSalesDownPayment, utAssemblyTransaction);

  TTransactionPaymentType = (tptRegisterPayment, tptSalesPayment, tptPurchasePayment);

const
  SALES_CATEGORY_NORMAL = 'NR';
  SALES_CATEGORY_REGISTER = 'CR';
  SALES_CATEGORY_KONOSEMEN = 'KN';

  // Form Report Inventory Standard
  REPORT_PURCHASE_INVOICE = 'RPSDPI%';
  REPORT_PURCHASE_PAYMENT = 'RPSDPP%';
  REPORT_PURCHASE_RETURN = 'RPSDPRT%';
  REPORT_PURCHASE_RETURN_PAYMENT = 'RPSDPRP%';

  REPORT_SALES_INVOICE = 'RPSDSI%';
  REPORT_SALES_PAYMENT = 'RPSDSP%';
  REPORT_SALES_RETURN = 'RPSDSRT%';
  REPORT_SALES_RETURN_PAYMENT = 'RPSDSRP%';

  REPORT_ADJUSTMENT_MINUS = 'RPSDAM%';
  REPORT_ADJUSTMENT_PLUS = 'RPSDAP%';
  REPORT_MUTASI = 'RPSDMT%';

  // Form Report Inventory Profesional
  REPORT_PURCHASE_ORDER = 'RPSDPO%';
  REPORT_SALES_ORDER = 'RPSDSO%';
  REPORT_COUPLE = 'RPSDC0P%';

  REPORT_CASH = 'RPSDCT%';
  REPORT_BANK = 'RPSDBT%';
  REPORT_GIRO = 'RPSDGT%';

  REPORT_BARCODE = 'RPSDBC';

  // Form Report Inventory Enterprise
  REPORT_BANK_ADJUSTMENT = 'BANK_ADJ%';
  REPORT_AP_VENDOR_ADJUSTMENT = 'AP_V_ADJ%';
  REPORT_AR_VENDOR_ADJUSTMENT = 'AR_V_ADJ%';
  REPORT_AP_CUSTOMER_ADJUSTMENT = 'AP_C_ADJ%';
  REPORT_AR_CUSTOMER_ADJUSTMENT = 'AR_C_ADJ%';

  // Form Report Cashier
  REPORT_REGISTER_INVOICE = 'REG_INVOICE'; // Register Invoice
  REPORT_REGISTER_INVOICE_POSTING = 'REG_INVOICE2'; // Register Invoice Posting
  REPORT_REGISTER_CLOSING = 'REG_CLOSING'; // Register Closing

  // Form Report Inventory Custom 01
  REPORT_RECEIVING_RECORD = 'RPSDRR%';
  REPORT_DELIVERY_ORDER = 'RPSDDO%';
  REPORT_PURCHASE_DP = 'RPSDPD%';  // Purchase Down Payment
  REPORT_SALES_DP = 'RPSDSD%';  // Sales Down Payment
  REPORT_ASSEMBLY = 'RPSDAT%';  // Assembly Transaction


//XXX  REPORT_PC = 'RPSDPC'; // Print Price

resourcestring
  ASK_FOR_ITEM_VOID =
    'Apakah anda yakin ingin membatalkan barang ini ?';
  ASK_ENDQTY_SMALLER_THAN_QTY_SALES =
    'Jumlah stok di gudang lebih kecil daripada penjualan, lanjutkan simpan ?';
  ASK_ITEM_INACTIVE =
    'Item ini sudah tidak aktif, lanjutkan simpan ?';
  ASK_SALE_PRICE_LOWER_THEN_MINIMUM_SALE_PRICE =
    'Harga jual kurang dari harga jual minimum (%n), lanjutkan simpan ?';
  ASK_ITEM_BONUS =
    'Item bonus (harga nol), lanjutkan simpan ?';
  ASK_PURCHASE_PRICE_HIGH =
    'Harga beli lebih mahal daripada harga vendor lain, lanjutkan simpan ?';

  MSG_INVALID_WAREHOUSE =
    'Default gudang belum ditentukan, lakukan setup program terlebih dahulu !';
  MSG_INVALID_PAYMENT_TYPE =
    'Default tipe pembayaran belum ditentukan, lakukan setup program terlebih dahulu !';
  MSG_INVALID_CUSTOMER =
    'Default customer belum ditentukan, lakukan setup program terlebih dahulu !';
  MSG_EMPLOYEE_PREFIX_CODE =
    'Kode prefik pegawai belum ditentukan, lakukan maintain->pegawai terlebih dahulu !';
  MSG_INVALID_ITEMID =
    'Kode Salah !';
  MSG_BANK_NOACCOUNT_NULL =
    'Bank dan no account masih belum dipilih !';
  MSG_GIRO_NUMBER_NULL =
    'Giro masih belum dipilih !';
  MSG_ITEMID_LENGTH_INVALID =
    'Panjang kode item harus 6 angka !';
  MSG_ITEMID_INVALID =
    'Item id harus berupa angka !';
  MSG_ITEMDT_INVALID =
    'Item detail tidak boleh sama dengan item induk !';
  MSG_RETURN_QTY_GREATER =
    'Jumlah Retur tidak boleh melebihi qty sisa yang dapat di retur ! (Maksimal %s)';
  MSG_SALE_PRICE_LOWER_THEN_MINIMUM_SALE_PRICE =
    'Harga jual tidak boleh kurang dari harga jual minimum (%n) !';
  MSG_ITEM_COUPLE_INVALID1 =
    'Item couple hanya bisa menggunakan metode biaya FIFO atau LIFO';
  MSG_ITEM_COUPLE_INVALID2 =
    'Item couple hanya bisa untuk item yang di stok atau konsinyasi';
  MSG_ITEM_NAME_DUPLICATE =
    'Nama barang ini telah ada dalam database !';
  MSG_ITEM_BARCODE_DUPLICATE =
    'Kode barcode barang ini telah ada dalam database !';
  MSG_COPY_ITEM_SUCCESSED =
    'Copy berhasil.';
  MSG_COPY_ITEM_LENGTH_FAILED =
    'Panjang maksimum kode (Kode + JO) adalah %s karakter !';
  MSG_INVALID_NEW_PERIOD =
    'Tanggal baru harus masih dalam periode bulan dan tahun yang sama dengan tanggal lama !';
  MSG_INVALID_NON_CASH_PAYMENT =
    'Jumlah pembayaran (non tunai) tidak dapat melebihi jumlah tagihan !';
  MSG_DUPLICATE_SI_ID_INTERNAL =
    'No nota internal telah ada dalam database !';
  MSG_DUPLICATE_SR_ID_INTERNAL =
    'No retur internal telah ada dalam database !';
  MSG_DUPLICATE_PI_ID_EXTERNAL =
    'No nota external telah ada dalam database !';
  MSG_DUPLICATE_PR_ID_EXTERNAL =
    'No retur external telah ada dalam database !';
  MSG_NEW_PRICE_INVALID =
    'Harga atau disc tidak dapat negatif !';
  MSG_QTY_LARGER_THAN_OUTSTANDING_QTY =
    'Qty yang proses lebih besar dari qty sisa order !';
  MSG_OPNAME =
    'Barang sekarang masih status opname !';
  MSG_PURCHASE_CATEGORY_IS_AUTOMATIC =
    'Tipe kategori pembelian ini tidak dapat digunakan oleh transaksi ini !';
  MSG_SALES_CATEGORY_IS_AUTOMATIC =
    'Tipe kategori penjualan ini tidak dapat digunakan oleh transaksi ini !';
  MSG_CATEGORY_ISNULL =
    'Kategori masih belum dipilih !';
  MSG_ADJUSTMENT_KURS_INVALID =
    'Mata uang rupiah tidak dapat di adjustment selisih kurs !';
  MSG_ITEM_ORIGINAL_NULL =
    'Barang asli untuk alias masih belum dipilih !';
  MSG_INVALID_ITEM_ORIGINAL =
    'Barang asli yang dipilih merupakan barang alias juga !';
  MSG_CLOSING_SHIFT_SUCCESSED =
    'Proses tutup shift telah selesai.';
  MSG_CLOSING_SHIFT_FAILED =
    'Proses tutup shift gagal dilakukan !';
  MSG_RECORD_IS_AUTO_CREATE =
    'Data tidak dapat diubah, karena data ini dibuat secara otomatis dari transaksi lain !';

  // Cash Register
  ASK_CLOSING_REGISTER =
    'Apakah anda yakin ingin closing register ?';
  ASK_CLOSING_REGISTER_ERROR_PRINT =
    'Laporan tutup kasir gagal dicetak, apakah proses tutup kasir tetap dilakukan ?';
  ASK_PRINT_UNPAID_INVOICE =
    'Nota belum lunas, cetak nota ?';
  ASK_CREATE_NEW_INVOICE_ON_UNPAID_INVOICE =
    'Nota belum terbayar, buat nota baru ?';
  ASK_CREATE_NEW_INVOICE_ON_PAID_INVOICE =
    'Nota sudah lunas, buat nota baru ?';

  MSG_BARCODE_BOX_STATUS_WAIT =
    'Tekan <Enter> untuk memproses, atau tekan <Esc> untuk batal';
  MSG_POSTING_SHIFT_SUCCESSED =
    'Proses posting shift telah selesai.';
  MSG_INVALID_PAYMENT_VOID =
    'Void tidak dapat dilakukan, karena pembayaran dilakukan bukan oleh transaksi cash register ini !';
  MSG_INVALID_BARCODE_ID =
    'Kode Barcode Salah !';

//  MSG_INVALID_ITEM_VOID =
//    'Void barang tidak dapat dilakukan, karena sisa tagihan lebih kecil dari nilai void !';
//  MSG_INVALID_ITEM_BONUS =
//    'Bonus barang tidak dapat dilakukan, karena sisa tagihan lebih kecil dari nilai bonus !';
  MSG_INVALID_ITEM_VOUCHER =
    'Voucher barang tidak dapat dilakukan, karena harga barang lebih kecil dari nilai voucher !';
  MSG_INVALID_INVOICE_VOID =
    'Void nota tidak dapat dilakukan, karena sudah dilakukan pembayaran !';
  MSG_INVALID_INVOICE_VOUCHER =
    'Voucher nota tidak dapat dilakukan, karena sisa tagihan lebih kecil dari nilai voucher !';
  MSG_CREATE_NEW_INVOICE_INVALID =
    'Nota baru tidak dapat dibuat, karena nota ini masih kosong !';
  MSG_CANNOT_PRINT_UNPAID_INVOICE =
    'Nota tidak dapat di cetak, karena belum ada pembayaran !';

  // Resources for Inventory
  MSG_ITEM_COSTING_FROM_BOM =
    'Barang ini tidak dapat dihapus atau diubah, karena default dari BoM !';
  MSG_COSTING_PRICE_INVALID =
    'Harga costing harus lebih besar daripada nol !';
  MSG_PRICE_LIST_QTY_INVALID =
    'Penentuan quantity pada price list salah !';
  MSG_CUSTOMER_PARENT_INVALID =
    'Customer induk tidak bisa sama dengan customer ini sendiri !';
  MSG_VENDOR_PARENT_INVALID =
    'Vendor induk tidak bisa sama dengan vendor ini sendiri !';

  // Resources for Accounting
  MSG_INVALID_COA_ID_PARENT =
    'Nomor akun induk tidak boleh sama dengan nomor akun nya sendiri !';

  // Resources for Manufacture Timber
  MSG_INVALID_SALES_CATEGORY_BARCODE =
    'Tipe kategori barcode hanya dapat digunakan pada menu penjualan barcode !';
  MSG_MODIFY_BOM_INVALID =
    'Data tidak dapat di ubah atau di hapus, karena milik dari BOM yang dilindungi !' + #13 +
    'Untuk merubah atau menghapus data ini silahkan merubah langsung pada BOM-nya sendiri.';
  MSG_MODIFY_BOM_ERROR =
    'Data tidak dapat di ubah atau di hapus, karena BOM telah dipakai dalam proses produksi.';
  MSG_ITEM_TYPE_NULL =
    'Kelompok transaksi masih belum dipilih !';
  MSG_PO_GROUPQTY_NULL =
    'Group quantity masih belum dipilih !';
  MSG_PO_SPEC_NULL =
    'Group ukuran masih belum dipilih !';

implementation

end.
