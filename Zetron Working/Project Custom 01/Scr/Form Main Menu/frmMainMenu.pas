unit frmMainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMainMenu, XPStyleActnCtrls, ActnMan, ActnList, Menus, AppEvnts,
  ExtCtrls, ComCtrls, DB, ADODB, cxGraphics, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls,
  cxButtons, cxCheckBox, cxContainer, cxMaskEdit, cxDropDownEdit;

type
  TfmMainMenu = class(TFormUniMainMenu)
    mnuPembelian: TMenuItem;
    mnuPenjualan: TMenuItem;
    mnuHargaBeli: TMenuItem;
    mnuTitipanSupplier: TMenuItem;
    mnuIndentPembelian: TMenuItem;
    mnuHargaJual: TMenuItem;
    mnuTitipanCustomer: TMenuItem;
    IndentPenjualan1: TMenuItem;
    mnuPDEntry: TMenuItem;
    mnuPDApproval: TMenuItem;
    mnuPOEntry: TMenuItem;
    mnuPOApproval1: TMenuItem;
    mnuPOApproval2: TMenuItem;
    mnuNotaPembelian: TMenuItem;
    mnuPembayaranPembelian: TMenuItem;
    mnuReturPembelian: TMenuItem;
    mnuPIEntry: TMenuItem;
    mnuPIApproval: TMenuItem;
    mnuPIApprovalShowPrice: TMenuItem;
    mnuPIEditing: TMenuItem;
    N11: TMenuItem;
    mnuPPEntry: TMenuItem;
    mnuPPTunaiApproval: TMenuItem;
    mnuPPKreditApproval: TMenuItem;
    mnuPREntry: TMenuItem;
    mnuPRApproval: TMenuItem;
    mnuNotaPenjualan: TMenuItem;
    PembayaranPenjualan1: TMenuItem;
    ReturPenjualan1: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    mnuSDEntry: TMenuItem;
    mnuSDApproval: TMenuItem;
    mnuSOEntry: TMenuItem;
    mnuSOApproval: TMenuItem;
    mnuSIEntry: TMenuItem;
    mnuSIApproval1: TMenuItem;
    mnuSIApproval2: TMenuItem;
    mnuSIEditing: TMenuItem;
    About3: TMenuItem;
    mnuSPEntry: TMenuItem;
    mnuSPTunaiApproval: TMenuItem;
    mnuSPKreditApproval: TMenuItem;
    mnuSREntry: TMenuItem;
    mnuSRApproval1: TMenuItem;
    mnuSRApproval2: TMenuItem;
    mnuTerimaBarang: TMenuItem;
    mnuKirimBarang: TMenuItem;
    mnuRRSemuaGudang: TMenuItem;
    mnuRRToko: TMenuItem;
    mnuRRVirtual: TMenuItem;
    mnuRRApproval: TMenuItem;
    mnuRRReject: TMenuItem;
    mnuRRTokoEntry: TMenuItem;
    mnuRRTokoApproval: TMenuItem;
    mnuRRVirtualEntry: TMenuItem;
    mnuRRVirtualApproval: TMenuItem;
    mnuDOGudang: TMenuItem;
    mnuDOTokoEntry: TMenuItem;
    mnuDOEntry: TMenuItem;
    mnuDOReadOnly: TMenuItem;
    mnuDOVirtualEntry: TMenuItem;
    mnuSIReprint: TMenuItem;
    mnuDOSemuaGudangPending: TMenuItem;
    mnuDOSemuaGudangReject: TMenuItem;
    mnuDOReprint: TMenuItem;
    N14: TMenuItem;
    mnuTransaksi: TMenuItem;
    mnuTransaksiLainlain: TMenuItem;
    mnuMutasiGudang: TMenuItem;
    mnuOTEntry: TMenuItem;
    mnuOTApproval: TMenuItem;
    mnuMutasiEntry: TMenuItem;
    mnuMutasiAsal: TMenuItem;
    mnuMutasiTujuan: TMenuItem;
    mnuCouple: TMenuItem;
    mnuTutupTahun: TMenuItem;
    N15: TMenuItem;
    mnuCoupleEntry: TMenuItem;
    mnuCoupleApproval: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    mnuDOSemuaGudangPendingReject: TMenuItem;
    Inventory1: TMenuItem;
    mnuItemCategory: TMenuItem;
    mnuItem: TMenuItem;
    mnuItemInsertOnly: TMenuItem;
    N1: TMenuItem;
    CustomerSupplier1: TMenuItem;
    mnuCustomer: TMenuItem;
    mnuSupplier: TMenuItem;
    mnuCustomerInsertOnly: TMenuItem;
    N2: TMenuItem;
    mnuSupplierInsertOnly: TMenuItem;
    mnuDisplayIndent: TMenuItem;
    mnuDisplayNotaLunas: TMenuItem;
    mnuTransactionType: TMenuItem;
    mnuWarehouse: TMenuItem;
    mnuKategori: TMenuItem;
    Accounting1: TMenuItem;
    mnuCurrency: TMenuItem;
    mnuPaymentType: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    mnuBank: TMenuItem;
    mnuBankAccount: TMenuItem;
    mnuBankSupplier: TMenuItem;
    mnuBankCustomer: TMenuItem;
    mnuStokFisik: TMenuItem;
    mnuStokQuantity: TMenuItem;
    mnuStokNilai: TMenuItem;
    mnuHutangSupplier: TMenuItem;
    mnuPiutangCustomer: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    qryGNWarehouse: TADOQuery;
    mnuRREntry: TMenuItem;
    mnuDOEntryPrintOnly: TMenuItem;
    N7: TMenuItem;
    mnuRemainder: TMenuItem;
    procedure mnuSettingGlobalClick(Sender: TObject);
    procedure mnuTransactionTypeClick(Sender: TObject);
    procedure mnuWarehouseClick(Sender: TObject);
    procedure mnuItemCategoryClick(Sender: TObject);
    procedure mnuKategoriClick(Sender: TObject);
    procedure mnuSupplierClick(Sender: TObject);
    procedure mnuSupplierInsertOnlyClick(Sender: TObject);
    procedure mnuCustomerClick(Sender: TObject);
    procedure mnuCustomerInsertOnlyClick(Sender: TObject);
    procedure mnuItemClick(Sender: TObject);
    procedure mnuItemInsertOnlyClick(Sender: TObject);
    procedure mnuCurrencyClick(Sender: TObject);
    procedure mnuPaymentTypeClick(Sender: TObject);
    procedure mnuBankClick(Sender: TObject);
    procedure mnuBankAccountClick(Sender: TObject);
    procedure mnuBankCustomerClick(Sender: TObject);
    procedure mnuBankSupplierClick(Sender: TObject);
    procedure mnuHargaBeliClick(Sender: TObject);
    procedure mnuPDEntryClick(Sender: TObject);
    procedure mnuPDApprovalClick(Sender: TObject);
    procedure mnuPOEntryClick(Sender: TObject);
    procedure mnuPOApproval1Click(Sender: TObject);
    procedure mnuPOApproval2Click(Sender: TObject);
    procedure mnuPIEntryClick(Sender: TObject);
    procedure mnuPIApprovalClick(Sender: TObject);
    procedure mnuPIApprovalShowPriceClick(Sender: TObject);
    procedure mnuPIEditingClick(Sender: TObject);
    procedure mnuPPEntryClick(Sender: TObject);
    procedure mnuPPTunaiApprovalClick(Sender: TObject);
    procedure mnuPPKreditApprovalClick(Sender: TObject);
    procedure mnuPREntryClick(Sender: TObject);
    procedure mnuPRApprovalClick(Sender: TObject);
    procedure mnuRREntryClick(Sender: TObject);
    procedure mnuRRApprovalClick(Sender: TObject);
    procedure mnuRRRejectClick(Sender: TObject);
    procedure mnuRRTokoEntryClick(Sender: TObject);
    procedure mnuRRTokoApprovalClick(Sender: TObject);
    procedure mnuRRVirtualEntryClick(Sender: TObject);
    procedure mnuRRVirtualApprovalClick(Sender: TObject);
    procedure mnuHargaJualClick(Sender: TObject);
    procedure mnuSDEntryClick(Sender: TObject);
    procedure mnuSDApprovalClick(Sender: TObject);
    procedure mnuSOEntryClick(Sender: TObject);
    procedure mnuSOApprovalClick(Sender: TObject);
    procedure mnuSIEntryClick(Sender: TObject);
    procedure mnuSIApproval1Click(Sender: TObject);
    procedure mnuSIApproval2Click(Sender: TObject);
    procedure mnuSIReprintClick(Sender: TObject);
    procedure mnuSIEditingClick(Sender: TObject);
    procedure mnuSPEntryClick(Sender: TObject);
    procedure mnuSPTunaiApprovalClick(Sender: TObject);
    procedure mnuSPKreditApprovalClick(Sender: TObject);
    procedure mnuSREntryClick(Sender: TObject);
    procedure mnuSRApproval1Click(Sender: TObject);
    procedure mnuSRApproval2Click(Sender: TObject);
    procedure mnuDOEntryPrintOnlyClick(Sender: TObject);
    procedure mnuDOEntryClick(Sender: TObject);
    procedure mnuDOReprintClick(Sender: TObject);
    procedure mnuDOReadOnlyClick(Sender: TObject);
    procedure mnuDOSemuaGudangPendingClick(Sender: TObject);
    procedure mnuDOSemuaGudangRejectClick(Sender: TObject);
    procedure mnuDOSemuaGudangPendingRejectClick(Sender: TObject);
    procedure mnuDOTokoEntryClick(Sender: TObject);
    procedure mnuDOVirtualEntryClick(Sender: TObject);
    procedure mnuOTEntryClick(Sender: TObject);
    procedure mnuOTApprovalClick(Sender: TObject);
    procedure mnuMutasiEntryClick(Sender: TObject);
    procedure mnuMutasiAsalClick(Sender: TObject);
    procedure mnuMutasiTujuanClick(Sender: TObject);
    procedure mnuCoupleEntryClick(Sender: TObject);
    procedure mnuCoupleApprovalClick(Sender: TObject);
    procedure mnuTutupTahunClick(Sender: TObject);
    procedure mnuStokQuantityClick(Sender: TObject);
    procedure mnuStokNilaiClick(Sender: TObject);
    procedure mnuStokFisikClick(Sender: TObject);
    procedure mnuHutangSupplierClick(Sender: TObject);
    procedure mnuPiutangCustomerClick(Sender: TObject);
    procedure mnuDisplayIndentClick(Sender: TObject);
    procedure mnuDisplayNotaLunasClick(Sender: TObject);
    procedure mnuRemainderClick(Sender: TObject);
  protected
    procedure InitForm; override;
  private
    FCurrentWarehouse: string;
  public
    { Public declarations }
  end;

var
  fmMainMenu: TfmMainMenu;

implementation

{$R *.dfm}

uses
  dtmGlobal, dtmInventory, untProcedure, untConstanta, untCustom01, frmReminder,

  // Master
  frmSettingGlobalInventoryCustom01, frmCategory, frmSupplier, frmCustomer,
  frmPaymentType, frmBank, frmBankAccount, frmCustomerBankAccount, frmCurrency,
  frmSupplierBankAccount, frmWarehouse, frmSuppliesCategory, frmTransactionType,
  frmSupplies,

  // Pembelian
  frmPurchasePrice, frmPurchaseDownPayment, frmPurchaseOrder,
  frmPurchaseInvoice, frmPurchaseReturn, frmPurchaseInvoiceEdit,
  frmPurchasePayment, frmPurchasePaymentApproval,

  // Terima Barang
  frmReceivingRecord,

  // Penjualan
  frmSalePrice, frmSalesDownPayment, frmSalesOrder, frmSalesInvoice,
  frmSalesInvoiceReprint, frmSalesInvoiceEdit, frmSalesReturn, frmSalesPayment,
  frmSalesPaymentApproval,

  // Pengiriman Barang
  frmDeliveryOrder, frmDeliveryOrderReprint, frmDeliveryOrderPendingAndReject,

  // Transaksi
  frmOtherTransaction, frmMutation, frmAssemblyTransaction, frmClosingYear,

  //Display
  frmDisplayStock, frmDisplayStockActual, frmDisplaySupplierAP,
  frmDisplayCustomerAR, frmDisplayIndent, frmDisplayPaidTransaction;

procedure TfmMainMenu.InitForm;
begin
  inherited;

  if not Application.Terminated then
  begin
    dmGlobal.SettingGlobal.StatusVoid := IntToStr(STATUS_REJECT);
    dmGlobal.SettingGlobal.StatusPosting := IntToStr(STATUS_DONE);

    // Init component
    dmGlobal.InitComponent(dmInventory);
    OpenIfClose(dmInventory.qryStatusApprove);

    // Init Warehouse
    if not FileExists(ExtractFilePath(Application.ExeName) + 'WarehouseSetting.sys') then
    begin
      ShowMessage(Format(MSG_MISSING_FILE, ['WarehouseSetting.sys']));
      Application.Terminate;
    end;
    FCurrentWarehouse := GetINIValue(ExtractFilePath(Application.ExeName) + 'WarehouseSetting.sys',
      'Warehouse', 'Warehouse', 'NOVA_WH_01');

    if FCurrentWarehouse <> '%' then
    begin
      qryGNWarehouse.Close;
      qryGNWarehouse.Parameters[0].Value := FCurrentWarehouse;
      qryGNWarehouse.Open;
      Self.Caption := Self.Caption + ', Gudang : ' + qryGNWarehouse.FieldByName('vcWarehouseName').AsString;
    end;
  end;
end;

procedure TfmMainMenu.mnuBankAccountClick(Sender: TObject);
begin
  inherited;

  TfmBankAccount.ExecuteForm;
end;

procedure TfmMainMenu.mnuBankClick(Sender: TObject);
begin
  inherited;

  TfmBank.ExecuteForm;
end;

procedure TfmMainMenu.mnuBankCustomerClick(Sender: TObject);
begin
  inherited;

  TfmCustomerBankAccount.ExecuteForm;
end;

procedure TfmMainMenu.mnuBankSupplierClick(Sender: TObject);
begin
  inherited;

  TfmSupplierBankAccount.ExecuteForm;
end;

procedure TfmMainMenu.mnuCoupleApprovalClick(Sender: TObject);
begin
  inherited;

  TfmAssemblyTransaction.ExecuteForm('', 1);
end;

procedure TfmMainMenu.mnuCoupleEntryClick(Sender: TObject);
begin
  inherited;

  TfmAssemblyTransaction.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuCurrencyClick(Sender: TObject);
begin
  inherited;

  TfmCurrency.ExecuteForm;
end;

procedure TfmMainMenu.mnuCustomerClick(Sender: TObject);
begin
  inherited;

  TfmCustomer.ExecuteForm;
end;

procedure TfmMainMenu.mnuCustomerInsertOnlyClick(Sender: TObject);
begin
  inherited;

  TfmCustomer.ExecuteForm('1');
end;

procedure TfmMainMenu.mnuDisplayIndentClick(Sender: TObject);
begin
  inherited;

  TfmDisplayIndent.ExecuteForm;
end;

procedure TfmMainMenu.mnuDisplayNotaLunasClick(Sender: TObject);
begin
  inherited;

  TfmDisplayPaidTransaction.ExecuteForm;
end;

procedure TfmMainMenu.mnuDOEntryClick(Sender: TObject);
begin
  inherited;

  // Param Array 1 : StatusWarehouse;
  // Param Array 2 : CurrentWarehouse;
  // Param Array 3 : CanApprove;
  // Param Array 4 : ReadOnly;
  TfmDeliveryOrder.ExecuteForm('%;' + FCurrentWarehouse + ';1;0', 0, 1);
end;

procedure TfmMainMenu.mnuDOEntryPrintOnlyClick(Sender: TObject);
begin
  inherited;

  // Param Array 1 : StatusWarehouse;
  // Param Array 2 : CurrentWarehouse;
  // Param Array 3 : CanApprove;
  // Param Array 4 : ReadOnly;
  TfmDeliveryOrder.ExecuteForm('%;' + FCurrentWarehouse + ';0;0', 0, 0);
end;

procedure TfmMainMenu.mnuDOReadOnlyClick(Sender: TObject);
begin
  inherited;

  // Param Array 1 : StatusWarehouse;
  // Param Array 2 : CurrentWarehouse;
  // Param Array 3 : CanApprove;
  // Param Array 4 : ReadOnly;
  TfmDeliveryOrder.ExecuteForm('%;%;0;1', 0, 2);
end;

procedure TfmMainMenu.mnuDOReprintClick(Sender: TObject);
begin
  inherited;

  // Param Array 1 : StatusWarehouse;
  // Param Array 2 : CurrentWarehouse;
  TfmDeliveryOrderReprint.ExecuteForm('%;' + FCurrentWarehouse);
end;

procedure TfmMainMenu.mnuDOSemuaGudangPendingClick(Sender: TObject);
begin
  inherited;

  // Param Array 1 : StatusWarehouse;
  // Param Array 2 : CurrentWarehouse;
  // Param Array 3 : CanPending;
  // Param Array 4 : CanReject;
  TfmDeliveryOrderPendingAndReject.ExecuteForm('%;%;1;0', 0, 0);
end;

procedure TfmMainMenu.mnuDOSemuaGudangPendingRejectClick(Sender: TObject);
begin
  inherited;

  // Param Array 1 : StatusWarehouse;
  // Param Array 2 : CurrentWarehouse;
  // Param Array 3 : CanPending;
  // Param Array 4 : CanReject;
  TfmDeliveryOrderPendingAndReject.ExecuteForm('%;%;1;1', 0, 2);
end;

procedure TfmMainMenu.mnuDOSemuaGudangRejectClick(Sender: TObject);
begin
  inherited;

  // Param Array 1 : StatusWarehouse;
  // Param Array 2 : CurrentWarehouse;
  // Param Array 3 : CanPending;
  // Param Array 4 : CanReject;
  TfmDeliveryOrderPendingAndReject.ExecuteForm('%;%;0;1', 0, 1);
end;

procedure TfmMainMenu.mnuDOTokoEntryClick(Sender: TObject);
begin
  inherited;

  // Param Array 1 : StatusWarehouse;
  // Param Array 2 : CurrentWarehouse;
  // Param Array 3 : CanApprove;
  // Param Array 4 : ReadOnly;
  TfmDeliveryOrder.ExecuteForm('1;%;1;0', 0, 3);
end;

procedure TfmMainMenu.mnuDOVirtualEntryClick(Sender: TObject);
begin
  inherited;

  // Param Array 1 : StatusWarehouse;
  // Param Array 2 : CurrentWarehouse;
  // Param Array 3 : CanApprove;
  // Param Array 4 : ReadOnly;
  TfmDeliveryOrder.ExecuteForm('2;%;1;0', 0, 4);
end;

procedure TfmMainMenu.mnuHargaBeliClick(Sender: TObject);
begin
  inherited;

  TfmPurchasePrice.ExecuteForm;
end;

procedure TfmMainMenu.mnuHargaJualClick(Sender: TObject);
begin
  inherited;

  TfmSalePrice.ExecuteForm;
end;

procedure TfmMainMenu.mnuHutangSupplierClick(Sender: TObject);
begin
  inherited;

  TfmDisplaySupplierAP.ExecuteForm;
end;

procedure TfmMainMenu.mnuItemCategoryClick(Sender: TObject);
begin
  inherited;

  TfmSuppliesCategory.ExecuteForm;
end;

procedure TfmMainMenu.mnuItemClick(Sender: TObject);
begin
  inherited;

  TfmSupplies.ExecuteForm;
end;

procedure TfmMainMenu.mnuItemInsertOnlyClick(Sender: TObject);
begin
  inherited;

  TfmSupplies.ExecuteForm('1');
end;

procedure TfmMainMenu.mnuKategoriClick(Sender: TObject);
begin
  inherited;

  TfmCategory.ExecuteForm;
end;

procedure TfmMainMenu.mnuMutasiAsalClick(Sender: TObject);
begin
  inherited;

  TfmMutation.ExecuteForm('', 1);
end;

procedure TfmMainMenu.mnuMutasiEntryClick(Sender: TObject);
begin
  inherited;

  TfmMutation.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuMutasiTujuanClick(Sender: TObject);
begin
  inherited;

  TfmMutation.ExecuteForm('', 2);
end;

procedure TfmMainMenu.mnuOTApprovalClick(Sender: TObject);
begin
  inherited;

  TfmOtherTransaction.ExecuteForm('', 1);
end;

procedure TfmMainMenu.mnuOTEntryClick(Sender: TObject);
begin
  inherited;

  TfmOtherTransaction.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuPaymentTypeClick(Sender: TObject);
begin
  inherited;

  TfmPaymentType.ExecuteForm;
end;

procedure TfmMainMenu.mnuPIApprovalClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseInvoice.ExecuteForm('0', 1, 1);
end;

procedure TfmMainMenu.mnuPIApprovalShowPriceClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseInvoice.ExecuteForm('1', 1, 2);
end;

procedure TfmMainMenu.mnuPIEditingClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseInvoiceEdit.ExecuteForm;
end;

procedure TfmMainMenu.mnuPIEntryClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseInvoice.ExecuteForm('0', 0);
end;

procedure TfmMainMenu.mnuPiutangCustomerClick(Sender: TObject);
begin
  inherited;

  TfmDisplayCustomerAR.ExecuteForm;
end;

procedure TfmMainMenu.mnuPOApproval1Click(Sender: TObject);
begin
  inherited;

  TfmPurchaseOrder.ExecuteForm('', 1);
end;

procedure TfmMainMenu.mnuPOApproval2Click(Sender: TObject);
begin
  inherited;

  TfmPurchaseOrder.ExecuteForm('', 2);
end;

procedure TfmMainMenu.mnuPOEntryClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseOrder.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuPPEntryClick(Sender: TObject);
begin
  inherited;

  TfmPurchasePayment.ExecuteForm;
end;

procedure TfmMainMenu.mnuPPKreditApprovalClick(Sender: TObject);
begin
  inherited;
                                    // Kredit
  TfmPurchasePaymentApproval.ExecuteForm('1', 1, 1);
end;

procedure TfmMainMenu.mnuPPTunaiApprovalClick(Sender: TObject);
begin
  inherited;
                                     // Tunai
  TfmPurchasePaymentApproval.ExecuteForm('0', 1, 0);
end;

procedure TfmMainMenu.mnuPRApprovalClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseReturn.ExecuteForm('', 1);
end;

procedure TfmMainMenu.mnuPREntryClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseReturn.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuRemainderClick(Sender: TObject);
begin
  inherited;

  TfmReminder.ExecuteForm;
end;

procedure TfmMainMenu.mnuRRApprovalClick(Sender: TObject);
begin
  inherited;

  TfmReceivingRecord.ExecuteForm('%;' + FCurrentWarehouse, 1, 1);
end;

procedure TfmMainMenu.mnuRREntryClick(Sender: TObject);
begin
  inherited;

  TfmReceivingRecord.ExecuteForm('%;' + FCurrentWarehouse, 0, 0);
end;

procedure TfmMainMenu.mnuRRRejectClick(Sender: TObject);
begin
  inherited;

  TfmReceivingRecord.ExecuteForm('%;' + FCurrentWarehouse, 2, 2);
end;

procedure TfmMainMenu.mnuRRTokoApprovalClick(Sender: TObject);
begin
  inherited;

  TfmReceivingRecord.ExecuteForm('1;%', 1, 4);
end;

procedure TfmMainMenu.mnuRRTokoEntryClick(Sender: TObject);
begin
  inherited;

  TfmReceivingRecord.ExecuteForm('1;%', 0, 3);
end;

procedure TfmMainMenu.mnuRRVirtualApprovalClick(Sender: TObject);
begin
  inherited;

  TfmReceivingRecord.ExecuteForm('2;%', 1, 6);
end;

procedure TfmMainMenu.mnuRRVirtualEntryClick(Sender: TObject);
begin
  inherited;

  TfmReceivingRecord.ExecuteForm('2;%', 0, 5);
end;

procedure TfmMainMenu.mnuSettingGlobalClick(Sender: TObject);
begin
  inherited;

  TfmSettingGlobalInventoryCustom01.ExecuteForm;
end;

procedure TfmMainMenu.mnuSIApproval1Click(Sender: TObject);
begin
  inherited;

  TfmSalesInvoice.ExecuteForm('', 1);
end;

procedure TfmMainMenu.mnuSIApproval2Click(Sender: TObject);
begin
  inherited;

  TfmSalesInvoice.ExecuteForm('', 2);
end;

procedure TfmMainMenu.mnuSIEditingClick(Sender: TObject);
begin
  inherited;

  TfmSalesInvoiceEdit.ExecuteForm;
end;

procedure TfmMainMenu.mnuSIEntryClick(Sender: TObject);
begin
  inherited;

  TfmSalesInvoice.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuSIReprintClick(Sender: TObject);
begin
  inherited;

  TfmSalesInvoiceReprint.ExecuteForm;
end;

procedure TfmMainMenu.mnuSOApprovalClick(Sender: TObject);
begin
  inherited;

  TfmSalesOrder.ExecuteForm('', 1);
end;

procedure TfmMainMenu.mnuSOEntryClick(Sender: TObject);
begin
  inherited;

  TfmSalesOrder.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuSPEntryClick(Sender: TObject);
begin
  inherited;

  TfmSalesPayment.ExecuteForm;
end;

procedure TfmMainMenu.mnuSPKreditApprovalClick(Sender: TObject);
begin
  inherited;
                                  // Kredit
  TfmSalesPaymentApproval.ExecuteForm('1', 1, 1);
end;

procedure TfmMainMenu.mnuSPTunaiApprovalClick(Sender: TObject);
begin
  inherited;
                                  // Tunai
  TfmSalesPaymentApproval.ExecuteForm('0', 1, 0);
end;

procedure TfmMainMenu.mnuSRApproval1Click(Sender: TObject);
begin
  inherited;

  TfmSalesReturn.ExecuteForm('', 1);
end;

procedure TfmMainMenu.mnuSRApproval2Click(Sender: TObject);
begin
  inherited;

  TfmSalesReturn.ExecuteForm('', 2);
end;

procedure TfmMainMenu.mnuSREntryClick(Sender: TObject);
begin
  inherited;

  TfmSalesReturn.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuStokFisikClick(Sender: TObject);
begin
  inherited;

  TfmDisplayStockActual.ExecuteForm;
end;

procedure TfmMainMenu.mnuStokNilaiClick(Sender: TObject);
begin
  inherited;

  TfmDisplayStock.ExecuteForm('1');
end;

procedure TfmMainMenu.mnuStokQuantityClick(Sender: TObject);
begin
  inherited;

  TfmDisplayStock.ExecuteForm('0');
end;

procedure TfmMainMenu.mnuSupplierClick(Sender: TObject);
begin
  inherited;

  TfmSupplier.ExecuteForm;
end;

procedure TfmMainMenu.mnuSupplierInsertOnlyClick(Sender: TObject);
begin
  inherited;

  TfmSupplier.ExecuteForm('1');
end;

procedure TfmMainMenu.mnuSDApprovalClick(Sender: TObject);
begin
  inherited;

  TfmSalesDownPayment.ExecuteForm('', 0, 1);
end;

procedure TfmMainMenu.mnuSDEntryClick(Sender: TObject);
begin
  inherited;

  TfmSalesDownPayment.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuPDApprovalClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseDownPayment.ExecuteForm('', 1);
end;

procedure TfmMainMenu.mnuPDEntryClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseDownPayment.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuTransactionTypeClick(Sender: TObject);
begin
  inherited;

  TfmTransactionType.ExecuteForm;
end;

procedure TfmMainMenu.mnuTutupTahunClick(Sender: TObject);
begin
  inherited;

  TfmClosingYear.ExecuteForm;
end;

procedure TfmMainMenu.mnuWarehouseClick(Sender: TObject);
begin
  inherited;

  TfmWarehouse.ExecuteForm;
end;

end.
