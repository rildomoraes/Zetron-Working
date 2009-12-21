unit frmMainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMainMenu, Menus, AppEvnts, ExtCtrls, ComCtrls;

type
  TfmMainMenu = class(TFormUniMainMenu)
    mnuSupplierCustomer: TMenuItem;
    mnuCategory: TMenuItem;
    mnuVendor: TMenuItem;
    mnuCustomer: TMenuItem;
    mnuInventory: TMenuItem;
    mnuGudang: TMenuItem;
    SP1_4: TMenuItem;
    mnuOutlet: TMenuItem;
    mnuSalesman: TMenuItem;
    mnuItemCategory: TMenuItem;
    mnuItem: TMenuItem;
    mnuProcess: TMenuItem;
    mnuPurchase: TMenuItem;
    mnuSales: TMenuItem;
    mnuAdjustmentStockPlus: TMenuItem;
    SP1_1: TMenuItem;
    mnuAdjustmentStockMinus: TMenuItem;
    mnuAdjustmentStockMinusQty: TMenuItem;
    SP1_2: TMenuItem;
    mnuTransaksiMutasi: TMenuItem;
    mnuTransaksiMutasiQty: TMenuItem;
    SP1_3: TMenuItem;
    mnuClosingDate: TMenuItem;
    mnuClosingYear: TMenuItem;
    SP1_7: TMenuItem;
    mnuNotaPembelian: TMenuItem;
    mnuPembayaranPembelian: TMenuItem;
    mnuReturPembelian: TMenuItem;
    mnuPembayaranReturPembelian: TMenuItem;
    SP1_9: TMenuItem;
    mnuNotaPenjualan: TMenuItem;
    mnuPembayaranPenjualan: TMenuItem;
    mnuReturPenjualan: TMenuItem;
    mnuPembayaranReturPenjualan: TMenuItem;
    mnuDisplayStock: TMenuItem;
    mnuDisplayStockQty: TMenuItem;
    mnuDisplayPembelian: TMenuItem;
    mnuDisplayPembayaranPembelian: TMenuItem;
    mnuDisplayReturPembelian: TMenuItem;
    mnuDisplayPembayaranReturPembelian: TMenuItem;
    mnuDisplayPenjualan: TMenuItem;
    mnuDisplayPembayaranPenjualan: TMenuItem;
    SP3_4: TMenuItem;
    SP3_5: TMenuItem;
    mnuDisplayReturPenjualan: TMenuItem;
    mnuDisplayPembayaranReturPenjualan: TMenuItem;
    SP3_6: TMenuItem;
    mnuDisplayTransaksiLainlain: TMenuItem;
    mnuDisplayLabaperNotaPenjualan: TMenuItem;
    procedure mnuOutletClick(Sender: TObject);
    procedure mnuCategoryClick(Sender: TObject);
    procedure mnuVendorClick(Sender: TObject);
    procedure mnuCustomerClick(Sender: TObject);
    procedure mnuSalesmanClick(Sender: TObject);
    procedure mnuItemCategoryClick(Sender: TObject);
    procedure mnuItemClick(Sender: TObject);
    procedure mnuGudangClick(Sender: TObject);
    procedure mnuAdjustmentStockPlusClick(Sender: TObject);
    procedure mnuAdjustmentStockMinusClick(Sender: TObject);
    procedure mnuAdjustmentStockMinusQtyClick(Sender: TObject);
    procedure mnuTransaksiMutasiClick(Sender: TObject);
    procedure mnuTransaksiMutasiQtyClick(Sender: TObject);
    procedure mnuClosingDateClick(Sender: TObject);
    procedure mnuClosingYearClick(Sender: TObject);
    procedure mnuNotaPembelianClick(Sender: TObject);
    procedure mnuPembayaranPembelianClick(Sender: TObject);
    procedure mnuReturPembelianClick(Sender: TObject);
    procedure mnuPembayaranReturPembelianClick(Sender: TObject);
    procedure mnuNotaPenjualanClick(Sender: TObject);
    procedure mnuPembayaranPenjualanClick(Sender: TObject);
    procedure mnuReturPenjualanClick(Sender: TObject);
    procedure mnuPembayaranReturPenjualanClick(Sender: TObject);
    procedure mnuDisplayTransaksiLainlainClick(Sender: TObject);
    procedure mnuDisplayStockClick(Sender: TObject);
    procedure mnuDisplayStockQtyClick(Sender: TObject);
    procedure mnuDisplayPembelianClick(Sender: TObject);
    procedure mnuDisplayPembayaranPembelianClick(Sender: TObject);
    procedure mnuDisplayReturPembelianClick(Sender: TObject);
    procedure mnuDisplayPembayaranReturPembelianClick(Sender: TObject);
    procedure mnuDisplayPenjualanClick(Sender: TObject);
    procedure mnuDisplayPembayaranPenjualanClick(Sender: TObject);
    procedure mnuDisplayReturPenjualanClick(Sender: TObject);
    procedure mnuDisplayPembayaranReturPenjualanClick(Sender: TObject);
    procedure mnuDisplayLabaperNotaPenjualanClick(Sender: TObject);
    procedure mnuSettingGlobalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMainMenu: TfmMainMenu;

implementation

{$R *.dfm}

uses
  dtmGlobal, dtmAccounting, dtmGeneral, dtmInventory, dtmShare, untConstantaPOS,
  // Option
  frmSettingGlobal,
  // Master
  frmSalesman, frmWarehouse, frmOutlet,
  frmCategory, frmVendor, frmCustomer,
  frmItemCategory, frmItem,
  // Proses
  frmAdjustmentStockPlus, frmAdjustmentStockMinus, frmMutasi, frmClosingDate,
  frmClosingYear,
  // Puchase
  frmPurchaseInvoice, frmPurchasePayment,
  frmPurchaseReturn, frmPurchaseReturnPayment,
  // Sales
  frmSalesInvoice, frmSalesPayment,
  frmSalesReturn, frmSalesReturnPayment,
  // Display
  frmDisplayStock,
  frmDisplayPurchaseInvoice, frmDisplayPurchasePayment,
  frmDisplayPurchaseReturn, frmDisplayPurchaseReturnPayment,
  frmDisplaySalesInvoice, frmDisplaySalesInvoiceRevenue,
  frmDisplaySalesPayment, frmDisplaySalesReturn, frmDisplaySalesReturnPayment,
  frmDisplayOtherTransaction;

procedure TfmMainMenu.mnuGudangClick(Sender: TObject);
begin
  inherited;

  TfmWarehouse.ExecuteForm();
end;

procedure TfmMainMenu.mnuDisplayPembayaranPembelianClick(Sender: TObject);
begin
  inherited;

  TfmDisplayPurchasePayment.ExecuteForm();
end;

procedure TfmMainMenu.mnuDisplayPembayaranPenjualanClick(Sender: TObject);
begin
  inherited;

  TfmDisplaySalesPayment.ExecuteForm();
end;

procedure TfmMainMenu.mnuDisplayPembayaranReturPembelianClick(Sender: TObject);
begin
  inherited;

  TfmDisplayPurchaseReturnPayment.ExecuteForm();
end;

procedure TfmMainMenu.mnuDisplayPembayaranReturPenjualanClick(Sender: TObject);
begin
  inherited;

  TfmDisplaySalesReturnPayment.ExecuteForm();
end;

procedure TfmMainMenu.mnuDisplayPembelianClick(Sender: TObject);
begin
  inherited;

  TfmDisplayPurchaseInvoice.ExecuteForm();
end;

procedure TfmMainMenu.mnuDisplayPenjualanClick(Sender: TObject);
begin
  inherited;

  TfmDisplaySalesInvoice.ExecuteForm();
end;

procedure TfmMainMenu.mnuDisplayReturPembelianClick(Sender: TObject);
begin
  inherited;

  TfmDisplayPurchaseReturn.ExecuteForm();
end;

procedure TfmMainMenu.mnuDisplayReturPenjualanClick(Sender: TObject);
begin
  inherited;

  TfmDisplaySalesReturn.ExecuteForm();
end;

procedure TfmMainMenu.mnuDisplayStockClick(Sender: TObject);
begin
  inherited;

  TfmDisplayStock.ExecuteForm('0'); // With Price
end;

procedure TfmMainMenu.mnuDisplayStockQtyClick(Sender: TObject);
begin
  inherited;

  TfmDisplayStock.ExecuteForm('1'); // Qty Only
end;

procedure TfmMainMenu.mnuDisplayTransaksiLainlainClick(Sender: TObject);
begin
  inherited;

  TfmDisplayOtherTransaction.ExecuteForm();
end;

procedure TfmMainMenu.mnuDisplayLabaperNotaPenjualanClick(Sender: TObject);
begin
  inherited;

  TfmDisplaySalesInvoiceRevenue.ExecuteForm();
end;

procedure TfmMainMenu.FormCreate(Sender: TObject);
begin
  inherited;

  if not Application.Terminated then
  begin
    // Init component
    dmGlobal.InitComponent(dmAccounting);
    dmGlobal.InitComponent(dmGeneral);
    dmGlobal.InitComponent(dmInventory);
    dmGlobal.InitComponent(dmShare);

    // Load option from database
    dmShare.LoadDataFromOption;
  end;
end;

procedure TfmMainMenu.mnuAdjustmentStockMinusClick(Sender: TObject);
begin
  inherited;

  TfmAdjustmentStockMinus.ExecuteForm('0', 1, REPORT_ADJUSTMENT_MINUS, 'OtherTransactionId'); // with HPP
end;

procedure TfmMainMenu.mnuAdjustmentStockMinusQtyClick(Sender: TObject);
begin
  inherited;

  TfmAdjustmentStockMinus.ExecuteForm('1', 1, REPORT_ADJUSTMENT_MINUS, 'OtherTransactionId'); // with Qty Only
end;

procedure TfmMainMenu.mnuAdjustmentStockPlusClick(Sender: TObject);
begin
  inherited;

  TfmAdjustmentStockPlus.ExecuteForm('', 1, REPORT_ADJUSTMENT_PLUS, 'OtherTransactionId');
end;

procedure TfmMainMenu.mnuCategoryClick(Sender: TObject);
begin
  inherited;

  TfmCategory.ExecuteForm();
end;

procedure TfmMainMenu.mnuClosingDateClick(Sender: TObject);
begin
  inherited;

  TfmClosingDate.ExecuteForm();
end;

procedure TfmMainMenu.mnuClosingYearClick(Sender: TObject);
begin
  inherited;

  TfmClosingYear.ExecuteForm();
end;

procedure TfmMainMenu.mnuCustomerClick(Sender: TObject);
begin
  inherited;

  TfmCustomer.ExecuteForm();
end;

procedure TfmMainMenu.mnuItemCategoryClick(Sender: TObject);
begin
  inherited;

  TfmItemCategory.ExecuteForm();
end;

procedure TfmMainMenu.mnuItemClick(Sender: TObject);
begin
  inherited;

  TfmItem.ExecuteForm('0');
end;

procedure TfmMainMenu.mnuNotaPembelianClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseInvoice.ExecuteForm('', 1, REPORT_PURCHASE_INVOICE, 'PurchaseInvoiceId');
end;

procedure TfmMainMenu.mnuNotaPenjualanClick(Sender: TObject);
begin
  inherited;

  TfmSalesInvoice.ExecuteForm('', 1, REPORT_SALES_INVOICE, 'SalesInvoiceId');
end;

procedure TfmMainMenu.mnuOutletClick(Sender: TObject);
begin
  inherited;

  TfmOutlet.ExecuteForm();
end;

procedure TfmMainMenu.mnuPembayaranPembelianClick(Sender: TObject);
begin
  inherited;

  TfmPurchasePayment.ExecuteForm('', 1, REPORT_PURCHASE_PAYMENT, 'PurchasePaymentId');
end;

procedure TfmMainMenu.mnuPembayaranPenjualanClick(Sender: TObject);
begin
  inherited;

  TfmSalesPayment.ExecuteForm('', 1, REPORT_SALES_PAYMENT, 'SalesPaymentId');
end;

procedure TfmMainMenu.mnuPembayaranReturPembelianClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseReturnPayment.ExecuteForm('', 1, REPORT_PURCHASE_RETURN_PAYMENT, 'PurchaseReturnPaymentId');
end;

procedure TfmMainMenu.mnuPembayaranReturPenjualanClick(Sender: TObject);
begin
  inherited;

  TfmSalesReturnPayment.ExecuteForm('', 1, REPORT_SALES_RETURN_PAYMENT, 'SalesReturnPaymentId');
end;

procedure TfmMainMenu.mnuReturPembelianClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseReturn.ExecuteForm('', 1, REPORT_PURCHASE_RETURN, 'PurchaseReturnId');
end;

procedure TfmMainMenu.mnuReturPenjualanClick(Sender: TObject);
begin
  inherited;

  TfmSalesReturn.ExecuteForm('', 1, REPORT_SALES_RETURN, 'SalesReturnId');
end;

procedure TfmMainMenu.mnuSalesmanClick(Sender: TObject);
begin
  inherited;

  TfmSalesman.ExecuteForm();
end;

procedure TfmMainMenu.mnuSettingGlobalClick(Sender: TObject);
begin
  inherited;

  TfmSettingGlobal.ExecuteForm();
end;

procedure TfmMainMenu.mnuTransaksiMutasiClick(Sender: TObject);
begin
  inherited;

  TfmMutasi.ExecuteForm('0', 1, REPORT_MUTASI, 'OtherTransactionId'); // with HPP
end;

procedure TfmMainMenu.mnuTransaksiMutasiQtyClick(Sender: TObject);
begin
  inherited;

  TfmMutasi.ExecuteForm('1', 1, REPORT_MUTASI, 'OtherTransactionId'); // with Qty Only
end;

procedure TfmMainMenu.mnuVendorClick(Sender: TObject);
begin
  inherited;

  TfmVendor.ExecuteForm();
end;

end.
