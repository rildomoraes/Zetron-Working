unit frmChangePassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Uni, DB, ADODB,

  // Auto Generate
  frmUni, Menus, cxLookAndFeelPainters, untIvEncryption, cxControls,
  cxContainer, cxEdit, cxTextEdit, StdCtrls, ActnList, cxButtons, ExtCtrls;

type
  TfmChangePassword = class(TFormUni)
    actSave: TAction;
    IvEncryption1: TIvEncryption;
    lblOldPassword: TLabel;
    edtOldPassword: TcxTextEdit;
    lblNewPassword: TLabel;
    edtNewPassword: TcxTextEdit;
    lblConfirmNewPassword: TLabel;
    edtConfirmPassword: TcxTextEdit;
    btnPost: TcxButton;
    procedure actSaveExecute(Sender: TObject);
  private
    { Private declarations }
    FOldPassword: string;
    FEmployeeDataset: TDataset;

    function ValidatePassword: boolean;
  protected
    procedure DeinitForm; override;
    procedure InitForm; override;
  public
    { Public declarations }
  end;

var
  fmChangePassword: TfmChangePassword;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmChangePassword.actSaveExecute(Sender: TObject);
begin
  inherited;

  if ValidatePassword then
    Close;
end;

procedure TfmChangePassword.DeinitForm;
begin
  inherited;

  IvEncryption1.RC4Reset;
  IvEncryption1.RC4Burn;
end;

procedure TfmChangePassword.InitForm;
begin
  inherited;

  if untConstanta.CurrentConnectionEngine = ceADO then
  begin
    FEmployeeDataset := TADOQuery.Create(Self);
    with TADOQuery(FEmployeeDataset) do
    begin
      Connection := TADOConnection(dmGlobal.conGlobal);
      SQL.Clear;
      SQL.Add('select *');
      SQL.Add('from Employee');
      SQL.Add('where EmployeeId = :EmployeeId');
      Parameters[0].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
    end;
  end
  else if untConstanta.CurrentConnectionEngine = ceUniDAC then
  begin
    FEmployeeDataset := TUniQuery.Create(Self);
    with TUniQuery(FEmployeeDataset) do
    begin
      Connection := TUniConnection(dmGlobal.conGlobal);
      SQL.Clear;
      SQL.Add('select *');
      SQL.Add('from Employee');
      SQL.Add('where EmployeeId = :EmployeeId');
      Params[0].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
    end;
  end;

  OpenIfClose(FEmployeeDataset);
  if not FEmployeeDataset.IsEmpty then
  begin
    with IvEncryption1 do
    begin
      RC4Init(StringToStringByte(PROGRAM_PASSWORD));
      FOldPassword := StringByteToString(RC4Crypt(FEmployeeDataset.FieldbyName('Password').AsString));
      RC4Reset;
    end;
  end;

  if dmGlobal.SettingLocal.LanguageFlag = 1 then
  begin
    btnPost.Caption := 'Simpan';
    lblOldPassword.Caption := 'Password Lama';
    lblNewPassword.Caption := 'Password Baru';
    lblConfirmNewPassword.Caption := 'Ulangi Password Baru';
  end;
end;

function TfmChangePassword.ValidatePassword: boolean;
var
  NewPassword: string;
begin
  Result := False;
  if VarToStr(edtOldPassword.EditValue) <> FOldPassword then
  begin
    MessageDlg(MSG_OLD_PASSWORD_FALSE, mtInformation, [mbOk], 0);
    edtOldPassword.SetFocus;
    Exit;
  end;
  if VarToStr(edtNewPassword.EditValue) <> VarToStr(edtConfirmPassword.EditValue) then
  begin
    MessageDlg(MSG_NEW_PASSWORD_FALSE, mtInformation, [mbOk], 0);
    edtNewPassword.SetFocus;
    Exit;
  end;
  if not FEmployeeDataset.IsEmpty then
  begin
    FEmployeeDataset.Edit;
    if VarToStr(edtNewPassword.EditValue) <> '' then
    begin
      with IvEncryption1 do
      begin
        NewPassword := RC4Crypt(StringToStringByte(VarToStr(edtConfirmPassword.EditValue)));
        RC4Init(StringToStringByte(PROGRAM_PASSWORD));
        RC4Reset;
      end;
      FEmployeeDataset.FieldbyName('Password').AsString := NewPassword
    end
    else
      FEmployeeDataset.FieldByName('Password').AsVariant := Null;
    FEmployeeDataset.Post;
  end;

  Result := True;
end;

end.
