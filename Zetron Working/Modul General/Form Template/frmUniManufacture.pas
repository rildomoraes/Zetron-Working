unit frmUniManufacture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMainMenu, ActnList, Menus, AppEvnts, ExtCtrls, ComCtrls;

type
  TFormUniManufacture = class(TFormUniMainMenu)
    mnuBOM: TMenuItem;
    mnuBPPB: TMenuItem;
    mnuClosingDate: TMenuItem;
    mnuCosting: TMenuItem;
    mnuCostingBarang: TMenuItem;
    mnuCustomer: TMenuItem;
    mnuDisplayStock: TMenuItem;
    mnuDisplayStockQty: TMenuItem;
    mnuEngine: TMenuItem;
    mnuExpedisi: TMenuItem;
    mnuGrader: TMenuItem;
    mnuGudang: TMenuItem;
    mnuHargaBeli: TMenuItem;
    mnuHargaCosting: TMenuItem;
    mnuHargaJual: TMenuItem;
    mnuHargaPerCustomer: TMenuItem;
    mnuHargaPerSupplier: TMenuItem;
    mnuInventory: TMenuItem;
    mnuItem: TMenuItem;
    mnuItemCategory: TMenuItem;
    mnuKategoriCustomer: TMenuItem;
    mnuKategoriSupplier: TMenuItem;
    mnuKoordinatorGrader: TMenuItem;
    mnuKursHarian: TMenuItem;
    mnuLHP: TMenuItem;
    mnuMataUang: TMenuItem;
    mnuMaterial: TMenuItem;
    mnuOrderPembelian: TMenuItem;
    mnuOrderPenjualan: TMenuItem;
    mnuPembelian: TMenuItem;
    mnuLPB: TMenuItem;
    mnuPenjualan: TMenuItem;
    mnuPerson: TMenuItem;
    mnuPriceListCustomer: TMenuItem;
    mnuPriceListSupplier: TMenuItem;
    mnuProduction: TMenuItem;
    mnuProductionUnit: TMenuItem;
    mnuProduksi: TMenuItem;
    mnuSupplier: TMenuItem;
    mnuSupplierCustomer: TMenuItem;
    mnuSPK: TMenuItem;
    mnuTallyman: TMenuItem;
    SP10: TMenuItem;
    SP11: TMenuItem;
    SP12: TMenuItem;
    SP13: TMenuItem;
    SP14: TMenuItem;
    SP15: TMenuItem;
    SP8: TMenuItem;
    SP9: TMenuItem;
    mnuAkunting: TMenuItem;
    mnuCOA: TMenuItem;
    mnuTransaksi: TMenuItem;
    mnuTransaksiLainLain: TMenuItem;
    mnuPI: TMenuItem;
    mnuOutlet: TMenuItem;
    mnuProject: TMenuItem;
    SP16: TMenuItem;
    procedure mnuBOMClick(Sender: TObject);
    procedure mnuClosingDateClick(Sender: TObject);
    procedure mnuCostingBarangClick(Sender: TObject);
    procedure mnuCustomerClick(Sender: TObject);
    procedure mnuDisplayStockClick(Sender: TObject);
    procedure mnuDisplayStockQtyClick(Sender: TObject);
    procedure mnuEngineClick(Sender: TObject);
    procedure mnuExpedisiClick(Sender: TObject);
    procedure mnuGraderClick(Sender: TObject);
    procedure mnuGudangClick(Sender: TObject);
    procedure mnuHargaCostingClick(Sender: TObject);
    procedure mnuHargaPerCustomerClick(Sender: TObject);
    procedure mnuHargaPerSupplierClick(Sender: TObject);
    procedure mnuItemCategoryClick(Sender: TObject);
    procedure mnuKategoriCustomerClick(Sender: TObject);
    procedure mnuKategoriSupplierClick(Sender: TObject);
    procedure mnuKoordinatorGraderClick(Sender: TObject);
    procedure mnuKursHarianClick(Sender: TObject);
    procedure mnuMataUangClick(Sender: TObject);
    procedure mnuMaterialClick(Sender: TObject);
    procedure mnuPriceListCustomerClick(Sender: TObject);
    procedure mnuPriceListSupplierClick(Sender: TObject);
    procedure mnuProductionUnitClick(Sender: TObject);
    procedure mnuSupplierClick(Sender: TObject);
    procedure mnuTallymanClick(Sender: TObject);
    procedure mnuCOAClick(Sender: TObject);
    procedure mnuPIClick(Sender: TObject);
    procedure mnuOutletClick(Sender: TObject);
    procedure mnuProjectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUniManufacture: TFormUniManufacture;

implementation

{$R *.dfm}

uses
  // Master
  frmClosingDate, frmCurrency, frmDailyKurs, frmVendorCategory,
  frmCustomerCategory, frmVendor, frmCustomer, frmShipping, frmWarehouse,
  frmProductionUnit, frmEngine, frmTallyman, frmKoorGrader, frmGrader,
  frmCOA, frmOutlet, frmProject,

  // Inventory
  frmItemCategory, frmMaterial, frmBillMaterial, frmCostingPrice, frmCosting,

  // Process

  // Pembelian
  frmPurchasePrice, frmPurchasePriceList, frmPurchaseInvoice,

  // Penjualan
  frmSalePrice, frmSalePriceList,

  // Production

  // Display
  frmDisplayStock;

procedure TFormUniManufacture.mnuCostingBarangClick(Sender: TObject);
begin
  inherited;

  TfmCosting.ExecuteForm;
end;

procedure TFormUniManufacture.mnuHargaCostingClick(Sender: TObject);
begin
  inherited;

  TfmCostingPrice.ExecuteForm;
end;

procedure TFormUniManufacture.mnuHargaPerCustomerClick(Sender: TObject);
begin
  inherited;

  TfmSalePrice.ExecuteForm;
end;

procedure TFormUniManufacture.mnuHargaPerSupplierClick(Sender: TObject);
begin
  inherited;

  TfmPurchasePrice.ExecuteForm;
end;

procedure TFormUniManufacture.mnuBOMClick(Sender: TObject);
begin
  inherited;

  TfmBillMaterial.ExecuteForm;
end;

procedure TFormUniManufacture.mnuClosingDateClick(Sender: TObject);
begin
  inherited;

  TfmClosingDate.ExecuteForm;
end;

procedure TFormUniManufacture.mnuCustomerClick(Sender: TObject);
begin
  inherited;

  TfmCustomer.ExecuteForm;
end;

procedure TFormUniManufacture.mnuDisplayStockQtyClick(Sender: TObject);
begin
  inherited;
                             // Qty Only
  TfmDisplayStock.ExecuteForm('1');
end;

procedure TFormUniManufacture.mnuDisplayStockClick(Sender: TObject);
begin
  inherited;
                             // Qty & Price
  TfmDisplayStock.ExecuteForm('0');
end;

procedure TFormUniManufacture.mnuEngineClick(Sender: TObject);
begin
  inherited;

  TfmEngine.ExecuteForm;
end;

procedure TFormUniManufacture.mnuExpedisiClick(Sender: TObject);
begin
  inherited;

  TfmShipping.ExecuteForm;
end;

procedure TFormUniManufacture.mnuGraderClick(Sender: TObject);
begin
  inherited;

  TfmGrader.ExecuteForm;
end;

procedure TFormUniManufacture.mnuGudangClick(Sender: TObject);
begin
  inherited;

  TfmWarehouse.ExecuteForm;
end;

procedure TFormUniManufacture.mnuItemCategoryClick(Sender: TObject);
begin
  inherited;

  TfmItemCategory.ExecuteForm;
end;

procedure TFormUniManufacture.mnuKategoriCustomerClick(Sender: TObject);
begin
  inherited;

  TfmCustomerCategory.ExecuteForm;
end;

procedure TFormUniManufacture.mnuKategoriSupplierClick(Sender: TObject);
begin
  inherited;

  TfmVendorCategory.ExecuteForm;
end;

procedure TFormUniManufacture.mnuCOAClick(Sender: TObject);
begin
  inherited;

  TfmCOA.ExecuteForm;
end;

procedure TFormUniManufacture.mnuKoordinatorGraderClick(Sender: TObject);
begin
  inherited;

  TfmKoorGrader.ExecuteForm;
end;

procedure TFormUniManufacture.mnuKursHarianClick(Sender: TObject);
begin
  inherited;

  TfmDailyKurs.ExecuteForm;
end;

procedure TFormUniManufacture.mnuMataUangClick(Sender: TObject);
begin
  inherited;

  TfmCurrency.ExecuteForm;
end;

procedure TFormUniManufacture.mnuMaterialClick(Sender: TObject);
begin
  inherited;

  TfmMaterial.ExecuteForm;
end;

procedure TFormUniManufacture.mnuOutletClick(Sender: TObject);
begin
  inherited;

  TfmOutlet.ExecuteForm;
end;

procedure TFormUniManufacture.mnuPIClick(Sender: TObject);
begin
  inherited;

  TfmPurchaseInvoice.ExecuteForm;
end;

procedure TFormUniManufacture.mnuPriceListCustomerClick(Sender: TObject);
begin
  inherited;

  TfmSalePriceList.ExecuteForm;
end;

procedure TFormUniManufacture.mnuPriceListSupplierClick(Sender: TObject);
begin
  inherited;

  TfmPurchasePriceList.ExecuteForm;
end;

procedure TFormUniManufacture.mnuProductionUnitClick(Sender: TObject);
begin
  inherited;

  TfmProductionUnit.ExecuteForm;
end;

procedure TFormUniManufacture.mnuProjectClick(Sender: TObject);
begin
  inherited;

  TfmProject.ExecuteForm;
end;

procedure TFormUniManufacture.mnuSupplierClick(Sender: TObject);
begin
  inherited;

  TfmVendor.ExecuteForm;
end;

procedure TFormUniManufacture.mnuTallymanClick(Sender: TObject);
begin
  inherited;

  TfmTallyman.ExecuteForm;
end;

end.
