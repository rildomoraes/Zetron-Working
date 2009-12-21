unit frmMainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMainMenu, Menus, AppEvnts, ExtCtrls, ComCtrls;

type
  TfmMainMenu = class(TFormUniMainMenu)
    mnuPayroll: TMenuItem;
    mnuStruktur: TMenuItem;
    mnuJabatanPayroll: TMenuItem;
    mnuOutsourcing: TMenuItem;
    mnuBank: TMenuItem;
    N1: TMenuItem;
    mnuBahasa: TMenuItem;
    mnuPendidikan: TMenuItem;
    mnuKeahlian: TMenuItem;
    mnuTenagaKerja: TMenuItem;
    N2: TMenuItem;
    mnuAbsensi: TMenuItem;
    mnuFotoKaryawan: TMenuItem;
    mnuKartuPengenal: TMenuItem;
    N3: TMenuItem;
    mnuKodeAbsen: TMenuItem;
    mnuGroupShift: TMenuItem;
    mnuJamKerja: TMenuItem;
    mnuLibur: TMenuItem;
    mnuPersonValidation: TMenuItem;
    N4: TMenuItem;
    PeriodePayroll1: TMenuItem;
    N5: TMenuItem;
    mnuTipePayroll: TMenuItem;
    mnuPayrollPegawai: TMenuItem;
    mnuSyarat: TMenuItem;
    mnuSyaratPenggajian: TMenuItem;
    N6: TMenuItem;
    ranaksi1: TMenuItem;
    Proses1: TMenuItem;
    mnuMutasi: TMenuItem;
    mnuScheduling: TMenuItem;
    mnuAbsenManual: TMenuItem;
    mnuAbsenManualLock: TMenuItem;
    mnuTransaksiAbsen: TMenuItem;
    mnuTransaksiLembur: TMenuItem;
    mnuTransaksiIsidentil: TMenuItem;
    mnuTransaksiAmbilGaji: TMenuItem;
    mnuClosingShift: TMenuItem;
    mnuClosingTanggal: TMenuItem;
    mnuProsesHarian: TMenuItem;
    mnuProsesPeriode: TMenuItem;
    N7: TMenuItem;
    DisplayAbsensi1: TMenuItem;
    DisplayMutasi1: TMenuItem;
    DisplayGaji1: TMenuItem;
    DisplaySlipGaji1: TMenuItem;
    DisplayPengambilanIsidentil1: TMenuItem;
    SettingCounter1: TMenuItem;
    Bank1: TMenuItem;
    procedure mnuStrukturClick(Sender: TObject);
    procedure mnuJabatanPayrollClick(Sender: TObject);
    procedure mnuOutsourcingClick(Sender: TObject);
    procedure mnuBahasaClick(Sender: TObject);
    procedure mnuPendidikanClick(Sender: TObject);
    procedure mnuKeahlianClick(Sender: TObject);
    procedure mnuBankClick(Sender: TObject);
    procedure mnuTenagaKerjaClick(Sender: TObject);
    procedure mnuFotoKaryawanClick(Sender: TObject);
    procedure mnuKartuPengenalClick(Sender: TObject);
    procedure mnuKodeAbsenClick(Sender: TObject);
    procedure mnuGroupShiftClick(Sender: TObject);
    procedure mnuJamKerjaClick(Sender: TObject);
    procedure mnuLiburClick(Sender: TObject);
    procedure mnuPersonValidationClick(Sender: TObject);
    procedure PeriodePayroll1Click(Sender: TObject);
    procedure mnuTipePayrollClick(Sender: TObject);
    procedure mnuPayrollPegawaiClick(Sender: TObject);
    procedure mnuSyaratClick(Sender: TObject);
    procedure mnuSyaratPenggajianClick(Sender: TObject);
    procedure mnuMutasiClick(Sender: TObject);
    procedure mnuSchedulingClick(Sender: TObject);
    procedure mnuAbsenManualClick(Sender: TObject);
    procedure mnuAbsenManualLockClick(Sender: TObject);
    procedure mnuTransaksiAbsenClick(Sender: TObject);
    procedure mnuTransaksiLemburClick(Sender: TObject);
    procedure mnuTransaksiIsidentilClick(Sender: TObject);
    procedure mnuTransaksiAmbilGajiClick(Sender: TObject);
    procedure mnuClosingTanggalClick(Sender: TObject);
    procedure mnuClosingShiftClick(Sender: TObject);
    procedure mnuProsesHarianClick(Sender: TObject);
    procedure mnuProsesPeriodeClick(Sender: TObject);
    procedure DisplayAbsensi1Click(Sender: TObject);
    procedure DisplayMutasi1Click(Sender: TObject);
    procedure DisplayGaji1Click(Sender: TObject);
    procedure DisplaySlipGaji1Click(Sender: TObject);
    procedure DisplayPengambilanIsidentil1Click(Sender: TObject);
    procedure mnuExportReportClick(Sender: TObject);
    procedure mnuImportReportClick(Sender: TObject);
    procedure mnuReportDesignerClick(Sender: TObject);
    procedure SettingCounter1Click(Sender: TObject);
    procedure Bank1Click(Sender: TObject);
    procedure mnuSettingGlobalClick(Sender: TObject);
  private

  protected
    procedure InitForm; override;
  public
    { Public declarations }
  end;

var
  fmMainMenu: TfmMainMenu;

implementation
uses
  untProcedure, untConstanta, dtmGlobal, frmBackupDatabase,
  frmLogin, frmCompany, frmDepartment, frmPosition, frmEmployee,
  frmReportDesigner, frmExportReport, frmImportReport, frmAbout,
  frmChangePassword, //frmPreviewDisplay,
  frmExportImportData, frmSettingLocal,
  frmSettingGlobal,frmPreviewFastReport,

  frmPegawai, frmStruktur, frmCaptureFoto, frmGroupShift, frmJabatan,
  frmPrintFoto, frmSchedulling, frmOutSourcing,frmSPL,
  frmTransaksi, frmKodeAbsen,
  frmAbsenManual,frmLibur, frmMutasi,

  frmPayrollType, frmPayrollPegawai, frmPayrollPeriod, frmPayrollRule,frmCounter,

  frmMasterJamKerja, frmMaintainceDatabase, frmSecurity, dtmShare,
  frmDisplayAbsen, frmBank, frmMasterGaji,
   frmClosingShift, frmProsesHarian,
  frmProsesPeriode, frmTransaksiPayroll, frmDisplayMutasi,frmPersonValidation,

  // Display
  frmDisplaySlipGaji,frmPengambilanPayroll,frmDisplayGaji,frmDisplayGaji2,frmDisplayGaji3,frmDisplayGaji4,frmClosingDate,frmClosingYear,
  frmPendidikan, frmAssets, frmBahasa, frmKeahlian;
{$R *.dfm}

{ TFormUniMainMenu1 }

procedure TfmMainMenu.Bank1Click(Sender: TObject);
begin
  inherited;
  TfmBank.ExecuteForm('', 0);
end;

procedure TfmMainMenu.DisplayAbsensi1Click(Sender: TObject);
begin
  inherited;
  TfmDisplayAbsensi.ExecuteForm('', 0);
end;

procedure TfmMainMenu.DisplayGaji1Click(Sender: TObject);
begin
  inherited;
  TfmDisplayGaji2.ExecuteForm('', 0);
end;

procedure TfmMainMenu.DisplayMutasi1Click(Sender: TObject);
begin
  inherited;
  TfmDisplayMutasi.ExecuteForm('', 0);
end;

procedure TfmMainMenu.DisplayPengambilanIsidentil1Click(Sender: TObject);
begin
  inherited;
  TfmDisplayGaji4.ExecuteForm('', 0);
end;

procedure TfmMainMenu.DisplaySlipGaji1Click(Sender: TObject);
begin
  inherited;
  TfmDisplaySlipGaji.ExecuteForm('',0);
end;

procedure TfmMainMenu.InitForm;
begin
  inherited;

//  if not Application.Terminated then
//  begin
//    // Init component
//    dmGlobal.InitComponent(dmInventory);
//    dmGlobal.InitComponent(dmManufacture);
//
//    // Load option from database
//    dmInventory.LoadDataFromOption;
//    dmInventory.InitDatamodule;
//  end;
end;

procedure TfmMainMenu.mnuAbsenManualClick(Sender: TObject);
begin
  inherited;

  TfmAbsenManual.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuAbsenManualLockClick(Sender: TObject);
begin
  inherited;

  TfmAbsenManual.ExecuteForm('',1);
end;

procedure TfmMainMenu.mnuBahasaClick(Sender: TObject);
begin
  inherited;

  TfmBahasa.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuBankClick(Sender: TObject);
begin
  inherited;

  TfmBank.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuClosingShiftClick(Sender: TObject);
begin
  inherited;
  TfmClosingShift.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuClosingTanggalClick(Sender: TObject);
begin
  inherited;
  TfmClosingDate.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuExportReportClick(Sender: TObject);
begin
  inherited;
  TfmExportReport.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuFotoKaryawanClick(Sender: TObject);
begin
  inherited;

  TfmCaptureFoto.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuGroupShiftClick(Sender: TObject);
begin
  inherited;

  TfmGroupShift.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuImportReportClick(Sender: TObject);
begin
  inherited;
  TfmImportReport.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuJabatanPayrollClick(Sender: TObject);
begin
  inherited;

  TfmJabatan.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuJamKerjaClick(Sender: TObject);
begin
  inherited;

  TfmMasterJamKerja.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuKartuPengenalClick(Sender: TObject);
begin
  inherited;

  TfmPrintFoto.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuKeahlianClick(Sender: TObject);
begin
  inherited;

  TfmKeahlian.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuKodeAbsenClick(Sender: TObject);
begin
  inherited;

  TfmKodeAbsen.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuLiburClick(Sender: TObject);
begin
  inherited;

  TfmLibur.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuMutasiClick(Sender: TObject);
begin
  inherited;

  TfmMutasi.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuOutsourcingClick(Sender: TObject);
begin
  inherited;

  TfmOutSourcing.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuPayrollPegawaiClick(Sender: TObject);
begin
  inherited;

  TfmPayrollPegawai.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuPendidikanClick(Sender: TObject);
begin
  inherited;

  TfmPendidikan.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuPersonValidationClick(Sender: TObject);
begin
  inherited;

  TfmPersonValidation.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuProsesHarianClick(Sender: TObject);
begin
  inherited;
  TfmProsesHarian.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuProsesPeriodeClick(Sender: TObject);
begin
  inherited;
  TfmProsesPeriode.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuReportDesignerClick(Sender: TObject);
begin
  inherited;
  TfmReportDesigner.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuSchedulingClick(Sender: TObject);
begin
  inherited;

  TfmSchedulling.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuSettingGlobalClick(Sender: TObject);
begin
  inherited;
  TfmSettingGlobal.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuStrukturClick(Sender: TObject);
begin
  inherited;

  TfmStruktur.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuSyaratClick(Sender: TObject);
begin
  inherited;

  TfmPayrollRule.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuSyaratPenggajianClick(Sender: TObject);
begin
  inherited;

  TfmMasterGaji.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuTenagaKerjaClick(Sender: TObject);
begin
  inherited;

  TfmPegawai.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuTipePayrollClick(Sender: TObject);
begin
  inherited;

  TfmKomponenPayroll.ExecuteForm('',0);
end;

procedure TfmMainMenu.mnuTransaksiAbsenClick(Sender: TObject);
begin
  inherited;

  TfmTransaksi.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuTransaksiAmbilGajiClick(Sender: TObject);
begin
  inherited;
  TfmPengambilanPayroll.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuTransaksiIsidentilClick(Sender: TObject);
begin
  inherited;

  TfmTransaksiPayroll.ExecuteForm('', 0);
end;

procedure TfmMainMenu.mnuTransaksiLemburClick(Sender: TObject);
begin
  inherited;

  TfmSPL.ExecuteForm('', 0);
end;

procedure TfmMainMenu.PeriodePayroll1Click(Sender: TObject);
begin
  inherited;

  TfmPayrollPeriod.ExecuteForm('',0);
end;

procedure TfmMainMenu.SettingCounter1Click(Sender: TObject);
begin
  inherited;
  TfmCounter.ExecuteForm();
end;

end.
