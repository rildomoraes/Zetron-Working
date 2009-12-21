unit frmMainMenuOLD;

interface

uses
  // Default
  DateUtils, Forms, Messages, Dialogs, SysUtils, Windows,

  // Auto Generate
  ImgList, Controls, StdActns, Classes, ActnList, XPStyleActnCtrls, ActnMan,
  AppEvnts, ExtCtrls, ToolWin, ActnCtrls, ActnMenus, ComCtrls;

type
  TfmMainMenuOld = class(TForm)
    stbMainMenu: TStatusBar;
    tmMainMenuTimer: TTimer;
    aeMainMenuEvent: TApplicationEvents;
    ActionManager1: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    actLogOff: TAction;
    actExit: TAction;
    actChangePassword: TAction;
    actAccess: TAction;
    actCompany: TAction;
    actDepartemen: TAction;
    actEmployee: TAction;
    actResetAllForm: TAction;
    actBackupDatabase: TAction;
    actClearLog: TAction;
    actAbout: TAction;
    actSettingGlobal: TAction;
    actExportImportData: TAction;
    actSettingLocal: TAction;
    Action1: TAction;
    Action2: TAction;
    Action4: TAction;
    Action3: TAction;
    actFoto: TAction;
    actImport: TAction;
    actExport: TAction;
    actGroupShift: TAction;
    actJabatan: TAction;
    actPrintKartu: TAction;
    actSchedulling: TAction;
    actLembur: TAction;
    actAbsen: TAction;
    actKodeAbsen: TAction;
    actTransaksiAbsen: TAction;
    actMutasi: TAction;
    actMasterShift: TAction;
    actAbsenManual: TAction;
    actLibur: TAction;
    actProsesClosingShift: TAction;
    actJamKerja: TAction;
    actDisplayAbsensi: TAction;
    actJabatan1: TAction;
    actOutSourcing: TAction;
    actKomponenPayroll: TAction;
    actPayrollDetail: TAction;
    actBank: TAction;
    actMasterGaji: TAction;
    actMasterSyarat: TAction;
    actPeriodeGaji: TAction;
    actProsesHarian: TAction;
    actDisplayMutasi: TAction;
    actProsesPeriode: TAction;
    actTransaksiPayroll: TAction;
    actDisplaySlipGaji: TAction;
    ActPersonValidation: TAction;
    ActTransaksiPengambilanPayroll: TAction;
    ActDisplayGaji: TAction;
    ActProsesClosingDate: TAction;
    ActProsesClosingYear: TAction;
    ActDisplayGaji2: TAction;
    ActDisplayGaji3: TAction;
    ActDisplayPengambilanInsidentil: TAction;
    ActAbsenManualLock: TAction;
    ActPendidikan: TAction;
    ActAsset: TAction;
    ActBahasa: TAction;
    ActKeahlian: TAction;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    procedure ActKeahlianExecute(Sender: TObject);
    procedure ActBahasaExecute(Sender: TObject);
    procedure ActAssetExecute(Sender: TObject);
    procedure ActPendidikanExecute(Sender: TObject);
    procedure ActAbsenManualLockExecute(Sender: TObject);
    procedure ActDisplayPengambilanInsidentilExecute(Sender: TObject);
    procedure ActDisplayGaji3Execute(Sender: TObject);
    procedure ActDisplayGaji2Execute(Sender: TObject);
    procedure ActProsesClosingYearExecute(Sender: TObject);
    procedure ActProsesClosingDateExecute(Sender: TObject);
    procedure ActDisplayGajiExecute(Sender: TObject);
    procedure ActTransaksiPengambilanPayrollExecute(Sender: TObject);
    procedure ActPersonValidationExecute(Sender: TObject);
    procedure actDisplaySlipGajiExecute(Sender: TObject);
    procedure ActTransaksiPayrollExecute(Sender: TObject);
    procedure ActProsesPeriodeExecute(Sender: TObject);
    procedure ActDisplayMutasiExecute(Sender: TObject);
    procedure ActProsesHarianExecute(Sender: TObject);
    procedure ActPeriodeGajiExecute(Sender: TObject);
    procedure actMasterSyaratExecute(Sender: TObject);
    procedure ActMasterGajiExecute(Sender: TObject);
    procedure ActBankExecute(Sender: TObject);
    procedure ActPayrollDetailExecute(Sender: TObject);
    procedure ActKomponenPayrollExecute(Sender: TObject);
    procedure actSettingGlobalExecute(Sender: TObject);
    procedure ActOutSourcingExecute(Sender: TObject);
    procedure ActJabatan1Execute(Sender: TObject);
    procedure ActDisplayAbsensiExecute(Sender: TObject);
    procedure actJamKerjaExecute(Sender: TObject);
    procedure ActProsesClosingShiftExecute(Sender: TObject);
    procedure ActLiburExecute(Sender: TObject);
    procedure ActAbsenManualExecute(Sender: TObject);
    procedure ActMutasiExecute(Sender: TObject);
    procedure ActTransaksiAbsenExecute(Sender: TObject);
    procedure ActKodeAbsenExecute(Sender: TObject);
    procedure ActSakitExecute(Sender: TObject);
    procedure ActCutiExecute(Sender: TObject);
    procedure ActLemburExecute(Sender: TObject);
    procedure ActSchedullingExecute(Sender: TObject);
    procedure ActPrintKartuExecute(Sender: TObject);
    procedure ActJabatanExecute(Sender: TObject);
    procedure ActGroupShiftExecute(Sender: TObject);
    procedure ActExportExecute(Sender: TObject);
    procedure ActImportExecute(Sender: TObject);
    procedure ActFotoExecute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actSettingLocalExecute(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure actAccessExecute(Sender: TObject);
    procedure actBackupDatabaseExecute(Sender: TObject);
    procedure actChangePasswordExecute(Sender: TObject);
    procedure actClearLogExecute(Sender: TObject);
    procedure actCompanyExecute(Sender: TObject);
    procedure actDepartmentExecute(Sender: TObject);
    procedure actEmployeeExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure actExportImportDataExecute(Sender: TObject);
    procedure actExportReportExecute(Sender: TObject);
    procedure actImportReportExecute(Sender: TObject);
    procedure actLogOffExecute(Sender: TObject);
    procedure actDepartemenExecute(Sender: TObject);
    procedure actReportDesignerExecute(Sender: TObject);
    procedure actResetAllFormExecute(Sender: TObject);

    { TODO -oMainMenu -cNewForm : Main Menu Init Step 2 }
    {************************************}
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tmMainMenuTimerTimer(Sender: TObject);
    {************************************}
  private
    { Private declarations }
    { TODO -oMainMenu -cNewForm : Main Menu Init Step 3 }
    {************************************}
    procedure ChangeToDefaultPosition;
    procedure DeinitForm;
    procedure InitForm;
    procedure InitStatusBar;
    procedure WMEndSession(var Msg: TWMEndSession); message WM_ENDSESSION;
    {************************************}
  public
    { Public declarations }
  end;

var
  fmMainMenuOld: TfmMainMenuOld;

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

  frmPayrollType, frmPayrollPegawai, frmPayrollPeriod, frmPayrollRule,

  frmMasterJamKerja, frmMaintainceDatabase, frmSecurity, dtmShare,
  frmDisplayAbsen, frmBank, frmMasterGaji,
   frmClosingShift, frmProsesHarian,
  frmProsesPeriode, frmTransaksiPayroll, frmDisplayMutasi,frmPersonValidation,

  // Display
  frmDisplaySlipGaji,frmPengambilanPayroll,frmDisplayGaji,frmDisplayGaji2,frmDisplayGaji3,frmDisplayGaji4,frmClosingDate,frmClosingYear,
  frmPendidikan, frmAssets, frmBahasa, frmKeahlian;

{$R *.dfm}

procedure TfmMainMenuOld.actAboutExecute(Sender: TObject);
begin
  TfmAbout.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actBackupDatabaseExecute(Sender: TObject);
begin
  TfmBackupDatabase.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActBahasaExecute(Sender: TObject);
begin
  TfmBahasa.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActBankExecute(Sender: TObject);
begin
  TfmBank.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actChangePasswordExecute(Sender: TObject);
begin
  TfmChangePassword.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actCompanyExecute(Sender: TObject);
begin
  TfmCompany.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActCutiExecute(Sender: TObject);
begin
  TfmTransaksi.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actClearLogExecute(Sender: TObject);
begin
  TfmMaintainceDatabase.ExecuteForm(dmGlobal.SettingGlobal.LoginDatabaseName);
end;

procedure TfmMainMenuOld.actDepartmentExecute(Sender: TObject);
begin
  TfmDepartment.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActDisplayAbsensiExecute(Sender: TObject);
begin
  TfmDisplayAbsensi.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActDisplayGaji2Execute(Sender: TObject);
begin
  TfmDisplayGaji2.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActDisplayGaji3Execute(Sender: TObject);
begin
  TfmDisplayGaji3.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActDisplayGajiExecute(Sender: TObject);
begin
  TfmDisplayGaji.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActDisplayMutasiExecute(Sender: TObject);
begin
  TfmDisplayMutasi.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActDisplayPengambilanInsidentilExecute(Sender: TObject);
begin
  TfmDisplayGaji4.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actDisplaySlipGajiExecute(Sender: TObject);
begin
  TfmDisplaySlipGaji.ExecuteForm('',0);
end;

procedure TfmMainMenuOld.actEmployeeExecute(Sender: TObject);
begin
  TfmEmployee.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmMainMenuOld.ActExportExecute(Sender: TObject);
begin
  TfmExportReport.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actLogOffExecute(Sender: TObject);
var
  i: integer;
begin
  if MessageDlg(ASK_LOGOFF, mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    // Close all child
    for i := 0 to Application.MainForm.MDIChildCount - 1 do
      Application.MainForm.MDIChildren[i].Free;

    Self.Hide;
    if TfmLogin.ExecuteForm <> mrOk then
    begin
      Close;
      Exit;
    end;
    dmGlobal.InitSecurity;
    InitStatusBar;
    Self.Show;
  end;
end;

procedure TfmMainMenuOld.ActFotoExecute(Sender: TObject);
begin
  TfmCaptureFoto.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActKeahlianExecute(Sender: TObject);
begin
  TfmKeahlian.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActKodeAbsenExecute(Sender: TObject);
begin
  TfmKodeAbsen.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActKomponenPayrollExecute(Sender: TObject);
begin
  TfmKomponenPayroll.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActImportExecute(Sender: TObject);
begin
  TfmImportReport.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actDepartemenExecute(Sender: TObject);
begin
  TfmDepartment.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActPrintKartuExecute(Sender: TObject);
begin
  TfmPrintFoto.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActProsesClosingDateExecute(Sender: TObject);
begin
  TfmClosingDate.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActProsesClosingShiftExecute(Sender: TObject);
begin
  TfmClosingShift.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActProsesClosingYearExecute(Sender: TObject);
begin
  TfmClosingYear.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActProsesHarianExecute(Sender: TObject);
begin
  TfmProsesHarian.ExecuteForm('',0);
end;

procedure TfmMainMenuOld.ActProsesPeriodeExecute(Sender: TObject);
begin
  TfmProsesPeriode.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actReportDesignerExecute(Sender: TObject);
begin
  TfmReportDesigner.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actExportImportDataExecute(Sender: TObject);
begin
  TfmExportImportData.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actExportReportExecute(Sender: TObject);
begin
  TfmExportReport.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actImportReportExecute(Sender: TObject);
begin
  TfmImportReport.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.Action1Execute(Sender: TObject);
begin
  TfmPegawai.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.Action2Execute(Sender: TObject);
begin
  TfmStruktur.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.Action3Execute(Sender: TObject);
begin
  TfmReportDesigner.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActPayrollDetailExecute(Sender: TObject);
begin
  TfmPayrollPegawai.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActPendidikanExecute(Sender: TObject);
begin
  Tfmpendidikan.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActPeriodeGajiExecute(Sender: TObject);
begin
  TfmPayrollPeriod.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActPersonValidationExecute(Sender: TObject);
begin
  TfmPersonValidation.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActMasterGajiExecute(Sender: TObject);
begin
  TfmMasterGaji.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actJamKerjaExecute(Sender: TObject);
begin
  TfmMasterJamKerja.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actMasterSyaratExecute(Sender: TObject);
begin
  TfmPayrollRule.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActMutasiExecute(Sender: TObject);
begin
  TfmMutasi.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActOutSourcingExecute(Sender: TObject);
begin
  TfmOutSourcing.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActGroupShiftExecute(Sender: TObject);
begin
  TfmGroupShift.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActJabatan1Execute(Sender: TObject);
begin
  TfmPosition.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActJabatanExecute(Sender: TObject);
begin
  TfmJabatan.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActLemburExecute(Sender: TObject);
begin
  TfmSPL.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActLiburExecute(Sender: TObject);
begin
  TfmLibur.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActSakitExecute(Sender: TObject);
begin
  TfmTransaksi.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actResetAllFormExecute(Sender: TObject);
begin
  ChangeToDefaultPosition;
end;

procedure TfmMainMenuOld.ActAbsenManualExecute(Sender: TObject);
begin
  TfmAbsenManual.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActAbsenManualLockExecute(Sender: TObject);
begin
  TfmAbsenManual.ExecuteForm('', 1);
end;

procedure TfmMainMenuOld.actAccessExecute(Sender: TObject);
begin
  TfmSecurity.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActAssetExecute(Sender: TObject);
begin
  TfmAssets.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ChangeToDefaultPosition;
begin
  //delete all file 'setting xxx.cfg' on application directory
  if MessageDlg(ASK_DEFAULT_POS, mtInformation, [mbYes, mbNo], 0) = mrYes then
    DeleteFiles(ExtractFilePath(Application.ExeName), '*.cfg');
end;

procedure TfmMainMenuOld.DeinitForm;
begin
  //stop timer
  tmMainMenuTimer.Enabled := False;
end;

procedure TfmMainMenuOld.FormCreate(Sender: TObject);
begin
  InitForm;
end;

procedure TfmMainMenuOld.FormDestroy(Sender: TObject);
begin
  DeinitForm;
end;

procedure TfmMainMenuOld.InitForm;
begin
  if not Application.Terminated then
  begin
    // Process Login
    if TfmLogin.ExecuteForm <> mrOk then
    begin
      Application.Terminate;
      Application.ProcessMessages;
      Exit;
    end;

    // Initialize
    tmMainMenuTimer.Enabled := True;
    Self.Caption := FProgramName +
      ' v' + dmGlobal.SettingGlobal.VersionFileVersion +
      ' - ' + dmGlobal.SettingGlobal.LoginDatabaseName +
      ' (' + dmGlobal.SettingGlobal.DatabaseHostname + ')';
    Self.WindowState := wsMaximized;

    // Init all form VCL
    dmGlobal.InitComponent(Self);

    // Init mainmenu this form with security rules
//    dmGlobal.ActionBarItem := ActionManager1.ActionBars[0];
    dmGlobal.InitSecurity;

    // Init status bar
    InitStatusBar;

    // Load option from database
    dmGlobal.LoadDataFromOption;
      // re-init component
    dmGlobal.InitComponent(dmShare);
    dmShare.LoadDataFromOption;

    DateSeparator:='/';
    ShortDateFormat:='dd/mm/yyyy';
    LongDateFormat:='dd/mmm/yyyy';
  end;
end;

procedure TfmMainMenuOld.InitStatusBar;
begin
  stbMainMenu.panels[0].text :=  dmGlobal.SettingGlobal.LoginEmployeeName + ' (' + dmGlobal.SettingGlobal.LoginPositionName + ')';
end;

procedure TfmMainMenuOld.tmMainMenuTimerTimer(Sender: TObject);
begin
  // increase time
  dmGlobal.SettingGlobal.ServerDateTime := IncSecond(dmGlobal.SettingGlobal.ServerDateTime);
  stbMainMenu.Panels[0].Text := DateTimeToStr(dmGlobal.SettingGlobal.ServerDateTime);
end;

procedure TfmMainMenuOld.WMEndSession(var Msg: TWMEndSession);
begin
  if Msg.EndSession = TRUE then
    Application.Terminate;
  inherited;
end;

procedure TfmMainMenuOld.actSettingGlobalExecute(Sender: TObject);
begin
  TfmSettingGlobal.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.actSettingLocalExecute(Sender: TObject);
begin
  TfmSettingLocal.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActTransaksiAbsenExecute(Sender: TObject);
begin
  TfmTransaksi.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActTransaksiPayrollExecute(Sender: TObject);
begin
  TfmTransaksiPayroll.ExecuteForm('', 0);
end;


procedure TfmMainMenuOld.ActTransaksiPengambilanPayrollExecute(Sender: TObject);
begin
  TfmPengambilanPayroll.ExecuteForm('', 0);
end;

procedure TfmMainMenuOld.ActSchedullingExecute(Sender: TObject);
begin
  TfmSchedulling.ExecuteForm('', 0);
end;

end.


