{********************************************************************}
{                                                                    }
{       untConstanta.pas                                             }
{                                                                    }
{       Created By Zetron System                                     }
{                                                                    }
{       ALL RIGHTS RESERVED                                          }
{                                                                    }
{********************************************************************}

unit untConstanta;

interface

uses
  Graphics;

type
  { TODO -oIvan -cDev : Init all program id here ! }
  TZetronApplication = (zaInventoryStandard, zaInventoryProfesional,
    zaInventoryEnterprise, zaInventoryCashier, zaInventoryCustom01,
    zaTimeAttandance, zaPayroll, zaEkspedisi,
    zaManufactureTimber, zaManufacturePackaging);

  TAllowedZetronApplication = set of TZetronApplication;

  TConnectionEngine = (ceADO, ceUniDAC);

  TDatabaseEngine = (deMSSQLServer, dePostgreSQL, deSQLite, deMySQL, deOracle, deFirebird);

  TFieldRecord = record
    FieldName: string;
    Index: integer;
  end;

  TPrefixRecord = record
    Prefix: string;
    Length: integer;
    RunYear: boolean;
  end;

  TRegisterValidationRecord = record
    Validate: boolean;
    Level: integer;
    BypassIfUnpaid: boolean;
  end;

  TDynamicFieldArray = array of TFieldRecord;
  TDynamicStringArray = array of string;

  // Encryption
  TStringTriple = string[3];
  TWordTriple = array[0..2] of Word;

  // Logging
  TLogLevel = (llLow, llMedium, llHigh);
  TLogCategory = (lcNone, lcDevices, lcDisk, lcPrinter, lcServices, lcShell, lcSystemEvents, lcNetworks);

  TParamOutArray = array of variant;

  // Setting tiap computer beda-beda
  TSettingLocal = record
    LanguageFlag: byte;
    IsFingerPrintDeviceExist: boolean;
    UseSkins: boolean;
    SkinName: string;
    ApplicationPath: string;
    Path_MyDocument: string;
    Path_MyDocument_AllUser: string;
    Path_AppData: string;
    Path_AppData_AllUser: string;
  end;

  // Setting semua computer sama
  TSettingGlobal = record
    ProgramId: string;
    ServerDateTime: TDateTime;
    StatusVoid: string;
    StatusPosting: string;

    // Server Side Security
    RegisterTo: string;
    UseTrialTransaction: boolean;
    TrialTransaction: integer;
    UseTrialDate: boolean;
    TrialDate: TDateTime;

    // Direct.con
    DatabaseHostname: string;
    DatabasePort: integer;
    DatabaseUser: string;
    DatabasePassword: string;
    DatabaseDefaultDB: string;
    DatabaseDefaultDBPicture: string;

    // VCL Connection property value
    ProviderName: string;
    ADOConnectionString: string;
    ADOConnectionStringPic: string;

    // Login
    LoginDatabaseName: string;
    LoginEmployeeId: string;
    LoginEmployeeName: string;
    LoginPositionName: string;
    LoginPositionId: string;
    LoginDepartmentId: string;
    LoginCompanyId: string;
    LoginUsername: string;

    // Version
    VersionFileVersion: string;

    // Options from Database
    OptionClosingDate: TDateTime;
    OptionAutoEdit: boolean;

    // Format Display
    DisplayFormatBerat: string;
    DisplayFormatPLT: string;
    DisplayFormatLuas: string;
    DisplayFormatVolume: string;
    DisplayFormatQty: string;
    DisplayFormatDisc: string;
    DisplayFormatCurrency: string;
  end;

const
  {$IFDEF WIN32}
    BAD_DLL_LOAD = 32;
  {$ELSE}
    BAD_DLL_LOAD = 0;
  {$ENDIF}
  COMPANY_NAME = 'Zetron System';
  DLL_FILENAME = 'Zetron.dll';
  DLL_PASSWORD = '#07@WLCi~'; // DLL Encryption
  RES_KEY_NAME = 'ZETRONRES';
  SECTION_REGISTER = 'ZetronRegister';
  SECTION_APPLICATION = 'ZetronApplication';
  SECTION_SECURITY = 'ZetronSecurity';
  SECTION_DIRECT_CONNECTION = 'DirectSQL';
  COMMUNICATION_PORT = '5000';
  PROGRAM_PASSWORD = 'zetrontech'; // Employee Password & Direct.con Encryption
  DIRECT_CONNECTION_FILENAME = 'Direct.con';
  CONNECTION_LOG_FILENAME = 'Connection.log';

  CONNECTION_STRING_SQLSERVER = 'Provider=SQLOLEDB.1;Password=%s;Persist Security Info=True;User ID=%s;Initial Catalog=%s;Data Source=%s';
  CONNECTION_STRING_POSTGRE = 'Provider=PostgreSQL OLE DB Provider;Data Source=%s;location=%s;User ID=%s;password=%s;timeout=1000;';
  CONNECTION_STRING_MYSQL = '';
  CONNECTION_STRING_FIREBIRD = '';
  CONNECTION_STRING_SQLLITE = '';
  CONNECTION_STRING_ORACLE = '';

  TEMP_FILENAME = 'Application.dat';
  CONFIG_FILENAME = 'Setting.sys';
  USBIOCOM_DLL = 'usbiocom.dll';
  USBIO_GUID_DEFAULT = '{325DDF96-938C-11D3-9E34-0080C82727F4}';
  ADMIN_ID = 'SUPERUSER';
  
  COLOR_INACTIVE = $00DDFFFF;
  COLOR_ACTIVE = clWindow;

  DATABASE_MESSAGE_TOKEN = '^';
  FIELD_FLAGFIX  = 'FlagFix';
  FIELD_SYSTEMSTAMP = 'SystemStamp';
  FIELD_STATUS_APPROVE = 'StatusApprove';
  FIELD_COUNTER_PRINT = 'CounterPrint';
  FIELD_FLAGUSE = 'FlagUse';
//XXX  FIELD_PREFIX_CODE = 'PrefixCode';

  STATUS_POSTING = '1';
  STATUS_VOID = '2';

  NAVIGATOR_BUTTON_INSERT = 6;
  NAVIGATOR_BUTTON_REFRESH = 12;

resourcestring
  // Resources for General
  ASK_DEFAULT_POS =
    'Are you sure want to restore default position ?';
  ASK_CLOSE =
    'Data masih belum tersimpan, apakah anda ingin menutup form ini ?';
  ASK_DELETE =
    'Anda yakin ingin menghapus data ini ?';
  ASK_VOID =
    'Anda yakin ingin membatalkan transaksi ini ?';
  ASK_EXIT =
    'Anda yakin ingin keluar dari aplikasi ini ?';
  ASK_LOGOFF =
    'Anda yakin ingin log off ?';
  ASK_BACKUP_FILE_EXISTS =
    'File %s sudah ada, apakah anda ingin menimpanya ?';
  ASK_DELETE_PASSWORD =
    'Anda yakin ingin menset password pegawai dengan blank (kosong) ?';
  ASK_RESET_POSITION =
    'Reset form ini ?';
  ASK_KILL_CONNECTION =
    'Putus %d koneksi yang sedang aktif ?';
  ASK_REPORT_CLEAR =
    'Apakah anda yakin ingin menghapus design report yang ada, lanjutkan hapus ?';

  MSG_COMMUNICATE_INVALID =
    'Communication Protocol Error !';
  MSG_INVALID_SERVER =
    'Connection error !';
  MSG_FORM_LIMITED =
    'Maaf, fitur yang dipilih tidak dapat digunakan pada versi aplikasi ini.';
  MSG_LISENCE_FAILED =
    'Aplikasi tidak dapat dijalankan pada komputer ini !';
  MSG_MISSING_FILE =
    'File %s tidak ada, Silahkan menghubungi administrator !';
  MSG_OLD_PASSWORD_FALSE =
    'Password lama tidak sesuai!';
  MSG_NEW_PASSWORD_FALSE =
    'Password baru tidak sama !';
  MSG_USER_READONLY =
    'Anda tidak dapat menambah atau menghapus user !';
  MSG_INVALID_PASSWORD =
    'Password salah !';
  MSG_INVALID_LEVEL_VALIDATION =
    'Level user untuk proses validasi tidak mencukupi !';
  MSG_DATABASE_BLANK =
    'Silahkan memasukan nama database !';
  MSG_DATABASE_NOT_FOUND =
    'Invalid Data Storage !';
  MSG_DATABASE_PICTURE_NOT_FOUND =
    'Invalid Picture Storage !';
  MSG_INVALID_DATABASE =
    'Database yang dipilih tidak dapat digunakan oleh aplikasi ini !';
  MSG_REPORT_LOST =
    'Laporan tidak ada atau telah di hapus !';
  MSG_REPORT_INVALID_ID =
    'Karakter kode laporan salah, gunakan karakter yang diperbolehkan (A-Z, 0-9, _) !';
  MSG_CANNOT_PREPARE_REPORT =
    'Laporan gagal disiapkan !';
  MSG_PRINTER_FAILED =
    'Gagal mencetak, Silahkan cek printer !';
  MSG_FILE_REPORT_NULL =
    'Laporan belum di design, silahkan design laporan terlebih dahulu !';
  MSG_UNABLE_CREATE_REPORT_MENU =
    'Menu laporan gagal dibuat, Silahkan menghubungi administrator !';
  MSG_DISPLAY_LOST =
    'Display tidak ada atau telah di hapus !';
  MSG_DISPLAY_INVALID_ID =
    'Karakter kode display salah, gunakan karakter yang diperbolehkan (A-Z, 0-9, _) !';
  MSG_UNABLE_CREATE_DISPLAY_MENU =
    'Menu display gagal dibuat, Silahkan menghubungi administrator !';
  MSG_BACKUP_SUCCESS =
    'Backup database berhasil !';
  MSG_CANNOT_EMPTY =
    '%s belum diisi !';
  MSG_FILE_NOT_FOUND =
    'File %s tidak ada !';
  MSG_REINSTALL_APP =
    'Instalasi aplikasi salah, silahkan install ulang untuk memperbaiki !';
  MSG_TRIAL_APP =
    'Maaf, Jumlah transaksi percobaan telah habis !';
  MSG_TRIAL_DATE =
    'Maaf, Tanggal percobaan telah habis !';
  MSG_RESET_POSITION =
    'Perubahan baru akan terlihat saat form ini di buka kembali.';
  MSG_INVALID_DLL =
    'Versi library tidak sesuai dengan aplikasi ini !';
  MSG_MAX_PRINT =
    'Maksimum cetak %d lembar !';
  MSG_RESTORE_POSTGRE =
    'Please restore database using PGAdmin !';
  MSG_RECORD_IS_FIXED =
    'Anda tidak dapat mengubah data ini !';
  MSG_MULTI_COMPANY_RESTRICT =
    'Versi aplikasi ini tidak mendukung multi perusahaan';
  MSG_CONNECTION_OPENED =
    'ADOConnection error (property connected true) , Silahkan menghubungi administrator !';
  MSG_ZCONNECTION_OPENED =
    'ZConnection error (property connected true) , Silahkan menghubungi administrator !';
  MSG_ZETRON_APPLICATION_NULL =
    'Zetron Application Null !';
  MSG_CONNECTION_ENGINE_NULL =
    'Connection Engine Null !';
  MSG_DATABASE_ENGINE_NULL =
    'Database Engine Null !';
  MSG_TRANSACTION_ALREADY_CLOSING_DATE =
    'Transaksi tidak dapat diubah atau disimpan karena telah melewati tanggal closing !';
  MSG_TRANSACTION_ALREADY_POSTING =
    'Transaksi tidak dapat diubah karena telah di approve !';
  MSG_TRANSACTION_ALREADY_VOID =
    'Transaksi telah di void !';
  MSG_PROCESS_COMPLETE =
    'Proses telah selesai';
  MSG_SAVING_COMPLETE =
    'Data telah berhasil disimpan !';
  MSG_CANNOT_EXECUTE_SP =
    'Procedure %s tidak dapat di jalankan, silahkan menghubungi administrator anda !';
  MSG_PAYMENT_ERROR =
    'Error, proses pembayaran tidak dapat dilakukan !';
  MSG_SAVING_CLOSING_COMPLETE =
    'Proses closing telah berhasil disimpan !';
  MSG_SAVING_CLOSING_REGISTER_COMPLETE =
    'Proses closing register telah berhasil disimpan !';
  MSG_SAVING_CLOSING_ERROR =
    'Proses closing gagal dilakukan !';

var
  CurrentZetronApplication: TZetronApplication;
  CurrentConnectionEngine: TConnectionEngine;
  CurrentDatabaseEngine: TDatabaseEngine;

implementation

end.



