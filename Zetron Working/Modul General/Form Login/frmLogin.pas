unit frmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, untIvNameConverter,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxLookAndFeelPainters, cxContainer,
  cxTextEdit, StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, Menus,
  untIvSQLStorage,
  dxDockControl, dxDockPanel, cxGroupBox, ADODB, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, dxSkinDarkRoom,
  dxSkinFoggy, dxSkinSeven, dxSkinSharp, dxSkinSpringTime;

type
  TfmLogin = class(TForm)
    IvSQLStorage1: TIvSQLStorage;
    cxGroupBox1: TcxGroupBox;
    lblDatabase: TLabel;
    edtDatabase: TcxTextEdit;
    Label1: TLabel;
    edtDatabasePic: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    lblUsername: TLabel;
    edtUsername: TcxTextEdit;
    lblPassword: TLabel;
    edtPassword: TcxTextEdit;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    qryEmployee: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
    procedure InitForm;
    procedure DeinitForm;
    function ValidationPassword(const AUserName, APassword: string): boolean;
  public
    { Public declarations }
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
  // Validate
  if Trim(VarToStr(edtDatabase.EditValue)) = '' then
  begin
    MessageDlg(MSG_DATABASE_NOT_FOUND, mtInformation, [mbOk], 0);
    edtDatabase.SetFocus;
    Abort;
  end;
  {$IFDEF UseDatabasePicure}
  if Trim(VarToStr(edtDatabasePic.EditValue)) = '' then
  begin
    MessageDlg(MSG_DATABASE_PICTURE_NOT_FOUND, mtInformation, [mbOk], 0);
    edtDatabase.SetFocus;
    Abort;
  end;
  {$ENDIF}

//  if dmGlobal.SettingGlobal.ConnectionEngine = 'ADO' then
//  begin
    dmGlobal.conGlobal.Close;
    dmGlobal.conGlobal.ConnectionString := dmGlobal.SettingGlobal.ADOConnectionString;
    dmGlobal.conGlobal.Open;
    dmGlobal.conReadOnly.Close;
    dmGlobal.conReadOnly.ConnectionString := dmGlobal.SettingGlobal.ADOConnectionString;
    dmGlobal.conReadOnly.Open;
    dmGlobal.conImage.Close;
    dmGlobal.conImage.ConnectionString := dmGlobal.SettingGlobal.ADOConnectionStringPic;
    dmGlobal.conImage.Open;
//  end;

  //ReinjectSql after connection success
  IvSQLStorage1.ReInjectSQL;

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
//  if dmGlobal.SettingGlobal.ConnectionEngine = 'ZEOS' then
//  begin
    dmGlobal.SettingGlobal.DatabaseDefaultDB := edtDatabase.Text;
    dmGlobal.SettingGlobal.DatabaseDefaultDBPicture := edtDatabasePic.Text;
//  end;

  dmGlobal.SettingGlobal.ServerDateTime := dmGlobal.GetServerDateTime;

  ModalResult := mrOk;
end;

procedure TfmLogin.DeinitForm;
begin
//
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

  edtDatabase.Text := dmGlobal.SettingGlobal.DatabaseDefaultDB;
  edtDatabasePic.Text := dmGlobal.SettingGlobal.DatabaseDefaultDBPicture;
end;

function TfmLogin.ValidationPassword(
  const AUserName, APassword: string): boolean;
begin
  Result := False;
  try
    qryEmployee.Close;
    qryEmployee.Parameters[0].Value := AUserName;
    qryEmployee.Parameters[1].Value := APassword;
    try
      OpenIfClose(qryEmployee);
      if not qryEmployee.IsEmpty then
      begin
        //if login successed, then load data to property
        dmGlobal.SettingGlobal.LoginDatabaseName := edtDatabase.EditValue;
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







