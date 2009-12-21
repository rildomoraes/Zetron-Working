program Ekspedisi;

uses
  Forms,
  Ioctl in '..\..\Modul General\Library\Ioctl.pas',
  untConstanta in '..\..\Modul General\Library\untConstanta.pas',
  untFastReport in '..\..\Modul General\Library\untFastReport.pas',
  untInitVCL in '..\..\Modul General\Library\untInitVCL.pas',
  untProcedure in '..\..\Modul General\Library\untProcedure.pas',
  dtmGlobal in '..\..\Modul General\Data Module Global\dtmGlobal.pas' {dmGlobal: TDataModule},
  frmAbout in '..\..\Modul General\Form About\frmAbout.pas' {fmAbout},
  frmBackupDatabase in '..\..\Modul General\Form Backup Database\frmBackupDatabase.pas' {fmBackupDatabase},
  frmChangePassword in '..\..\Modul General\Form Change Password\frmChangePassword.pas' {fmChangePassword},
  frmCity in '..\..\Modul General\Form City\frmCity.pas' {fmCity},
  frmCompany in '..\..\Modul General\Form Company\frmCompany.pas' {fmCompany},
  frmCountry in '..\..\Modul General\Form Country\frmCountry.pas' {fmCountry},
  frmDepartment in '..\..\Modul General\Form Department\frmDepartment.pas' {fmDepartment},
  frmEmployee in '..\..\Modul General\Form Employee\frmEmployee.pas' {fmEmployee},
  frmExportImportData in '..\..\Modul General\Form Export Import Data\frmExportImportData.pas' {fmExportImportData},
  frmExportReport in '..\..\Modul General\Form Export Report\frmExportReport.pas' {fmExportReport},
  frmImportReport in '..\..\Modul General\Form Import Report\frmImportReport.pas' {fmImportReport},
  frmLogin in '..\..\Modul General\Form Login\frmLogin.pas' {fmLogin},
  frmUniMainMenu in '..\..\Modul General\Form Template\frmUniMainMenu.pas' {FormUniMainMenu},
  frmMaintainceDatabase in '..\..\Modul General\Form Maintaince Database\frmMaintainceDatabase.pas' {fmMaintainceDatabase},
  frmOpenWaiting in '..\..\Modul General\Form Open Waiting\frmOpenWaiting.pas' {fmOpenWaiting},
  frmPosition in '..\..\Modul General\Form Position\frmPosition.pas' {fmPosition},
  frmPreviewFastReport in '..\..\Modul General\Form Preview FastReport\frmPreviewFastReport.pas' {fmPreviewFastReport},
  frmPrintFastReport in '..\..\Modul General\Form Print FastReport\frmPrintFastReport.pas' {fmPrintFastReport},
  frmProvince in '..\..\Modul General\Form Province\frmProvince.pas' {fmProvince},
  frmReportDesigner in '..\..\Modul General\Form Report Designer\frmReportDesigner.pas' {fmReportDesigner},
  frmSecurity in '..\..\Modul General\Form Security\frmSecurity.pas' {fmSecurity},
  frmSettingLocal in '..\..\Modul General\Form Setting Local\frmSettingLocal.pas' {fmSettingLocal},
  frmUni in '..\..\Modul General\Form Template\frmUni.pas' {FormUni},
  frmUniDB in '..\..\Modul General\Form Template\frmUniDB.pas' {FormUniDB},
  frmUniDBEditableEx in '..\..\Modul General\Form Template\frmUniDBEditableEx.pas' {FormUniDBEditableEx},
  frmUniDBNavigator in '..\..\Modul General\Form Template\frmUniDBNavigator.pas' {FormUniDBNavigator},
  frmUniDBNavigatorEx in '..\..\Modul General\Form Template\frmUniDBNavigatorEx.pas' {FormUniDBNavigatorEx},
  frmUniDisplay in '..\..\Modul General\Form Template\frmUniDisplay.pas' {FormUniDisplay},
  frmUniDisplayPeriod in '..\..\Modul General\Form Template\frmUniDisplayPeriod.pas' {FormUniDisplayPeriod},
  frmUniMasterEx in '..\..\Modul General\Form Template\frmUniMasterEx.pas' {FormUniMasterEx},
  frmUniPosition in '..\..\Modul General\Form Template\frmUniPosition.pas' {FormUniPosition},
  untZetronServer in '..\..\Modul General\Library\untZetronServer.pas',
  frmCurrency in '..\..\Modul General\Form Currency\frmCurrency.pas' {fmCurrency},
  frmDailyKurs in '..\..\Modul General\Form Daily Kurs\frmDailyKurs.pas' {fmDailyKurs},
  frmUniDBPrintableEx in '..\..\Modul General\Form Template\frmUniDBPrintableEx.pas' {FormUniDBPrintableEx},
  frmUniTransactionEx in '..\..\Modul General\Form Template\frmUniTransactionEx.pas' {FormUniTransactionEx},
  frmReportCategory in '..\..\Modul General\Form Report Category\frmReportCategory.pas' {fmReportCategory},
  frmClosingDate in '..\..\Modul General\Form Closing Date\frmClosingDate.pas' {fmClosingDate},
  frmMainMenu in 'Form Main Menu\frmMainMenu.pas' {fmMainMenu},
  dtmEkspedisi in 'Data Modul Ekspedisi\dtmEkspedisi.pas' {dmEkspedisi: TDataModule},
  frmStorageLocation in 'Form Storage Location\frmStorageLocation.pas' {fmStorageLocation},
  frmShipCrew in 'Form Ship Crew\frmShipCrew.pas' {fmShipCrew},
  frmShip in 'Form Ship\frmShip.pas' {fmShip},
  frmRoute in 'Form Route\frmRoute.pas' {fmRoute},
  frmShipDailyLog in 'Form Ship Daily Log\frmShipDailyLog.pas' {fmShipDailyLog},
  frmMerek in 'Form Merek\frmMerek.pas' {fmMerek},
  frmTarifItem in 'Form Tarif Item\frmTarifItem.pas' {fmTarifItem},
  frmTarifType in 'Form Tarif Type\frmTarifType.pas' {fmTarifType},
  frmShipRoute in 'Form Ship Route\frmShipRoute.pas' {fmShipRoute},
  frmSuppliesReceive in 'Form Supplies Receive\frmSuppliesReceive.pas' {fmSuppliesReceive},
  untEkspedisi in 'Library\untEkspedisi.pas',
  frmTrxShipDailyLog in 'Form Trx Ship Daily Log\frmTrxShipDailyLog.pas' {fmTrxShipDailyLog},
  frmTrayek in 'Form Trayek\frmTrayek.pas' {fmTrayek},
  frmKonosemen in 'Form Transaksi Konosemen\frmKonosemen.pas' {fmKonosemen},
  frmPacking in 'Form Packing\frmPacking.pas' {fmPacking},
  frmCountry2 in 'Form Country2\frmCountry2.pas' {fmCountry2},
  frmMutasi in 'Form Mutasi\frmMutasi.pas' {fmMutasi},
  frmDisplaySuppliesReceive in 'Form Display Supplies Receive\frmDisplaySuppliesReceive.pas' {fmDisplaySuppliesReceive},
  frmDisplayStock in 'Form Display Stock\frmDisplayStock.pas' {fmDisplayStock},
  frmDisplayPacking in 'Form Display Packing\frmDisplayPacking.pas' {fmDisplayPacking},
  frmSettingGlobal in '..\..\Modul General\Form Setting Global\frmSettingGlobal.pas' {fmSettingGlobal},
  frmBongkaran in 'Form Bongkaran\frmBongkaran.pas' {fmBongkaran},
  frmBeritaAcara in 'Form Berita Acara\frmBeritaAcara.pas' {fmBeritaAcara},
  frmSuratJalan in 'Form Surat Jalan\frmSuratJalan.pas' {fmSuratJalan},
  frmDaftarMuatKapal in 'Form Daftar Muat Kapal\frmDaftarMuatKapal.pas' {fmDaftarMuatKapal},
  frmKonosemenCustom in 'Form Transaksi Konosemen Custom\frmKonosemenCustom.pas' {fmKonosemenCustom},
  frmCounter in '..\..\Modul General\Form Master Counter\frmCounter.pas' {fmCounter},
  frmDisplayStockLokasi in 'Form Display Stock Lokasi\frmDisplayStockLokasi.pas' {fmDisplayStockLokasi},
  frmUnitMeasure in 'Form Unit Measure\frmUnitMeasure.pas' {fmUnitMeasure},
  frmDisplayBeritaAcara in 'Form Display Berita Acara\frmDisplayBeritaAcara.pas' {fmDisplayBeritaAcara},
  frmDisplayKonosemen in 'Form Display Konosemen\frmDisplayKonosemen.pas' {fmDisplayKonosemen},
  frmDisplayStock2 in 'Form Display Stock2\frmDisplayStock2.pas' {fmDisplayStock2},
  frmDisplayStock3 in 'Form Display Stock3\frmDisplayStock3.pas' {fmDisplayStock3},
  frmDisplaySearchPacking in 'Form Display Search Packing\frmDisplaySearchPacking.pas' {fmDisplaySearchPacking},
  frmTransactionPacking in 'Form Transaction Packing\frmTransactionPacking.pas' {fmTransactionPacking},
  frmCustomerCategory in '..\..\Project Manufacture\Scr\Form Customer Category\frmCustomerCategory.pas' {fmCustomerCategory},
  frmCustomer in 'Form Customer\frmCustomer.pas' {fmCustomer},
  frmDisplaySearchMutasi1 in 'Display Search Mutasi-SJ\frmDisplaySearchMutasi1.pas' {fmDisplaySearchMutasi1},
  frmDisplaySearchMutasi2 in 'Form Display Search Mutasi-Packing\frmDisplaySearchMutasi2.pas' {fmDisplaySearchMutasi2},
  frmLogDictionary in 'Form LogDictionary\frmLogDictionary.pas' {fmLogDictionary},
  frmEnrollmentFingerPrint in '..\..\Modul General\Form Enrollment FingerPrint\frmEnrollmentFingerPrint.pas' {fmEnrollmentFingerPrint};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Zetron Ekspedisi';
  untConstanta.CurrentZetronApplication := zaEkspedisi;
  untConstanta.CurrentConnectionEngine := ceADO;
  untConstanta.CurrentDatabaseEngine := deMSSQLServer;
  Application.CreateForm(TdmGlobal, dmGlobal);
  Application.CreateForm(TdmEkspedisi, dmEkspedisi);
  Application.CreateForm(TfmMainMenu, fmMainMenu);
  Application.Run;
end.



