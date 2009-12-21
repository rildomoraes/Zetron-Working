unit frmMainMenuPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmMainMenu, Menus, AppEvnts, ExtCtrls, ComCtrls;

type
  TfmMainMenuPro = class(TfmMainMenu)
    mnuTransactionType1: TMenuItem;
    mnuTransaksiAssemblyCouple: TMenuItem;
    mnuMasterAccounting: TMenuItem;
    mnuProyek: TMenuItem;
    mnuBank: TMenuItem;
    mnuTipeTransaksiKasBank: TMenuItem;
    mnuTipePembayaran: TMenuItem;
    SP2_1: TMenuItem;
    SP2_2: TMenuItem;
    mnuKategoriPembelian: TMenuItem;
    mnuKategoriPenjualan: TMenuItem;
    mnuOrderPembelian: TMenuItem;
    SP2_3: TMenuItem;
    mnuOrderPenjualan: TMenuItem;
    SP2_4: TMenuItem;
    mnuKasMasuk: TMenuItem;
    mnuKasMasukUser: TMenuItem;
    SP2_5: TMenuItem;
    mnuKasKeluar: TMenuItem;
    mnuKasKeluarUser: TMenuItem;
    mnuBankMasuk: TMenuItem;
    mnuBankMasukUser: TMenuItem;
    mnuBankKeluar: TMenuItem;
    mnuBankKeluarUser: TMenuItem;
    mnuDisplayOrderBarang: TMenuItem;
    mnuDisplayOrderPembelian: TMenuItem;
    mnuDisplayOrderPenjualan: TMenuItem;
    mnuDisplayAssemblyCouple: TMenuItem;
    mnuDisplayTransaksiKas: TMenuItem;
    mnuDisplayTransaksiBank: TMenuItem;
    SP3_8: TMenuItem;
    mnuDisplayHutangPiutangVendor: TMenuItem;
    mnuDisplayHutangPiutangCustomer: TMenuItem;
    mnuPengirimanEkspedisi: TMenuItem;
    SP2_6: TMenuItem;
    PencarianBarang1: TMenuItem;
    mnuPerubahanHargaBeli: TMenuItem;
    mnuPerubahanHargaJual: TMenuItem;
    mnuPerubahanLevelHarga1: TMenuItem;
    mnuPerubahanLevelHargaApprove: TMenuItem;
    mnuAccounting: TMenuItem;
    mnuItemQty: TMenuItem;
    procedure mnuItemClick(Sender: TObject);
    procedure mnuItemQtyClick(Sender: TObject);
    procedure mnuTransactionType1Click(Sender: TObject);
    procedure mnuTransaksiAssemblyCoupleClick(Sender: TObject);
    procedure mnuProyekClick(Sender: TObject);
    procedure mnuBankClick(Sender: TObject);
    procedure mnuTipeTransaksiKasBankClick(Sender: TObject);
    procedure mnuTipePembayaranClick(Sender: TObject);
    procedure mnuKategoriPembelianClick(Sender: TObject);
    procedure mnuKategoriPenjualanClick(Sender: TObject);
    procedure mnuOrderPembelianClick(Sender: TObject);
    procedure mnuOrderPenjualanClick(Sender: TObject);
    procedure mnuKasMasukClick(Sender: TObject);
    procedure mnuKasMasukUserClick(Sender: TObject);
    procedure mnuKasKeluarClick(Sender: TObject);
    procedure mnuKasKeluarUserClick(Sender: TObject);
    procedure mnuBankMasukClick(Sender: TObject);
    procedure mnuBankMasukUserClick(Sender: TObject);
    procedure mnuBankKeluarClick(Sender: TObject);
    procedure mnuBankKeluarUserClick(Sender: TObject);
    procedure mnuDisplayOrderBarangClick(Sender: TObject);
    procedure mnuDisplayOrderPembelianClick(Sender: TObject);
    procedure mnuDisplayOrderPenjualanClick(Sender: TObject);
    procedure mnuDisplayAssemblyCoupleClick(Sender: TObject);
    procedure mnuDisplayTransaksiKasClick(Sender: TObject);
    procedure mnuDisplayTransaksiBankClick(Sender: TObject);
    procedure mnuSettingGlobalClick(Sender: TObject);
    procedure mnuDisplayHutangPiutangVendorClick(Sender: TObject);
    procedure mnuDisplayHutangPiutangCustomerClick(Sender: TObject);
    procedure PencarianBarang1Click(Sender: TObject);
    procedure mnuPerubahanHargaBeliClick(Sender: TObject);
    procedure mnuPerubahanHargaJualClick(Sender: TObject);
    procedure mnuPerubahanLevelHarga1Click(Sender: TObject);
    procedure mnuPerubahanLevelHargaApproveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMainMenuPro: TfmMainMenuPro;

implementation

{$R *.dfm}

uses
  dtmGlobal, untConstantaPOS,
  // Option
  frmSettingGlobalPro,
  // Master
  frmTransactionType, frmShipping, frmItemPro, frmExtSearchItem,
  frmProject, frmBank, frmCashBankTransactionType, frmPaymentType,
  // Proses
  frmCouple,
  // Puchase
  frmPurchasePriceChange, frmPurchaseCategory, frmPurchaseOrder,
  // Sales
  frmSalePriceChange, frmPriceChanged, frmSalesCategory, frmSalesOrder,
  // Accounting
  frmCashTransaction, frmBankTransaction,
  // Display
  frmDisplayOrder, frmDisplayPurchaseOrder, frmDisplaySalesOrder,
  frmDisplayCouple, frmDisplayCashTransaction, frmDisplayBankTransaction,
  frmDisplayAPandARVendor, frmDisplayAPandARCustomer;

procedure TfmMainMenuPro.mnuBankClick(Sender: TObject);
begin
  inherited;

  TfmBank.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuBankKeluarClick(Sender: TObject);
begin
  inherited;

  TfmBankTransaction.ExecuteForm('1;%', 1, REPORT_BANK, 'BankTransactionId');
end;

procedure TfmMainMenuPro.mnuBankKeluarUserClick(Sender: TObject);
begin
  inherited;

  TfmBankTransaction.ExecuteForm('1;' + dmGlobal.SettingGlobal.LoginEmployeeId, 1, REPORT_BANK, 'BankTransactionId');
end;

procedure TfmMainMenuPro.mnuBankMasukClick(Sender: TObject);
begin
  inherited;

  TfmBankTransaction.ExecuteForm('0;%', 1, REPORT_BANK, 'BankTransactionId');
end;

procedure TfmMainMenuPro.mnuBankMasukUserClick(Sender: TObject);
begin
  inherited;

  TfmBankTransaction.ExecuteForm('0;' + dmGlobal.SettingGlobal.LoginEmployeeId, 1, REPORT_BANK, 'BankTransactionId');
end;

procedure TfmMainMenuPro.mnuDisplayAssemblyCoupleClick(Sender: TObject);
begin
  inherited;

  TfmDisplayCouple.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuDisplayHutangPiutangCustomerClick(Sender: TObject);
begin
  inherited;

  TfmDisplayAPandARCustomer.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuDisplayHutangPiutangVendorClick(Sender: TObject);
begin
  inherited;

  TfmDisplayAPandARVendor.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuDisplayOrderBarangClick(Sender: TObject);
begin
  inherited;

  TfmDisplayOrder.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuDisplayOrderPembelianClick(Sender: TObject);
begin
  inherited;

  TfmDisplayPurchaseOrder.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuDisplayOrderPenjualanClick(Sender: TObject);
begin
  inherited;

  TfmDisplaySalesOrder.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuDisplayTransaksiBankClick(Sender: TObject);
begin
  inherited;

  TfmDisplayBankTransaction.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuDisplayTransaksiKasClick(Sender: TObject);
begin
  inherited;

  TfmDisplayCashTransaction.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuItemClick(Sender: TObject);
begin
  //inherited; don't call parent

  TfmItemPro.ExecuteForm('0');
end;

procedure TfmMainMenuPro.mnuItemQtyClick(Sender: TObject);
begin
  //inherited; don't call parent

  TfmItemPro.ExecuteForm('1');
end;

procedure TfmMainMenuPro.mnuKasKeluarClick(Sender: TObject);
begin
  inherited;

  TfmCashTransaction.ExecuteForm('1;%', 1, REPORT_CASH, 'CashTransactionId');
end;

procedure TfmMainMenuPro.mnuKasKeluarUserClick(Sender: TObject);
begin
  inherited;

  TfmCashTransaction.ExecuteForm('1;' + dmGlobal.SettingGlobal.LoginEmployeeId, 1, REPORT_CASH, 'CashTransactionId');
end;

procedure TfmMainMenuPro.mnuKasMasukClick(Sender: TObject);
begin
  inherited;

  TfmCashTransaction.ExecuteForm('0;%', 1, REPORT_CASH, 'CashTransactionId');
end;

procedure TfmMainMenuPro.mnuKasMasukUserClick(Sender: TObject);
begin
  inherited;

  TfmCashTransaction.ExecuteForm('0;' + dmGlobal.SettingGlobal.LoginEmployeeId, 1, REPORT_CASH, 'CashTransactionId');
end;

procedure TfmMainMenuPro.mnuKategoriPembelianClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseCategory.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuKategoriPenjualanClick(Sender: TObject);
begin
  inherited;

  TfmSalesCategory.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuOrderPembelianClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseOrder.ExecuteForm('', 1, REPORT_PURCHASE_ORDER, 'PurchaseOrderId');
end;

procedure TfmMainMenuPro.mnuOrderPenjualanClick(Sender: TObject);
begin
  inherited;

  TfmSalesOrder.ExecuteForm('', 1, REPORT_SALES_ORDER, 'SalesOrderId');
end;

procedure TfmMainMenuPro.mnuPerubahanHargaBeliClick(Sender: TObject);
begin
  inherited;

  TfmPurchasePriceChange.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuPerubahanHargaJualClick(Sender: TObject);
begin
  inherited;

  TfmSalePriceChange.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuPerubahanLevelHarga1Click(Sender: TObject);
begin
  inherited;

  TfmPriceChanged.ExecuteForm('0');
end;

procedure TfmMainMenuPro.mnuPerubahanLevelHargaApproveClick(Sender: TObject);
begin
  inherited;

  TfmPriceChanged.ExecuteForm('1');
end;

procedure TfmMainMenuPro.mnuProyekClick(Sender: TObject);
begin
  inherited;

  TfmProject.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuSettingGlobalClick(Sender: TObject);
begin
//  inherited;  // Don't call Inherit

  TfmSettingGlobalPro.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuTipePembayaranClick(Sender: TObject);
begin
  inherited;

  TfmPaymentType.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuTipeTransaksiKasBankClick(Sender: TObject);
begin
  inherited;

  TfmCashBankTransactionType.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuTransactionType1Click(Sender: TObject);
begin
  inherited;

  TfmTransactionType.ExecuteForm();
end;

procedure TfmMainMenuPro.mnuTransaksiAssemblyCoupleClick(Sender: TObject);
begin
  inherited;

  TfmCouple.ExecuteForm('', 1, REPORT_COUPLE, 'CoupleId');
end;

procedure TfmMainMenuPro.PencarianBarang1Click(Sender: TObject);
begin
  inherited;

  TfmExtSearchItem.ExecuteForm();
end;

end.
