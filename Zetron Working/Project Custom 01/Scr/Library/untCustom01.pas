{********************************************************************}
{                                                                    }
{       untConstanta.pas                                             }
{                                                                    }
{       Created By Indo Nova Informasi                               }
{                                                                    }
{       ALL RIGHTS RESERVED                                          }
{                                                                    }
{********************************************************************}

unit untCustom01;

interface

const
  STATUS_REJECT = 5;
  STATUS_DONE = 6;
  NS_APPROVE  = 'Approve';
  NS_REVISION = 'Revision';
  NS_REJECT   = 'Reject';
  NS_NOTES    = 'Notes';

  // Will be remove to dll
  FLAGFIX_FIELD = 'chFlagFix';
  FLAGOPEN_FIELD = 'chFlagOpen';
  SYSTEMSTAMP_FIELD = 'dtSystemStamp';
  STATUS_APPROVE_FIELD = 'chStatusApprove';

  // Put on Program Setup
  SUPPLIES_ID_COUNTER_LENGTH = 3;
  PERMIT_REPRINT_DELIVERY_ORDER = False;
  PERMIT_REPRINT_SALES_INVOICE = False;

//  CONNECTION_FILENAME_PASSWORD = 'novatech';
//  SECURELOCK_SUPER_PASSWORD = 'supernova2005';
//  SECURELOCK_CONNECTION_FILENAME = 'connection.con';
//  SECURELOCK_PORT_SERVER = '5179';

  // interceptor
//  CMD_DATA = 'DATA';
//  TOKEN_DELIMITER = '@';
//  TOKEN_PUBLIC_KEY = '.';
//  TOKEN_DATA = '#';
//  PROTOCOL_SHUTDOWN = 'SHUTDOWN';
//  PROTOCOL_ASK_VALIDATION = 'ASK_VALIDATION';

//  TEMP_FILENAME = 'Temporary.xxx';

//  DB_MSSQL = 'MSSQL';
//  DB_MYSQL = 'MYSQL';
//  DB_POSTGRE = 'POSTGRE';

  WAREHOUSE_1 = 'NOVA_WH_01';
  WAREHOUSE_2 = 'NOVA_WH_02';
  WAREHOUSE_3 = 'NOVA_WH_03';
  WAREHOUSE_4 = 'NOVA_WH_04';
  WAREHOUSE_5 = 'NOVA_WH_05';


  PO = 'purchase order';
  PO_PREFIX = 'PO';
  RR = 'receiving record';
  RR_PREFIX = 'RR';
  PI = 'purchase invoice';
  PI_PREFIX = 'PI';
  PP = 'purchase payment';
  PP_PREFIX = 'PP';
  SO = 'Sales Order';
  SO_PREFIX = 'SO';
  SI = 'sales invoice';
  SI_PREFIX = 'SI';
  DR = 'delivery order';
  DR_PREFIX = 'DO';
  SP = 'sales payment';
  SP_PREFIX = 'SP';
  OT = 'other transaction';
  OT_PREFIX = 'OT';
  PD = 'purchase down payment';
  PD_PREFIX = 'PD';
  PR = 'purchase return';
  PR_PREFIX = 'PR';
  SD = 'sales down payment';
  SD_PREFIX = 'SD';
  SR = 'sales return';
  SR_PREFIX = 'SR';
  AT = 'assembly transaction';
  AT_PREFIX = 'AT';
  MT = 'mutation';
  MT_PREFIX = 'MT';

  TABLE_PO      = 'tbIMPurchaseOrderHd';
  FIELD_PO_ID   = 'vcIdPurchaseOrder';
  FIELD_PO_DATE = 'dtPurchaseOrderDate';
  TABLE_RR      = 'tbIMReceivingRecordHd';
  FIELD_RR_ID   = 'vcIdReceivingRecord';
  FIELD_RR_DATE = 'dtReceivingRecordDate';
  TABLE_PI      = 'tbIMPurchaseInvoiceHd';
  FIELD_PI_ID   = 'vcIdPurchaseInvoice';
  FIELD_PI_DATE = 'dtPurchaseInvoiceDate';
  TABLE_PP      = 'tbIMPurchasePayment';
  FIELD_PP_ID   = 'vcIdPurchasePayment';
  FIELD_PP_DATE = 'dtPurchasePaymentDate';
  TABLE_SO      = 'tbIMSalesOrderHd';
  FIELD_SO_ID   = 'vcIdSalesOrder';
  FIELD_SO_DATE = 'dtSalesOrderDate';
  TABLE_SI      = 'tbIMSalesInvoiceHd';
  FIELD_SI_ID   = 'vcIdSalesInvoice';
  FIELD_SI_DATE = 'dtSalesInvoiceDate';
  TABLE_DR      = 'tbIMDeliveryOrderHd';
  FIELD_DR_ID   = 'vcIdDeliveryOrder';
  FIELD_DR_DATE = 'dtDeliveryOrderDate';
  TABLE_SP      = 'tbIMSalesPayment';
  FIELD_SP_ID   = 'vcIdSalesPayment';
  FIELD_SP_DATE = 'dtSalesPaymentDate';
  TABLE_OT      = 'tbIMOtherTransactionHd';
  FIELD_OT_ID   = 'vcIdOtherTransaction';
  FIELD_OT_DATE = 'dtOtherTransactionDate';
  TABLE_PD      = 'tbACPurchaseDownPayment';
  FIELD_PD_ID   = 'vcIdPurchaseDownPayment';
  FIELD_PD_DATE = 'dtPurchaseDownPaymentDate';
  TABLE_PR      = 'tbIMPurchaseReturnHd';
  FIELD_PR_ID   = 'vcIdPurchaseReturn';
  FIELD_PR_DATE = 'dtPurchaseReturnDate';
  TABLE_SD      = 'tbACSalesDownPayment';
  FIELD_SD_ID   = 'vcIdSalesDownPayment';
  FIELD_SD_DATE = 'dtSalesDownPaymentDate';
  TABLE_SR      = 'tbIMSalesReturnHd';
  FIELD_SR_ID   = 'vcIdSalesReturn';
  FIELD_SR_DATE = 'dtSalesReturnDate';
  TABLE_AT      = 'tbIMAssemblyTransactionHd';
  FIELD_AT_ID   = 'vcIdAssemblyTransaction';
  FIELD_AT_DATE = 'dtAssemblyTransactionDate';
  TABLE_MT      = 'tbIMMutationHd';
  FIELD_MT_ID   = 'vcIdMutation';
  FIELD_MT_DATE = 'dtMutationDate';

resourcestring
  //Add by Ivan
  ASK_DEFAULT_POS =
    'Are you sure want to restore default position ?';
  ASK_CLOSE_1 =
    'Data masih belum disimpan, lanjutkan ?';
  ASK_DELETE_1 =
    'Apakah anda ingin menghapus data ini ?';
  ASK_DELETE_2 =
    'Menghapus data ini akan juga menghapus data-data lain yg berhubungan, lanjutkan ?';
  ASK_PRINT =
    'Print form ?';
  ASK_EXIT =
    'Tutup aplikasi ini ?';
  ASK_LOGOFF =
    'Log off aplikasi ?';
  ASK_APPROVE =
    'Approve %s no. %s ?';
  ASK_REJECT =
    'Reject %s no. %s ?';
  ASK_REVISION =
    'Revisi %s no. %s ?';
  ASK_SAVE_PI =
    'No RR atau PO yang dipilih berubah :' + #13 + #13 +
    '  - RR lama : %s berubah menjadi RR : %s' + #13 +
    '  - PO lama : %s berubah menjadi PO : %s' + #13 + #13 +
    'Ini otomatis akan menghapus semua detail nota sebelumnya, lanjutkan ?';
  ASK_SAVE_SI =
    'No SO yang dipilih berubah :' + #13 + #13 +
    '  - SO lama : %s berubah menjadi SO : %s' + #13 + #13 +
    'Ini otomatis akan menghapus semua detail nota sebelumnya, lanjutkan ?';
  ASK_SAVE_SI_2 =
    'Gudang yang dipilih berubah !' + #13 +
    'Ini otomatis akan menghapus semua detail nota sebelumnya, lanjutkan ?';
  ASK_SAVE_PR =
    'Gudang yang dipilih berubah !' + #13 +
    'Ini otomatis akan menghapus semua detail retur sebelumnya, lanjutkan ?';
  ASK_SAVE_PR2 =
    'No PI yang dipilih berubah :' + #13 + #13 +
    '  - PI lama : %s berubah menjadi PI : %s' + #13 + #13 +
    'Ini otomatis akan menghapus semua detail retur sebelumnya, lanjutkan ?';
  ASK_SAVE_SR =
    'Gudang yang dipilih berubah !' + #13 +
    'Ini otomatis akan menghapus semua detail retur sebelumnya, lanjutkan ?';
  ASK_SAVE_SR2 =
    'No SI yang dipilih berubah :' + #13 + #13 +
    '  - SI lama : %s berubah menjadi SI : %s' + #13 + #13 +
    'Ini otomatis akan menghapus semua detail retur sebelumnya, lanjutkan ?';
  ASK_SAVE_MT =
    'Gudang yang dipilih berubah !' + #13 +
    'Ini otomatis akan menghapus semua detail mutasi sebelumnya, lanjutkan ?';
  ASK_SAVE_OT =
    'Gudang atau tipe transaksi yang dipilih berubah !' + #13 +
    'Ini otomatis akan menghapus semua detail transaksi sebelumnya, lanjutkan ?';

  MSG_COMMUNICATE_INVALID =
    'Communication Error !';
  MSG_REINSTALL_APP =
    'Incorrect application installation, Please re-install your application to correct this problem !';
  MSG_MISSING_FILE =
    'Missing or corrupted file %s, Please contact your system administrator !';
  MSG_PROCESS_FAILED =
    'Process %s failed, please try again !';
  MSG_VALIDATION_FAILED =
    'Data yang dimasukan tidak benar atau masih kosong !';
  MSG_RECORD_IS_FIXED =
    'Data ini tidak dapat diubah';
  MSG_OLD_PASSWORD_FALSE =
    'Invalid old password !';
  MSG_NEW_PASSWORD_FALSE =
    'The new passwords you typed do not match !';
  MSG_USER_READONLY =
    'Anda tidak berhak merubah atau menghapus user !';
  MSG_INVALID_PASSWORD =
    'Password Salah !';
  MSG_DATABASE_BLANK =
    'Silahkan pilih database !';
  MSG_DATABASE_NOT_FOUND =
    'Database not exist !';
  MSG_INVALID_DATABASE =
    'Selected database cannot be used by this application !';
  MSG_CANNOT_EDIT_TRANS =
    'Transaksi %s no. %s tidak dapat diubah, karena telah di approve atau di reject !';
  MSG_CANNOT_EDIT_TRANS_MUTATION =
    'Transaksi %s no. %s tidak dapat di ubah atau di reject, karena transaksi mutasi !';
  MSG_PI_WITH_PO =
    'Discount dan pajak tidak dapat diubah, karena nota menggunakan PO !';
  MSG_RR_WITH_PO =
    'Detail tidak dapat diubah, karena nota menggunakan PO !';
  MSG_CANNOT_APPROVE_EMPTY =
    'Approve tidak dapat dilakukan karena %s masih kosong !';
  MSG_CANNOT_REJECT_RR =
    'RR no. %s tidak dapat di reject, karena telah digunakan ' + #13 +
    'oleh nota no. %s !';
  MSG_CANNOT_USE_PI =
    'Nota no. %s tidak dapat digunakan, karena telah digunakan ' + #13 +
    'oleh nota no. %s !';
  MSG_CANNOT_USE_RR =
    'RR no. %s tidak dapat digunakan, karena telah digunakan ' + #13 +
    'oleh nota no. %s !';
  MSG_RR_PO_INVALID =
    'Tidak dapat di approve, karena qty RR (%s) ' + #13 +
    'lebih besar daripada qty outstanding pada PO (%s) !' + #13 + #13 +
    'Silahkan pilih RR atau PO yang lain.';
  MSG_RR_PO_INVALID2 =
    'Tidak dapat disimpan, karena qty RR (%s) ' + #13 +
    'lebih besar daripada qty outstanding pada PO (%s) !' + #13 + #13 +
    'Silahkan pilih RR atau PO yang lain.';
  MSG_SI_SO_INVALID =
    'Tidak dapat di approve, karena qty SI (%s) ' + #13 +
    'lebih besar daripada qty outstanding pada SO (%s) !' + #13 + #13 +
    'Silahkan pilih SO yang lain.';
  MSG_SI_WH_INVALID =
    'Tidak dapat di approve, karena qty SI (%s) ' + #13 +
    'lebih besar daripada stok gudang (%s) !';
  MSG_PR_WH_INVALID =
    'Tidak dapat di approve, karena qty retur (%s) ' + #13 +
    'lebih besar daripada stok gudang (%s) !';
  MSG_PR_PI_INVALID =
    'Tidak dapat di approve, karena qty retur (%s) ' + #13 +
    'lebih besar daripada qty nota yang dapat di return (%s) !';
  MSG_SR_SI_INVALID =
    'Tidak dapat di approve, karena qty retur (%s) ' + #13 +
    'lebih besar daripada qty nota yang dapat di return (%s) !';
  MSG_MT_WH_INVALID =
    'Tidak dapat di approve, karena qty mutasi (%s) ' + #13 +
    'lebih besar daripada stok gudang asal (%s) !';
  MSG_OT_WH_INVALID =
    'Tidak dapat di approve, karena qty transaksi (%s) ' + #13 +
    'lebih besar daripada stok gudang asal (%s) !';
  MSG_ID_ISNULL =
    '%s masih kosong !';
  MSG_REPORT_LOST =
    'Report tidak ditemukan atau telah di hapus !';
  MSG_REPORT_INVALID_ID =
    'Kode report salah, hanya gunakan karakter (A-Z, 0-9, _) !';
  MSG_CANNOT_PREPARE_REPORT =
    'Report gagal disiapkan !';
  MSG_PRINTER_FAILED =
    'Tidak dapat mencetak, silahkan periksa printer anda !';
  MSG_FILE_REPORT_NULL =
    'Report tidak dapat ditampilakn, silahkan mendesign report terlebih dahulu !';
  MSG_AMOUNT_GREATER_INVALID =
    'Jumlah pembayaran lebih besar dari sisa tagihan !';
  MSG_AMOUNT_GREATER_INVALID2 =
    'Jumlah lebih besar dari saldo titipan !';
  MSG_UNABLE_CREATE_REPORT_MENU =
    'Unable to locate report menu, please contact your administrator !';
  MSG_INCOMPLETE_PAYMENT_INFO =
    'Info pembayaran kurang lengkap, silahkan cek info bank and no account !';
  MSG_CANNOT_REPRINT =
    'Transaksi ini telah di cetak !';
  MSG_INVALID_DUE_DAY =
    'Jatuh tempo masih salah !';
  MSG_INVALID_DELIVERY_SCHEDULE_DATE =
    'Tanggal pengiriman lebih kecil daripada tanggal nota !';
  MSG_INVALID_ACTUAL_DELIVERY_DATE =
    'Tidak dapat di approve, tanggal realisasi pengiriman masih kosong !';
  MSG_CANNOT_EXECUTE_SP =
    'Transaction failed because %s cannot be execute, please contact your administration';
  MSG_QTY_GREATER_INVALID =
    'Qty lebih besar daripada qty sisa indent !';
  MSG_QTY_GREATER_INVOICE =
    'Qty lebih besar daripada qty nota !';
  MSG_QTY_GREATER_THAN_READYSTOCK =
    'Qty lebih besar daripada stok ready pada gudang !';
  MSG_PRICE_IS_ZERO_OR_NULL =
    'Harga yang diinputkan masih bernilai 0 atau kosong !';
  MSG_PENDING_DO =
    'Status DO ini pending !';
  MSG_DO_MANUAL =
    'DO tidak dapat dicetak karena dibuat dari nota penjualan manual !';
  MSG_SI_MANUAL =
    'Nota tidak dapat dicetak karena merupakan nota penjualan manual !';
  MSG_APPROVE_MUTATION =
    'Tidak dapat di approve, karena RR belum di approve atau telah di reject !';
  MSG_APPROVE_MUTATION2 =
    'Tidak dapat di approve, karena DO belum di approve atau telah di reject !';
  MSG_CANNOT_EDIT_RR_MUTATION =
    'RR tidak dapat diubah, karena RR ini dibuat dari transaksi mutasi !';
  MSG_MAXIMUM_WAREHOUSE =
    'Maximum warehouse exceeded	!';
  MSG_WAREHOUSE_INVALID =
    'Gudang asal dan tujuan sama !';
  MSG_CANNOT_INSERT_SUPPLIES =
    'Beberapa barang stok nya tidak mencukupi di gudang %s !!';
  MSG_COUPLE_COST_CANNOT_ZERO =
    'Ongkos couple masih kosong !';
  MSG_APPROVE_PURCHASE_RETURN =
    'Tidak dapat di approve, karena DO belum di approve !';
  MSG_APPROVE_SALES_RETURN =
    'Tidak dapat di approve, karena RR belum di approve !';
  MSG_STOCK_ZERO =
    'Transaksi tidak dapat diproses karena stok kosong !';
  MSG_INVALID_PERIOD_CHANGE =
    'Periode tanggal baru (YYYY-MM) berbeda dengan periode tanggal lama !';
  MSG_CANNOT_EDIT_AUTO_RR =
    'RR %s tidak boleh diubah, karena dibuat otomatis oleh transaksi retur !';
  MSG_CLOSING_YEAR_SUCCESS =
    'Proses tutup tahun telah sukses dilakukan';
  MSG_QTYREADY_FAILED =
    'Approval tidak dapat dilakukan, karena stok qty ready untuk %s tidak mencukupi !';

function  GetPriorPeriod(const APeriod: string): string;

implementation

uses StrUtils, SysUtils, untProcedure;

function GetPriorPeriod(const APeriod: string): string;
begin
  // Period Format YYYYMM
  if RightStr(APeriod, 2) <> '01' then
    Result := LeftStr(APeriod, 4) + AddingZero(IntToStr(StrToInt(RightStr(APeriod, 2)) - 1), 2)
  else
    Result := IntToStr(StrToInt(LeftStr(APeriod, 4)) - 1) + '12';
end;


end.
