{********************************************************************}
{                                                                    }
{       untProcedure.pas                                             }
{                                                                    }
{       Created By Zetron System                                     }
{                                                                    }
{       ALL RIGHTS RESERVED                                          }
{                                                                    }
{********************************************************************}

unit untProcedure;

interface

uses
  Windows, Controls, StdCtrls, INIFIles, SysUtils, Dialogs, DB, Forms, ADODB,
  Classes, ComCtrls, ExtCtrls, Variants, ActnMan, ActnMenus, Menus, cxStyles,
  untIvEncryption, cxGridDBTableView, cxGridCustomTableView, cxCalendar,
  cxDBExtLookupComboBox, Graphics, cxTextEdit, cxDBEdit, Registry, IdGlobal,
  cxDBLookupComboBox, cxDropDownEdit, cxMemo, cxTimeEdit, ActnList, DateUtils,
  ShellAPI, WinSock, DBActns, frmOpenWaiting, untIvPropADO, JPEG,
  cxNavigator, untIvPositionDevExpress, untIvPositionStandard, SHFolder,
  StrUtils, untConstanta, Uni;

{ Procedure and function for Encryption }
function TextCrypt(const S: string; AKey: TWordTriple; AEncrypt: Boolean): string;
function FileCrypt(AInFile, AOutFile: string; AStringKey: TStringTriple; AEncrypt: Boolean): Boolean;
function MemoryEncrypt(ASrc: Pointer; ASrcSize: Cardinal; ATarget: Pointer; ATargetSize: Cardinal; AKey: TWordTriple): boolean;
function MemoryDecrypt(ASrc: Pointer; ASrcSize: Cardinal; ATarget: Pointer; ATargetSize: Cardinal; AKey: TWordTriple): boolean;
function Decrypt(const APassword, AString: string): string;
function Encrypt(const APassword, AString: string): string;

{ Procedure and function for Database }
//function GetActiveConnectionCount(ADatabaseEngine: TDatabaseEngine; const ADatabase: string; AZConnection: TZConnection): integer;
//procedure KillActiveConnections(ADatabaseEngine: TDatabaseEngine; const ADatabase: string; AZConnection: TZConnection);
procedure SetFieldAdd(AStartMonth, AEndMonth: integer; ADatabaseEngine: TDatabaseEngine; const AField: string; var AResult: string);
procedure SetFieldSum(AStartMonth, AEndMonth: integer; ADatabaseEngine: TDatabaseEngine; const AField: string; var AResult: string);

function OpenIfClose(ADataset: TDataSet; AShowProcess: boolean = False; AGotoLast: boolean = False): boolean; overload;
function ExecuteQuery(AADOQuery: TADOQuery; AShowProcess: boolean = False): boolean; overload;
function ExecuteQuery(AUniQuery: TUniQuery; AShowProcess: boolean = False): boolean; overload;
function LockRefresh(ADataset: TDataSet; AShowProcess: boolean = False): boolean; overload;
function LockRefresh(ADataset: TUniQuery; AShowProcess: boolean = False): boolean; overload;

{ Procedure and function for Files }
function GetSpecialFolderPath(folder : integer) : string;
procedure DeleteFiles(const APath, AMask: string; ARecursive: boolean = false);
function FileTime2DateTime(AFileTime: TFileTime): TDatetime;
function GetDataSectionFromDLL(AHandle: THandle; const ASection: string): string;
function GetDataKeyFromDLL(ASection: TStrings; AKey: string): string;
function GetFileInformation(const FileName: string): TSearchRec;
function GetFileLastWriteTime(AFileName: string): TDateTime;
function GetINIValue(const AFileName, ASection, AKey, ADefault: string): string; overload;
function GetINIValue(const AFileName, ASection, AKey: string; ADefault: boolean): boolean; overload;
function IsSectionExists(const AFileName, ASection: string): boolean;
function LoadDLL(const ADLLName: string; out ADLLHandle: THandle): boolean;
procedure SetINIValue(const AFileName, ASection, AKey, AValue: string);

{ Procedure and function for VCL Component }
procedure AddMessage(AMemoResult: TMemo; AMessage: string; ASpaceLine: byte = 1); overload;
procedure AddMessage(AMemoResult: TcxCustomMemo; AMessage: string; ASpaceLine: byte = 1); overload;
procedure GetYearList(AStrings: TStrings; ADate: TDateTime); overload;
procedure GetYearList(AComboBox: TcxComboBox; ADate: TDateTime); overload;
procedure GetMonthList(AStrings: TStrings; ADate: TDateTime); overload;
procedure GetMonthList(AComboBox: TcxComboBox; ADate: TDateTime); overload;
procedure SetVisible(AControl: TWinControl; AFlag: byte); overload;
procedure SetVisible(AControl: TControl; AFlag: byte); overload;
procedure SetReadOnly(AComponent: TcxDBCheckBox; AReadOnly: boolean = True; AColor: TColor = clRed); overload;
procedure SetReadOnly(AComponent: TcxCustomGridTableView; AReadOnly: boolean = True); overload;
procedure SetReadOnly(AComponent: TcxCustomTextEdit; AReadOnly: boolean = True; AColor: TColor = COLOR_INACTIVE); overload;
procedure SetReadOnly(AComponent: TcxTimeEdit; AReadOnly: boolean = True; AColor: TColor = COLOR_INACTIVE); overload;
procedure SetReadOnly(AComponent: TcxDBExtLookupComboBox; AReadOnly: boolean = True; AColor: TColor = COLOR_INACTIVE; ANotifyEvent: TNotifyEvent = nil); overload;
procedure SetReadOnly(AComponent: TcxDBImageComboBox; AReadOnly: boolean = True; AColor: TColor = COLOR_INACTIVE; ANotifyEvent: TNotifyEvent = nil); overload;
procedure SetReadOnly(AComponent: TcxDBComboBox; AReadOnly: boolean = True; AColor: TColor = COLOR_INACTIVE; ANotifyEvent: TNotifyEvent = nil); overload;
procedure SetReadOnly(AComponent: TcxExtLookupComboBox; AReadOnly: boolean = True; AColor: TColor = COLOR_INACTIVE; ANotifyEvent: TNotifyEvent = nil); overload;
procedure SetReadOnly(AComponent: TcxDBLookupComboBox; AReadOnly: boolean = True; AColor: TColor = COLOR_INACTIVE; ANotifyEvent: TNotifyEvent = nil); overload;
procedure SetReadOnly(AComponent: TcxDateEdit; AReadOnly: boolean = True; AColor: TColor = COLOR_INACTIVE; ANotifyEvent: TNotifyEvent = nil); overload;
procedure SetReadOnly(AComponent: TcxDBDateEdit; AReadOnly: boolean = True; AColor: TColor = COLOR_INACTIVE; ANotifyEvent: TNotifyEvent = nil); overload;
procedure SetReadOnly(AComponent: TcxGridDBColumn; AReadOnly: boolean = True; AColor: TcxStyle = nil); overload;

{ Procedure and function for Graphic }
procedure ResizeJPEGFile(AJPEGIn: TJPEGImage; out AJPEGOut: TJPEGImage; ASizeRatio: integer);
procedure RotateBitmap(ABitmapIn: TBitmap; out ABitmapOut: TBitmap; AAngle: Double);

{ Procedure and function for Form }
procedure VisibleItem(AMainMenu: TMainMenu; AName: string; AVisible: boolean); overload;
procedure VisibleItem(AActionBarItem: TActionBarItem; AName: string; AVisible: boolean); overload;
procedure VisibleAllItem(AMainMenu: TMainMenu; AVisible: boolean); overload;
procedure VisibleAllItem(AActionBarItem: TActionBarItem; AVisible: boolean); overload;
procedure PostAllDataset(AForm: TForm);
function FindMenuRecursive(AMenu: TMenuItem; AName: string): TMenuItem; overload;
function IsAllDatasetAlreadyPost(AForm: TForm): boolean;

{ Others }
procedure GetInfo(const AFilename: string; var AVersionFileVersion: string);
function AddingZero(const AString: string; ADestLength: byte): string;
function GetCurrentComputerName: string;
//function GetCurrentComputerIP: string;
function IsNull(AVariant: variant; ADefault: real): real;
procedure AddFilenameArray(var AStringArray: TDynamicStringArray; const AFilename: string);
procedure DeleteFileInArray(var AStringArray: TDynamicStringArray);
procedure MakeListFromFileNameArray(var AStringArray: TDynamicStringArray; const AListName: string);
procedure CreateProcessSimple(AExecutableFilePath: string);
procedure ExecuteWithBatchFile(AApplication: TApplication; const ACommand: string; AViewCommand: boolean = False; AWithPause: boolean = True; AShowWindow: integer = 1) overload;
procedure RunDosInMemo(AApplication: TApplication; ACommandLine: string; AMemo: TMemo);
function MakeNameSpace(AName: string): string;
function TranslateToNumeric(AString: string): string;
function Right(AStr: String; ALen: Integer ): String;
function Left(AStr: String; ALen: Integer ): String;
function CurrencyToString(ACurrency: double; ADefaultCurrency: string = 'Rupiah'): string;
function BinToInt(Value: String): LongInt;
function IntToBin ( value: LongInt; digits: integer ): string;

implementation

{$IFDEF WIN32}
const BAD_DLL_LOAD = 32;
{$ELSE}
const BAD_DLL_LOAD = 0;
{$ENDIF}

const
  LOCAL_MONTH: array[1..12] of string =
  ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'Agust',
    'September', 'October', 'November', 'December');

resourcestring
  LOCAL_MSG_MISSING_FILE =
    'File %s tidak ada !';
  LOCAL_MSG_INVALID_FILE =
    'File %s tidak ada !';
  LOCAL_MSG_ENCRYPTION_FAILED =
    'Inisialisasi proses enkripsi tidak dapat dilakukan !';
  LOCAL_MSG_CANNOT_CONNECT =
    'Koneksi dengan database tidak dapat dilakukan !';

//function GetActiveConnectionCount(ADatabaseEngine: TDatabaseEngine;
//  const ADatabase: string; AZConnection: TZConnection): integer;
//var
//  qryGetConnections: TZQuery;
////  DefaultDatabase: string;
//begin
//  Result := 0;
//  qryGetConnections := TZQuery.Create(nil);
//  qryGetConnections.Connection := AZConnection;
//  try
//    if ADatabaseEngine = deMSSql then
//    begin
//      DefaultDatabase := AZConnection.DefaultDatabase;
//      AADOConnection.DefaultDatabase := 'master';
//      qryGetConnections.Close;
//      qryGetConnections.SQL.Clear;
//      qryGetConnections.SQL.Add('declare @DB varchar(30)');
//      qryGetConnections.SQL.Add('set @DB = :Database');
//      qryGetConnections.SQL.Add('select count(*) as ActiveConnection');
//      qryGetConnections.SQL.Add('from master..sysprocesses');
//      qryGetConnections.SQL.Add('where dbid = db_id(@DB)');
//      qryGetConnections.Parameters[0].Value := ADatabase;
//      qryGetConnections.Open;
//      if not qryGetConnections.IsEmpty then
//        Result := qryGetConnections.FieldByName('ActiveConnection').AsInteger;
//      //AADOConnection.DefaultDatabase := DefaultDatabase;
//    end;
//    if ADatabaseEngine = deMySql then
//    begin
//      // MySql
//    end;
//    if ADatabaseEngine = dePostgre then
//    begin
//      // Postgre
//    end;
//    if ADatabaseEngine = deFirebird then
//    begin
//      // Firebird
//    end;
//  finally
//    FreeAndNil(qryGetConnections);
//  end;
//end;

//procedure KillActiveConnections(ADatabaseEngine: TDatabaseEngine;
//  const ADatabase: string; AZConnection: TZConnection);
//var
//  qryGetListConnections, qryKillProcess: TZQuery;
//  DefaultDatabase: string;
//begin
//  qryGetListConnections := TZQuery.Create(nil);
//  qryKillProcess := TZQuery.Create(nil);
//  qryGetListConnections.Connection := AZConnection;
//  qryKillProcess.Connection := AZConnection;
//  try
//    if ADatabaseEngine = deMSSql then
//    begin
//      DefaultDatabase := AZConnection.DefaultDatabase;
//      AZConnection.DefaultDatabase := 'master';
//      qryGetListConnections.Close;
//      qryGetListConnections.SQL.Clear;
//      qryGetListConnections.SQL.Add('declare @DB varchar(30)              ');
//      qryGetListConnections.SQL.Add('set @DB = :Database                  ');
//      qryGetListConnections.SQL.Add('select spid from master..sysprocesses');
//      qryGetListConnections.SQL.Add('where dbid = db_id(@DB)              ');
//      qryGetListConnections.Parameters[0].Value := ADatabase;
//      qryGetListConnections.Open;
//      if not qryGetListConnections.IsEmpty then
//      begin
//        qryGetListConnections.First;
//        while not qryGetListConnections.Eof do
//        begin
//          // Kill one by one
//          qryKillProcess.Close;
//          qryKillProcess.SQL.Clear;
//          qryKillProcess.SQL.Add('Kill ' + qryGetListConnections.FieldByName('SPID').AsString);
//          qryKillProcess.ExecSQL;
//          qryGetListConnections.Next;
//        end;
//      end;
//      AADOConnection.DefaultDatabase := DefaultDatabase;
//    end;
//    if ADatabaseEngine = deMySql then
//    begin
//      // MySql
//    end;
//    if ADatabaseEngine = dePostgre then
//    begin
//      // Postgre
//    end;
//    if ADatabaseEngine = deFirebird then
//    begin
//      // Firebird
//    end;
//  finally
//    FreeAndNil(qryGetListConnections);
//    FreeAndNil(qryKillProcess);
//  end;
//end;

function MemoryEncrypt(ASrc: Pointer; ASrcSize: Cardinal; ATarget: Pointer; ATargetSize: Cardinal; AKey: TWordTriple): boolean;
var
  pIn, pOut: ^byte;
  i: Cardinal;
begin
  if ASrcSize = ATargetSize then
  begin
    pIn := ASrc;
    pOut := ATarget;
    for i := 1 to ASrcSize do
    begin
      pOut^ := pIn^ xor (AKey[2] shr 8);
      AKey[2] := Byte(pIn^ + AKey[2]) * AKey[0] + AKey[1];
      Inc(pIn);
      Inc(pOut);
    end;
    Result := True;
  end
  else
    Result := False;
end;

function MemoryDecrypt(ASrc: Pointer; ASrcSize: Cardinal; ATarget: Pointer; ATargetSize: Cardinal; AKey: TWordTriple): boolean;
var
  pIn, pOut: ^byte;
  i: Cardinal;
begin
  if ASrcSize = ATargetSize then
  begin
    pIn := ASrc;
    pOut := ATarget;
    for i := 1 to ASrcSize do
    begin
      pOut^ := pIn^ xor (AKey[2] shr 8);
      AKey[2] := Byte(pOut^ + AKey[2]) * AKey[0] + AKey[1];
      Inc(pIn);
      Inc(pOut);
    end;
    Result := True;
  end
  else
    Result := False;
end;

function Decrypt(const APassword, AString: string): string;
var
  Dest: string;
  IvEncryption: TIvEncryption;
begin
  IvEncryption := TIvEncryption.Create(nil);
  try
    IvEncryption.RC4Init(IvEncryption.StringToStringByte(APassword));
    Dest := '';
    Dest := IvEncryption.RC4Crypt(AString);
    Dest := IvEncryption.StringByteToString(Dest);
    Result := Dest;
    IvEncryption.RC4Reset;
    IvEncryption.RC4Burn;
  finally
    FreeAndNil(IvEncryption);
  end;
end;

function Encrypt(const APassword, AString: string): string;
var
  Dest: string;
  IvEncryption: TIvEncryption;
begin
  IvEncryption := TIvEncryption.Create(nil);
  try
    IvEncryption.RC4Init(IvEncryption.StringToStringByte(APassword));
    Dest := '';
    Dest := IvEncryption.RC4Crypt(IvEncryption.StringToStringByte(AString));
    Result := Dest;
    IvEncryption.RC4Reset;
    IvEncryption.RC4Burn;
  finally
    FreeAndNil(IvEncryption);
  end;
end;

function TextCrypt(const S: string; AKey: TWordTriple; AEncrypt: Boolean): string;
var
  bOK: Boolean;
begin
  SetLength(Result, Length(S));
  if AEncrypt then
    bOK := MemoryEncrypt(PChar(S), Length(S), PChar(Result), Length(Result), AKey)
  else
    bOK := MemoryDecrypt(PChar(S), Length(S), PChar(Result), Length(Result), AKey);
  if not bOK then
    Result := '';
end;

function FileCrypt(AInFile, AOutFile: string; AStringKey: TStringTriple; AEncrypt: Boolean): Boolean;
var
  MemIn, MemOut: TMemoryStream;
  Key: TWordTriple;
begin
  AStringKey := StringOfChar(' ', Length(AStringKey) - 3) + AStringKey;
  Key[0] := Ord(AStringKey[1]);
  Key[1] := Ord(AStringKey[2]);
  Key[2] := Ord(AStringKey[3]);
  MemIn := TMemoryStream.Create;
  MemOut := TMemoryStream.Create;
  try
    MemIn.LoadFromFile(AInFile);
    MemOut.SetSize(MemIn.Size);
    if AEncrypt then
      Result := MemoryEncrypt(MemIn.Memory, MemIn.Size, MemOut.Memory, MemOut.Size, Key)
    else
      Result := MemoryDecrypt(MemIn.Memory, MemIn.Size, MemOut.Memory, MemOut.Size, Key);
    MemOut.SaveToFile(AOutFile);
  finally
    FreeAndNil(MemOut);
    FreeAndNil(MemIn);
  end;
end;

procedure SetVisible(AControl: TWinControl; AFlag: byte); overload;
begin
  if AFlag = 1 then
    AControl.Visible := True
  else
    AControl.Visible := False;
end;

procedure SetVisible(AControl: TControl; AFlag: byte); overload;
begin
  if AFlag = 1 then
    AControl.Visible := True
  else
    AControl.Visible := False;
end;

function GetINIValue(const AFileName, ASection, AKey, ADefault: string): string; overload;
var
  INIFile: TIniFile;
  S: string;
begin
  INIFile := TIniFile.Create(AFileName);
  with INIFile do
  begin
    S := '';
    S := ReadString(ASection, AKey, ADefault);
    Result := S;
  end;
  FreeAndNil(INIFile);
end;

function GetINIValue(const AFileName, ASection, AKey: string; ADefault: boolean): boolean; overload;
var
  INIFile: TIniFile;
  S: boolean;
begin
  INIFile := TIniFile.Create(AFileName);
  with INIFile do
  begin
    S := StrToBool(ReadString(ASection, AKey, BoolToStr(ADefault, True)));
    Result := S;
  end;
  FreeAndNil(INIFile);
end;

procedure SetINIValue(const AFileName, ASection, AKey, AValue: string);
var
  INIFile: TIniFile;
begin
  INIFile := TIniFile.Create(AFileName);
  INIFile.WriteString(ASection, AKey, AValue);
  FreeAndNil(INIFile);
end;

function IsSectionExists(const AFileName, ASection: string): boolean;
var
  INIFile: TIniFile;
begin
  INIFile := TIniFile.Create(AFileName);
  Result := INIFile.SectionExists(ASection);
  FreeAndNil(INIFile);
end;

function OpenIfClose(ADataset: TDataSet; AShowProcess: boolean = False;
  AGotoLast: boolean = False): boolean;
var
  fmOpenWaiting: TfmOpenWaiting;
  ivADOProp1: TIvPropADO;
begin
  Result := False;
  if ADataset.Active then
    Exit;

  ivADOProp1 := TIvPropADO.Create(nil);
  try
    ivADOProp1.MessageToken := DATABASE_MESSAGE_TOKEN;
    ADataset.DisableControls;
    fmOpenWaiting := TfmOpenWaiting.Create(nil);
    try
      if AShowProcess then
      begin
        fmOpenWaiting.Show;
        Forms.Application.ProcessMessages; //Ivan: DO NOT REMOVE THIS
      end;
      try
        ADataset.Open;
        if AGotoLast then
          ADataset.Last;
        Result := True;
      except
        on E: Exception do
        begin
          MessageDlg(ivADOProp1.TranslateErrorMessage(E.Message), mtInformation, [mbOk], 0);
          Result := False;
        end;
      end;
    finally
      FreeAndNil(fmOpenWaiting);
    end;
  finally
    ADataset.EnableControls;
    FreeAndNil(ivADOProp1);
  end;
end;

function ExecuteQuery(AADOQuery: TADOQuery; AShowProcess: boolean = False): boolean; overload;
var
  fmOpenWaiting: TfmOpenWaiting;
  ivADOProp1: TIvPropADO;
begin
  Result := False;
  try
    ivADOProp1 := TIvPropADO.Create(nil); // Use just for translate error message
    ivADOProp1.MessageToken := DATABASE_MESSAGE_TOKEN;
    fmOpenWaiting := TfmOpenWaiting.Create(nil);
    try
      if AShowProcess then
      begin
        fmOpenWaiting.Show;
        Forms.Application.ProcessMessages; //Ivan: DO NOT REMOVE THIS
      end;
      try
        AADOQuery.Close;
        AADOQuery.ExecSQL;
        Result := True;
      except
        on E: Exception do
        begin
          MessageDlg(ivADOProp1.TranslateErrorMessage(E.Message), mtInformation, [mbOk], 0);
        end;
      end;
    finally
      FreeAndNil(fmOpenWaiting);
    end;
  finally
    FreeAndNil(ivADOProp1);
  end;
end;

function ExecuteQuery(AUniQuery: TUniQuery; AShowProcess: boolean = False): boolean; overload;
var
  fmOpenWaiting: TfmOpenWaiting;
  ivADOProp1: TIvPropADO;
begin
  Result := False;
  try
    ivADOProp1 := TIvPropADO.Create(nil); // Use just for translate error message
    ivADOProp1.MessageToken := DATABASE_MESSAGE_TOKEN;
    fmOpenWaiting := TfmOpenWaiting.Create(nil);
    try
      if AShowProcess then
      begin
        fmOpenWaiting.Show;
        Forms.Application.ProcessMessages; //Ivan: DO NOT REMOVE THIS
      end;
      try
        AUniQuery.Close;
        AUniQuery.Execute;
        Result := True;
      except
        on E: Exception do
        begin
          MessageDlg(ivADOProp1.TranslateErrorMessage(E.Message), mtInformation, [mbOk], 0);
        end;
      end;
    finally
      FreeAndNil(fmOpenWaiting);
    end;
  finally
    FreeAndNil(ivADOProp1);
  end;
end;

function LockRefresh(ADataset: TDataSet; AShowProcess: boolean = False): boolean;
var
//  Pos: Integer;
//  CurrentField: string;
//  ArrayIdValue: array of variant;
//  ArrayParameters: array of variant;
  Bookmark: TBookmark;
  fmOpenWaiting: TfmOpenWaiting;
begin
  // fungsi untuk refresh
  Result := False;
  if not ADataset.Active then
    Exit;

  fmOpenWaiting := TfmOpenWaiting.Create(nil);
  try
    if AShowProcess then
    begin
      fmOpenWaiting.Show;
      Forms.Application.ProcessMessages; //Ivan: DO NOT REMOVE THIS
    end;

    // Apabila dataset masih dalam insert/edit maka disimpan lebih dahulu
    if ADataset.State in [dsInsert, dsEdit] then
      ADataset.Post;

    ADataset.DisableControls;
    Bookmark := ADataset.Bookmark;
    ADataset.Close;
    ADataset.Open;
    if not ADataset.IsEmpty then
      if ADataset.BookmarkValid(Bookmark) then
        ADataset.GotoBookmark(Bookmark);
    Result := True;
  finally
    ADataset.EnableControls;
    FreeAndNil(fmOpenWaiting);
  end;
end;

function LockRefresh(ADataset: TUniQuery; AShowProcess: boolean = False): boolean; overload;
var
//  Pos: Integer;
//  CurrentField: string;
//  ArrayIdValue: array of variant;
//  ArrayParameters: array of variant;
  Bookmark: TBookmark;
  fmOpenWaiting: TfmOpenWaiting;
begin
  // fungsi untuk refresh
  Result := False;
  if not ADataset.Active then
    Exit;

  fmOpenWaiting := TfmOpenWaiting.Create(nil);
  try
    if AShowProcess then
    begin
      fmOpenWaiting.Show;
      Forms.Application.ProcessMessages; //Ivan: DO NOT REMOVE THIS
    end;

    // Apabila dataset masih dalam insert/edit maka disimpan lebih dahulu
    if ADataset.State in [dsInsert, dsEdit] then
      ADataset.Post;

    ADataset.DisableControls;
    Bookmark := ADataset.GetBookmark;
    ADataset.Close;
    ADataset.Open;
    if not ADataset.IsEmpty then
      if ADataset.BookmarkValid(Bookmark) then
        ADataset.GotoBookmark(Bookmark);

    Result := True;
  finally
    ADataset.EnableControls;
    FreeAndNil(fmOpenWaiting);
  end;
end;

procedure SetReadOnly(AComponent: TcxCustomGridTableView;
  AReadOnly: boolean = True); overload;
begin
  if AReadOnly then
  begin
    AComponent.OptionsData.Deleting := False;
    AComponent.OptionsData.Editing := False;
    AComponent.OptionsData.Inserting := False;
  end
  else
  begin
    AComponent.OptionsData.Deleting := True;
    AComponent.OptionsData.Editing := True;
    AComponent.OptionsData.Inserting := True;
  end;
end;

procedure SetReadOnly(AComponent: TcxDBExtLookupComboBox;
  AReadOnly: boolean = True; AColor: TColor = COLOR_INACTIVE;
  ANotifyEvent: TNotifyEvent = nil); overload;
begin
  if AReadOnly then
  begin
    AComponent.Properties.ReadOnly := True;
    AComponent.Style.Color := AColor;
    AComponent.TabStop := False;
    AComponent.Properties.AutoSelect := False;
    if Assigned(ANotifyEvent) then
      AComponent.Properties.OnInitPopup := ANotifyEvent;
  end
  else
  begin
    AComponent.Properties.ReadOnly := False;
    AComponent.Style.Color := clWindow; //default
    AComponent.TabStop := True;
    AComponent.Properties.AutoSelect := True;
    if Assigned(ANotifyEvent) then
      AComponent.Properties.OnInitPopup := ANotifyEvent;
  end;
end;

procedure SetReadOnly(AComponent: TcxDBImageComboBox; AReadOnly: boolean = True;
  AColor: TColor = COLOR_INACTIVE; ANotifyEvent: TNotifyEvent = nil); overload;
begin
  if AReadOnly then
  begin
    AComponent.Properties.ReadOnly := True;
    AComponent.Style.Color := AColor;
    AComponent.TabStop := False;
    if Assigned(ANotifyEvent) then
      AComponent.Properties.OnInitPopup := ANotifyEvent;
  end
  else
  begin
    AComponent.Properties.ReadOnly := False;
    AComponent.Style.Color := clWindow; //default
    AComponent.TabStop := True;
    if Assigned(ANotifyEvent) then
      AComponent.Properties.OnInitPopup := ANotifyEvent;
  end;
end;

procedure SetReadOnly(AComponent: TcxDBComboBox; AReadOnly: boolean = True;
  AColor: TColor = COLOR_INACTIVE; ANotifyEvent: TNotifyEvent = nil); overload;
begin
  if AReadOnly then
  begin
    AComponent.Properties.ReadOnly := True;
    AComponent.Style.Color := AColor;
    AComponent.TabStop := False;
    if Assigned(ANotifyEvent) then
      AComponent.Properties.OnInitPopup := ANotifyEvent;
  end
  else
  begin
    AComponent.Properties.ReadOnly := False;
    AComponent.Style.Color := clWindow; //default
    AComponent.TabStop := True;
    if Assigned(ANotifyEvent) then
      AComponent.Properties.OnInitPopup := ANotifyEvent;
  end;
end;

procedure SetReadOnly(AComponent: TcxExtLookupComboBox;
  AReadOnly: boolean = True; AColor: TColor = COLOR_INACTIVE; ANotifyEvent: TNotifyEvent = nil); overload;
begin
  if AReadOnly then
  begin
    AComponent.Properties.ReadOnly := True;
    AComponent.Style.Color := AColor;
    AComponent.TabStop := False;
    AComponent.Properties.AutoSelect := False;
    if Assigned(ANotifyEvent) then
      AComponent.Properties.OnInitPopup := ANotifyEvent;
  end
  else
  begin
    AComponent.Properties.ReadOnly := False;
    AComponent.Style.Color := clWindow; //default
    AComponent.TabStop := True;
    AComponent.Properties.AutoSelect := True;
    if Assigned(ANotifyEvent) then
      AComponent.Properties.OnInitPopup := ANotifyEvent;
  end;
end;

procedure SetReadOnly(AComponent: TcxDBLookupComboBox;
  AReadOnly: boolean = True; AColor: TColor = COLOR_INACTIVE; ANotifyEvent: TNotifyEvent = nil); overload;
begin
  if AReadOnly then
  begin
    AComponent.Properties.ReadOnly := True;
    AComponent.Style.Color := AColor;
    AComponent.TabStop := False;
    AComponent.Properties.AutoSelect := False;
    if Assigned(ANotifyEvent) then
      AComponent.Properties.OnInitPopup := ANotifyEvent;
  end
  else
  begin
    AComponent.Properties.ReadOnly := False;
    AComponent.Style.Color := clWindow; //default
    AComponent.TabStop := True;
    AComponent.Properties.AutoSelect := True;
    if Assigned(ANotifyEvent) then
      AComponent.Properties.OnInitPopup := ANotifyEvent;
  end;
end;

procedure SetReadOnly(AComponent: TcxDateEdit; AReadOnly: boolean = True;
  AColor: TColor = COLOR_INACTIVE; ANotifyEvent: TNotifyEvent = nil); overload;
begin
  if AReadOnly then
  begin
    AComponent.Properties.ReadOnly := True;
    AComponent.Style.Color := AColor;
    AComponent.TabStop := False;
    if Assigned(ANotifyEvent) then
      AComponent.Properties.OnInitPopup := ANotifyEvent;
  end
  else
  begin
    AComponent.Properties.ReadOnly := False;
    AComponent.Style.Color := clWindow; //default
    AComponent.TabStop := True;
    if Assigned(ANotifyEvent) then
      AComponent.Properties.OnInitPopup := ANotifyEvent;
  end;
end;

procedure SetReadOnly(AComponent: TcxTimeEdit; AReadOnly: boolean = True;
  AColor: TColor = COLOR_INACTIVE); overload;
begin
  if AReadOnly then
  begin
    AComponent.Properties.ReadOnly := True;
    AComponent.Style.Color := AColor;
    AComponent.TabStop := False;
  end
  else
  begin
    AComponent.Properties.ReadOnly := False;
    AComponent.Style.Color := clWindow; //default
    AComponent.TabStop := True;
  end;
end;

procedure SetReadOnly(AComponent: TcxDBDateEdit; AReadOnly: boolean = True;
  AColor: TColor = COLOR_INACTIVE; ANotifyEvent: TNotifyEvent = nil); overload;
begin
  if AReadOnly then
  begin
    AComponent.Properties.ReadOnly := True;
    AComponent.Style.Color := AColor;
    AComponent.TabStop := False;
    if Assigned(ANotifyEvent) then
      AComponent.Properties.OnInitPopup := ANotifyEvent;
  end
  else
  begin
    AComponent.Properties.ReadOnly := False;
    AComponent.Style.Color := clWindow; //default
    AComponent.TabStop := True;
    if Assigned(ANotifyEvent) then
      AComponent.Properties.OnInitPopup := ANotifyEvent;
  end;
end;

procedure SetReadOnly(AComponent: TcxGridDBColumn; AReadOnly: boolean = True; AColor: TcxStyle = nil); overload;
begin
  if AReadOnly then
  begin
    AComponent.Options.Editing := False;
    if AColor = nil then
      AComponent.Styles.Content := AColor;
  end
  else
  begin
    AComponent.Options.Editing := True;
    AComponent.Styles.Content := nil; //default
  end;
end;

procedure SetReadOnly(AComponent: TcxCustomTextEdit;
  AReadOnly: boolean = True; AColor: TColor = COLOR_INACTIVE); overload;
begin
  if AReadOnly then
  begin
    AComponent.Properties.ReadOnly := True;
    AComponent.Style.Color := AColor;
    AComponent.TabStop := False;
  end
  else
  begin
    AComponent.Properties.ReadOnly := False;
    AComponent.Style.Color := clWindow; //default
    AComponent.TabStop := True;
  end;
end;

procedure SetReadOnly(AComponent: TcxDBCheckBox; AReadOnly: boolean = True;
  AColor: TColor = clRed); overload;
begin
  if AReadOnly then
  begin
    AComponent.Properties.ReadOnly := False;
    AComponent.Style.TextColor := AColor;
    AComponent.TabStop := False;
  end
  else
  begin
    AComponent.Properties.ReadOnly := True;
    AComponent.Style.TextColor := clWindowText; //default
    AComponent.TabStop := True;
  end;
end;

procedure PostAllDataset(AForm: TForm);
var
  i: integer;
begin
  for i := 0 to AForm.ComponentCount - 1 do
  begin
    if AForm.Components[i] is TCustomADODataSet then
      if TDataSet(AForm.Components[i]).State in [dsEdit, dsInsert] then
        TDataSet(AForm.Components[i]).Post;

    // Datasource juga perlu di cek, krn ada form yg dataset nya diletakan
    // di datamodule
    if AForm.Components[i] is TDataSource then
      if TDataSource(AForm.Components[i]).State in [dsEdit, dsInsert] then
        TDataSource(AForm.Components[i]).DataSet.Post;
  end;
end;

function FindMenuRecursive(AMenu: TMenuItem; AName: string): TMenuItem;
var
  i: Integer;
begin
  // fungsi untuk mencari menu secara recursive
  Result := nil;
  if CompareText(AMenu.Name, AName) = 0 then
    Result := AMenu
  else begin
    for i := 0 to AMenu.Count - 1 do
    begin
      Result := FindMenuRecursive(AMenu.Items[i], AName);
      if Result <> nil then // Already found
        Exit;
    end;
  end;
end;

function IsAllDatasetAlreadyPost(AForm: TForm): boolean;
var
  i: integer;
  IsFoundInsertOrEditState: boolean;
begin
  Result := False;
  IsFoundInsertOrEditState := False;
  for i := 0 to AForm.ComponentCount - 1 do
  begin
    if AForm.Components[i] is TCustomADODataSet then
    begin
      if TCustomADODataSet(AForm.Components[i]).State in [dsEdit, dsInsert] then
      begin
        IsFoundInsertOrEditState := True;
        Break;
      end;
    end;
    // Datasource juga perlu di cek, krn ada form yg dataset nya diletakan
    // di datamodule
    if AForm.Components[i] is TDataSource then
    begin
      if TDataSource(AForm.Components[i]).State in [dsEdit, dsInsert] then
      begin
        IsFoundInsertOrEditState := True;
        Break;
      end;
    end;
  end;

  if not IsFoundInsertOrEditState then
    Result := True
  else
  begin
    if MessageDlg(ASK_CLOSE, mtInformation, [mbYes, mbNo], 0) = mrYes then
      Result := True;
  end;
end;

procedure VisibleItem(AMainMenu: TMainMenu; AName: string; AVisible: boolean); overload;

  function VisibleItemRecursive(AMenuItem: TMenuItem; ASubName: string): boolean;
  var
    i: integer;
  begin
    Result := False;
    for i := 0 to AMenuItem.Count - 1 do
    begin
      if AMenuItem.Items[i].Name = ASubName then
      begin
        AMenuItem.Items[i].Visible := AVisible;
        Result := True;
      end
      else
        Result := VisibleItemRecursive(AMenuItem.Items[i], ASubName);
      if Result then // Already found
        Exit;
    end;
  end;

var
  i: integer;
begin
  // prosedur untuk men-invisible TMenuItem dalam TMainMenu
  if AName = '-' then
    Exit;
  for i := 0 to AMainMenu.Items.Count - 1 do
  begin
    if AMainMenu.Items[i].Name = AName then
    begin
      AMainMenu.Items[i].Visible := AVisible;
      Exit;
    end
    else
      if VisibleItemRecursive(AMainMenu.Items[i], AName) then
        Exit;
  end;
end;

procedure VisibleItem(AActionBarItem: TActionBarItem; AName: string;
  AVisible: boolean); overload;

  function VisibleItemRecursive(AActionClientItem: TActionClientItem;
    ASubName: string): boolean;
  var
    i: integer;
    S: string;
  begin
    Result := False;
    for i := 0 to AActionClientItem.Items.Count - 1 do
    begin
      S := AActionClientItem.Items[i].Caption;
      S := StringReplace(S, '&', '', [rfReplaceAll]);
      if SameText(S, StringReplace(ASubName, '&', '', [rfReplaceAll])) then
      begin
        AActionClientItem.Items[i].Visible := AVisible;
        Result := True;
      end
      else
        Result := VisibleItemRecursive(AActionClientItem.Items[i], ASubName);
      if Result then // Already found
        Exit;
    end;
  end;

var
  i: Integer;
  S: string;
begin
  // prosedur untuk men-invisible TActionClientItem dalam TActionBarItem
  if AName = '-' then
    Exit;
  for i := 0 to AActionBarItem.Items.Count - 1 do
  begin
    S := AActionBarItem.Items[i].Caption;
    S := StringReplace(S, '&', '', [rfReplaceAll]);
    if SameText(S, StringReplace(AName, '&', '', [rfReplaceAll])) then
    begin
      AActionBarItem.Items[i].Visible := AVisible;
      Exit;
    end
    else
      if VisibleItemRecursive(AActionBarItem.Items[i], AName) then
        Exit;
  end;
end;

procedure VisibleAllItem(AActionBarItem: TActionBarItem;
  AVisible: boolean); overload;

  procedure SetVisibleActionClients(AActionClientItem: TActionClientItem);
  var
    i: Integer;
  begin
    for i := 0 to AActionClientItem.Items.Count - 1 do
    begin
      SetVisibleActionClients(AActionClientItem.Items[i]);
      if AActionClientItem.Items[i].Caption <> '-' then
        AActionClientItem.Items[i].Visible := AVisible;
    end;
  end;

var
  i: integer;
begin
  // prosedur untuk men-invisible TActionClientItem dalam TActionBarItem
  for i := 0 to AActionBarItem.Items.Count - 1 do
  begin
    SetVisibleActionClients(AActionBarItem.Items[i]);
    if AActionBarItem.Items[i].Caption <> '-' then
      AActionBarItem.Items[i].Visible := AVisible;
  end;
end;

procedure VisibleAllItem(AMainMenu: TMainMenu; AVisible: boolean);

  procedure SetVisibleMenuItem(AMenu: TMenuItem);
  var
    i: Integer;
  begin
    for i := 0 to AMenu.Count - 1 do
    begin
      SetVisibleMenuItem(AMenu.Items[i]);
      AMenu.Items[i].Visible := AVisible;
    end;
  end;

var
  i: Integer;
begin
  // prosedur untuk men-invisible seluruh TMenuItem dalam TMainMenu
  for i := 0 to AMainMenu.Items.Count - 1 do
  begin
    SetVisibleMenuItem(AMainMenu.Items[i]);
    AMainMenu.Items[i].Visible := AVisible;
  end;
end;

{$WARNINGS OFF}

function GetSpecialFolderPath(folder : integer) : string;
const
  SHGFP_TYPE_CURRENT = 0;
var
  path: array [0..MAX_PATH] of char;
begin
  if SUCCEEDED(SHGetFolderPath(0, folder, 0, SHGFP_TYPE_CURRENT, @path[0])) then
    Result := path
  else
    Result := '';
end;

procedure DeleteFiles(const APath, AMask: string; ARecursive: boolean = false);
var
  Result: integer;
  SearchRec: TSearchRec;
begin
  // prosedur untuk mendelete file secara recursive
  Result := FindFirst(APath + AMask, faAnyFile - faDirectory, SearchRec);
  while Result = 0 do
  begin
    if not DeleteFile(APath + SearchRec.name) then
    begin
      FileSetAttr(APath + SearchRec.name, 0); { reset all flags }
      DeleteFile(APath + SearchRec.name);
    end;
    Result := FindNext(SearchRec);
  end;
  FindClose(SearchRec);

  if not ARecursive then
    Exit;

  Result := FindFirst(APath + '*.*', faDirectory, SearchRec);
  while Result = 0 do
  begin
    if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
    begin
      FileSetAttr(APath + SearchRec.Name, faDirectory);
      DeleteFiles(APath + SearchRec.Name + '\', AMask, True);
      RmDir(APath + SearchRec.Name);
    end;
    Result := FindNext(SearchRec);
  end;
  FindClose(SearchRec);
end;
{$WARNINGS ON}

function GetFileInformation(const FileName: string): TSearchRec;
begin
  if FindFirst(FileName, faAnyFile, Result) = 0 then
    SysUtils.FindClose(Result)
  else
    RaiseLastOSError;
end;

function FileTime2DateTime(AFileTime: TFileTime): TDateTime;
var
  LocalFileTime: TFileTime;
  SystemTime: TSystemTime;
begin
  FileTimeToLocalFileTime(AFileTime, LocalFileTime);
  FileTimeToSystemTime(LocalFileTime, SystemTime);
  Result := SystemTimeToDateTime(SystemTime);
end;

{$WARNINGS OFF}

function GetFileLastWriteTime(AFileName: string): TDateTime;
var
  CurrentFileTime: TFileTime;
begin
  CurrentFileTime := GetFileInformation(AFileName).FindData.ftLastWriteTime;
  Result := FileTime2DateTime(CurrentFileTime);
end;
{$WARNINGS ON}

procedure GetYearList(AStrings: TStrings; ADate: TDateTime); overload;
var
  Year: integer;
begin
  // prosedur untuk mengisi string list dengan list tahun
  Year := YearOf(ADate);
  with AStrings do
  begin
    Clear;
    Add(IntToStr(Year - 2));
    Add(IntToStr(Year - 1));
    Add(IntToStr(Year));
    Add(IntToStr(Year + 1));
    Add(IntToStr(Year + 2));
  end;
end;

procedure GetYearList(AComboBox: TcxComboBox; ADate: TDateTime);
begin
  if Assigned(AComboBox) then
  begin
    GetYearList(AComboBox.Properties.Items, Date);
    AComboBox.Text := IntToStr(YearOf(ADate));
  end;
end;

procedure GetMonthList(AStrings: TStrings; ADate: TDateTime); overload;
var
  i: integer;
begin
  // prosedur untuk mengisi string list dengan list bulan
  with AStrings do
  begin
    Clear;
    for i := 1 to 12 do
      Add(LOCAL_MONTH[i]);
  end;
end;

procedure GetMonthList(AComboBox: TcxComboBox; ADate: TDateTime);
begin
  if Assigned(AComboBox) then
  begin
    GetMonthList(AComboBox.Properties.Items, Date);
    AComboBox.ItemIndex := MonthOf(ADate) - 1;
  end;
end;

procedure GetInfo(const AFilename: string; var AVersionFileVersion: string);
const
  InfoStr: array[1..10] of string = ('CompanyName', 'FileDescription',
    'FileVersion', 'InternalName', 'LegalCopyright', 'LegalTradeMarks',
    'OriginalFilename', 'ProductName', 'ProductVersion', 'Comments');
type
  TLangAndCP = record
    wLanguage: word;
    wCodePage: word;
  end;
  PLangAndCP = ^TLangAndCP;
var
  N: integer;
  ZValue: cardinal;
  Buf: PChar;
  Lang: PLangAndCP;
  LangLen: cardinal;
  SubBlock: string;
  Value: PChar;
  Len: cardinal;
  S: string;
  PointPos: integer;
begin
  N := GetFileVersionInfoSize(PChar(AFilename), ZValue);
  if N > 0 then begin
    Buf := AllocMem(N);
    GetFileVersionInfo(PChar(AFilename), 0, N, Buf);
    VerQueryValue(Buf, PChar('\\VarFileInfo\\Translation'), Pointer(Lang), LangLen);

//    SubBlock := Format('\\StringFileInfo\\%.4x%.4x\\' + InfoStr[1], [Lang^.wLanguage, Lang^.wCodePage]);
//    VerQueryValue(Buf, PChar(SubBlock), Pointer(Value), Len);
//    AVersionCompanyName := string(Value);

//    SubBlock := Format('\\StringFileInfo\\%.4x%.4x\\' + InfoStr[2], [Lang^.wLanguage, Lang^.wCodePage]);
//    VerQueryValue(Buf, PChar(SubBlock), Pointer(Value), Len);
//    AVersionFileDescription := Value;

    SubBlock := Format('\\StringFileInfo\\%.4x%.4x\\' + InfoStr[3], [Lang^.wLanguage, Lang^.wCodePage]);
    VerQueryValue(Buf, PChar(SubBlock), Pointer(Value), Len);
    AVersionFileVersion := Value;

//    SubBlock := Format('\\StringFileInfo\\%.4x%.4x\\' + InfoStr[4], [Lang^.wLanguage, Lang^.wCodePage]);
//    VerQueryValue(Buf, PChar(SubBlock), Pointer(Value), Len);
//    AVersionInternalName := Value;

//    SubBlock := Format('\\StringFileInfo\\%.4x%.4x\\' + InfoStr[5], [Lang^.wLanguage, Lang^.wCodePage]);
//    VerQueryValue(Buf, PChar(SubBlock), Pointer(Value), Len);
//    AVersionLegalCopyright := Value;

//    SubBlock := Format('\\StringFileInfo\\%.4x%.4x\\' + InfoStr[6], [Lang^.wLanguage, Lang^.wCodePage]);
//    VerQueryValue(Buf, PChar(SubBlock), Pointer(Value), Len);
//    AVersionLegalTradeMarks := Value;

//    SubBlock := Format('\\StringFileInfo\\%.4x%.4x\\' + InfoStr[7], [Lang^.wLanguage, Lang^.wCodePage]);
//    VerQueryValue(Buf, PChar(SubBlock), Pointer(Value), Len);
//    AVersionOriginalFilename := Value;

//    SubBlock := Format('\\StringFileInfo\\%.4x%.4x\\' + InfoStr[8], [Lang^.wLanguage, Lang^.wCodePage]);
//    VerQueryValue(Buf, PChar(SubBlock), Pointer(Value), Len);
//    AVersionProductName := Value;

//    SubBlock := Format('\\StringFileInfo\\%.4x%.4x\\' + InfoStr[9], [Lang^.wLanguage, Lang^.wCodePage]);
//    VerQueryValue(Buf, PChar(SubBlock), Pointer(Value), Len);
//    AVersionProductVersion := Value;

//    SubBlock := Format('\\StringFileInfo\\%.4x%.4x\\' + InfoStr[10], [Lang^.wLanguage, Lang^.wCodePage]);
//    VerQueryValue(Buf, PChar(SubBlock), Pointer(Value), Len);
//    AVersionComments := Value;

//    if AVersionFileVersion <> '' then begin
//      PointPos := Pos('.', AVersionFileVersion);
//      if PointPos <> 0 then begin
//        AVersionMajorVersion := Copy(AVersionFileVersion, 1, PointPos - 1);
//        S := Copy(AVersionFileVersion, PointPos + 1, Length(AVersionFileVersion) - PointPos);
//        PointPos := Pos('.', S);
//        AVersionMinorVersion := Copy(S, 1, PointPos - 1);
//        S := Copy(S, PointPos + 1, Length(S) - PointPos);
//        PointPos := Pos('.', S);
//        AVersionRelease := Copy(S, 1, PointPos - 1);
//        AVersionBuild := Copy(S, PointPos + 1, Length(S) - PointPos);
//      end
//      else begin
//        PointPos := Pos(',', AVersionFileVersion);
//        if PointPos <> 0 then begin
//          AVersionMajorVersion := Copy(AVersionFileVersion, 1, PointPos - 1);
//          S := Copy(AVersionFileVersion, PointPos + 1, Length(AVersionFileVersion) - PointPos);
//          PointPos := Pos(',', S);
//          AVersionMinorVersion := Copy(S, 1, PointPos - 1);
//          S := Copy(S, PointPos + 1, Length(S) - PointPos);
//          PointPos := Pos(',', S);
//          AVersionRelease := Copy(S, 1, PointPos - 1);
//          AVersionBuild := Copy(S, PointPos + 1, Length(S) - PointPos);
//        end
//        else begin
//          AVersionMajorVersion := '<info not available>';
//          AVersionMinorVersion := '<info not available>';
//          AVersionRelease := '<info not available>';
//          AVersionBuild := '<info not available>';
//        end;
//      end;
//    end
//    else begin
//      AVersionMajorVersion := '<info not available>';
//      AVersionMinorVersion := '<info not available>';
//      AVersionRelease := '<info not available>';
//      AVersionBuild := '<info not available>';
//    end;

    FreeMem(Buf, N);
  end
  else begin
//    AVersionCompanyname := '<info not available>';
//    AVersionFileDescription := '<info not available>';
    AVersionFileVersion := '<info not available>';
//    AVersionInternalname := '<info not available>';
//    AVersionLegalCopyright := '<info not available>';
//    AVersionLegalTradeMarks := '<info not available>';
//    AVersionOriginalFilename := '<info not available>';
//    AVersionProductName := '<info not available>';
//    AVersionProductVersion := '<info not available>';
//    AVersionComments := '<info not available>';
//    AVersionMajorVersion := '<info not available>';
//    AVersionMinorVersion := '<info not available>';
//    AVersionRelease := '<info not available>';
//    AVersionBuild := '<info not available>';
  end;
end;

function AddingZero(const AString: string; ADestLength: byte): string;
begin
  // fungsi untuk mengubah space menjadi zero
  Result := StringOfChar('0', ADestLength - Length(AString)) + AString;
end;

procedure ExecuteWithBatchFile(AApplication: TApplication;
  const ACommand: string; AViewCommand: boolean = False;
  AWithPause: boolean = True; AShowWindow: integer = 1); overload;
var
  F: TextFile;
  BatchFile: string;
begin
  BatchFile := FormatDateTime('YYMMDDhhnnsszzz', Now) + '.bat';
  AssignFile(F, BatchFile);
  Rewrite(F);
  Writeln(F, '@echo off');
  Writeln(F, 'echo Execute commands, Please wait a moment.... ');
  if AViewCommand then
    Writeln(F, '@echo on');
  Writeln(F, ACommand);
  Writeln(F, '@echo off');
  Writeln(F, 'echo Execute completed.');
  if AWithPause then
    Writeln(F, 'Pause');
  CloseFile(F);

  // Finally
  WinExec(PAnsiChar(BatchFile), AShowWindow);
  DeleteFile(BatchFile);
end;

procedure RunDosInMemo(AApplication: TApplication; ACommandLine: string;
  AMemo: TMemo);
const
  ReadBuffer = 2400;
var
  Security: TSecurityAttributes;
  ReadPipe, WritePipe: THandle;
  start: TStartUpInfo;
  ProcessInfo: TProcessInformation;
  Buffer: PAnsiChar;
  BytesRead: DWord;
  Apprunning: DWord;
begin
  with Security do begin
    nLength := SizeOf(TSecurityAttributes);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  if Createpipe(ReadPipe, WritePipe, @Security, 0) then
  begin
    Buffer := AllocMem(ReadBuffer + 1);
    FillChar(Start, Sizeof(Start), #0);
    start.cb := SizeOf(start);
    start.hStdOutput := WritePipe;
    start.hStdInput := ReadPipe;
    start.dwFlags := STARTF_USESTDHANDLES + STARTF_USESHOWWINDOW;
    start.wShowWindow := SW_HIDE;
    if CreateProcess(nil, PChar(ACommandLine), @Security, @Security, True,
      NORMAL_PRIORITY_CLASS, nil, nil, start, ProcessInfo) then
    begin
      repeat
        Apprunning := WaitForSingleObject(ProcessInfo.hProcess, 100);
        AApplication.ProcessMessages;
      until (Apprunning <> WAIT_TIMEOUT);
      repeat
        BytesRead := 0;
        ReadFile(ReadPipe, Buffer[0], ReadBuffer, BytesRead, nil);
        Buffer[BytesRead] := #0;
        OemToAnsi(Buffer, Buffer);
        AMemo.Text := AMemo.text + string(Buffer);
      until (BytesRead < ReadBuffer);
    end;
    FreeMem(Buffer);
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
    CloseHandle(ReadPipe);
    CloseHandle(WritePipe);
  end;
end;

function LoadDLL(const ADLLName: string; out ADLLHandle: THandle): boolean;
begin
  Result := False;
{$WARNINGS OFF}
  ADLLHandle := LoadLibrary(PChar(ADLLName));
{$WARNINGS ON}
  if ADLLHandle <= BAD_DLL_LOAD then
    Exit;
  Result := True;
end;

function GetDataSectionFromDLL(AHandle: THandle; const ASection: string): string;
var
  ResStream: TResourceStream;
  TempStrings: TStrings;
begin
  TempStrings := TStringList.Create;
{$WARNINGS OFF}
  ResStream := TResourceStream.Create(AHandle, ASection, RT_RCDATA);
{$WARNINGS ON}
  TempStrings.LoadFromStream(ResStream);
  Result := TempStrings.Strings[0];
  FreeAndNil(TempStrings);
  FreeAndNil(ResStream);
end;

function GetDataKeyFromDLL(ASection: TStrings; AKey: string): string;
var
  i, LengthKey: integer;
begin
  AKey := AKey + '=';
  LengthKey := Length(AKey);
  for i := 0 to ASection.Count - 1 do
  begin
    if UpperCase(Copy(ASection.Strings[i], 1, LengthKey)) = UpperCase(AKey) then
      Result := Copy(ASection.Strings[i], (LengthKey + 1),
        Length(ASection.Strings[i]) - LengthKey);
  end;
end;

function GetCurrentComputerName: string;
const
  MaxCompNamaLen = 255;
var
  dwCompNamaLen: DWORD;
  CompName: string;
begin
  dwCompNamaLen := MaxCompNamaLen - 1;
  SetLength(CompName, MaxCompNamaLen);
  GetComputerName(PChar(CompName), dwCompNamaLen);
  SetLength(CompName, dwCompNamaLen);
  Result := Trim(CompName);
end;

//function GetCurrentComputerIP: string;
//type
//  Name = array[0..100] of char;
//  PName = ^Name;
//var
//  PHE: PHostEnt;
//  HName: PName;
//  WSAData: TWSAData;
//  i: Integer;
//  IPAddr: string;
//  HostName: string;
//begin
//  if WSAStartup($0101, WSAData) <> 0 then
//    Exit;
//
//  IPAddr := '';
//  New(HName);
//
//  if GetHostName(HName^, Sizeof(Name)) = 0 then
//  begin
//    HostName := string(HName^);
//    PHE := GetHostByName(HName^);
//    for i := 0 to PHE^.h_Length - 1 do
//      IPAddr := Concat(IPAddr, IntToStr(ord(PHE^.h_addr_list^[i])) + '.');
//    SetLength(IPAddr, Length(IPAddr) - 1);
//  end;
//  Dispose(HName);
//  WSACleanUp;
//  Result := Trim(IPAddr);
//end;

procedure AddMessage(AMemoResult: TMemo; AMessage: string;
  ASpaceLine: byte = 1); overload;
var
  i: byte;
begin
  // prosedur untuk menulis message pada memo
  for i := 1 to ASpaceLine do
    AMemoResult.Lines.Add('');
  AMemoResult.Lines.Add(AMessage);
end;

procedure AddMessage(AMemoResult: TcxCustomMemo; AMessage: string;
  ASpaceLine: byte = 1); overload;
var
  i: byte;
begin
  // prosedur untuk menulis message pada memo
  for i := 1 to ASpaceLine do
    AMemoResult.Lines.Add('');
  AMemoResult.Lines.Add(AMessage);
end;

procedure SetFieldAdd(AStartMonth, AEndMonth: integer;
  ADatabaseEngine: TDatabaseEngine; const AField: string; var AResult: string);
var
  i: integer;
begin
  // prosedur untuk membuat rangkaian syntax beberapa field
  // Example:
  //   (IsNull(dcValue1, 0) + IsNull(dcValue2, 0) + IsNull(dcValue3, 0) + ...)
  AResult := '';
  for i := AStartMonth to AEndMonth do
  begin
    if ADatabaseEngine = deMSSQLServer then
      AResult := AResult + 'IsNull(' + AField + IntToStr(i) + ', 0)';
    if ADatabaseEngine = deMySQL then
      AResult := AResult + 'IfNull(' + AField + IntToStr(i) + ', 0)';
    if i <> AEndMonth then
      AResult := AResult + ' + ';
  end;
  AResult := '(' + AResult + ')';
end;

procedure SetFieldSum(AStartMonth, AEndMonth: integer;
  ADatabaseEngine: TDatabaseEngine; const AField: string; var AResult: string);
begin
  // prosedur untuk membuat rangkaian syntax beberapa field
  // Example:
  //   sum(IsNull(dcValue1, 0) + IsNull(dcValue2, 0) + IsNull(dcValue3, 0) + ...)
  AResult := '';
  SetFieldAdd(AStartMonth, AEndMonth, ADatabaseEngine, AField, AResult);
  AResult := 'sum' + AResult;
end;

function IsNull(AVariant: variant; ADefault: real): real;
begin
  Result := ADefault;
  if not VarIsEmpty(AVariant) then
    if not VarIsNull(AVariant) then
      Result := AVariant;
end;

procedure AddFilenameArray(var AStringArray: TDynamicStringArray; const AFilename: string);
begin
  SetLength(AStringArray, High(AStringArray) + 2); // array start from zero
  AStringArray[High(AStringArray)] := AFilename;
end;

procedure DeleteFileInArray(var AStringArray: TDynamicStringArray);
var
  i: integer;
begin
  for i := 0 to High(AStringArray) do
  begin
    if FileExists(AStringArray[i]) then
      DeleteFile(AStringArray[i]);
  end;
end;

procedure MakeListFromFileNameArray(var AStringArray: TDynamicStringArray; const AListName: string);
var
  i: integer;
  F: TextFile;
begin
  AssignFile(F, AListName);
  Rewrite(F);
  for i := 0 to High(AStringArray) do
    Writeln(F, '"' + AStringArray[i] + '"');
  CloseFile(F);
end;

procedure CreateProcessSimple(AExecutableFilePath: string);
var
  pi: TProcessInformation;
  si: TStartupInfo;
begin
  FillMemory(@si, sizeof(si), 0);
  si.cb := sizeof(si);

  CreateProcess(nil,
    // path to the executable file:
    PChar(AExecutableFilePath),
    nil, nil, False, NORMAL_PRIORITY_CLASS, nil, nil, si, pi);

  // "after calling code" such as
  // the code to wait until the
  // process is done should go here

  CloseHandle(pi.hProcess);
  CloseHandle(pi.hThread);
end;

procedure ResizeJPEGFile(AJPEGIn: TJPEGImage; out AJPEGOut: TJPEGImage; ASizeRatio: integer);
var
  BMP: TBitmap;
  Scale: Double;
begin
  if AJPEGIn.Height > AJPEGIn.Width then
    Scale := ASizeRatio / AJPEGIn.Height
  else
    Scale := ASizeRatio / AJPEGIn.Width;

  BMP := TBitmap.Create;
  try
    // Keep pictures aspect ratio
    BMP.Width := Round(AJPEGIn.Width * Scale);
    BMP.Height := Round(AJPEGIn.Height * Scale);
    BMP.Canvas.StretchDraw(BMP.Canvas.Cliprect, AJPEGIn);
    // Convert back to JPEG and save to file
    AJPEGOut.Assign(BMP);
  finally
    BMP.Free;
  end;
end;

procedure RotateBitmap(ABitmapIn: TBitmap;
  out ABitmapOut: TBitmap; AAngle: Double);
const
  PixelMax = 32768;
type
  TPixelArray = array[0..PixelMax - 1] of TRGBTriple;
  pPixelArray = ^TPixelArray;
var
  cosRadians: Double;
  inX: Integer;
  inXOriginal: Integer;
  inXPrime: Integer;
  inXPrimeRotated: Integer;
  inY: Integer;
  inYOriginal: Integer;
  inYPrime: Integer;
  inYPrimeRotated: Integer;
  OriginalRow: pPixelArray;
  Radians: Double;
  RotatedRow: pPixelArray;
  sinRadians: Double;
  Center: TPoint;
begin
  Center.y := (ABitmapIn.Height div 2) + 20;
  Center.x := (ABitmapIn.Width div 2);
  ABitmapOut.Width := ABitmapIn.Width;
  ABitmapOut.Height := ABitmapIn.Height;
  ABitmapOut.PixelFormat := pf24bit;
  Radians := -(AAngle) * PI / 180;
  sinRadians := Sin(Radians);
  cosRadians := Cos(Radians);
  for inX := ABitmapOut.Height - 1 downto 0 do
  begin
    RotatedRow := ABitmapOut.Scanline[inX];
    inXPrime := 2 * (inX - Center.y) + 1;
    for inY := ABitmapOut.Width - 1 downto 0 do
    begin
      inYPrime := 2 * (inY - Center.x) + 1;
      inYPrimeRotated := Round(inYPrime * CosRadians - inXPrime * sinRadians);
      inXPrimeRotated := Round(inYPrime * sinRadians + inXPrime * cosRadians);
      inYOriginal := (inYPrimeRotated - 1) div 2 + Center.x;
      inXOriginal := (inXPrimeRotated - 1) div 2 + Center.y;
      if
        (inYOriginal >= 0) and
        (inYOriginal <= ABitmapIn.Width - 1) and
        (inXOriginal >= 0) and
        (inXOriginal <= ABitmapIn.Height - 1)
        then
      begin
        OriginalRow := ABitmapIn.Scanline[inXOriginal];
        RotatedRow[inY] := OriginalRow[inYOriginal]
      end
      else
      begin
        RotatedRow[inY].rgbtBlue := 255;
        RotatedRow[inY].rgbtGreen := 0;
        RotatedRow[inY].rgbtRed := 0
      end;
    end;
  end;
end;

function MakeNameSpace(AName: string): string;
var
  S: string;
  i: integer;
  PriorChar, CurrentChar: char;

  function IsLowerCase(const AString: string): boolean;
  var
    i: integer;
  begin
    Result := True;
    for i := 1 to Length(AString) do
    begin
      if not (AString[i] in ['a'..'z', '_']) then
      begin
        Result := False;
        Break;
      end;
    end;
  end;

begin
  Result := AName;

  //Check component name caption, if all char is lower case
  if IsLowerCase(AName) then Exit;

  //Replace '_' with space
  S := Trim(StringReplace(AName, '_', ' ', [rfReplaceAll]));

  //Set caption space from component name
  Result := '';
  PriorChar := ' ';
  for i := 1 to Length(S) do
  begin
    CurrentChar := S[i];

    if (CurrentChar in ['A'..'Z']) then
    begin
      if (PriorChar in ['a'..'z', '0'..'9']) then
        Result := Result + ' '
      else
      begin
        if (PriorChar <> ' ') and
          ((i + 1) < Length(S)) then
        begin
          if (S[i + 1] in ['a'..'z']) then
            Result := Result + ' ';
        end;
      end;
    end;

    if (CurrentChar in ['0'..'9']) then
    begin
      if (PriorChar in ['a'..'z', 'A'..'Z']) then
        Result := Result + ' ';
    end;

    Result := Result + CurrentChar;
    PriorChar := CurrentChar;
  end;
end;

function TranslateToNumeric(AString: string): string;
const
  Huruf = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
         //0         1         2
         //01234567890123456789012345
var
  S: string;
  i: integer;
  CurrentChar: char;
begin
  S := UpperCase(AString);
  Result := '';
  for i := 1 to Length(S) do
  begin
    CurrentChar := S[i];
    if (CurrentChar in ['A'..'Z']) then
      Result := Result + IntToStr(Pos(CurrentChar, Huruf))
    else
      Result := Result + CurrentChar;
  end;
end;

function Right(AStr: String; ALen: Integer ): String;
begin
   Result := Copy(AStr, (Length(AStr) + 1) - ALen, ALen);
end;

function Left(AStr: String; ALen: Integer ): String;
begin
   Result := Copy(AStr, 1, ALen);
end;

function CurrencyToString(ACurrency: double; ADefaultCurrency: string = 'Rupiah'): string;
var
  ones,one : array[0..9] of String;
  teens : array[0..9] of String;
  tens : array[0..9] of String;
  thousands : array[0..4] of String;
  i, nPosition, nDigit, bAllZeros : Integer;
  strResult, strTemp, tmpBuff : String;
begin

  ones[0] := 'nol';
  ones[1] := 'satu';
  ones[2] := 'dua';
  ones[3] := 'tiga';
  ones[4] := 'empat';
  ones[5] := 'lima';
  ones[6] := 'enam';
  ones[7] := 'tujuh';
  ones[8] := 'delapan';
  ones[9] := 'sembilan';

  one[1] := 'se';

  teens[0] := 'sepuluh';
  teens[1] := 'sebelas';
  teens[2] := 'dua belas';
  teens[3] := 'tiga belas';
  teens[4] := 'empat belas';
  teens[5] := 'lima belas';
  teens[6] := 'enam belas';
  teens[7] := 'tujuh belas';
  teens[8] := 'delapan belas';
  teens[9] := 'sembilan belas';

  tens[0] := '';
  tens[1] := '';
  tens[2] := 'dua puluh';
  tens[3] := 'tiga puluh';
  tens[4] := 'empat puluh';
  tens[5] := 'lima puluh';
  tens[6] := 'enam puluh';
  tens[7] := 'tujuh puluh';
  tens[8] := 'delapan puluh';
  tens[9] := 'sembilan puluh';

  thousands[0] := '';
  thousands[1] := 'ribu ';
  thousands[2] := 'juta ';
  thousands[3] := 'miliar ';
  thousands[4] := 'triliun ';
 try
  strResult := '';
  strTemp := FloatToStr(ACurrency);
  //Iterate through string
  For i := Length(strTemp) downTo 1 do
  begin
    //Get value of this digit
    nDigit := StrToInt(Copy(strTemp, i, 1));
    //Get column position
    nPosition := (Length(strTemp) - i) + 1;
    //Action depends on 1's, 10's or 100's column
    //Select Case (nPosition Mod 3)
    case (nPosition Mod 3) of
    1 :
    begin
      //Case 1  //'1's position
        bAllZeros := 0;
        if i = 1 Then
          tmpBuff := ones[nDigit] + ' '
        else
        if Copy(strTemp, i - 1, 1) = '1' Then
        begin
          tmpBuff := teens[nDigit] + ' ';
        end
        else
        if nDigit > 0 Then
          tmpBuff := ones[nDigit] + ' '
        else
        begin
          //If next 10s & 100s columns are also
          //zero, then don't show 'thousands'
          bAllZeros := 1;
          if i > 1 Then
          begin
            If Copy(strTemp, i - 1, 1) <> '0' Then
              bAllZeros := 0;
          end;
          If i > 2 Then

          begin
            If Copy(strTemp, i - 2, 1) <> '0' Then
              bAllZeros := 0;
          End;
          tmpBuff := '';
        end;
        If (bAllZeros = 0) and (nPosition > 1) Then
          tmpBuff := tmpBuff + thousands[nPosition div 3] + ' ';
        strResult := tmpBuff + strResult;
    end;
    2 :  //Tens position
    begin
        if nDigit > 0 Then
        if nDigit = 1 Then

        begin
        end
        else
          strResult := tens[nDigit] +  ' ' + strResult
    end;
    0 :  //Hundreds position
    begin
        if nDigit > 0 Then
          if nDigit = 1 Then

          begin
           if (nPosition mod 3) = 0 then
           strResult := one[nDigit] + 'ratus ' + strResult;
          end

          else
          strResult := ones[nDigit] + ' ratus ' + strResult;
    end;
    end;
  end;
  Result := strResult + ADefaultCurrency;
 except
  Result := '';
 end;
end;

function BinToInt(Value: String): LongInt;
var
  i: Integer;
begin
  Result := 0;
  //remove leading zeroes
  while Copy(Value, 1, 1) = '0' do
    Value := Copy(Value, 2, Length(Value) - 1);
  //do the conversion
  for i := Length(Value) downto 1 do
    if Copy(Value, i, 1) = '1' then
      Result := Result + (1 shl (Length(Value) - i));
end;

function IntToBin(value: LongInt; digits: integer ): string;
begin
  Result := StringOfChar( '0', digits);
  while value > 0 do begin
    if (value and 1) = 1 then
      result [digits] := '1';
    dec(digits);
    value := value shr 1;
  end;
end;

end.
