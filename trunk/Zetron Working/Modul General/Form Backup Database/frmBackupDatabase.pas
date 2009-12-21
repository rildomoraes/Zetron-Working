{********************************************************************}
{                                                                    }
{       Form Backup Database                                         }
{                                                                    }
{       Create By Ivan Handoyo                                       }
{                                                                    }
{       ALL RIGHTS RESERVED                                          }
{                                                                    }
{********************************************************************}

unit frmBackupDatabase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  DateUtils,

  // Auto Generate
  frmUniPosition, Menus, cxLookAndFeelPainters, ComCtrls, ShlObj, cxShellCommon,
  DB, ADODB, cxMemo, cxTextEdit, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxShellComboBox, StdCtrls, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, ExtCtrls, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfmBackupDatabase = class(TFormUniPosition)
    pnlInfo: TPanel;
    memInfo: TcxMemo;
    lblDirectory: TLabel;
    edtDirectory: TcxShellComboBox;
    lblFilename: TLabel;
    edtFilename: TcxTextEdit;
    lblDBUser: TLabel;
    edtDBUser: TcxTextEdit;
    lblDBPassword: TLabel;
    edtDBPassword: TcxTextEdit;
    actBackup: TAction;
    bvlSaparator1: TBevel;
    btnBackup: TcxButton;
    qryBackupDatabase: TADOQuery;
    procedure actBackupExecute(Sender: TObject);
  private
    { Private declarations }
    function ProcessBackupMSSQL: boolean;
    function ProcessBackupMYSQL: boolean;
    function ProcessBackupPostgreSQL: boolean;
    function ProcessBackupFirebird: boolean;
  protected
    procedure InitForm; override;
  public
    { Public declarations }
  end;

var
  fmBackupDatabase: TfmBackupDatabase;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

const
  BACKUP_FILENAME = '%s.dat';

procedure TfmBackupDatabase.actBackupExecute(Sender: TObject);
begin
  inherited;
  memInfo.Lines.Clear;
  memInfo.Lines.Add('Start backup database process...');
  case untConstanta.CurrentDatabaseEngine of
    deMSSQLServer: if not ProcessBackupMSSQL then Exit;
    deMySQL: if not ProcessBackupMYSQL then Exit;
    dePostgreSQL: if not ProcessBackupPostgreSQL then Exit;
    deFirebird: if not ProcessBackupFirebird then Exit;
  end;
  memInfo.Lines.Add('');
end;

procedure TfmBackupDatabase.InitForm;
var
  DateStamp: string;
begin
  inherited;

  DateStamp := FormatDateTime('yyyy-mm-dd', Date);
  edtFilename.EditValue :=
    Format(BACKUP_FILENAME, [dmGlobal.SettingGlobal.LoginDatabaseName + '_' + DateStamp]);

  SetReadOnly(edtFilename, True, COLOR_INACTIVE);
  SetReadOnly(memInfo, True, COLOR_INACTIVE);
  if untConstanta.CurrentDatabaseEngine = deMSSQLServer then
  begin
    SetReadOnly(edtDBUser, True, COLOR_INACTIVE);
    SetReadOnly(edtDBPassword, True, COLOR_INACTIVE);
  end
  else if untConstanta.CurrentDatabaseEngine = dePostgreSQL then
  begin
    SetReadOnly(edtDBPassword, True, COLOR_INACTIVE);
  end;
end;

function TfmBackupDatabase.ProcessBackupFirebird: boolean;
begin
  Result := False;
end;

function TfmBackupDatabase.ProcessBackupMSSQL: boolean;
var
  RelativeDir, TempFileName, CurrentDatabase: string;
begin
  Result := False;
  RelativeDir := ExtractShortPathName(edtDirectory.Text);
  TempFileName := RelativeDir + edtFilename.Text;
  if FileExists(TempFileName) then
  begin
    if MessageDlg(Format(ASK_BACKUP_FILE_EXISTS, [edtFilename.Text]),
      mtInformation, [mbYes, mbNo], 0) = mrNo then
      Exit;
    DeleteFile(TempFileName);
  end;
  {$WARNINGS OFF}
  CurrentDatabase := TADOConnection(dmGlobal.conGlobal).DefaultDatabase;
  TADOConnection(dmGlobal.conGlobal).DefaultDatabase := 'master';
  {$WARNINGS ON}
  qryBackupDatabase.Close;
  qryBackupDatabase.Parameters[0].Value := dmGlobal.SettingGlobal.LoginDatabaseName;
  qryBackupDatabase.Parameters[1].Value := TempFileName;
  qryBackupDatabase.ExecSQL;
  {$WARNINGS OFF}
  TADOConnection(dmGlobal.conGlobal).DefaultDatabase := CurrentDatabase;
  {$WARNINGS ON}
  Result := True;
end;

function TfmBackupDatabase.ProcessBackupMYSQL: boolean;
//var
//  Filename, Server, Database, User, Password: string;
begin
  Result := False;
//  Filename := cbDrive.Text + edtNamaFile.Text;
//  try
//    GetMySQLODBC(Server, Database, User, Password);
//    ExecuteWithBatchFile(
//      'mysqldump.exe' +
//      ' -h ' + Server +
//      ' -u ' + User +
//      ' -p'  + Password +  //warning do not change !!! (-pvalue = true ==> -p value = false)
//      ' --opt ' + LowerCase(vSQLDatabase) + ' > ' + Filename, True);
//  except
//    on E: Exception do
//    begin
//      AddMessage(memInfo, '', 0);
//      AddMessage(memInfo, FormatDateTime('hh:mm:ss AM/PM', Now));
//      AddMessage(memInfo, E.Message);
//      Result := False;
//    end;
//  end;
end;

function TfmBackupDatabase.ProcessBackupPostgreSQL: boolean;
var
  TempFilename, Parameters: string;
begin
  Result := False;
  SetCurrentDir(ExtractFileDir(Application.ExeName));
  if not FileExists('pg_dump.exe') then
  begin
    MessageDlg(Format(MSG_MISSING_FILE, ['pg_dump.exe']), mtInformation, [mbOk], 0);
    Exit;
  end;
  if VarToStr(edtDBUser.EditingText) = '' then
  begin
    MessageDlg(Format(MSG_CANNOT_EMPTY, [lblDBUser.Caption]), mtInformation, [mbOk], 0);
    Exit;
  end;
  TempFileName := edtDirectory.Path + '\' + edtFilename.Text;
  if FileExists(TempFileName) then
  begin
    if MessageDlg(Format(ASK_BACKUP_FILE_EXISTS, [edtFilename.Text]),
      mtInformation, [mbYes, mbNo], 0) = mrNo then
      Exit;
    DeleteFile(TempFileName);
  end;

  //pg_dump.exe -i -h localhost -p 5432 -U sa -F c -b -v -f "D:\TEST 2008-05-08.backup" "TEST"
  Parameters :=
    ' -i' + // pg_dump can dump run from servers running previous release of PostreSQL
    ' -h ' + dmGlobal.SettingGlobal.DatabaseHostname + // Spesifies the host name of the mechine on which the server is running
    ' -p 5432' + // Spesifies TCP port on which the server is listening for connections.
    ' -U ' + VarToStr(edtDBUser.EditingText) +
    ' -F c' + // Output a custom achive suitable for input into pg_restore
    ' -b' + // Include large object in dump
    ' -v' + // Specifies verbose mode
    ' -f "' + TempFilename + '"' + // Send output to the spesified file
    ' "' + dmGlobal.SettingGlobal.LoginDatabaseName + '"';// Database name to backup
  WinExec(PAnsiChar('pg_dump.exe ' + Parameters), SW_NORMAL);
  //FileCrypt(TempFileName, TempFileName, dmGlobal.SettingGlobal.EncryptionKey, True);
  memInfo.Lines.Add('End process.');
  Result := True;
end;

end.

