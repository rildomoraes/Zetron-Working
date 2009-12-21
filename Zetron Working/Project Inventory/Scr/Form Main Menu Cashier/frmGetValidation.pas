unit frmGetValidation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  DB, cxLookAndFeelPainters, Menus, ExtCtrls, MemDS, DBAccess, Uni, ActnList,
  MPlayer, cxMemo, cxTextEdit, StdCtrls, cxButtons, cxControls, cxContainer,
  cxEdit, cxGroupBox;

type
  TfmGetValidation = class(TForm)
    Label1: TLabel;
    edtUsername: TcxTextEdit;
    lblPassword: TLabel;
    edtPassword: TcxTextEdit;
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    gbSupervisorValidation: TcxGroupBox;
    lblTitle: TLabel;
    memInfo: TcxMemo;
    qryEmployee: TUniQuery;
    qryValidateMinLevel: TUniQuery;
    MediaPlayer1: TMediaPlayer;
    Timer1: TTimer;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MediaPlayer1Notify(Sender: TObject);
  private
    FLevelValidation: integer;
    FSupervisorId: string;
    FSupervisorName: string;

    procedure InitForm;
    function ValidationPassword(const AUserName, APassword: string): boolean;
    function ValidateMinLevel(const AEmployeeId: string): boolean;
  public
    class function ExecuteForm(const ATitle: string; AMessage: TStringList; ALevelValidation: integer;
      var ASupervisorId, ASupervisorName: string): TModalResult;
  end;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmGetValidation.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmGetValidation.actOkExecute(Sender: TObject);
var
  Password: string;
begin
  //Dencrypt password
  with dmGlobal do
  begin
    IvEncryption1.RC4Init(IvEncryption1.StringToStringByte(PROGRAM_PASSWORD));
    Password := IvEncryption1.RC4Crypt(IvEncryption1.StringToStringByte(edtPassword.EditingText));
    IvEncryption1.RC4Reset;
    IvEncryption1.RC4Burn;
  end;

  if not ValidationPassword(edtUsername.EditingText, Password) then
  begin
    MessageDlg(MSG_INVALID_PASSWORD, mtError, [mbOk], 0);
    edtPassword.SetFocus;
    Exit;
  end;

  if ValidateMinLevel(Trim(qryEmployee.FieldByName('EmployeeId').AsString)) then
  begin
    //Success
    FSupervisorId := Trim(qryEmployee.FieldByName('EmployeeId').AsString);
    FSupervisorName := Trim(qryEmployee.FieldByName('EmployeeName').AsString);
    ModalResult := mrOk;
  end
  else
  begin
    MessageDlg(MSG_INVALID_LEVEL_VALIDATION, mtError, [mbOk], 0);
    edtUsername.SetFocus;
  end;
end;

class function TfmGetValidation.ExecuteForm(const ATitle: string; AMessage: TStringList;
  ALevelValidation: integer; var ASupervisorId, ASupervisorName: string): TModalResult;
var
  fmGetValidation: TfmGetValidation;
begin
  fmGetValidation := TfmGetValidation.Create(nil);
  with fmGetValidation do
  begin
    try
      Caption := Caption + ' - Min Level: ' + IntToStr(ALevelValidation);
      Position := poScreenCenter;
      FLevelValidation := ALevelValidation;
      lblTitle.Caption := ATitle;
      if Assigned(AMessage) then
        memInfo.Lines.Text := AMessage.Text;
      InitForm;
      Result := ShowModal;
      if Result = mrOk then
      begin
        ASupervisorId := FSupervisorId;
        ASupervisorName := FSupervisorName;
      end
      else
      begin
        ASupervisorId := '';
        ASupervisorName := '';
      end;
    finally
      Release;
    end;
  end;
end;

procedure TfmGetValidation.InitForm;
begin
  dmGlobal.InitComponent(Self);

  if FileExists(dmGlobal.SettingLocal.Path_AppData + '\notify.wav') then
  begin
    MediaPlayer1.FileName := dmGlobal.SettingLocal.Path_AppData + '\notify.wav';
    MediaPlayer1.Open;
    MediaPlayer1.Notify := True;
    MediaPlayer1.Play;
  end;
end;

procedure TfmGetValidation.MediaPlayer1Notify(Sender: TObject);
begin
  MediaPlayer1.Play;
end;

procedure TfmGetValidation.Timer1Timer(Sender: TObject);
begin
  lblTitle.Visible := not (lblTitle.Visible);
end;

function TfmGetValidation.ValidateMinLevel(const AEmployeeId: string): boolean;
begin
  qryValidateMinLevel.Close;
  qryValidateMinLevel.Params[0].Value := AEmployeeId;
  qryValidateMinLevel.Params[1].Value := FLevelValidation;
  qryValidateMinLevel.Open;
  Result := not qryValidateMinLevel.IsEmpty;
end;

function TfmGetValidation.ValidationPassword(const AUserName,
  APassword: string): boolean;
begin
  Result := False;
  try
    qryEmployee.Close;
    qryEmployee.Params[0].Value := AUserName;
    qryEmployee.Params[1].Value := APassword;
    OpenIfClose(qryEmployee);
    if not qryEmployee.IsEmpty then
      Result := True;
  except
    MessageDlg(MSG_INVALID_DATABASE, mtInformation, [mbOk], 0);
  end;
end;

end.
