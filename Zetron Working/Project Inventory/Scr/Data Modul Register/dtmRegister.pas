unit dtmRegister;

interface

uses
  SysUtils, Classes, Controls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, MemDS, DBAccess, Uni,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTimeEdit;

type
  TdmRegister = class(TDataModule)
    gvrAccounting: TcxGridViewRepository;
    cgvPrevPaymentType: TcxGridDBTableView;
    cgvPrevPaymentTypePaymentTypeId: TcxGridDBColumn;
    cgvPrevPaymentPaymentTypeName: TcxGridDBColumn;
    qryPrevPaymentType: TUniQuery;
    dsPrevPaymentType: TDataSource;
    qryPrevShift: TUniQuery;
    dsPrevShift: TDataSource;
    cgvPrevShift: TcxGridDBTableView;
    cgvPrevShiftshiftcode: TcxGridDBColumn;
    cgvPrevShiftshiftname: TcxGridDBColumn;
    cgvPrevShiftstarttime: TcxGridDBColumn;
    cgvPrevShiftendtime: TcxGridDBColumn;
  private
    FCurrentCashRegisterId: string;
    FCurrentCashRegisterTransactionId: string;
    FCurrentCashRegisterDate: TDateTime;
    FCurrentCashRegisterShift: string;
    FOptionUseFPValidation: boolean;
    FOptionUseBarcodeMode: boolean;
  public
    function GetValidationSuperuser(const ATitle: string; AMessage: TStringList; ALevelValidation: integer; out ASupervisorName: string): boolean;

    property CurrentCashRegisterId: string read FCurrentCashRegisterId write FCurrentCashRegisterId;
    property CurrentCashRegisterTransactionId: string read FCurrentCashRegisterTransactionId write FCurrentCashRegisterTransactionId;
    property CurrentCashRegisterDate: TDateTime read FCurrentCashRegisterDate write FCurrentCashRegisterDate;
    property CurrentCashRegisterShift: string read FCurrentCashRegisterShift write FCurrentCashRegisterShift;
    property OptionUseFPValidation: boolean read FOptionUseFPValidation write FOptionUseFPValidation;
    property OptionUseBarcodeMode: boolean read FOptionUseBarcodeMode write FOptionUseBarcodeMode;
  end;

var
  dmRegister: TdmRegister;

implementation

{$R *.dfm}

uses frmGetValidation, frmGetFPValidation;

function TdmRegister.GetValidationSuperuser(const ATitle: string;
  AMessage: TStringList; ALevelValidation: integer;
  out ASupervisorName: string): boolean;
var
  SupervisorId, SupervisorName: string;
begin
  Result := False;

  if dmRegister.OptionUseFPValidation then
  begin
    // Validation Using FingerPrint
    if TfmGetFPValidation.ExecuteForm(ATitle, AMessage, ALevelValidation,
      SupervisorId, SupervisorName) = mrOk then
    begin
      ASupervisorName := SupervisorName;
      Result := True;
    end;
  end
  else
  begin
    // Normal Validation
    if TfmGetValidation.ExecuteForm(ATitle, AMessage, ALevelValidation,
      SupervisorId, SupervisorName) = mrOk then
    begin
      ASupervisorName := SupervisorName;
      Result := True;
    end;
  end;
end;

end.
