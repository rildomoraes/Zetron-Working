unit untZetronServer;

interface

uses
  Windows, SysUtils, untIvEncryption, IdGlobal,  INIFiles,
  Classes, TypInfo, untConstanta;

type
  TZetronDLL = record
    RegisterTo: string;

    // Enable Application
    AllowedZetronApplication: TAllowedZetronApplication;

    // Security
    UseTrialTransaction: boolean;
    TrialTransaction: integer;
    UseTrialDate: boolean;
    TrialDate: TDateTime;
    IsUseHarddiskSecurity: Boolean;
    AllowedHarddiskSN: string;
    IsUseUSBSecurity: Boolean;
    AllowedUSBKeyId: string;
    USBIODLL: string;
    USBIODefaultGUID: string;
    USBKeyIndex: byte;
  end;

const
  COMMUNICATION_PORT = 5000;
  HEADER_ASK_VALIDATION = 'ASK_VALIDATION';
  HEADER_ASK_REGISTER_TO = 'ASK_REGISTER_TO';
  HEADER_ASK_TRIAL_TRANSACTION = 'ASK_TRIAL_TRANSACTION';
  HEADER_ASK_TRIAL_TRANSACTION_VALUE = 'ASK_TRIAL_TRANSACTION_VALUE';
  HEADER_ASK_TRIAL_TRANSACTION_DATE = 'ASK_TRIAL_TRANSACTION_DATE';
  HEADER_ASK_TRIAL_TRANSACTION_DATE_VALUE = 'ASK_TRIAL_TRANSACTION_DATE_VALUE';

  HEADER_SHUTDOWN = 'SHUTDOWN';
  HEADER_INVALID_HD_SN = 'INVALID_HD';
  HEADER_INVALID_USB_SN = 'INVALID_USB';
  HEADER_INVALID_APP = 'INVALID_APP';
  HEADER_REGISTER_TO = 'REGISTER_TO';
  HEADER_TRIAL_TRANSACTION = 'TRIAL_TRANSACTION';
  HEADER_TRIAL_TRANSACTION_VALUE = 'TRIAL_TRANSACTION_VALUE';
  HEADER_TRIAL_TRANSACTION_DATE = 'TRIAL_TRANSACTION_DATE';
  HEADER_TRIAL_TRANSACTION_DATE_VALUE = 'TRIAL_TRANSACTION_DATE_VALUE';

function LoadDLL(const ADLLName: string; out ADLLHandle: THandle): boolean;
function LoadDataFromZetronDLL(const AFileName: string; var AZetronDLL: TZetronDLL): boolean;
function GetHardDiskSerial(const ADriveLetter: char): string;
function Decrypt(const APassword, AString: string): string;
function Encrypt(const APassword, AString: string): string;
function EncodeClientMessage(const AHeader, AProgramId, AData: string): string;
function DecodeClientMessage(const AMessageLine: string; var AHeader, AProgramId, AData: string): boolean;

implementation

const
{$IFDEF WIN32}
  BAD_DLL_LOAD = 32;
{$ELSE}
  BAD_DLL_LOAD = 0;
{$ENDIF}
  CMD_DATA = 'DATA';
  TOKEN_DELIMITER = '@';
  TOKEN_PUBLIC_KEY = '.';
  TOKEN_DATA_1 = '#';
  TOKEN_DATA_2 = '$';

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

function LoadDataFromZetronDLL(const AFileName: string; var AZetronDLL: TZetronDLL): boolean;
var
  MemIniFile: TMemIniFile;
  ResStream: TResourceStream;
  TempString: TStringList;
  DLLHandle: THandle;
  i: integer;
  S: string;
  ZetronApplicationClass: TZetronApplication;
begin
  Result := False;
  if not FileExists(AFileName) then
    Exit;

  try
    // Create temporary memory ini
    MemIniFile := TMemIniFile.Create(TEMP_FILENAME);
    TempString := TStringList.Create;
    try
      // loading DLL
      if not LoadDLL(AFileName, DLLHandle) then
        Exit;

      TempString.Clear;
      {$WARNINGS OFF}
      ResStream := TResourceStream.Create(DLLHandle, RES_KEY_NAME, RT_RCDATA);
      {$WARNINGS ON}
      TempString.LoadFromStream(ResStream);
      FreeAndNil(ResStream);
      FreeLibrary(DllHandle);

      // Dencrypt
      for i := 0 to TempString.Count - 1 do
        TempString.Strings[i] := Decrypt(DLL_PASSWORD, TempString.Strings[i]);
      MemIniFile.SetStrings(TempString);

      // [ZetronRegister]
      AZetronDLL.RegisterTo := MemIniFile.ReadString(SECTION_REGISTER, 'RegisterTo', '');

      // [ZetronApplication]
      for ZetronApplicationClass := Low(TZetronApplication) to High(TZetronApplication) do
      begin
        S := GetEnumName(TypeInfo(TZetronApplication), Ord(ZetronApplicationClass));
        if MemIniFile.ValueExists(SECTION_APPLICATION, S) then
          AZetronDLL.AllowedZetronApplication :=
            AZetronDLL.AllowedZetronApplication + [ZetronApplicationClass];
      end;

      // [ZetronSecurity]
      AZetronDLL.UseTrialTransaction := StrToBool(MemIniFile.ReadString(SECTION_SECURITY, 'UseTrialTransaction', 'False'));
      AZetronDLL.TrialTransaction := StrToInt(MemIniFile.ReadString(SECTION_SECURITY, 'TrialTransaction', '50'));
      AZetronDLL.UseTrialDate := StrToBool(MemIniFile.ReadString(SECTION_SECURITY, 'UseTrialDate', 'False'));
      S := MemIniFile.ReadString(SECTION_SECURITY, 'TrialDate', FormatDateTime('YYYYMMDD', Date));
      AZetronDLL.TrialDate := EncodeDate(StrToInt(Copy(S, 1, 4)), StrToInt(Copy(S, 5, 2)), StrToInt(Copy(S, 7, 2)));
      AZetronDLL.IsUseHarddiskSecurity := StrToBool(MemIniFile.ReadString(SECTION_SECURITY, 'UseHarddiskSecurity', 'False'));
      AZetronDLL.AllowedHarddiskSN := MemIniFile.ReadString(SECTION_SECURITY, 'AllowedHarddiskSN', '');
      AZetronDLL.IsUseUSBSecurity := StrToBool(MemIniFile.ReadString(SECTION_SECURITY, 'UseUSBSecurity', 'False'));
      AZetronDLL.USBIODefaultGUID := MemIniFile.ReadString(SECTION_SECURITY, 'USBIODefaultGUID', '');
      AZetronDLL.USBIODLL := MemIniFile.ReadString(SECTION_SECURITY, 'USBIODLL', '');
      AZetronDLL.USBKeyIndex := MemIniFile.ReadInteger(SECTION_SECURITY, 'USBKeyIndex', -1);
      AZetronDLL.AllowedUSBKeyId := MemIniFile.ReadString(SECTION_SECURITY, 'USBKeyId', '');

      // Finally
      MemIniFile.Clear;
      Result := True;
    finally
      FreeAndNil(TempString);
      FreeAndNil(MemIniFile);
    end;
  except
    Exit;
  end;
end;

function GetHardDiskSerial(const ADriveLetter: char): string;
var
  NotUsed : dWord;
  VolumeFlags : dWord;
  VolumeInfo : array[0..MAX_PATH] of char;
  VolumeSerialNumber: dWord;
begin
  GetVolumeInformation(PChar(ADriveLetter + ':\'), VolumeInfo, SizeOf(VolumeInfo),
    @VolumeSerialNumber, NotUsed, VolumeFlags, nil, 0);
  result := Format( '%8.8X',[VolumeSerialNumber] );
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

function EncodeClientMessage(const AHeader, AProgramId, AData: string): string;
var
  PublicKey, UncryptString, EncryptString: string;
begin
  UncryptString := AHeader + TOKEN_DATA_1 + AProgramId + TOKEN_DATA_2 + AData;
  //Result = ASK_VALIDATION#ZEPOS_STD$

  // Encrypt Public Key
  Randomize;
  PublicKey := IntToStr(Random(MAXINT));
  EncryptString := Encrypt(PublicKey, UncryptString);

  // Encoded Messege
  Result := PublicKey + TOKEN_PUBLIC_KEY + EncryptString;
  //Result : 1287387.32131144141
end;

function DecodeClientMessage(const AMessageLine: string;
  var AHeader, AProgramId, AData: string): boolean;
var
  CurrentMessageLine, PublicKey: string;
begin
  Result := False;
  CurrentMessageLine := AMessageLine;
  // Encrypted = PublicKey.EncryptData
  // Decrypted =          .Header#ProgramId$Data

  // Get PublicKey
  PublicKey := Fetch(CurrentMessageLine, TOKEN_PUBLIC_KEY, True);
  if PublicKey = '' then
    Exit;

  // Decrypt PublicKeyData
  CurrentMessageLine := Decrypt(PublicKey, CurrentMessageLine);

  // Get Header
  AHeader := Fetch(CurrentMessageLine, TOKEN_DATA_1, True);
  if AHeader = '' then
    Exit;

  // Get Program Id
  AProgramId := Fetch(CurrentMessageLine, TOKEN_DATA_2, True);

  // Get Data
  AData := CurrentMessageLine;

  // Finally
  Result := True;
end;

end.
