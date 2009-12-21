unit dtmGlobal;

interface

uses
  SysUtils, Classes, Forms, Dialogs, Menus, Contnrs, Graphics, ActnList, IdStack,
  ActnMan, Windows, ExtCtrls, IniFiles, dxDockControl, cxNavigator, DateUtils,
  ShellApi, SHFolder, untConstanta, untInitVCL, TypInfo, Variants,

  // Auto Generate
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxDBExtLookupComboBox, untIvEncryption, Uni, UniProvider,
  PostgreSQLUniProvider, DBAccess, MemDS, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, ImgList, Controls, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm, untIvInstanceControl;

type
  TReadingThread = class(TThread)
  protected
    FIdTCPConnection: TIdTCPConnection;
    procedure Execute; override;
  public
    constructor Create(AIdTCPConnection: TIdTCPConnection); reintroduce;
  end;

  TdmGlobal = class(TDataModule)
    cgvPrevCompany: TcxGridDBTableView;
    cgvPrevDepartment: TcxGridDBTableView;
    cgvPrevEmployee: TcxGridDBTableView;
    cgvPrevPosition: TcxGridDBTableView;
    cgvPrevCompanyCompanyId: TcxGridDBColumn;
    cgvPrevCompanyCompanyName: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cgvPrevDepartmentDepartmentId: TcxGridDBColumn;
    cgvPrevDepartmentDepartmentName: TcxGridDBColumn;
    dsPrevCompany: TDataSource;
    dsPrevDepartment: TDataSource;
    dsPrevEmployee: TDataSource;
    dsPrevPosition: TDataSource;
    cgvPrevEmployeeEmployeeId: TcxGridDBColumn;
    cgvPrevEmployeeEmployeeName: TcxGridDBColumn;
    gvrGlobal: TcxGridViewRepository;
    cgvPrevPositionPositionId: TcxGridDBColumn;
    cgvPrevPositionPositionName: TcxGridDBColumn;
    stGreen: TcxStyle;
    stGreenLight: TcxStyle;
    stOrange: TcxStyle;
    stOrangeLight: TcxStyle;
    stPurple: TcxStyle;
    stPurpleLight: TcxStyle;
    stRed: TcxStyle;
    stRedLight: TcxStyle;
    stSilver: TcxStyle;
    stSilverLight: TcxStyle;
    stYellow: TcxStyle;
    stYellowLight: TcxStyle;
    imgIcon16: TImageList;
    dsCountry: TDataSource;
    dsProvince: TDataSource;
    dsCity: TDataSource;
    cgvPrevCountry: TcxGridDBTableView;
    cgvPrevCountryCountryId: TcxGridDBColumn;
    cgvPrevCountryCountryName: TcxGridDBColumn;
    cgvPrevCountryCountryExt: TcxGridDBColumn;
    cgvPrevProvince: TcxGridDBTableView;
    cgvPrevProvinceProvinceId: TcxGridDBColumn;
    cgvPrevProvinceProvinceName: TcxGridDBColumn;
    cgvPrevCity: TcxGridDBTableView;
    cgvPrevCityCityId: TcxGridDBColumn;
    cgvPrevCityCityName: TcxGridDBColumn;
    cgvPrevCityCityExt: TcxGridDBColumn;
    imgIcon24: TImageList;
    cxDefaultEditStyleController1: TcxDefaultEditStyleController;
    IdTCPClient1: TIdTCPClient;
    tmSecurity: TTimer;
    dsPrevCurrencyMaster: TDataSource;
    cgvPrevCurrencyMaster: TcxGridDBTableView;
    cgvPrevCurrencyMastercurrencyid: TcxGridDBColumn;
    cgvPrevCurrencyMastercurrencyname: TcxGridDBColumn;
    cgvPrevCurrencyMasterflagfix: TcxGridDBColumn;
    cgvPrevCityProvinceId: TcxGridDBColumn;
    cgvPrevProvinceCountryId: TcxGridDBColumn;
    qryLogProgram: TUniQuery;
    qryGetDateTime: TUniQuery;
    qryPositionAccess: TUniQuery;
    qryCompany: TUniQuery;
    qryDepartment: TUniQuery;
    qryPosition: TUniQuery;
    qryEmployee: TUniQuery;
    qryDisplay: TUniQuery;
    qryReport: TUniQuery;
    qryCountry: TUniQuery;
    qryProvince: TUniQuery;
    qryCity: TUniQuery;
    qryPrintButtonReport: TUniQuery;
    qryGetTransactionId: TUniQuery;
    qryCurrencyMaster: TUniQuery;
    qrySetup: TUniQuery;
    qrySetLogProgram: TUniQuery;
    conGlobal: TUniConnection;
    conImage: TUniConnection;
    conReadOnly: TUniConnection;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    spSetTransactionId: TUniStoredProc;
    imgIcon48: TImageList;
    IvEncryption1: TIvEncryption;
    dsReportCategory: TDataSource;
    qryReportCategory: TUniQuery;
    cgvPrevReportCategory: TcxGridDBTableView;
    dxSkinController1: TdxSkinController;
    IvInstanceControl1: TIvInstanceControl;
    procedure qryLogProgramBeforeOpen(DataSet: TDataSet);
    procedure qryPositionAccessBeforePost(DataSet: TDataSet);
    procedure qryLogProgramBeforePost(DataSet: TDataSet);
    procedure qryDisplayBeforePost(DataSet: TDataSet);
    procedure qryCityBeforeOpen(DataSet: TDataSet);
    procedure qryDisplayBeforeOpen(DataSet: TDataSet);
    procedure qryReportBeforeOpen(DataSet: TDataSet);
    procedure qryDepartmentBeforeDelete(DataSet: TDataSet);
    procedure qryPositionBeforeDelete(DataSet: TDataSet);
    procedure qryEmployeeBeforePost(DataSet: TDataSet);
    procedure qryEmployeeBeforeDelete(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure IdTCPClient1Connected(Sender: TObject);
    procedure IdTCPClient1Disconnected(Sender: TObject);
    procedure qryCompanyBeforeDelete(DataSet: TDataSet);
    procedure qryCompanyBeforeInsert(DataSet: TDataSet);
    procedure qryCompanyBeforePost(DataSet: TDataSet);
    procedure qryReportBeforePost(DataSet: TDataSet);
    procedure tmSecurityTimer(Sender: TObject);
    procedure qryReportNewRecord(DataSet: TDataSet);
    procedure qryPositionNewRecord(DataSet: TDataSet);
    procedure qryEmployeeNewRecord(DataSet: TDataSet);
    procedure qryDepartmentNewRecord(DataSet: TDataSet);
  private
    FInitVCL: TInitVCL;
    FMainMenu: TMainMenu;
    FReportMenuItemArray: array of TMenuItem;
    FDisplayMenuItemArray: array of TMenuItem;
    FActiveReportId: string;
    FActiveReportParam1: string;
    FActiveReportParam2: string;
    FActiveReportParam3: string;
    FActiveReportShow: boolean;

    // Local Initialize
    procedure InitDataModule;
    procedure DeinitDataModule;

    // Runtime executor
    procedure OnExecuteRunTimeReport(Sender: TObject);
    procedure OnExecuteRunTimeDisplay(Sender: TObject);

    // Procedure for runtime menu & security
    procedure DeinitReportRuntime;
    procedure InitReportRuntime(AFullAccess: boolean = False);
    procedure DeinitDisplayRuntime;
    procedure InitDisplayRuntime(AFullAccess: boolean = False);
    procedure InitEmployeeAccess(AFullAccess: boolean = False);
  public
    SettingLocal: TSettingLocal;
    SettingGlobal: TSettingGlobal;

    function GetServerDateTime: TDateTime;
    function GetSetupValue(const ASetupId: string; ADefaultValue: variant): variant;
    procedure SaveSetupValue(const ASetupId: string; AValue: variant);

    function LoadDataFromDirectCon: boolean;
    procedure LoadDataFromSettingIni;
    procedure LoadDataFromOption;

    // initialize form or datamodule
    procedure InitComponent(AComponent: TComponent);
    procedure InitSecurity;

    // Transaction
    function GetLastTransactionId(const ATableName, APrefix: string; ALength: integer; ATransactionDate: TDateTime; AUseTotalRun: boolean): string;
    procedure SetLastTransactionId(const ATableName, APrefix: string; ATransactionDate: TDateTime; AUseTotalRun: boolean);

//XXX    // printing function
//    procedure InitPopupMenuPrint(APopupMenu: TPopupMenu; AEvent: TNotifyEvent; const AReportId: string); overload;

    // property
    property InitVCL: TInitVCL read FInitVCL write FInitVCL;
    property MainMenu: TMainMenu read FMainMenu write FMainMenu;
    property ActiveReportId: string read FActiveReportId write FActiveReportId;
    property ActiveReportParam1: string read FActiveReportParam1 write FActiveReportParam1;
    property ActiveReportParam2: string read FActiveReportParam2 write FActiveReportParam2;
    property ActiveReportParam3: string read FActiveReportParam3 write FActiveReportParam3;
    property ActiveReportShow: boolean read FActiveReportShow write FActiveReportShow;
  end;

var
  dmGlobal: TdmGlobal;
  ReadingThread: TReadingThread = nil;

implementation

uses
  untProcedure, untZetronServer, frmPreviewFastReport;

const
  DEFAULT_REPORT_MENU_NAME = 'mnuReport'; // standard main menu name "Report"
  DEFAULT_DISPLAY_MENU_NAME = 'mnuDisplay'; // standard main menu name "Display"
  PREFIX_MENU_REPORT = 'rep_';
  PREFIX_MENU_DISPLAY = 'dis_';

{$R *.dfm}

{ TReadingThread }

constructor TReadingThread.Create(AIdTCPConnection: TIdTCPConnection);
begin
  FIdTCPConnection := AIdTCPConnection;

  inherited Create(False);
end;

procedure TReadingThread.Execute;
var
//  F: TextFile;
  MessageLine, ClientHeader, ClientProgramId, ClientData: string;
begin
  while (not Terminated) and (FIdTCPConnection.Connected) do
  begin
    MessageLine := FIdTCPConnection.IOHandler.ReadLn;

    if DecodeClientMessage(MessageLine, ClientHeader, ClientProgramId, ClientData) then
    begin
      if (ClientHeader = HEADER_INVALID_HD_SN) or
        (ClientHeader = HEADER_INVALID_USB_SN) or
        (ClientHeader = HEADER_INVALID_APP) or
        (ClientHeader = HEADER_SHUTDOWN) then
      begin
        // Write log file (Debug)
//        AssignFile(F, ExtractFilePath(Application.ExeName) + CONNECTION_LOG_FILENAME);
//        Rewrite(F);
//        Writeln(F, DateTimeToStr(Now) + ' ' + ClientHeader);
//        CloseFile(F);

        Application.Terminate;
        Application.ProcessMessages;
        Exit;
      end
      else if ClientHeader = HEADER_REGISTER_TO then
        dmGlobal.SettingGlobal.RegisterTo := ClientData
      else if ClientHeader = HEADER_TRIAL_TRANSACTION then
        dmGlobal.SettingGlobal.UseTrialTransaction := StrToBoolDef(ClientData, True)
      else if ClientHeader = HEADER_TRIAL_TRANSACTION_VALUE then
        dmGlobal.SettingGlobal.TrialTransaction := StrToInt(ClientData)
      else if ClientHeader = HEADER_TRIAL_TRANSACTION_DATE then
        dmGlobal.SettingGlobal.UseTrialDate := StrToBoolDef(ClientData, True)
      else if ClientHeader = HEADER_TRIAL_TRANSACTION_DATE_VALUE then
      begin
        if ClientData = '' then FormatDateTime('YYYYMMDD', Date);
        dmGlobal.SettingGlobal.TrialDate := EncodeDate(StrToInt(Copy(ClientData, 1, 4)),
          StrToInt(Copy(ClientData, 5, 2)), StrToInt(Copy(ClientData, 7, 2)));
      end;
    end;
  end;
end;

{ TdmGlobal }

procedure TdmGlobal.DataModuleCreate(Sender: TObject);
begin
  InitDataModule;
end;

procedure TdmGlobal.DataModuleDestroy(Sender: TObject);
begin
  DeinitDataModule;
end;

procedure TdmGlobal.DeinitDatamodule;
begin
  dmGlobal.conGlobal.Disconnect;
  dmGlobal.conImage.Disconnect;
  dmGlobal.conReadOnly.Disconnect;

  // Destroy Object
  FreeAndNil(FInitVCL);
end;

procedure TdmGlobal.DeinitReportRuntime;
var
  i: integer;
begin
  for i := 0 to High(FReportMenuItemArray) do
    FReportMenuItemArray[i].Free;

  SetLength(FReportMenuItemArray, 0);
end;

procedure TdmGlobal.qryCityBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(qryProvince);
end;

procedure TdmGlobal.qryCompanyBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TdmGlobal.qryCompanyBeforeInsert(DataSet: TDataSet);
begin
//  if not SettingGlobal.IsMultiCompany then
//  begin
    MessageDlg(MSG_MULTI_COMPANY_RESTRICT, mtInformation, [mbOk], 0);
    Abort;
//  end;
end;

procedure TdmGlobal.qryCompanyBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName(FIELD_FLAGFIX).AsString := '0';
end;

procedure TdmGlobal.qryDepartmentBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TdmGlobal.qryDepartmentNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName(FIELD_FLAGFIX).AsString := '0';
end;

procedure TdmGlobal.qryDisplayBeforeOpen(DataSet: TDataSet);
begin
  qryDisplay.Params[0].Value := SettingGlobal.ProgramId;
end;

procedure TdmGlobal.qryDisplayBeforePost(DataSet: TDataSet);
var
  Name: string;
  i: integer;
begin
  Name := DataSet.FieldbyName('DisplayId').AsString;
  for i := 1 to Length(Name) do
  begin
    if not (Name[i] in ['A'..'Z', '0'..'9', '_', '-']) then
    begin
      MessageDlg(MSG_DISPLAY_INVALID_ID, mtInformation, [mbOk], 0);
      Abort;
    end;
  end;
  DataSet.FieldbyName('ProgramId').AsString := SettingGlobal.ProgramId;
end;

procedure TdmGlobal.qryEmployeeBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TdmGlobal.qryEmployeeBeforePost(DataSet: TDataSet);
begin
  if Trim(Dataset.FieldByName('EmployeeName').AsString) = '' then
  begin
    MessageDlg(Format(MSG_CANNOT_EMPTY, ['Nama']), mtInformation, [mbOk], 0);
    Abort;
  end;

  if Trim(Dataset.FieldByName('Username').AsString) = '' then
  begin
    MessageDlg(Format(MSG_CANNOT_EMPTY, ['Username']), mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TdmGlobal.qryEmployeeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FlagFix').AsString := '0';
  DataSet.FieldbyName('FlagInactiveUser').AsString := '0';
  DataSet.FieldbyName('FlagInactive').AsString := '0';
  DataSet.FieldbyName('FlagSalesman').AsString := '0';
end;

procedure TdmGlobal.qryLogProgramBeforeOpen(DataSet: TDataSet);
begin
  qryLogProgram.Params[0].Value := SettingGlobal.ProgramId;
end;

procedure TdmGlobal.qryLogProgramBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldbyName('ProgramId').AsString := SettingGlobal.ProgramId;
end;

procedure TdmGlobal.qryPositionAccessBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldbyName('ProgramId').AsString := SettingGlobal.ProgramId;
end;

procedure TdmGlobal.qryPositionBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TdmGlobal.qryPositionNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FlagFix').AsString := '0';
end;

procedure TdmGlobal.qryReportBeforeOpen(DataSet: TDataSet);
begin
  qryReport.Params[0].Value := SettingGlobal.ProgramId;
end;

procedure TdmGlobal.qryReportBeforePost(DataSet: TDataSet);
var
  Name: string;
  i: integer;
begin
  Name := DataSet.FieldbyName('ReportId').AsString;
  for i := 1 to Length(Name) do
  begin
    if not (Name[i] in ['A'..'Z', '0'..'9', '_', '-']) then
    begin
      MessageDlg(MSG_REPORT_INVALID_ID, mtInformation, [mbOk], 0);
      Abort;
    end;
  end;
  DataSet.FieldbyName('ProgramId').AsString := SettingGlobal.ProgramId;
end;

procedure TdmGlobal.qryReportNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FlagDoCounter').AsString := '1';
  DataSet.FieldbyName('FlagShowDialog').AsString := '0';
  DataSet.FieldbyName('FlagShowProgress').AsString := '0';
  DataSet.FieldbyName('FlagHide').AsString := '0';
  DataSet.FieldbyName('FlagDotMatrix').AsString := '0';
end;

procedure TdmGlobal.SaveSetupValue(const ASetupId: string; AValue: variant);
begin
  qrySetup.Close;
  qrySetup.Params[0].Value := ASetupId;
  OpenIfClose(qrySetup);
  if not qrySetup.IsEmpty then
    qrySetup.Edit
  else
  begin
    qrySetup.Insert;
    qrySetup.FieldByName('ProgramId').AsString := SettingGlobal.ProgramId;
    qrySetup.FieldByName('SetupId').AsString := ASetupId;
    qrySetup.FieldByName('SetupName').AsString := ASetupId;
  end;
  qrySetup.FieldByName('SetupValue').AsString := AValue;
  qrySetup.Post;
end;

procedure TdmGlobal.SetLastTransactionId(const ATableName, APrefix: string;
  ATransactionDate: TDateTime; AUseTotalRun: boolean);
begin
  spSetTransactionId.Close;
  spSetTransactionId.Params[0].Value := ATableName;
  spSetTransactionId.Params[1].Value := APrefix;
  spSetTransactionId.Params[2].Value := ATransactionDate;
  spSetTransactionId.Params[3].Value := integer(AUseTotalRun);
  spSetTransactionId.Execute;
end;

function TdmGlobal.GetLastTransactionId(const ATableName, APrefix: string;
  ALength: integer; ATransactionDate: TDateTime; AUseTotalRun: boolean): string;
begin
  qryGetTransactionId.Close;
  qryGetTransactionId.Params[0].Value := ATableName;
  qryGetTransactionId.Params[1].Value := APrefix;
  qryGetTransactionId.Params[2].Value := ALength;
  qryGetTransactionId.Params[3].Value := ATransactionDate;
  qryGetTransactionId.Params[4].Value := integer(AUseTotalRun);
  OpenIfClose(qryGetTransactionId);
  Result := qryGetTransactionId.Fields[0].AsString;
end;

function TdmGlobal.GetSetupValue(const ASetupId: string;
  ADefaultValue: variant): variant;
begin
  qrySetup.Close;
  qrySetup.Params[0].Value := ASetupId;
  OpenIfClose(qrySetup);
  if not qrySetup.IsEmpty then
    Result := qrySetup.FieldByName('SetupValue').Value
  else
    Result := ADefaultValue;
end;

function TdmGlobal.GetServerDateTime: TDateTime;
begin
  if untConstanta.CurrentDatabaseEngine = deSQLite then
  begin
    Result := Now;
  end
  else
  begin
    OpenIfClose(qryGetDateTime);
    Result := qryGetDateTime.FieldByName('ServerDateTime').AsDateTime;
    qryGetDateTime.Close;
  end;
end;

procedure TdmGlobal.IdTCPClient1Connected(Sender: TObject);
begin
  ReadingThread := TReadingThread.Create(IdTCPClient1);
end;

procedure TdmGlobal.IdTCPClient1Disconnected(Sender: TObject);
begin
  if ReadingThread <> nil then
  begin
    ReadingThread.Terminate;
    ReadingThread.WaitFor;
    FreeAndNil(ReadingThread);
  end;
end;

procedure TdmGlobal.InitComponent(AComponent: TComponent);
begin
  // Init Property
  FInitVCL.StatusLanguage := SettingLocal.LanguageFlag;
  FInitVCL.DatabaseEngine := untConstanta.CurrentDatabaseEngine;
  FInitVCL.DatabaseMessageToken := DATABASE_MESSAGE_TOKEN;
  FInitVCL.DictionaryFilename := 'ADOTranslate.ini';
  FInitVCL.AppDataDir := SettingLocal.Path_AppData;

  FInitVCL.IsAutoEdit := SettingGlobal.OptionAutoEdit;

  // Process
  FInitVCL.InitVCL(AComponent);
end;

procedure TdmGlobal.InitDatamodule;
var
  S: string;
begin
  // Assert application setting
  Assert(untConstanta.CurrentZetronApplication <> null, MSG_ZETRON_APPLICATION_NULL);
  Assert(untConstanta.CurrentConnectionEngine <> null, MSG_CONNECTION_ENGINE_NULL);
  Assert(untConstanta.CurrentDatabaseEngine <> null, MSG_DATABASE_ENGINE_NULL);

  // Assert connection active property
  Assert(not conGlobal.Connected, MSG_CONNECTION_OPENED);
  Assert(not conReadOnly.Connected, MSG_CONNECTION_OPENED);
  Assert(not conImage.Connected, MSG_CONNECTION_OPENED);

  // Create Object
  FInitVCL := TInitVCL.Create;

  // Initialize value
  GetInfo(Application.ExeName, SettingGlobal.VersionFileVersion);
  SettingGlobal.ProgramId := GetEnumName(TypeInfo(TZetronApplication), Ord(untConstanta.CurrentZetronApplication));
  SettingGlobal.StatusPosting := STATUS_POSTING;
  SettingGlobal.StatusVoid := STATUS_VOID;
  SettingLocal.ApplicationPath := ExtractFilePath(Application.ExeName);
  SettingLocal.Path_MyDocument := GetSpecialFolderPath(CSIDL_PERSONAL) + '\';
  SettingLocal.Path_MyDocument_AllUser := GetSpecialFolderPath(CSIDL_COMMON_DOCUMENTS) + '\';
  SettingLocal.Path_AppData := GetSpecialFolderPath(CSIDL_LOCAL_APPDATA) + '\' + COMPANY_NAME + '\' + Application.Title + '\';
  SettingLocal.Path_AppData_AllUser := GetSpecialFolderPath(CSIDL_COMMON_APPDATA) + '\' + COMPANY_NAME + '\' + Application.Title + '\';

  // Create directory if not exist
  // C:\Documents and Settings\[User]\Local Settings\Application Data\Zetron System
  S := GetSpecialFolderPath(CSIDL_LOCAL_APPDATA) + '\' + COMPANY_NAME;
  if not DirectoryExists(S) then MkDir(S);
  S := GetSpecialFolderPath(CSIDL_LOCAL_APPDATA) + '\' + COMPANY_NAME + '\' + Application.Title;
  if not DirectoryExists(S) then MkDir(S);
  S := GetSpecialFolderPath(CSIDL_COMMON_APPDATA) + '\' + COMPANY_NAME;
  if not DirectoryExists(S) then MkDir(S);
  S := GetSpecialFolderPath(CSIDL_COMMON_APPDATA) + '\' + COMPANY_NAME + '\' + Application.Title;
  if not DirectoryExists(S) then MkDir(S);

  {Warning:
  Calling Application.Terminate() during the creation of an auto-created TForm
  or TDataModule does not set the Application. Terminated property to True.
  This is because the value of the Application. Terminated property is
  dependant on the message queue receiving a WM_QUIT message.
  During startup, the message queue is not running yet,
  so no startup code can query the value of the Application.
  Terminated property to know whether Application.Terminate()
  has already been called.
  Solution:
  ProcessMessage encapsulates a PeekMessage() loop}

  // Loading Setting.ini
  LoadDataFromSettingIni;

  //Loading Direct.Con
  if not LoadDataFromDirectCon then
  begin
    Application.Terminate;
    Application.ProcessMessages;
    Exit;
  end;

  // Initialize Connection Engine for current Database Engine
  case untConstanta.CurrentConnectionEngine of
    ceADO:
      begin
        case untConstanta.CurrentDatabaseEngine of
          deMSSQLServer:
            begin
              SettingGlobal.ADOConnectionString := Format(CONNECTION_STRING_SQLSERVER, [SettingGlobal.DatabasePassword,
                SettingGlobal.DatabaseUser, SettingGlobal.DatabaseDefaultDB, SettingGlobal.DatabaseHostname]);
              SettingGlobal.ADOConnectionStringPic := Format(CONNECTION_STRING_SQLSERVER, [SettingGlobal.DatabasePassword,
                SettingGlobal.DatabaseUser, SettingGlobal.DatabaseDefaultDBPicture, SettingGlobal.DatabaseHostname]);
            end;
        else
          Assert(False, 'DB Engine Initiaize Please');
        end;
      end;
    ceUniDAC:
      begin
        case untConstanta.CurrentDatabaseEngine of
          deMSSQLServer : SettingGlobal.ProviderName := 'SQL Server';
          deMySQL       : SettingGlobal.ProviderName := 'MySQL';
          dePostgreSQL  : SettingGlobal.ProviderName := 'PostgreSQL';
          deFirebird    : SettingGlobal.ProviderName := 'InterBase';
          deOracle      : SettingGlobal.ProviderName := 'Oracle';
          //deSQLite      : SettingGlobal.ProviderName := 'sqlite-3'; UnSupported
        else
          Assert(False, 'DB Engine Initiaize Please');
        end;
      end;
  end;

  // Zetron Server Initial
  IdTCPClient1.Host := dmGlobal.SettingGlobal.DatabaseHostname;
  IdTCPClient1.Port := COMMUNICATION_PORT;
  try
    // Connect to server
    IdTCPClient1.Connect;
    // Send our IP to server
    IdTCPClient1.Socket.WriteLn(GStack.HostName);
    // Get Server Security Option
    IdTCPClient1.Socket.WriteLn(EncodeClientMessage(HEADER_ASK_REGISTER_TO, SettingGlobal.RegisterTo, ''));
    IdTCPClient1.Socket.WriteLn(EncodeClientMessage(HEADER_ASK_TRIAL_TRANSACTION, SettingGlobal.ProgramId, ''));
    IdTCPClient1.Socket.WriteLn(EncodeClientMessage(HEADER_ASK_TRIAL_TRANSACTION_VALUE, SettingGlobal.ProgramId, ''));
    IdTCPClient1.Socket.WriteLn(EncodeClientMessage(HEADER_ASK_TRIAL_TRANSACTION_DATE, SettingGlobal.ProgramId, ''));
    IdTCPClient1.Socket.WriteLn(EncodeClientMessage(HEADER_ASK_TRIAL_TRANSACTION_DATE_VALUE, SettingGlobal.ProgramId, ''));
    // Run Security Timer
    tmSecurity.Enabled := True;
  except //on E : Exception do
    ShowMessage(MSG_COMMUNICATE_INVALID);
    Application.Terminate;
    Application.ProcessMessages;
    Exit;
  end;
//
//  // Debug
//  ShowMessage('UseTrialTransaction: ' + BoolToStr(SettingDLL.UseTrialTransaction, True));
//  ShowMessage('TrialTransaction: ' + IntToStr(SettingDLL.TrialTransaction));
//  ShowMessage('UseTrialDate: ' + BoolToStr(SettingDLL.UseTrialDate, True));
//  ShowMessage('TrialDate: ' + DateToStr(SettingDLL.TrialDate));
end;

procedure TdmGlobal.InitReportRuntime(AFullAccess: boolean);
var
  i, ReportMenuIndex, CurrentRow: integer;
begin
  OpenIfClose(dmGlobal.qryReport, True);
  if dmGlobal.qryReport.IsEmpty then
    Exit;

  // Find report menu index
  ReportMenuIndex := -1;
  for i := 0 to FMainMenu.Items.Count - 1 do
  begin
    if FMainMenu.Items[i].Name = DEFAULT_REPORT_MENU_NAME then
    begin
      ReportMenuIndex := i;
      Break;
    end;
  end;
  if ReportMenuIndex = -1 then
  begin
    MessageDlg(MSG_UNABLE_CREATE_REPORT_MENU, mtInformation, [mbOk], 0);
    Exit;
  end;

  // Create Runtime report
  CurrentRow := 0;
  dmGlobal.qryReport.First;
  while not dmGlobal.qryReport.Eof do
  begin
    if dmGlobal.qryReport.FieldByName('FlagHide').AsString = '0' then
    begin
      SetLength(FReportMenuItemArray, CurrentRow + 1);

      // Create menu action on array
      FReportMenuItemArray[CurrentRow] := TMenuItem.Create(FMainMenu);
      FReportMenuItemArray[CurrentRow].Name := PREFIX_MENU_REPORT + dmGlobal.qryReport.FieldByName('ReportId').AsString;
      FReportMenuItemArray[CurrentRow].Caption := dmGlobal.qryReport.FieldByName('ReportName').AsString;
      FReportMenuItemArray[CurrentRow].OnClick := OnExecuteRunTimeReport;
      FReportMenuItemArray[CurrentRow].Visible := AFullAccess;
      FMainMenu.Items[ReportMenuIndex].Add(FReportMenuItemArray[CurrentRow]);

      Inc(CurrentRow);
    end;
    dmGlobal.qryReport.Next;
  end;
end;

procedure TdmGlobal.DeinitDisplayRuntime;
var
  i: integer;
begin
  // Free all exist menu
  for i := 0 to High(FDisplayMenuItemArray) do
    FDisplayMenuItemArray[i].Free;

  SetLength(FDisplayMenuItemArray, 0);
end;

procedure TdmGlobal.InitDisplayRuntime(AFullAccess: boolean);
var
  i, DisplayMenuIndex, CurrentRow: integer;
begin
  OpenIfClose(dmGlobal.qryDisplay);
  if dmGlobal.qryDisplay.IsEmpty then
    Exit;

  // Find display menu index
  DisplayMenuIndex := -1;
  for i := 0 to FMainMenu.Items.Count - 1 do
  begin
    if FMainMenu.Items[i].Name = DEFAULT_DISPLAY_MENU_NAME then
    begin
      DisplayMenuIndex := i;
      Break;
    end;
  end;
  if DisplayMenuIndex = -1 then
  begin
    MessageDlg(MSG_UNABLE_CREATE_DISPLAY_MENU, mtInformation, [mbOk], 0);
    Exit;
  end;

  // Create runtime display
  CurrentRow := 0;
  dmGlobal.qryDisplay.First;
  while not dmGlobal.qryDisplay.Eof do
  begin
    if dmGlobal.qryDisplay.FieldByName('FlagHide').AsString = '0' then
    begin
      SetLength(FDisplayMenuItemArray, CurrentRow + 1);

      // Create menu action on array
      FDisplayMenuItemArray[CurrentRow] := TMenuItem.Create(FMainMenu);
      FDisplayMenuItemArray[CurrentRow].Name := PREFIX_MENU_DISPLAY + dmGlobal.qryDisplay.FieldByName('DisplayId').AsString;
      FDisplayMenuItemArray[CurrentRow].Caption := dmGlobal.qryDisplay.FieldByName('DisplayName').AsString;
      FDisplayMenuItemArray[CurrentRow].OnClick := OnExecuteRunTimeDisplay;
      FDisplayMenuItemArray[CurrentRow].Visible := AFullAccess;
      FMainMenu.Items[DisplayMenuIndex].Add(FDisplayMenuItemArray[CurrentRow]);

      Inc(CurrentRow);
    end;
    dmGlobal.qryDisplay.Next;
  end;
end;

procedure TdmGlobal.InitEmployeeAccess(AFullAccess: boolean);
begin
  // set all menu item to invisible
  if not AFullAccess then
    VisibleAllItem(FMainMenu, False)
  else
    VisibleAllItem(FMainMenu, True);

  // apply employee access
  qryPositionAccess.Close;
  qryPositionAccess.Params[0].Value := SettingGlobal.LoginPositionId;
  qryPositionAccess.Params[1].Value := SettingGlobal.ProgramId;
  OpenIfClose(qryPositionAccess);
  while not qryPositionAccess.Eof do
  begin
    if (qryPositionAccess.FieldByName('FlagOpen').AsInteger = 1) or (AFullAccess) then
      VisibleItem(FMainMenu, qryPositionAccess.FieldByName('MenuId').AsString, True)
    else
      VisibleItem(FMainMenu, qryPositionAccess.FieldByName('MenuId').AsString, False);
    qryPositionAccess.Next;
  end;
end;

//XXX
//procedure TdmGlobal.InitPopupMenuPrint(APopupMenu: TPopupMenu;
//  AEvent: TNotifyEvent; const AReportId: string);
//var
//  i: Integer;
//  MenuItem: TMenuItem;
//begin
//  qryPrintButtonReport.Close;
//  qryPrintButtonReport.Params[0].Value := AReportId;
//  qryPrintButtonReport.Params[1].Value := SettingGlobal.ProgramId;
//  OpenIfClose(qryPrintButtonReport);
//
//  i := 0;
//  while not qryPrintButtonReport.Eof do
//  begin
//    // Add to bar manager
//    MenuItem := TMenuItem.Create(APopupMenu);
//    MenuItem.Name := qryPrintButtonReport.FieldByName('ReportId').AsString;
//    MenuItem.Caption := qryPrintButtonReport.FieldByName('ReportName').AsString;
//    if qryPrintButtonReport.FieldByName('ReportName').AsString <> '-' then
//      MenuItem.OnClick := AEvent;
//    MenuItem.Tag := i;
//
//    // Add to popup
//    APopupMenu.Items.Add(MenuItem);
//
//    // Next
//    Inc(i);
//    qryPrintButtonReport.Next;
//  end;
//end;

function TdmGlobal.LoadDataFromDirectCon: boolean;
var
  MemIniFile: TMemIniFile;
  TempString: TStringList;
  i: integer;
  Path: string;
begin
  Result := False;
  if not FileExists(ExtractFilePath(Application.ExeName) + DIRECT_CONNECTION_FILENAME) then
  begin
    //Run Cunnection Builder
    ShowMessage(Format(MSG_MISSING_FILE, [DIRECT_CONNECTION_FILENAME]));
    Path := ExtractFilePath(Application.ExeName) + 'ConnectionBuilder.exe';
    ShellExecute(Application.Handle, 'open', PChar(Path), nil, nil, SW_SHOWNORMAL);
  end;

  try
    // Create temporary memory ini
    MemIniFile := TMemIniFile.Create(TEMP_FILENAME);
    TempString := TStringList.Create;
    try
      // Dencrypt
      TempString.LoadFromFile(ExtractFilePath(Application.ExeName) + DIRECT_CONNECTION_FILENAME);
      for i := 0 to TempString.Count - 1 do
        TempString.Strings[i] := Decrypt(PROGRAM_PASSWORD, TempString.Strings[i]);

      // load in memory
      MemIniFile.SetStrings(TempString);
      SettingGlobal.DatabaseHostname := MemIniFile.ReadString(SECTION_DIRECT_CONNECTION, 'Hostname', '');
      SettingGlobal.DatabaseUser := MemIniFile.ReadString(SECTION_DIRECT_CONNECTION, 'User', '');
      SettingGlobal.DatabasePassword := MemIniFile.ReadString(SECTION_DIRECT_CONNECTION, 'Password', '');
      SettingGlobal.DatabaseDefaultDB := MemIniFile.ReadString(SECTION_DIRECT_CONNECTION, 'DefaultDB', '');
      SettingGlobal.DatabaseDefaultDBPicture := MemIniFile.ReadString(SECTION_DIRECT_CONNECTION, 'DefaultDBPicture', '');
      MemIniFile.Clear;

      // Finally
      Result := True;
    finally
      FreeAndNil(TempString);
      FreeAndNil(MemIniFile);
    end;
  except
    MessageDlg(MSG_REINSTALL_APP, mtError, [mbOk], 0);
  end;
end;

procedure TdmGlobal.LoadDataFromSettingIni;
begin
  SettingLocal.LanguageFlag := StrToInt(GetINIValue(SettingLocal.Path_AppData + CONFIG_FILENAME, 'Options', 'Language', '1'));
  SettingLocal.IsFingerPrintDeviceExist := StrToBool(GetINIValue(SettingLocal.Path_AppData + CONFIG_FILENAME, 'Options', 'FingerPrintDevice', '0'));
  SettingLocal.UseSkins := StrToBool(GetINIValue(SettingLocal.Path_AppData + CONFIG_FILENAME, 'Options', 'UseSkins', '1'));
  SettingLocal.SkinName := GetINIValue(SettingLocal.Path_AppData + CONFIG_FILENAME, 'Options', 'SkinName', 'Office2007Silver');

  dxSkinController1.UseSkins := SettingLocal.UseSkins;
  dxSkinController1.SkinName := SettingLocal.SkinName;
  InitVCL.StatusLanguage := SettingLocal.LanguageFlag;
end;

procedure TdmGlobal.LoadDataFromOption;
var
  S: string;
begin
  S := GetSetupValue('GLB01', FormatDateTime('YYYYMMDD', Date));
  SettingGlobal.OptionAutoEdit := GetSetupValue('GLB04', True);
  SettingGlobal.OptionClosingDate := EncodeDate(StrToInt(Copy(S, 1, 4)), StrToInt(Copy(S, 5, 2)), StrToInt(Copy(S, 7, 2)));
  SettingGlobal.DisplayFormatBerat := GetSetupValue('GLB06', ',0.00;-,0.00');
  SettingGlobal.DisplayFormatPLT := GetSetupValue('GLB07', ',0.00;-,0.00');       { TODO : IVAN XXXXX DISPLAY FORMAT }
  SettingGlobal.DisplayFormatQty := GetSetupValue('GLB08', ',0.00;-,0.00');
  SettingGlobal.DisplayFormatDisc := GetSetupValue('GLB09', ',0.00;-,0.00');
  SettingGlobal.DisplayFormatCurrency := GetSetupValue('GLB10', ',0.00;-,0.00');
end;

procedure TdmGlobal.OnExecuteRunTimeDisplay(Sender: TObject);
var
  s: string;
begin
  S := Copy(TMenuItem(Sender).Name, length(PREFIX_MENU_DISPLAY) + 1, length(TMenuItem(Sender).Name) - length(PREFIX_MENU_DISPLAY));
  //TfmPreviewDisplay.ExecuteForm(S, TMenuItem(Sender).Caption);
end;

procedure TdmGlobal.OnExecuteRunTimeReport(Sender: TObject);
var
  s: string;
begin
  S := Copy(TMenuItem(Sender).Name, length(PREFIX_MENU_REPORT) + 1, length(TMenuItem(Sender).Name) - length(PREFIX_MENU_REPORT));
  TfmPreviewFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, S, '', '', '');
end;

procedure TdmGlobal.tmSecurityTimer(Sender: TObject);
begin
  try
    IdTCPClient1.Socket.WriteLn(EncodeClientMessage(HEADER_ASK_VALIDATION, SettingGlobal.ProgramId, ''));
  except
    Application.Terminate;
    Application.ProcessMessages;
  end;
end;

procedure TdmGlobal.InitSecurity;
var
  FullAccess: boolean;
begin
  if dmGlobal.SettingGlobal.LoginUsername = ADMIN_ID then
    FullAccess := True
  else
    FullAccess := False;

  //clear all 'report' menu item (if any).
  dmGlobal.DeinitReportRuntime;

  //clear all 'display' menu item (if any).
  dmGlobal.DeinitDisplayRuntime;

  //create all 'report' menu item -> retrieve item info from database (Report)
  //and set all to invisible
  dmGlobal.InitReportRuntime(FullAccess);

  //create all 'display' menu item -> retrieve item info from database (Dispaly)
  //and set all to invisible
  dmGlobal.InitDisplayRuntime(FullAccess);

  //apply user right (due user login) to 'all' menu item include 'report' menu item,
  //and set current menu item to visible if access to current menu item granted.
  dmGlobal.InitEmployeeAccess(FullAccess);


{var
  i, j, k: integer;
begin
  Memo1.Clear;
  for i := 0 to Ribbon.Tabs.Count - 1 do
  begin
    Memo1.Lines.Add(Ribbon.Tabs[i].Caption);
    Ribbon.Tabs[i].Visible := False; // Hide Tab
    for j := 0 to Ribbon.Tabs[i].Groups.Count - 1 do
    begin
      Memo1.Lines.Add('  ' + Ribbon.Tabs[i].Groups[j].ToolBar.Caption);
      Ribbon.Tabs[i].Groups[j].ToolBar.Visible := False;  // Hide Group
      for k := 0 to Ribbon.Tabs[i].Groups[j].ToolBar.ItemLinks.Count - 1 do
      begin
        Memo1.Lines.Add('    ' +  Ribbon.Tabs[i].Groups[j].ToolBar.ItemLinks[k].Caption);
        Ribbon.Tabs[i].Groups[j].ToolBar.ItemLinks[k].Item.Visible := ivNever;  // Hide Item
      end;
    end;
  end;}
end;

end.















