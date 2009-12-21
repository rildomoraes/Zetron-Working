program POS_Cashier;

uses
  Forms,
  Ioctl in '..\..\Modul General\Library\Ioctl.pas',
  untConstanta in '..\..\Modul General\Library\untConstanta.pas',
  untFastReport in '..\..\Modul General\Library\untFastReport.pas',
  untInitVCL in '..\..\Modul General\Library\untInitVCL.pas',
  untProcedure in '..\..\Modul General\Library\untProcedure.pas',
  untZetronServer in '..\..\Modul General\Library\untZetronServer.pas',
  untConstantaPos in 'Library\untConstantaPos.pas',
  frmUni in '..\..\Modul General\Form Template\frmUni.pas' {FormUni},
  frmUniPosition in '..\..\Modul General\Form Template\frmUniPosition.pas' {FormUniPosition},
  frmOpenWaiting in '..\..\Modul General\Form Open Waiting\frmOpenWaiting.pas' {fmOpenWaiting},
  dtmGlobal in '..\..\Modul General DAC\Data Modul Global\dtmGlobal.pas' {dmGlobal: TDataModul},
  dtmRegister in 'Data Modul Register\dtmRegister.pas' {dmRegister: TDataModule},
  dtmShare in 'Data Modul Share\dtmShare.pas' {dmShare: TDataModule},
  frmCardEntry in 'Form Main Menu Cashier\frmCardEntry.pas' {fmCardEntry},
  frmChangePrice in 'Form Main Menu Cashier\frmChangePrice.pas' {fmChangePrice},
  frmGetFPValidation in 'Form Main Menu Cashier\frmGetFPValidation.pas' {fmGetFPValidation},
  frmGetValidation in 'Form Main Menu Cashier\frmGetValidation.pas' {fmGetValidation},
  frmInputBoxDatetime in '..\..\Modul General\Form Input Box Datetime\frmInputBoxDatetime.pas' {fmInputBoxDatetime},
  frmInputBoxDecimal in '..\..\Modul General\Form Input Box Decimal\frmInputBoxDecimal.pas' {fmInputBoxDecimal},
  frmInputBoxString in '..\..\Modul General\Form Input Box String\frmInputBoxString.pas' {fmInputBoxString},
  frmLoginCashier in 'Form Login Cashier\frmLoginCashier.pas' {fmLogin},
  frmMainMenuCashier in 'Form Main Menu Cashier\frmMainMenuCashier.pas' {fmMainMenu},
  frmPaymentInfo in 'Form Main Menu Cashier\frmPaymentInfo.pas' {fmPaymentInfo},
  frmPhysicalCounter in 'Form Main Menu Cashier\frmPhysicalCounter.pas' {fmPhysicalCounter},
  frmPreviewFastReport in '..\..\Modul General\Form Preview FastReport\frmPreviewFastReport.pas' {fmPreviewFastReport},
  frmPreviewFastReportShowModal in '..\..\Modul General\Form Preview FastReport ShowModal\frmPreviewFastReportShowModal.pas' {fmPreviewFastReportShowModal},
  frmPrintFastReport in '..\..\Modul General\Form Print FastReport\frmPrintFastReport.pas' {fmPrintFastReport},
  frmRegisterPayment in 'Form Main Menu Cashier\frmRegisterPayment.pas' {fmRegisterPayment},
  frmRegisterPurchasePayment in 'Form Main Menu Cashier\frmRegisterPurchasePayment.pas' {fmRegisterPurchasePayment},
  frmRegisterSalesPayment in 'Form Main Menu Cashier\frmRegisterSalesPayment.pas' {fmRegisterSalesPayment},
  frmSearchInvoice in 'Form Main Menu Cashier\frmSearchInvoice.pas' {fmSearchInvoice},
  frmSearchItem in 'Form Main Menu Cashier\frmSearchItem.pas' {fmSearchItem};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Zetron Inventory - Cash Register';
  untConstanta.CurrentZetronApplication := zaInventoryCashier;
  untConstanta.CurrentConnectionEngine := ceUniDAC;
  untConstanta.CurrentDatabaseEngine := dePostgreSQL;
  Application.CreateForm(TdmGlobal, dmGlobal);
  Application.CreateForm(TdmShare, dmShare);
  Application.CreateForm(TdmRegister, dmRegister);
  Application.CreateForm(TfmMainMenu, fmMainMenu);
  Application.Run;
end.


