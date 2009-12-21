unit frmLoginCashier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DPFPCtlXLib_TLB, DPFPShrXLib_TLB,

  //Auto Create
  Menus, cxLookAndFeelPainters, cxGraphics, DPFPEngXLib_TLB, OleServer,
  ActnList, DB, MemDS, DBAccess, Uni, cxDBExtLookupComboBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDropDownEdit, cxCalc,
  cxControls, cxContainer, cxEdit, cxMaskEdit, cxImageComboBox, StdCtrls,
  cxButtons, OleCtrls;

type
  TfmLogin = class(TForm)
    btnOk: TcxButton;
    btnCancel: TcxButton;
    qryEmployee: TUniQuery;
    lblRegisterCode: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    qryPrevCashRegister: TUniQuery;
    dsPrevCashRegister: TDataSource;
    btnRefresh: TcxButton;
    ActionList1: TActionList;
    actRefresh: TAction;
    actOk: TAction;
    actCancel: TAction;
    qryGetCashRegister: TUniQuery;
    edtRegisterCode: TcxLookupComboBox;
    qryGetLastCashRegisterTransactionId: TUniQuery;
    Label1: TLabel;
    edtOpeningBalance: TcxCalcEdit;
    lblPassword: TLabel;
    edtPassword: TcxTextEdit;
    edtUsername: TcxTextEdit;
    cbFlagUse: TcxImageComboBox;
    qryInsCashRegisterTransaction: TUniQuery;
    lblShift: TLabel;
    edtShift: TcxExtLookupComboBox;
    lblFPInfo: TLabel;
    DPFPVerification1: TDPFPVerification;
    DPFPVerificationResult1: TDPFPVerificationResult;
    qryFingerPrint: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure edtRegisterCodePropertiesEditValueChanged(Sender: TObject);
    procedure DPFPVerificationControl1Complete(ASender: TObject;
      const pFeatureSet, pStatus: IDispatch);
  private
    FDPFPVerificationControl1: TDPFPVerificationControl;

    procedure InitForm;
    procedure DeinitForm;
    function ValidationPassword(const AUserName, APassword: string): boolean;

    procedure DisplayInformation;

    function ProcessBeforeValidate: boolean;
    procedure ProcessAfterValidate;
  public
    class function ExecuteForm: TModalResult;
  end;

implementation

uses
  untProcedure, untConstanta, dtmGlobal, dtmRegister;

const
  MSG_INVALID_CASH_REGISTER = 'Register tidak ada !';
  MSG_CASH_REGISTER_IN_USE = 'Register masih dipakai oleh user lain !';
  MSG_INVALID_OPENED_USER = 'Finger print tidak sesuai dengan user aktif register ini !';

{$R *.dfm}

procedure TfmLogin.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmLogin.actOkExecute(Sender: TObject);
var
  Password: string;
begin
  if ProcessBeforeValidate then
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

    ProcessAfterValidate;
    ModalResult := mrOk;
  end;
end;

procedure TfmLogin.actRefreshExecute(Sender: TObject);
begin
  DisplayInformation;
end;

procedure TfmLogin.ProcessAfterValidate;
var
  Prefix, OldId: string;
  Counter: integer;
begin
  // After Connected
  dmGlobal.SettingGlobal.ServerDateTime := dmGlobal.GetServerDateTime;

  // Create new cash register transaction
  if qryGetCashRegister.FieldByName('FlagUse').AsString = '0' then
  begin
    Prefix := dmRegister.CurrentCashRegisterId + '.' + FormatDateTime('YYYYMMDD', dmGlobal.SettingGlobal.ServerDateTime) + '.';
    qryGetLastCashRegisterTransactionId.Close;
    qryGetLastCashRegisterTransactionId.Params[0].Value := Prefix + '%';
    OpenIfClose(qryGetLastCashRegisterTransactionId);
    OldId := qryGetLastCashRegisterTransactionId.FieldByName('CashRegisterTransactionId').AsString;
    if OldId <> '' then
      Counter := StrToInt(Copy(OldId, Length(Prefix) + 1, Length(OldId) - Length(Prefix))) + 1
    else
      Counter := 1;

    OpenIfClose(qryInsCashRegisterTransaction);
    qryInsCashRegisterTransaction.Insert;
    qryInsCashRegisterTransaction.FieldByName('CashRegisterTransactionId').AsString := Prefix +
      StringOfChar('0', 14 - Length(Prefix) - Length(IntToStr(Counter))) + IntToStr(Counter);
    qryInsCashRegisterTransaction.FieldByName('CashRegisterId').AsString := VarToStr(edtRegisterCode.EditValue);
    qryInsCashRegisterTransaction.FieldByName('DateOpening').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
    qryInsCashRegisterTransaction.FieldByName('ShiftCode').AsString := VarToStr(edtShift.EditValue);
    qryInsCashRegisterTransaction.FieldByName('OpeningBalance').AsCurrency := edtOpeningBalance.EditValue;
    qryInsCashRegisterTransaction.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
    qryInsCashRegisterTransaction.Post;

    // New Open
    dmRegister.CurrentCashRegisterTransactionId := qryInsCashRegisterTransaction.FieldByName('CashRegisterTransactionId').AsString;
    dmRegister.CurrentCashRegisterDate := qryInsCashRegisterTransaction.FieldByName('DateOpening').AsDateTime;
    dmRegister.CurrentCashRegisterShift := qryInsCashRegisterTransaction.FieldByName('ShiftCode').AsString;
  end
  else
  begin
    // Already Open
    dmRegister.CurrentCashRegisterTransactionId := qryGetCashRegister.FieldByName('CashRegisterTransactionId').AsString;
    dmRegister.CurrentCashRegisterDate := qryGetCashRegister.FieldByName('DateOpening').AsDateTime;
    dmRegister.CurrentCashRegisterShift := qryGetCashRegister.FieldByName('ShiftCode').AsString;
  end;

  dmRegister.OptionUseFPValidation := StrToBool(qryGetCashRegister.FieldByName('FlagUseFPValidation').AsString);
  dmRegister.OptionUseBarcodeMode := StrToBool(qryGetCashRegister.FieldByName('FlagUseBarcodeMode').AsString);
end;

function TfmLogin.ProcessBeforeValidate: boolean;
begin
  Result := False;

  if VarToStr(edtRegisterCode.EditValue) = '' then
    Exit;

  LockRefresh(qryGetCashRegister);
  if qryGetCashRegister.IsEmpty then
  begin
    MessageDlg(MSG_INVALID_CASH_REGISTER, mtError, [mbOk], 0);
    edtRegisterCode.SetFocus;
    Exit;
  end;

  dmRegister.CurrentCashRegisterId := VarToStr(edtRegisterCode.EditValue);
  if qryGetCashRegister.FieldByName('FlagUse').AsString = '1' then
  begin
    if qryGetCashRegister.FieldByName('Username').AsString <> VarToStr(edtUsername.EditValue) then
    begin
      MessageDlg(MSG_CASH_REGISTER_IN_USE, mtError, [mbOk], 0);
      edtRegisterCode.SetFocus;
      Exit;
    end;
  end;

  Result := True;
end;

procedure TfmLogin.DeinitForm;
begin
  if Assigned(FDPFPVerificationControl1) then
    FDPFPVerificationControl1.Free;
end;

procedure TfmLogin.DisplayInformation;
begin
  qryGetCashRegister.Close;
  qryGetCashRegister.Params[0].Value := VarToStr(edtRegisterCode.EditValue);
  OpenIfClose(qryGetCashRegister);

//  qryCashRegisterTransaction.Close;
//  qryCashRegisterTransaction.Params[0].Value := VarToStr(edtRegisterCode.EditValue);
//  qryCashRegisterTransaction.Params[1].Value := qryGetCashRegister.FieldByName('LastCashRegisterTransaction').AsString;
//  OpenIfClose(qryCashRegisterTransaction);
//
  if qryGetCashRegister.FieldByName('FlagUse').AsString = '0'  then
  begin
    cbFlagUse.EditValue := 0;
    edtUsername.EditValue := '';
    edtShift.EditValue := '';
    edtOpeningBalance.EditValue := 0;
    SetReadOnly(edtUsername, False);
    SetReadOnly(edtOpeningBalance, False);
  end
  else
  begin
    cbFlagUse.EditValue := '1';
    edtUsername.EditValue := qryGetCashRegister.FieldByName('UserName').AsString;
    edtShift.EditValue := qryGetCashRegister.FieldByName('ShiftCode').AsString;
    edtOpeningBalance.EditValue := qryGetCashRegister.FieldByName('OpeningBalance').AsCurrency;
    SetReadOnly(edtShift, True);
    SetReadOnly(edtUsername, True);
    SetReadOnly(edtOpeningBalance, True);
  end;
end;

procedure TfmLogin.DPFPVerificationControl1Complete(ASender: TObject;
  const pFeatureSet, pStatus: IDispatch);
var
 Templ: IDPFPTemplate;
 Res: IDPFPVerificationResult;
 FingerData: TBytes;
begin
  if ProcessBeforeValidate then
  begin
    try
      Templ := CoDPFPTemplate.Create;
      // Compare feature set with all stored templates.
      qryFingerPrint.First;
      while not qryFingerPrint.Eof do
      begin
        // Get template from storage.
        FingerData := qryFingerPrint.FieldByName('FingerData').AsBytes;
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
        qryFingerPrint.Next;
      end;
    finally
      Templ := nil;
    end;

    if Res <> nil Then
    begin
      if Res.Verified Then
      begin
        // if login successed
        if qryGetCashRegister.FieldByName('FlagUse').AsString = '1' then
        begin
          // Register telah di open, maka FP harus sesuai dgn user yg open cashier ini
          if qryGetCashRegister.FieldByName('EmployeeId').AsString <> qryFingerPrint.FieldByName('EmployeeId').AsString then
          begin
            DPFPEventHandlerStatus(pStatus).Status := EventHandlerStatusFailure;
            MessageDlg(MSG_INVALID_OPENED_USER, mtError, [mbOk], 0);
            edtRegisterCode.SetFocus;
            Exit;
          end;
        end;

        // If user success then load data to property
        dmGlobal.SettingGlobal.LoginDatabaseName := dmGlobal.SettingGlobal.DatabaseDefaultDB;
        dmGlobal.SettingGlobal.LoginEmployeeId := qryFingerPrint.FieldByName('EmployeeId').AsString;
        dmGlobal.SettingGlobal.LoginEmployeeName := qryFingerPrint.FieldByName('EmployeeName').AsString;
        dmGlobal.SettingGlobal.LoginPositionName := qryFingerPrint.FieldByName('PositionName').AsString;
        dmGlobal.SettingGlobal.LoginPositionId := qryFingerPrint.FieldByName('PositionId').AsString;
        dmGlobal.SettingGlobal.LoginDepartmentId := qryFingerPrint.FieldByName('DepartmentId').AsString;
        dmGlobal.SettingGlobal.LoginCompanyId := qryFingerPrint.FieldByName('CompanyId').AsString;
        dmGlobal.SettingGlobal.LoginUsername := qryFingerPrint.FieldByName('Username').AsString;

        ProcessAfterValidate;
        ModalResult := mrOk;
      end
      else
        DPFPEventHandlerStatus(pStatus).Status := EventHandlerStatusFailure;
    end
    else
      DPFPEventHandlerStatus(pStatus).Status := EventHandlerStatusFailure;
  end
  else
    DPFPEventHandlerStatus(pStatus).Status := EventHandlerStatusFailure;
end;

procedure TfmLogin.edtRegisterCodePropertiesEditValueChanged(Sender: TObject);
begin
  DisplayInformation;
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
  edtRegisterCode.SetFocus;
end;

procedure TfmLogin.InitForm;
begin
  dmGlobal.InitComponent(Self);
  Self.Caption := Self.Caption + ' (' + dmGlobal.SettingGlobal.DatabaseDefaultDB + ')';

  SetReadOnly(cbFlagUse);

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
    Abort;
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
    Abort;
  end;

  edtOpeningBalance.Properties.DisplayFormat := ',0.00;(,0.00)';

  // Runtime FP
  try
    FDPFPVerificationControl1 := TDPFPVerificationControl.Create(Self);
    with FDPFPVerificationControl1 do
    begin
      Name := 'DPFPVerificationControl1';
      Parent := Self;
      Left := 339;
      Top := 141;
      Width := 48;
      Height := 47;
      TabOrder := 9;
      OnComplete := DPFPVerificationControl1Complete;
    end;
    lblFPInfo.Visible := True;
  except
    // Driver not installed
  end;

  OpenIfClose(qryPrevCashRegister);
  OpenIfClose(dmRegister.qryPrevShift);
  OpenIfClose(qryFingerPrint);
end;

function TfmLogin.ValidationPassword(
  const AUserName, APassword: string): boolean;
begin
  Result := False;
  try
    try
      qryEmployee.Close;
      qryEmployee.Params[0].Value := AUserName;
      qryEmployee.Params[1].Value := APassword;
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
end;

end.

