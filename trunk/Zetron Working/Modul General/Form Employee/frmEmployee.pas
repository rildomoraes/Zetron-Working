unit frmEmployee;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, cxDBExtLookupComboBox, cxRadioGroup, MemDS, DBAccess, Uni,
  ExtCtrls, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomTableView, cxGridCardView, cxGridDBCardView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxCheckBox, cxContainer, cxTextEdit, StdCtrls,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxButtons;

type
  TfmEmployee = class(TFormUniMasterEx)
    cgMasterSetup: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayEmployeeId: TcxGridDBColumn;
    cgvPrevDisplayEmployeeName: TcxGridDBColumn;
    cgvPrevDisplayPositionId: TcxGridDBColumn;
    cgvPrevDisplayFlagInactive: TcxGridDBColumn;
    cgvPrevDisplayFlagFix: TcxGridDBColumn;
    cgMasterSetupLevel1: TcxGridLevel;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    lblEmployeeId: TLabel;
    dbeEmployeeId: TcxDBTextEdit;
    dbchFlagInactive: TcxDBCheckBox;
    lblEmployeeName: TLabel;
    dbeEmployeeName: TcxDBTextEdit;
    lblPosition: TLabel;
    dblcPositionId: TcxDBExtLookupComboBox;
    Bevel1: TBevel;
    lblUsername: TLabel;
    dbeUsername: TcxDBTextEdit;
    dbchFlagInactiveUser: TcxDBCheckBox;
    lblLevelValidation: TLabel;
    dbcbLevelValidation: TcxDBComboBox;
    btnDeletePassword: TcxButton;
    lblPrefixCode: TLabel;
    dbePrefixCode: TcxDBTextEdit;
    lblPrefixCodeInfo: TLabel;
    btnFingerPrint: TcxButton;
    cgFingerPrintLevel1: TcxGridLevel;
    cgFingerPrint: TcxGrid;
    qryFingerPrint: TUniQuery;
    dsFingerPrint: TDataSource;
    actResetPassword: TAction;
    actFingerPrint: TAction;
    cgvFingerPrint: TcxGridDBCardView;
    cgvFingerPrintemployeeid: TcxGridDBCardViewRow;
    cgvFingerPrintfingermask: TcxGridDBCardViewRow;
    Bevel2: TBevel;
    procedure dbeEmployeeIdPropertiesEditValueChanged(Sender: TObject);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dbeEmployeeNamePropertiesEditValueChanged(Sender: TObject);
    procedure cgvPrevDisplayStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure actResetPasswordExecute(Sender: TObject);
    procedure actFingerPrintExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmEmployee: TfmEmployee;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, frmEnrollmentFingerPrint;

procedure TfmEmployee.actFingerPrintExecute(Sender: TObject);
begin
  inherited;

  if not (dsDefault.DataSet.IsEmpty) then
    TfmEnrollmentFingerPrint.ExecuteForm(qryFingerPrint, dsDefault.DataSet.FieldByName('EmployeeId').AsString);
end;

procedure TfmEmployee.actResetPasswordExecute(Sender: TObject);
begin
  inherited;

  if dsDefault.DataSet.IsEmpty then
    Exit;

  if MessageDlg(ASK_DELETE_PASSWORD, mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    if dsDefault.DataSet.State in [dsBrowse] then
      dsDefault.DataSet.Edit;
    dsDefault.DataSet.FieldByName('Password').AsVariant := Null;
  end;
end;

procedure TfmEmployee.cgvPrevDisplayStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.IsData then
    begin
      if VarToStr(ARecord.Values[GetColumnByFieldName(FIELD_FLAGFIX).Index]) = '1' then
        AStyle := dmGlobal.stRedLight;
    end;
  end;
end;

procedure TfmEmployee.dbeEmployeeIdPropertiesEditValueChanged(Sender: TObject);
begin
  if dsDefault.DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    SetReadOnly(dblcPositionId, True, COLOR_INACTIVE);
    SetReadOnly(dbeEmployeeId, True, COLOR_INACTIVE);
  end
  else
  begin
    SetReadOnly(dblcPositionId, False, COLOR_ACTIVE);
    SetReadOnly(dbeEmployeeId, False, COLOR_ACTIVE);
  end;
end;

procedure TfmEmployee.dbeEmployeeNamePropertiesEditValueChanged(
  Sender: TObject);
begin
  if dsDefault.DataSet.State in [dsEdit, dsInsert] then
  begin
    if (not VarIsNull(dbeEmployeeName.EditValue)) and
      (dsDefault.DataSet.FieldByName('Username').IsNull) then
      dsDefault.DataSet.FieldByName('Username').Value := UpperCase(dbeEmployeeName.EditValue);
  end;
end;

procedure TfmEmployee.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if Self.Visible then
  begin
    if dsDefault.State in [dsInsert] then
    begin
      SetReadOnly(dblcPositionId, False);
      SetReadOnly(dbeEmployeeId, False);
    end;
  end;
end;

procedure TfmEmployee.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryPosition);
  OpenIfClose(dmGlobal.qryEmployee, True);
  OpenIfClose(qryFingerPrint, True);
end;

procedure TfmEmployee.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryPosition);
  LockRefresh(dmGlobal.qryEmployee);
  LockRefresh(qryFingerPrint, True);
end;

end.
