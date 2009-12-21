{********************************************************************}
{                                                                    }
{       untFastReport.pas                                            }
{                                                                    }
{       Create By Zetron System                                      }
{                                                                    }
{       ALL RIGHTS RESERVED                                          }
{                                                                    }
{********************************************************************}

unit untFastReport;

interface

implementation

uses
  SysUtils, Classes, StdCtrls, fs_iinterpreter, untProcedure, DateUtils,
  dtmGlobal, Variants, ADODB, untConstanta, TypInfo;

type
  TFRFunction = class(TfsRTTIModule)
  private
    function CallMethod(Instance: TObject; ClassType: TClass;
      const MethodName: string; var Parameters: variant): variant;
  public
    constructor Create(AScript: TfsScript); override;
  end;

{ Add your procedure or function here ! }

procedure SetShowReport(AValue: variant);
begin
  dmGlobal.ActiveReportShow := AValue;
end;

function GetYearList: string;
var
  TempStringList: TStringList;
begin
  TempStringList := TStringList.Create;
  try
    untProcedure.GetYearList(TempStringList, dmGlobal.SettingGlobal.ServerDateTime);
    Result := TempStringList.Text;
  finally
    TempStringList.Free;
  end;
end;

function GetMonthList: string;
var
  TempStringList: TStringList;
begin
  TempStringList := TStringList.Create;
  try
    untProcedure.GetMonthList(TempStringList, dmGlobal.SettingGlobal.ServerDateTime);
    Result := TempStringList.Text;
  finally
    TempStringList.Free;
  end;
end;

function EncodePeriod(AYear, AMonth: variant): string;
begin
  if Length(VarToStr(AMonth)) = 1 then
    Result := VarToStr(AYear) + '0' + VarToStr(AMonth)
  else
    Result := VarToStr(AYear) + VarToStr(AMonth);
end;

{ TFRFunction }

function TFRFunction.CallMethod(Instance: TObject; ClassType: TClass;
  const MethodName: string; var Parameters: variant): variant;
begin
  { Add procudure or function execute here ! }
  if MethodName = UpperCase('SetShowReport') then
    SetShowReport(Parameters[0])
  else if MethodName = UpperCase('GetADOConnectionString') then
    Result := dmGlobal.SettingGlobal.ADOConnectionString
  else if MethodName = UpperCase('GetADOConnectionStringPic') then
    Result := dmGlobal.SettingGlobal.ADOConnectionStringPic
  else if MethodName = UpperCase('GetDatabaseHostname') then
    Result := dmGlobal.SettingGlobal.DatabaseHostname
  else if MethodName = UpperCase('GetDatabaseNameData') then
    Result := dmGlobal.SettingGlobal.DatabaseDefaultDB
  else if MethodName = UpperCase('GetDatabaseNameImage') then
    Result := dmGlobal.SettingGlobal.DatabaseDefaultDBPicture
  else if MethodName = UpperCase('GetDatabaseUser') then
    Result := dmGlobal.SettingGlobal.DatabaseUser
  else if MethodName = UpperCase('GetDatabasePassword') then
    Result := dmGlobal.SettingGlobal.DatabasePassword
  else if MethodName = UpperCase('GetProgramId') then
    Result := dmGlobal.SettingGlobal.ProgramId
  else if MethodName = UpperCase('GetEmployeeName') then
    Result := dmGlobal.SettingGlobal.LoginEmployeeName
  else if MethodName = UpperCase('GetEmployeeId') then
    Result := dmGlobal.SettingGlobal.LoginEmployeeId
  else if MethodName = UpperCase('GetJobPosition') then
    Result := dmGlobal.SettingGlobal.LoginPositionName
  else if MethodName = UpperCase('GetParam1') then
    Result := dmGlobal.ActiveReportParam1
  else if MethodName = UpperCase('GetParam2') then
    Result := dmGlobal.ActiveReportParam2
  else if MethodName = UpperCase('GetParam3') then
    Result := dmGlobal.ActiveReportParam3
  else if MethodName = UpperCase('GetReportId') then
    Result := dmGlobal.ActiveReportId
  else if MethodName = UpperCase('GetCompanyId') then
    Result := dmGlobal.SettingGlobal.LoginCompanyId
  else if MethodName = UpperCase('GetStatusVoidIndex') then
    Result := dmGlobal.SettingGlobal.StatusVoid
  else if MethodName = UpperCase('GetStatusDoneIndex') then
    Result := dmGlobal.SettingGlobal.StatusPosting
  else if MethodName = UpperCase('GetYearList') then
    Result := GetYearList
  else if MethodName = UpperCase('GetMonthList') then
    Result := GetMonthList
  else if MethodName = UpperCase('StartOfAMonth') then
    Result := StartOfAMonth(Parameters[0], Parameters[1])
  else if MethodName = UpperCase('EndOfAMonth') then
    Result := EndOfAMonth(Parameters[0], Parameters[1])
  else if MethodName = UpperCase('StartOfTheDay') then
    Result := StartOfTheDay(Parameters[0])
  else if MethodName = UpperCase('EndOfTheDay') then
    Result := EndOfTheDay(Parameters[0])
  else if MethodName = UpperCase('StartOfADay') then
    Result := StartOfADay(Parameters[0], Parameters[1], Parameters[2])
  else if MethodName = UpperCase('EndOfADay') then
    Result := EndOfADay(Parameters[0], Parameters[1], Parameters[2])
//
//    Result := EndOfAMonth(Parameters[0], Parameters[1])
//  else if MethodName = UpperCase('EndOfAMonth') then
//    Result := EndOfAMonth(Parameters[0], Parameters[1])

  else if MethodName = UpperCase('EncodePeriod') then
    Result := EncodePeriod(Parameters[0], Parameters[1])
  else if MethodName = UpperCase('GetDisplayFormatBerat') then
    Result := dmGlobal.SettingGlobal.DisplayFormatBerat
  else if MethodName = UpperCase('GetDisplayFormatPLT') then
    Result := dmGlobal.SettingGlobal.DisplayFormatPLT
  else if MethodName = UpperCase('GetDisplayFormatLuas') then
    Result := dmGlobal.SettingGlobal.DisplayFormatLuas
  else if MethodName = UpperCase('GetDisplayFormatVolume') then
    Result := dmGlobal.SettingGlobal.DisplayFormatVolume
  else if MethodName = UpperCase('GetDisplayFormatQty') then
    Result := dmGlobal.SettingGlobal.DisplayFormatQty
  else if MethodName = UpperCase('GetDisplayFormatDisc') then
    Result := dmGlobal.SettingGlobal.DisplayFormatDisc
  else if MethodName = UpperCase('GetDisplayFormatCurrency') then
    Result := dmGlobal.SettingGlobal.DisplayFormatCurrency
  else if MethodName = UpperCase('CurrencyToString') then
    Result := CurrencyToString(Parameters[0], Parameters[1])
//  else if MethodName = UpperCase('GetZeosPort') then
//    Result := dmGlobal.conGlobal.Port
//  else if MethodName = UpperCase('GetZeosProtocol') then
//    Result := dmGlobal.conGlobal.Protocol
end;

constructor TFRFunction.Create(AScript: TfsScript);
const
  CATEGORY = 'Zetron Function';
begin
  inherited Create(AScript);
  with AScript do
  begin
   // Add procudure or function description here !
    AddedBy := Self;
    AddMethod(
      'procedure SetShowReport(AValue: Boolean)', CallMethod, CATEGORY,
      'The SetShowReport procedure used to set ShowReport property' +
      'on global data module, ShowReport property used to check show or not ' +
      'a report at form perview fast report');
    AddMethod(
      'function GetADOConnectionString: string', CallMethod, CATEGORY,
      'The GetADOConnectionString function returns current ' +
      'ADO connection string of database data used by current application');
    AddMethod(
      'function GetADOConnectionStringPic: string', CallMethod, CATEGORY,
      'The GetADOConnectionStringPic function returns current ' +
      'ADO connection string of database image used by current application');
    AddMethod(
      'function GetDatabaseHostname: string', CallMethod, CATEGORY,
      'This function returns current database hostname');
    AddMethod(
      'function GetDatabaseNameData: string', CallMethod, CATEGORY,
      'The GetDatabaseNameData function returns current ' +
      'default database data used by current application');
    AddMethod(
      'function GetDatabaseNameImage: string', CallMethod, CATEGORY,
      'The GetDatabaseNameImage function returns current ' +
      'default database image used by current application');
    AddMethod(
      'function GetDatabaseUser: string', CallMethod, CATEGORY,
      'This function returns current database username');
    AddMethod(
      'function GetDatabasePassword: string', CallMethod, CATEGORY,
      'This function returns current database password');
    AddMethod(
      'function GetProgramId: string', CallMethod, CATEGORY,
      'This function returns current program id');
    AddMethod(
      'function GetEmployeeName: string', CallMethod, CATEGORY,
      'The GetEmployeeName function returns current ' +
      'employee name using current application');
    AddMethod(
      'function GetEmployeeId: string', CallMethod, CATEGORY,
      'The GetEmployeeId function returns current ' +
      'employee id using current application');
    AddMethod(
      'function GetJobPosition: string', CallMethod, CATEGORY,
      'The GetJobPosition function returns current ' +
      'position of employee using current application');
    AddMethod(
      'function GetParam1: string', CallMethod, CATEGORY,
      'The passing parameter (1) from application');
    AddMethod(
      'function GetParam2: string', CallMethod, CATEGORY,
      'The passing parameter (2) from application');
    AddMethod(
      'function GetParam3: string', CallMethod, CATEGORY,
      'The passing parameter (3) from application');
    AddMethod(
      'function GetReportId: string', CallMethod, CATEGORY,
      'The GetReportId function returns current report id');
    AddMethod(
      'function GetCompanyId: string', CallMethod, CATEGORY,
      'The GetComapnyId function returns current company id');
    AddMethod(
      'function GetStatusVoidIndex: string', CallMethod, CATEGORY,
      'The GetStatusVoidIndex function returns index of status void');
    AddMethod(
      'function GetStatusDoneIndex: string', CallMethod, CATEGORY,
      'The GetStatusDoneIndex function returns index of status approval done');
    AddMethod(
      'function GetYearList: string', CallMethod, CATEGORY,
      'The GetYearList function return year list');
    AddMethod(
      'function GetMonthList:string', CallMethod, CATEGORY,
      'The GetMonthList function return month list');
    AddMethod(
      'function StartOfAMonth(AYear, AMonth: word): TDateTime', CallMethod, CATEGORY,
      'The StartOfAMonth function return first datetime of month and year selected');
    AddMethod(
      'function EndOfAMonth(AYear, AMonth: word): TDateTime', CallMethod, CATEGORY,
      'The EndOfAMonth function return last datetime of month and year selected');
    AddMethod(
      'function StartOfTheDay(ADay: TDateTime): TDateTime', CallMethod, CATEGORY,
      'The StartOfAMonth function return first date and time of day selected');
    AddMethod(
      'function EndOfTheDay(ADay: TDateTime): TDateTime', CallMethod, CATEGORY,
      'The EndOfAMonth function return last date and time of day selected');
    AddMethod(
      'function StartOfADay(AYear, AMonth, ADay: word): TDateTime', CallMethod, CATEGORY,
      'The StartOfADay function return first date and time of day selected');
    AddMethod(
      'funtion EndOfADay(AYear, AMonth, ADay: word): TDateTime', CallMethod, CATEGORY,
      'The EndOfADay function return last date and time of day selected');
    AddMethod(
      'function EncodePeriod(AYear, AMonth: variant): string', CallMethod, CATEGORY,
      'The EncodePeriod function return period with YYYYMM format');
    AddMethod(
      'function GetZeosPort: integer', CallMethod, CATEGORY,
      'This function returns current zeos port');
    AddMethod(
      'function GetZeosProtocol: string', CallMethod, CATEGORY,
      'This function returns current zeos protocol');
    AddMethod(
      'function GetDisplayFormatBerat: string', CallMethod, CATEGORY,
      'This function returns display format');
    AddMethod(
      'function GetDisplayFormatPLT: string', CallMethod, CATEGORY,
      'This function returns display format');
    AddMethod(
      'function GetDisplayFormatLuas: string', CallMethod, CATEGORY,
      'This function returns display format');
    AddMethod(
      'function GetDisplayFormatVolume: string', CallMethod, CATEGORY,
      'This function returns display format');
    AddMethod(
      'function GetDisplayFormatQty: string', CallMethod, CATEGORY,
      'This function returns display format');
    AddMethod(
      'function GetDisplayFormatDisc: string', CallMethod, CATEGORY,
      'This function returns display format');
    AddMethod(
      'function GetDisplayFormatCurrency: string', CallMethod, CATEGORY,
      'This function returns display format');
    AddMethod(
      'function CurrencyToString(ACurrency: double; ADefaultCurrency: string): string', CallMethod, CATEGORY,
      'This function returns explanation currency in string');

    AddedBy := nil;
  end;
end;

initialization
  fsRTTIModules.Add(TFRFunction);

end.
