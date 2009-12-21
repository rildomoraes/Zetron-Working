program Payroll;



uses
  Forms,
  Ioctl in '..\..\Modul General\Library\Ioctl.pas',
  untConstanta in '..\..\Modul General\Library\untConstanta.pas',
  untFastReport in '..\..\Modul General\Library\untFastReport.pas',
  untInitVCL in '..\..\Modul General\Library\untInitVCL.pas',
  untProcedure in '..\..\Modul General\Library\untProcedure.pas',
  untZetronServer in '..\..\Modul General\Library\untZetronServer.pas',
  frmOpenWaiting in '..\..\Modul General\Form Open Waiting\frmOpenWaiting.pas' {fmOpenWaiting},
  frmUni in '..\..\Modul General\Form Template\frmUni.pas' {FormUni},
  frmUniDB in '..\..\Modul General\Form Template\frmUniDB.pas' {FormUniDB},
  frmUniDBEditableEx in '..\..\Modul General\Form Template\frmUniDBEditableEx.pas' {FormUniDBEditableEx},
  frmUniDBNavigator in '..\..\Modul General\Form Template\frmUniDBNavigator.pas' {FormUniDBNavigator},
  frmUniDBNavigatorEx in '..\..\Modul General\Form Template\frmUniDBNavigatorEx.pas' {FormUniDBNavigatorEx},
  frmUniDBPrintableEx in '..\..\Modul General\Form Template\frmUniDBPrintableEx.pas' {FormUniDBPrintableEx},
  frmUniDisplay in '..\..\Modul General\Form Template\frmUniDisplay.pas' {FormUniDisplay},
  frmUniDisplayPeriod in '..\..\Modul General\Form Template\frmUniDisplayPeriod.pas' {FormUniDisplayPeriod},
  frmUniMasterEx in '..\..\Modul General\Form Template\frmUniMasterEx.pas' {FormUniMasterEx},
  frmUniPosition in '..\..\Modul General\Form Template\frmUniPosition.pas' {FormUniPosition},
  frmUniTransactionEx in '..\..\Modul General\Form Template\frmUniTransactionEx.pas' {FormUniTransactionEx},
  dtmGlobal in '..\..\Modul General\Data Module Global\dtmGlobal.pas' {dmGlobal: TDataModule},
  frmAbout in '..\..\Modul General\Form About\frmAbout.pas' {fmAbout},
  frmBackupDatabase in '..\..\Modul General\Form Backup Database\frmBackupDatabase.pas' {fmBackupDatabase},
  frmChangePassword in '..\..\Modul General\Form Change Password\frmChangePassword.pas' {fmChangePassword},
  frmCity in '..\..\Modul General\Form City\frmCity.pas' {fmCity},
  frmClosingDate in 'Form Closing Date\frmClosingDate.pas' {fmClosingDate},
  frmClosingYear in 'Form Closing Year\frmClosingYear.pas' {fmClosingYear},
  frmCompany in '..\..\Modul General\Form Company\frmCompany.pas' {fmCompany},
  frmCountry in '..\..\Modul General\Form Country\frmCountry.pas' {fmCountry},
  frmDepartment in '..\..\Modul General\Form Department\frmDepartment.pas' {fmDepartment},
  frmEmployee in '..\..\Modul General\Form Employee\frmEmployee.pas' {fmEmployee},
  frmEnrollmentFingerPrint in '..\..\Modul General\Form Enrollment FingerPrint\frmEnrollmentFingerPrint.pas' {fmEnrollmentFingerPrint},
  frmExportImportData in '..\..\Modul General\Form Export Import Data\frmExportImportData.pas' {fmExportImportData},
  frmExportReport in '..\..\Modul General\Form Export Report\frmExportReport.pas' {fmExportReport},
  frmImportReport in '..\..\Modul General\Form Import Report\frmImportReport.pas' {fmImportReport},
  frmLogin in '..\..\Modul General\Form Login\frmLogin.pas' {fmLogin},
  frmMaintainceDatabase in '..\..\Modul General\Form Maintaince Database\frmMaintainceDatabase.pas' {fmMaintainceDatabase},
  frmPosition in '..\..\Modul General\Form Position\frmPosition.pas' {fmPosition},
  frmPreviewFastReport in '..\..\Modul General\Form Preview FastReport\frmPreviewFastReport.pas' {fmPreviewFastReport},
  frmPrintFastReport in '..\..\Modul General\Form Print FastReport\frmPrintFastReport.pas' {fmPrintFastReport},
  frmProvince in '..\..\Modul General\Form Province\frmProvince.pas' {fmProvince},
  frmReportDesigner in '..\..\Modul General\Form Report Designer\frmReportDesigner.pas' {fmReportDesigner},
  frmSecurity in '..\..\Modul General\Form Security\frmSecurity.pas' {fmSecurity},
  frmSettingLocal in '..\..\Modul General\Form Setting Local\frmSettingLocal.pas' {fmSettingLocal},
  dtmGeneral in 'Data Module General\dtmGeneral.pas' {dmGeneral: TDataModule},
  dtmShare in 'Data Module Share\dtmShare.pas' {dmShare: TDataModule},
  frmAbsenManual in 'Form Absen Manual\frmAbsenManual.pas' {fmAbsenManual},
  frmAssets in 'Form Assets\frmAssets.pas' {fmAssets},
  frmBahasa in 'Form Bahasa\frmBahasa.pas' {fmBahasa},
  frmBank in 'Form Bank\frmBank.pas' {fmBank},
  frmCaptureFoto in 'Form Capture Foto\frmCaptureFoto.pas' {fmCaptureFoto},
  frmClosingShift in 'Form Closing Shift\frmClosingShift.pas' {fmClosingShift},
  frmDisplayAbsen in 'Form Display Absen\frmDisplayAbsen.pas' {fmDisplayAbsensi},
  frmDisplayGaji in 'Form Display Gaji\frmDisplayGaji.pas' {fmDisplayGaji},
  frmDisplayGaji2 in 'Form DisplayGaji2\frmDisplayGaji2.pas' {fmDisplayGaji2},
  frmDisplayGaji3 in 'Form Display Gaji3\frmDisplayGaji3.pas' {fmDisplayGaji3},
  frmDisplayGaji4 in 'Form Display Gaji4\frmDisplayGaji4.pas' {fmDisplayGaji4},
  frmDisplayMutasi in 'Form Display Mutasi\frmDisplayMutasi.pas' {fmDisplayMutasi},
  frmDisplaySlipGaji in 'Form Display Slip Gaji\frmDisplaySlipGaji.pas' {fmDisplaySlipGaji},
  frmGroupShift in 'Form Group Shift\frmGroupShift.pas' {fmGroupShift},
  frmJabatan in 'Form Jabatan\frmJabatan.pas' {fmJabatan},
  frmKeahlian in 'Form Keahlian\frmKeahlian.pas' {fmKeahlian},
  frmKodeAbsen in 'Form KodeAbsen\frmKodeAbsen.pas' {fmKodeAbsen},
  frmLibur in 'Form Libur\frmLibur.pas' {fmLibur},
  frmMasterGaji in 'Form Master Gaji\frmMasterGaji.pas' {fmMasterGaji},
  frmMasterJamKerja in 'Form MasterJam Kerja\frmMasterJamKerja.pas' {fmMasterJamKerja},
  frmMutasi in 'Form Mutasi\frmMutasi.pas' {fmMutasi},
  frmOutSourcing in 'Form OutSourcing\frmOutSourcing.pas' {fmOutSourcing},
  frmPayrollPegawai in 'Form Payroll Pegawai\frmPayrollPegawai.pas' {fmPayrollPegawai},
  frmPayrollPeriod in 'Form Payroll Period\frmPayrollPeriod.pas' {fmPayrollPeriod},
  frmPayrollRule in 'Form Payroll Rule\frmPayrollRule.pas' {fmPayrollRule},
  frmPayrollType in 'Form Payroll Type\frmPayrollType.pas' {fmKomponenPayroll},
  frmPegawai in 'Form Pegawai\frmPegawai.pas' {fmPegawai},
  frmPendidikan in 'Form Pendidikan\frmPendidikan.pas' {fmPendidikan},
  frmPengambilanPayroll in 'Form Pengambilan Payroll\frmPengambilanPayroll.pas' {fmPengambilanPayroll},
  frmPersonValidation in 'Form Person Validation\frmPersonValidation.pas' {fmPersonValidation},
  frmPrintFoto in 'Form Print Foto\frmPrintFoto.pas' {fmPrintFoto},
  frmProsesHarian in 'Form Proses Harian\frmProsesHarian.pas' {fmProsesHarian},
  frmProsesPeriode in 'Form Proses Periode\frmProsesPeriode.pas' {fmProsesPeriode},
  frmSchedulling in 'Form Schedulling\frmSchedulling.pas' {fmSchedulling},
  frmSettingGlobal in 'Form Setting Global\frmSettingGlobal.pas' {fmSettingGlobal},
  frmSPL in 'Form SPL\frmSPL.pas' {fmSPL},
  frmStatusKaryawan in 'Form Status Karyawan\frmStatusKaryawan.pas' {fmStatusKaryawan},
  frmStruktur in 'Form Struktur\frmStruktur.pas' {fmStruktur},
  frmTransaksi in 'Form Transaksi\frmTransaksi.pas' {fmTransaksi},
  frmTransaksiPayroll in 'Form Transaksi Payroll\frmTransaksiPayroll.pas' {fmTransaksiPayroll},
  untPayroll in 'Library\untPayroll.pas',
  frmUniMainMenu in '..\..\Modul General\Form Template\frmUniMainMenu.pas' {FormUniMainMenu},
  frmMainMenu in 'Form Main Menu\frmMainMenu.pas' {fmMainMenu},
  frmReportCategory in '..\..\Modul General\Form Report Category\frmReportCategory.pas' {fmReportCategory},
  frmCounter in '..\..\Modul General\Form Counter\frmCounter.pas' {fmCounter};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Zetron Payroll';
  untConstanta.CurrentZetronApplication := zaPayroll;
  untConstanta.CurrentConnectionEngine:= ceADO;
  untConstanta.CurrentDatabaseEngine:= deMSSQLServer;

  Application.CreateForm(TdmGlobal, dmGlobal);
  Application.CreateForm(TdmGeneral, dmGeneral);
  Application.CreateForm(TdmShare, dmShare);
  Application.CreateForm(TfmMainMenu, fmMainMenu);
  Application.Run;
end.


