unit frmUniMainMenu;

interface

uses
  DateUtils, Forms, Messages, Dialogs, SysUtils, Windows,

  // Auto Generate
  Controls, Classes, ActnList, XPStyleActnCtrls, ActnMan, AppEvnts, ExtCtrls,
  ToolWin, ActnCtrls, ActnMenus, ComCtrls, Menus;

type
  TFormUniMainMenu = class(TForm)
    aeMainMenuEvent: TApplicationEvents;
    MainMenu1: TMainMenu;
    mnuAbout: TMenuItem;
    mnuBackupDatabase: TMenuItem;
    mnuDepartment: TMenuItem;
    mnuDisplay: TMenuItem;
    mnuExit: TMenuItem;
    mnuExportImportData: TMenuItem;
    mnuExportReport: TMenuItem;
    mnuFile: TMenuItem;
    mnuGeneral: TMenuItem;
    mnuHelp: TMenuItem;
    mnuImportReport: TMenuItem;
    mnuJabatan: TMenuItem;
    mnuKota: TMenuItem;
    mnuLogOff: TMenuItem;
    mnuMaintenanceDatabase: TMenuItem;
    mnuMaster: TMenuItem;
    mnuNegara: TMenuItem;
    mnuOptions: TMenuItem;
    mnuPegawai: TMenuItem;
    mnuPerusahaan: TMenuItem;
    mnuPropinsi: TMenuItem;
    mnuReport: TMenuItem;
    mnuReportCategory: TMenuItem;
    mnuReportDesigner: TMenuItem;
    mnuResetSemuaForm: TMenuItem;
    mnuSecurity: TMenuItem;
    mnuSettingGlobal: TMenuItem;
    mnuSettingLocal: TMenuItem;
    mnuUbahPassword: TMenuItem;
    SP1: TMenuItem;
    SP2: TMenuItem;
    SP3: TMenuItem;
    SP5: TMenuItem;
    SP6: TMenuItem;
    SP7: TMenuItem;
    stbMainMenu: TStatusBar;
    tmMainMenuTimer: TTimer;
    procedure aeMainMenuEventHint(Sender: TObject);
    procedure aeMainMenuEventIdle(Sender: TObject; var Done: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure tmMainMenuTimerTimer(Sender: TObject);
    procedure mnuAboutClick(Sender: TObject);
    procedure mnuBackupDatabaseClick(Sender: TObject);
    procedure mnuDepartmentClick(Sender: TObject);
    procedure mnuExitClick(Sender: TObject);
    procedure mnuExportImportDataClick(Sender: TObject);
    procedure mnuExportReportClick(Sender: TObject);
    procedure mnuImportReportClick(Sender: TObject);
    procedure mnuJabatanClick(Sender: TObject);
    procedure mnuKotaClick(Sender: TObject);
    procedure mnuLogOffClick(Sender: TObject);
    procedure mnuMaintenanceDatabaseClick(Sender: TObject);
    procedure mnuNegaraClick(Sender: TObject);
    procedure mnuPegawaiClick(Sender: TObject);
    procedure mnuPerusahaanClick(Sender: TObject);
    procedure mnuPropinsiClick(Sender: TObject);
    procedure mnuReportCategoryClick(Sender: TObject);
    procedure mnuReportDesignerClick(Sender: TObject);
    procedure mnuResetSemuaFormClick(Sender: TObject);
    procedure mnuSecurityClick(Sender: TObject);
    procedure mnuSettingLocalClick(Sender: TObject);
    procedure mnuUbahPasswordClick(Sender: TObject);
//  protected
//    procedure InitForm; virtual;
//      {procedure InitForm dipanggil SEBELUM FORM DIBUAT (visible = false),
//      procedure ini dapat di turunkan (override) dan dipanggil lagi oleh
//      keturunan form ini}
//    procedure DeinitForm; virtual;
//      {procedure DeinitForm dipanggil SEBELUM form di akan ditutup, procedure ini
//      dapat di turunkan (override) dan dipanggil lagi oleh keturunan form ini}
  private
    procedure WMEndSession(var Msg: TWMEndSession); message WM_ENDSESSION;
  public

  end;

var
  FormUniMainMenu: TFormUniMainMenu;

implementation

uses
  // Template
  untProcedure, untConstanta,  dtmGlobal, frmLogin,

  // File
  frmAbout, frmBackupDatabase, frmMaintainceDatabase, frmExportImportData,

  // Options
  frmSettingLocal, frmSecurity, frmChangePassword,

  // Master
  frmCompany, frmDepartment, frmPosition, frmEmployee, frmCountry, frmProvince,
  frmCity,

  // Report
  frmReportCategory, frmReportDesigner, frmExportReport, frmImportReport;

{$R *.dfm}

procedure TFormUniMainMenu.aeMainMenuEventHint(Sender: TObject);
begin
  stbMainMenu.Panels[5].Text := Application.Hint;
end;

procedure TFormUniMainMenu.aeMainMenuEventIdle(Sender: TObject; var Done: Boolean);
begin
  if Odd(GetKeyState(VK_CAPITAL)) then
    stbMainMenu.Panels[1].Text := 'CAPS'
  else
    stbMainMenu.Panels[1].Text := '';
  if Odd(GetKeyState(VK_NUMLOCK)) then
    stbMainMenu.Panels[2].Text := 'NUM'
  else
    stbMainMenu.Panels[2].Text := '';
  if Odd(GetKeyState(VK_INSERT)) then
    stbMainMenu.Panels[3].Text := 'INS'
  else
    stbMainMenu.Panels[3].Text := '';
  if Odd(GetKeyState(VK_SCROLL)) then
    stbMainMenu.Panels[4].Text := 'SCRL'
  else
    stbMainMenu.Panels[4].Text := '';
end;

procedure TFormUniMainMenu.FormCreate(Sender: TObject);
begin
  if Application.Terminated then
    Exit;

  // Process Login
  if TfmLogin.ExecuteForm <> mrOk then
  begin
    Application.Terminate;
    Application.ProcessMessages;
    Exit;
  end;

  // Initial
  tmMainMenuTimer.Enabled := True;
  Self.Caption := Application.Title +
    ' v' + dmGlobal.SettingGlobal.VersionFileVersion +
    ' - ' + dmGlobal.SettingGlobal.LoginDatabaseName +
    ' (' + dmGlobal.SettingGlobal.DatabaseHostname + ')';
  Self.WindowState := wsMaximized;

  // Load option from database
  dmGlobal.LoadDataFromOption;

  // Init component
  dmGlobal.InitComponent(Self);

  // Init mainmenu this form with security rules
  dmGlobal.MainMenu := MainMenu1;
  dmGlobal.InitSecurity;
  stbMainMenu.Panels[0].Text := dmGlobal.SettingGlobal.LoginEmployeeName + ' (' + dmGlobal.SettingGlobal.LoginPositionName + ')';
end;

procedure TFormUniMainMenu.mnuAboutClick(Sender: TObject);
begin
  TfmAbout.ExecuteForm();
end;

procedure TFormUniMainMenu.mnuBackupDatabaseClick(Sender: TObject);
begin
  TfmBackupDatabase.ExecuteForm();
end;

procedure TFormUniMainMenu.mnuDepartmentClick(Sender: TObject);
begin
  TfmDepartment.ExecuteForm;
end;

procedure TFormUniMainMenu.mnuExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFormUniMainMenu.mnuExportImportDataClick(Sender: TObject);
begin
  TfmExportImportData.ExecuteForm;
end;

procedure TFormUniMainMenu.mnuExportReportClick(Sender: TObject);
begin
  TfmExportReport.ExecuteForm;
end;

procedure TFormUniMainMenu.mnuImportReportClick(Sender: TObject);
begin
  TfmImportReport.ExecuteForm;
end;

procedure TFormUniMainMenu.mnuJabatanClick(Sender: TObject);
begin
  TfmPosition.ExecuteForm;
end;

procedure TFormUniMainMenu.mnuKotaClick(Sender: TObject);
begin
  TfmCity.ExecuteForm;
end;

procedure TFormUniMainMenu.mnuLogOffClick(Sender: TObject);
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
    stbMainMenu.Panels[0].Text := dmGlobal.SettingGlobal.LoginEmployeeName + ' (' + dmGlobal.SettingGlobal.LoginPositionName + ')';
    Self.Show;
  end;
end;

procedure TFormUniMainMenu.mnuMaintenanceDatabaseClick(Sender: TObject);
begin
  TfmMaintainceDatabase.ExecuteForm(dmGlobal.SettingGlobal.LoginDatabaseName);
end;

procedure TFormUniMainMenu.mnuNegaraClick(Sender: TObject);
begin
  TfmCountry.ExecuteForm;
end;

procedure TFormUniMainMenu.mnuPegawaiClick(Sender: TObject);
begin
  TfmEmployee.ExecuteForm;
end;

procedure TFormUniMainMenu.mnuPerusahaanClick(Sender: TObject);
begin
  TfmCompany.ExecuteForm;
end;

procedure TFormUniMainMenu.mnuPropinsiClick(Sender: TObject);
begin
  TfmProvince.ExecuteForm;
end;

procedure TFormUniMainMenu.mnuReportCategoryClick(Sender: TObject);
begin
  TfmReportCategory.ExecuteForm;
end;

procedure TFormUniMainMenu.mnuReportDesignerClick(Sender: TObject);
begin
  TfmReportDesigner.ExecuteForm;
end;

procedure TFormUniMainMenu.mnuResetSemuaFormClick(Sender: TObject);
begin
  //delete all file 'setting *.cfg' on application directory
  if MessageDlg(ASK_DEFAULT_POS, mtInformation, [mbYes, mbNo], 0) = mrYes then
    DeleteFiles(dmGlobal.SettingLocal.Path_AppData, '*.cfg');
end;

procedure TFormUniMainMenu.mnuSecurityClick(Sender: TObject);
begin
  TfmSecurity.ExecuteForm;
end;

procedure TFormUniMainMenu.mnuSettingLocalClick(Sender: TObject);
begin
  TfmSettingLocal.ExecuteForm;
end;

procedure TFormUniMainMenu.mnuUbahPasswordClick(Sender: TObject);
begin
  TfmChangePassword.ExecuteForm;
end;

procedure TFormUniMainMenu.tmMainMenuTimerTimer(Sender: TObject);
const
  LOCAL_DAY_IN_ENG: array[1..7] of string = ('Sunday', 'Monday', 'Tuesday',
    'Wednesday', 'Thursday', 'Friday', 'Saturday');
  LOCAL_DAY_IN_IND: array[1..7] of string = ('Minggu', 'Senin', 'Selasa',
    'Rabu', 'Kamis', 'Jumat', 'Sabtu');
begin
  // increase time
  dmGlobal.SettingGlobal.ServerDateTime := IncSecond(dmGlobal.SettingGlobal.ServerDateTime);

  if dmGlobal.SettingLocal.LanguageFlag = 0 then //select language
    stbMainMenu.Panels[6].Text :=
      LOCAL_DAY_IN_ENG[DayOfWeek(dmGlobal.SettingGlobal.ServerDateTime)] + ', ' +
      DateToStr(dmGlobal.SettingGlobal.ServerDateTime) + ', ' + TimeToStr(dmGlobal.SettingGlobal.ServerDateTime)
  else
    stbMainMenu.Panels[6].Text :=
      LOCAL_DAY_IN_IND[DayOfWeek(dmGlobal.SettingGlobal.ServerDateTime)] + ', ' +
      DateToStr(dmGlobal.SettingGlobal.ServerDateTime) + ', ' + TimeToStr(dmGlobal.SettingGlobal.ServerDateTime);
end;

procedure TFormUniMainMenu.WMEndSession(var Msg: TWMEndSession);
begin
  if Msg.EndSession = TRUE then
    Application.Terminate;

  inherited;
end;

end.




