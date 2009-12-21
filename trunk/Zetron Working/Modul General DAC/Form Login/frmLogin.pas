unit frmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DPFPEngXLib_TLB, DPFPDevXLib_TLB, DPFPCtlXLib_TLB, DPFPShrXLib_TLB,

  // Auto Create
  cxStyles, cxLookAndFeelPainters, Menus, untIvSQLStorage, ADODB, OleServer, DB,
  MemDS, DBAccess, Uni, StdCtrls, cxButtons, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxGroupBox;

type
  TfmLogin = class(TForm)
    lblUsername: TLabel;
    edtUsername: TcxTextEdit;
    lblPassword: TLabel;
    edtPassword: TcxTextEdit;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    qryEmployeeUni: TUniQuery;
    lblFPInfo: TLabel;
    qryFingerPrintUni: TUniQuery;
    DPFPVerification1: TDPFPVerification;
    gbLogin: TcxGroupBox;
    DPFPVerificationResult1: TDPFPVerificationResult;
    qryEmployee: TADOQuery;
    IvSQLStorage1: TIvSQLStorage;
    qryFingerPrint: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure DPFPVerificationControl1Complete(ASender: TObject;
      const pFeatureSet, pStatus: IDispatch);
  private
    FDPFPVerificationControl1: TDPFPVerificationControl;

    procedure InitForm;
    procedure DeinitForm;
    function ValidationPassword(const AUserName, APassword: string): boolean;
  public
    class function ExecuteForm: TModalResult;
  end;

implementation

uses
  untProcedure, untConstanta, dtmGlobal;

{$R *.dfm}

procedure TfmLogin.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmLogin.btnOkClick(Sender: TObject);
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

  // After Connected
  dmGlobal.SettingGlobal.ServerDateTime := dmGlobal.GetServerDateTime;
  ModalResult := mrOk;
end;

procedure TfmLogin.DeinitForm;
begin
  if Assigned(FDPFPVerificationControl1) then
    FDPFPVerificationControl1.Free;
end;

procedure TfmLogin.DPFPVerificationControl1Complete(ASender: TObject;
  const pFeatureSet, pStatus: IDispatch);
var
 Templ: IDPFPTemplate;
 Res: IDPFPVerificationResult;
 FingerData: TBytes;
begin
  try
    Templ := CoDPFPTemplate.Create;
    // Compare feature set with all stored templates.
    qryFingerPrintUni.First;
    while not qryFingerPrintUni.Eof do
    begin
      // Get template from storage.
      FingerData := qryFingerPrintUni.FieldByName('FingerData').AsBytes;
      if not VarIsEmpty(FingerData) Then
      begin
        Templ.Deserialize(FingerData);
        IDPFPFeatureSet(pFeatureSet).Serialize;
        // Compare feature set with particular template.
        Res := IDPFPVerificationResult(DPFPVerification1.Verify(pFeatureSet, Templ));
        // If match, exit from loop.
        if Res.Verified = True Then
          Break;
      end;
      qryFingerPrintUni.Next;
    end;
  finally
    Templ := nil;
  end;

  if Res <> nil Then
  begin
    if Res.Verified Then
    begin
      //if login successed, then load data to property
      dmGlobal.SettingGlobal.LoginDatabaseName := dmGlobal.SettingGlobal.DatabaseDefaultDB;
      dmGlobal.SettingGlobal.LoginEmployeeId := qryFingerPrintUni.FieldByName('EmployeeId').AsString;
      dmGlobal.SettingGlobal.LoginEmployeeName := qryFingerPrintUni.FieldByName('EmployeeName').AsString;
      dmGlobal.SettingGlobal.LoginPositionName := qryFingerPrintUni.FieldByName('PositionName').AsString;
      dmGlobal.SettingGlobal.LoginPositionId := qryFingerPrintUni.FieldByName('PositionId').AsString;
      dmGlobal.SettingGlobal.LoginDepartmentId := qryFingerPrintUni.FieldByName('DepartmentId').AsString;
      dmGlobal.SettingGlobal.LoginCompanyId := qryFingerPrintUni.FieldByName('CompanyId').AsString;
      dmGlobal.SettingGlobal.LoginUsername := qryFingerPrintUni.FieldByName('Username').AsString;

      // After Connected
      dmGlobal.SettingGlobal.ServerDateTime := dmGlobal.GetServerDateTime;
      ModalResult := mrOk;
    end
    else
      DPFPEventHandlerStatus(pStatus).Status := EventHandlerStatusFailure;
  end
  else
    DPFPEventHandlerStatus(pStatus).Status := EventHandlerStatusFailure

  // Show false accept rate.
  //edtFAR.Text := inttostr(Res.FARAchieved);
end;

class function TfmLogin.ExecuteForm: TModalResult;
var
  fmLogin: TfmLogin;
begin
  // NOT MDI
  fmLogin := TfmLogin.Create(Application);
  with fmLogin do
  begin
    try
      InitForm;
      Result := ShowModal;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmLogin.FormShow(Sender: TObject);
begin
  edtUsername.SetFocus;
end;

procedure TfmLogin.InitForm;
begin
  dmGlobal.InitComponent(Self);

  case untConstanta.CurrentConnectionEngine of
    ceUniDAC:
      begin
        // Try direct connection for DB
        try
          dmGlobal.conGlobal.Disconnect;
          dmGlobal.conGlobal.Server := dmGlobal.SettingGlobal.DatabaseHostname;
          dmGlobal.conGlobal.UserName := dmGlobal.SettingGlobal.DatabaseUser;
          dmGlobal.conGlobal.Password := dmGlobal.SettingGlobal.DatabasePassword;
          dmGlobal.conGlobal.ProviderName := dmGlobal.SettingGlobal.ProviderName;
          dmGlobal.conGlobal.Database := dmGlobal.SettingGlobal.DatabaseDefaultDB;
          dmGlobal.conGlobal.Connect;

          dmGlobal.conReadOnly.Disconnect;
          dmGlobal.conReadOnly.Server := dmGlobal.SettingGlobal.DatabaseHostname;
          dmGlobal.conReadOnly.UserName := dmGlobal.SettingGlobal.DatabaseUser;
          dmGlobal.conReadOnly.Password := dmGlobal.SettingGlobal.DatabasePassword;
          dmGlobal.conReadOnly.ProviderName := dmGlobal.SettingGlobal.ProviderName;
          dmGlobal.conReadOnly.Database := dmGlobal.SettingGlobal.DatabaseDefaultDB;
          dmGlobal.conReadOnly.Connect;
        except
          MessageDlg(MSG_DATABASE_NOT_FOUND, mtInformation, [mbOk], 0);
          Application.Terminate;
          Exit;
        end;

        // Try direct connection for DB Picture
        try
          dmGlobal.conImage.Disconnect;
          dmGlobal.conImage.Server := dmGlobal.SettingGlobal.DatabaseHostname;
          dmGlobal.conImage.UserName := dmGlobal.SettingGlobal.DatabaseUser;
          dmGlobal.conImage.Password := dmGlobal.SettingGlobal.DatabasePassword;
          dmGlobal.conImage.ProviderName := dmGlobal.SettingGlobal.ProviderName;
          dmGlobal.conImage.Database := dmGlobal.SettingGlobal.DatabaseDefaultDBPicture;
          dmGlobal.conImage.Connect;
        except
          MessageDlg(MSG_DATABASE_PICTURE_NOT_FOUND, mtInformation, [mbOk], 0);
          Application.Terminate;
          Exit;
        end;

        OpenIfClose(qryFingerPrintUni);
      end;

    ceADO:
      begin
//        dmGlobal.conGlobal.Close;
//        dmGlobal.conGlobal.ConnectionString := dmGlobal.SettingGlobal.ADOConnectionString;
//        dmGlobal.conGlobal.Open;
//        dmGlobal.conReadOnly.Close;
//        dmGlobal.conReadOnly.ConnectionString := dmGlobal.SettingGlobal.ADOConnectionString;
//        dmGlobal.conReadOnly.Open;
//        dmGlobal.conImage.Close;
//        dmGlobal.conImage.ConnectionString := dmGlobal.SettingGlobal.ADOConnectionStringPic;
//        dmGlobal.conImage.Open;
//
//        OpenIfClose(qryFingerPrint);
      end;
  end;

  // Runtime FP
  try
    FDPFPVerificationControl1 := TDPFPVerificationControl.Create(Self);
    with FDPFPVerificationControl1 do
    begin
      Name := 'DPFPVerificationControl1';
      Parent := gbLogin;
      Left := 229;
      Top := 36;
      Width := 48;
      Height := 47;
      OnComplete := DPFPVerificationControl1Complete;
    end;
    lblFPInfo.Visible := True;
  except
    // Driver not installed
    // Do nothing, using normal login user & password instead finger print
  end;
end;

function TfmLogin.ValidationPassword(
  const AUserName, APassword: string): boolean;
begin
  Result := False;
  if untConstanta.CurrentConnectionEngine = ceADO then
  begin
    try
      try
        qryEmployee.Close;
        qryEmployee.Parameters[0].Value := AUserName;
        qryEmployee.Parameters[1].Value := APassword;
        OpenIfClose(qryEmployee);
        if not qryEmployee.IsEmpty then
        begin
          //if login successed, then load data to property
          dmGlobal.SettingGlobal.LoginDatabaseName := dmGlobal.SettingGlobal.DatabaseDefaultDB;
          dmGlobal.SettingGlobal.LoginEmployeeId := qryEmployee.FieldByName('EmployeeId').AsString;
          dmGlobal.SettingGlobal.LoginEmployeeName := qryEmployee.FieldByName('EmployeeName').AsString;
          dmGlobal.SettingGlobal.LoginPositionName := qryEmployee.FieldByName('PositionName').AsString;
          dmGlobal.SettingGlobal.LoginPositionId := qryEmployee.FieldByName('PositionId').AsString;
          dmGlobal.SettingGlobal.LoginDepartmentId := qryEmployee.FieldByName('DepartmentId').AsString;
          dmGlobal.SettingGlobal.LoginCompanyId := qryEmployee.FieldByName('CompanyId').AsString;
          dmGlobal.SettingGlobal.LoginUsername := qryEmployee.FieldByName('Username').AsString;
          Result := True;
        end;
      except
        MessageDlg(MSG_INVALID_DATABASE, mtInformation, [mbOk], 0);
      end;
    finally
      qryEmployee.Close;
    end;
  end
  else if untConstanta.CurrentConnectionEngine = ceUniDAC then
  begin
    try
      try
        qryEmployeeUni.Close;
        qryEmployeeUni.Params[0].Value := AUserName;
        qryEmployeeUni.Params[1].Value := APassword;
        OpenIfClose(qryEmployeeUni);
        if not qryEmployeeUni.IsEmpty then
        begin
          //if login successed, then load data to property
          dmGlobal.SettingGlobal.LoginDatabaseName := dmGlobal.SettingGlobal.DatabaseDefaultDB;
          dmGlobal.SettingGlobal.LoginEmployeeId := qryEmployeeUni.FieldByName('EmployeeId').AsString;
          dmGlobal.SettingGlobal.LoginEmployeeName := qryEmployeeUni.FieldByName('EmployeeName').AsString;
          dmGlobal.SettingGlobal.LoginPositionName := qryEmployeeUni.FieldByName('PositionName').AsString;
          dmGlobal.SettingGlobal.LoginPositionId := qryEmployeeUni.FieldByName('PositionId').AsString;
          dmGlobal.SettingGlobal.LoginDepartmentId := qryEmployeeUni.FieldByName('DepartmentId').AsString;
          dmGlobal.SettingGlobal.LoginCompanyId := qryEmployeeUni.FieldByName('CompanyId').AsString;
          dmGlobal.SettingGlobal.LoginUsername := qryEmployeeUni.FieldByName('Username').AsString;
          Result := True;
        end;
      except
        MessageDlg(MSG_INVALID_DATABASE, mtInformation, [mbOk], 0);
      end;
    finally
      qryEmployeeUni.Close;
    end;
  end;

end;

end.

