program Manufacture_Packaging_BIG;

uses
  Forms,
  Ioctl in '..\..\Modul General\Library\Ioctl.pas',
  untConstanta in '..\..\Modul General\Library\untConstanta.pas',
  untFastReport in '..\..\Modul General\Library\untFastReport.pas',
  untInitVCL in '..\..\Modul General\Library\untInitVCL.pas',
  untProcedure in '..\..\Modul General\Library\untProcedure.pas',
  untZetronServer in '..\..\Modul General\Library\untZetronServer.pas',
  dtmAccounting in '..\..\Modul Accounting\Data Module Accounting\dtmAccounting.pas' {dmAccounting: TDataModule},
  dtmGlobal in '..\..\Modul General\Data Module Global\dtmGlobal.pas' {dmGlobal: TDataModule},
  dtmInventory in 'Data Module Inventory\dtmInventory.pas' {dmInventory: TDataModule},
  frmAbout in '..\..\Modul General\Form About\frmAbout.pas' {fmAbout},
  frmBackupDatabase in '..\..\Modul General\Form Backup Database\frmBackupDatabase.pas' {fmBackupDatabase},
  frmChangePassword in '..\..\Modul General\Form Change Password\frmChangePassword.pas' {fmChangePassword},
  frmCity in '..\..\Modul General\Form City\frmCity.pas' {fmCity},
  frmClosingDate in '..\..\Modul General\Form Closing Date\frmClosingDate.pas' {fmClosingDate},
  frmCOA in '..\..\Modul Accounting\Form COA\frmCOA.pas' {fmCOA},
  frmCompany in '..\..\Modul General\Form Company\frmCompany.pas' {fmCompany},
  frmCountry in '..\..\Modul General\Form Country\frmCountry.pas' {fmCountry},
  frmCurrency in '..\..\Modul General\Form Currency\frmCurrency.pas' {fmCurrency},
  frmDailyKurs in '..\..\Modul General\Form Daily Kurs\frmDailyKurs.pas' {fmDailyKurs},
  frmDepartment in '..\..\Modul General\Form Department\frmDepartment.pas' {fmDepartment},
  frmEmployee in '..\..\Modul General\Form Employee\frmEmployee.pas' {fmEmployee},
  frmExportImportData in '..\..\Modul General\Form Export Import Data\frmExportImportData.pas' {fmExportImportData},
  frmExportReport in '..\..\Modul General\Form Export Report\frmExportReport.pas' {fmExportReport},
  frmImportReport in '..\..\Modul General\Form Import Report\frmImportReport.pas' {fmImportReport},
  frmMainMenu in 'Form Main Menu BIG\frmMainMenu.pas' {fmMainMenu},
  frmMaintainceDatabase in '..\..\Modul General\Form Maintaince Database\frmMaintainceDatabase.pas' {fmMaintainceDatabase},
  frmOpenWaiting in '..\..\Modul General\Form Open Waiting\frmOpenWaiting.pas' {fmOpenWaiting},
  frmPosition in '..\..\Modul General\Form Position\frmPosition.pas' {fmPosition},
  frmPreviewFastReport in '..\..\Modul General\Form Preview FastReport\frmPreviewFastReport.pas' {fmPreviewFastReport},
  frmPrintFastReport in '..\..\Modul General\Form Print FastReport\frmPrintFastReport.pas' {fmPrintFastReport},
  frmProvince in '..\..\Modul General\Form Province\frmProvince.pas' {fmProvince},
  frmReportCategory in '..\..\Modul General\Form Report Category\frmReportCategory.pas' {fmReportCategory},
  frmReportDesigner in '..\..\Modul General\Form Report Designer\frmReportDesigner.pas' {fmReportDesigner},
  frmSecurity in '..\..\Modul General\Form Security\frmSecurity.pas' {fmSecurity},
  frmSettingGlobal in '..\..\Modul General\Form Setting Global\frmSettingGlobal.pas' {fmSettingGlobal},
  frmSettingGlobalPackaging in '..\..\Modul General\Form Setting Global\frmSettingGlobalPackaging.pas' {fmSettingGlobalPackaging},
  frmSettingLocal in '..\..\Modul General\Form Setting Local\frmSettingLocal.pas' {fmSettingLocal},
  frmUni in '..\..\Modul General\Form Template\frmUni.pas' {FormUni},
  frmUniDB in '..\..\Modul General\Form Template\frmUniDB.pas' {FormUniDB},
  frmUniDBEditableEx in '..\..\Modul General\Form Template\frmUniDBEditableEx.pas' {FormUniDBEditableEx},
  frmUniDBNavigator in '..\..\Modul General\Form Template\frmUniDBNavigator.pas' {FormUniDBNavigator},
  frmUniDBNavigatorEx in '..\..\Modul General\Form Template\frmUniDBNavigatorEx.pas' {FormUniDBNavigatorEx},
  frmUniDBPrintableEx in '..\..\Modul General\Form Template\frmUniDBPrintableEx.pas' {FormUniDBPrintableEx},
  frmUniDisplay in '..\..\Modul General\Form Template\frmUniDisplay.pas' {FormUniDisplay},
  frmUniDisplayPeriod in '..\..\Modul General\Form Template\frmUniDisplayPeriod.pas' {FormUniDisplayPeriod},
  frmUniList in '..\..\Modul General\Form Template\frmUniList.pas' {FormUniList},
  frmUniMainMenu in '..\..\Modul General\Form Template\frmUniMainMenu.pas' {FormUniMainMenu},
  frmUniManufacture in '..\..\Modul General\Form Template\frmUniManufacture.pas' {FormUniManufacture},
  frmUniMasterEx in '..\..\Modul General\Form Template\frmUniMasterEx.pas' {FormUniMasterEx},
  frmUniPosition in '..\..\Modul General\Form Template\frmUniPosition.pas' {FormUniPosition},
  frmUniTransactionEx in '..\..\Modul General\Form Template\frmUniTransactionEx.pas' {FormUniTransactionEx},
  frmWarehouse in 'Form Warehouse\frmWarehouse.pas' {fmWarehouse},
  frmCustomerCategory in 'Form Customer Category\frmCustomerCategory.pas' {fmCustomerCategory},
  frmShipping in 'Form Shipping\frmShipping.pas' {fmShipping},
  frmCustomer in 'Form Customer\frmCustomer.pas' {fmCustomer},
  frmVendor in 'Form Vendor\frmVendor.pas' {fmVendor},
  frmItemCategory in 'Form Item Category\frmItemCategory.pas' {fmItemCategory},
  frmItem in 'Form Item\frmItem.pas' {fmItem},
  frmMaterial in 'Form Material\frmMaterial.pas' {fmMaterial},
  frmBillMaterial in 'Form Bill Material\frmBillMaterial.pas' {fmBillMaterial},
  frmBillMaterialModify in 'Form Bill Material\frmBillMaterialModify.pas' {fmBillMaterialModify},
  frmPOManufacture in 'Form PO Manufacture\frmPOManufacture.pas' {fmPOManufacture},
  frmSPK in 'Form SPK\frmSPK.pas' {fmSPK},
  frmPenerimaanBarang in 'Form Penerimaan Barang\frmPenerimaanBarang.pas' {fmPenerimaanBarang},
  frmPenerimaanBarangItem in 'Form Penerimaan Barang\frmPenerimaanBarangItem.pas' {fmPenerimaanBarangItem},
  frmLHP in 'Form LHP\frmLHP.pas' {fmLHP},
  frmVendorCategory in 'Form Vendor Category\frmVendorCategory.pas' {fmVendorCategory},
  frmCosting in 'Form Costing\frmCosting.pas' {fmCosting},
  frmItemPlastik in 'Form Item\frmItemPlastik.pas' {fmItemPlastik},
  frmBillMaterialInsert in 'Form Bill Material\frmBillMaterialInsert.pas' {fmBillMaterialInsert},
  frmCostingPrice in 'Form Costing Price\frmCostingPrice.pas' {fmCostingPrice},
  dtmManufacture in 'Data Module Manufacture\dtmManufacture.pas' {dmManufacture: TDataModule},
  frmProductionUnit in 'Form Production Unit\frmProductionUnit.pas' {fmProductionUnit},
  frmEngine in 'Form Engine\frmEngine.pas' {fmEngine},
  frmGrader in 'Form Grader\frmGrader.pas' {fmGrader},
  frmKoorGrader in 'Form Koor Grader\frmKoorGrader.pas' {fmKoorGrader},
  frmTallyman in 'Form Tallyman\frmTallyman.pas' {fmTallyMan},
  frmDisplayStock in 'Form Display Stock\frmDisplayStock.pas' {fmDisplayStock},
  frmPurchasePrice in 'Form Purchase Price\frmPurchasePrice.pas' {fmPurchasePrice},
  frmSalePrice in 'Form Sale Price\frmSalePrice.pas' {fmSalePrice},
  frmSalePriceList in 'Form Sale Price List\frmSalePriceList.pas' {fmSalePriceList},
  frmPurchasePriceList in 'Form Purchase Price List\frmPurchasePriceList.pas' {fmPurchasePriceList},
  frmPOManufactureItem in 'Form PO Manufacture\frmPOManufactureItem.pas' {fmPOManufactureItem},
  frmSPKBOM in 'Form SPK\frmSPKBOM.pas' {fmSPKBOM},
  frmPurchaseInvoice in 'Form Purchase Invoice\frmPurchaseInvoice.pas' {fmPurchaseInvoice},
  frmProject in 'Form Project\frmProject.pas' {fmProject},
  frmOutlet in 'Form Outlet\frmOutlet.pas' {fmOutlet},
  frmJournal in 'Form Journal\frmJournal.pas' {fmJournal},
  frmTallyEntry in 'Form Tally Entry\frmTallyEntry.pas' {fmTallyEntry},
  frmTallySquareEntry in 'Form Tally Entry\frmTallySquareEntry.pas' {fmTallySquareEntry},
  frmTallyLogEntry in 'Form Tally Entry\frmTallyLogEntry.pas' {fmTallyLogEntry},
  frmTallyItemEntry in 'Form Tally Entry\frmTallyItemEntry.pas' {fmTallyItemEntry},
  frmLogin in '..\..\Modul General\Form Login\frmLogin.pas' {fmLogin},
  frmEnrollmentFingerPrint in '..\..\Modul General\Form Enrollment FingerPrint\frmEnrollmentFingerPrint.pas' {fmEnrollmentFingerPrint};

{$R *.res}

var
  ProjectId : string;
begin
  Application.Initialize;
  Application.Title := 'Zetron Manufacture Packaging';
  untConstanta.CurrentZetronApplication := zaManufacturePackaging;
  untConstanta.CurrentConnectionEngine := ceADO;
  untConstanta.CurrentDatabaseEngine := deMSSQLServer;
  Application.CreateForm(TdmGlobal, dmGlobal);
  Application.CreateForm(TdmInventory, dmInventory);
  Application.CreateForm(TdmAccounting, dmAccounting);
  Application.CreateForm(TdmManufacture, dmManufacture);
  Application.CreateForm(TfmMainMenu, fmMainMenu);
  Application.Run;
end.



