unit frmSalesDownPayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  //
  frmUniTransactionApprovalEx, Menus, cxLookAndFeelPainters,
  cxGraphics, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, ADODB, DB, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCalendar, cxGrid,
  cxMemo, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView;

type
  TfmSalesDownPayment = class(TFormUniTransactionApprovalEx)
    spSalesDownPaymentValidation: TADOStoredProc;
    dtsACSalesDownPayment: TADODataSet;
    cgDownPayment: TcxGrid;
    cgvDownPayment: TcxGridDBTableView;
    cgvDownPaymentvcIdSalesDownPayment: TcxGridDBColumn;
    cgvDownPaymentdtSalesDownPaymentDate: TcxGridDBColumn;
    cgvDownPaymentchStatusApprove: TcxGridDBColumn;
    cgDownPaymentLevel1: TcxGridLevel;
    lblIdDownPayment: TLabel;
    dbeIdDownPayment: TcxDBTextEdit;
    lblDownPaymentDate: TLabel;
    lblIdCustomer: TLabel;
    lblDownPaymentType: TLabel;
    lblEmployeeName: TLabel;
    dbeDownPaymentDate: TcxDBDateEdit;
    dblcIdCustomer: TcxDBExtLookupComboBox;
    dbicDownPaymentType: TcxDBImageComboBox;
    dbeEmployeeName: TcxDBTextEdit;
    lblPaymentType: TLabel;
    dblcPaymentType: TcxDBExtLookupComboBox;
    lblEffectiveDate: TLabel;
    dbeEffectiveDate: TcxDBDateEdit;
    lblOurBank: TLabel;
    dblcIdBank: TcxDBExtLookupComboBox;
    lblOurAccountNo: TLabel;
    dblcAccountNo: TcxDBExtLookupComboBox;
    lblCustomerBank: TLabel;
    dblcCustomerIdBank: TcxDBExtLookupComboBox;
    lblCustomerAccountNo: TLabel;
    dblcCustomerAccountNo: TcxDBExtLookupComboBox;
    lblCurrentBalance: TLabel;
    edtDownPaymentLimit: TcxCurrencyEdit;
    lblAmount: TLabel;
    dbeAmount: TcxDBCurrencyEdit;
    dbmNotes: TcxDBMemo;
    qryPrevPaymentType: TADOQuery;
    gvrAccounting: TcxGridViewRepository;
    cgvBankAccount: TcxGridDBTableView;
    cgvBankAccountvcIdBank: TcxGridDBColumn;
    cgvBankAccountvcBankName: TcxGridDBColumn;
    cgvBankAccountvcAccountNo: TcxGridDBColumn;
    cgvBankAccountvcAccountName: TcxGridDBColumn;
    cgvPrevCustomerBankAccount: TcxGridDBTableView;
    cgvPrevCustomerBankAccountvcCustomerName: TcxGridDBColumn;
    cgvPrevCustomerBankAccountvcCustomerIdBank: TcxGridDBColumn;
    cgvPrevCustomerBankAccountvcBankName: TcxGridDBColumn;
    cgvPrevCustomerBankAccountvcCustomerAccountNo: TcxGridDBColumn;
    cgvPrevCustomerBankAccountvcAccountName: TcxGridDBColumn;
    cgvPaymentType: TcxGridDBTableView;
    cgvPaymentTypevcIdPaymentType: TcxGridDBColumn;
    cgvPaymentTypevcPaymentTypeName: TcxGridDBColumn;
    cgvPaymentTypevcEmployeeName: TcxGridDBColumn;
    cgvPaymentTypechFlagInactive: TcxGridDBColumn;
    cgvPaymentTypechFlagFix: TcxGridDBColumn;
    cgvPaymentTypeStatusPayment: TcxGridDBColumn;
    cgvPaymentTypeFlagPurchasePayment: TcxGridDBColumn;
    cgvPaymentTypeFlagSalesPayment: TcxGridDBColumn;
    dsPrevPaymentType: TDataSource;
    qryPrevBankAccount: TADOQuery;
    dsPrevBankAccount: TDataSource;
    qryPrevCustomerBankAccount: TADOQuery;
    dsPrevCustomerBankAccount: TDataSource;
    procedure dtsACSalesDownPaymentAfterPost(DataSet: TDataSet);
    procedure cgvDownPaymentStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dtsACSalesDownPaymentNewRecord(DataSet: TDataSet);
    procedure dtsACSalesDownPaymentBeforeEdit(DataSet: TDataSet);
    procedure dtsACSalesDownPaymentBeforePost(DataSet: TDataSet);
    procedure dbeIdDownPaymentPropertiesEditValueChanged(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
    procedure actRevisionExecute(Sender: TObject);
    procedure actApproveExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    procedure ShowCurrentDownPaymentAmount;
    function ValidateSalesDownPayment(const AIdPD: string): boolean;
    function ValidateCurrentAmount: boolean;
  public
    { Public declarations }
  end;

var
  fmSalesDownPayment: TfmSalesDownPayment;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, frmNotes,
  untConstanta, dtmAccounting;

procedure TfmSalesDownPayment.actApproveExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if (dtsACSalesDownPayment.IsEmpty) then
  begin
    MessageDlg(Format(MSG_CANNOT_APPROVE_EMPTY, [PD]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if MessageDlg(Format(ASK_APPROVE, [PD, VarToStr(dbeIdDownPayment.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateSalesDownPayment(VarToStr(dbeIdDownPayment.EditValue)) then
    Exit;
  if not ValidateCurrentAmount then
    Exit;

  // Process
  dsDefault.DataSet.Edit;
  dsDefault.DataSet.FieldByName('txNotes').AsString :=
    VarToStr(dbmNotes.EditValue) +
    'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
    ' - ' + NS_APPROVE + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10;
  dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove + 1;
  dsDefault.DataSet.Post;

  // Next Process
  if (FStatusApprove + 1) = 2 then
  begin
    // Insert/Update data on tbIMTransaction
    spSalesDownPaymentValidation.Close;
    spSalesDownPaymentValidation.Parameters[1].Value := dbeIdDownPayment.EditValue;
    spSalesDownPaymentValidation.ExecProc;
    if (spSalesDownPaymentValidation.Parameters[0].Value <> 0) or
      (VarIsEmpty(spSalesDownPaymentValidation.Parameters[0].Value)) then
    begin
      MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spSalesDownPaymentValidation']), mtInformation, [mbOk], 0);
      //dmGlobal.AddApplicationLog('spSalesDownPaymentValidation cannot be execute !', llHigh);
      dsDefault.DataSet.Edit;
      dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
      dsDefault.DataSet.Post;
    end;
  end;
end;

procedure TfmSalesDownPayment.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dtsACSalesDownPayment.IsEmpty then
    Exit;
  if not ValidateSalesDownPayment(VarToStr(dbeIdDownPayment.EditValue)) then
    Exit;

  // Process
  S := TStringList.Create;
  try
    TfmNotes.ExecuteForm(Self.Caption + ' ' + NS_NOTES, S);
    if Trim(S.Text) <> '' then
    begin
      dsDefault.DataSet.Edit;
      dsDefault.DataSet.FieldByName('txNotes').AsString :=
        VarToStr(dbmNotes.EditValue) +
        'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
        ' - ' + NS_NOTES + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10 +
        S.Text + #13#10;
      dsDefault.DataSet.Post;
    end;
  finally
    S.Free;
  end;
end;

procedure TfmSalesDownPayment.actRevisionExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if dtsACSalesDownPayment.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REVISION, [PD, VarToStr(dbeIdDownPayment.EditValue)]), mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateSalesDownPayment(VarToStr(dbeIdDownPayment.EditValue)) then
    Exit;

  // Process
  dsDefault.DataSet.Edit;
  dsDefault.DataSet.FieldByName('txNotes').AsString :=
    VarToStr(dbmNotes.EditValue) +
    'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
    ' - ' + NS_REVISION + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10;
  dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove - 1;
  dsDefault.DataSet.Post;

  btnRefresh.Click;
end;

procedure TfmSalesDownPayment.actVoidExecute(Sender: TObject);
var
  S: TStringList;
begin
  //Ivan do not :inherited;

  // Validate
  if dtsACSalesDownPayment.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REJECT, [PD, VarToStr(dbeIdDownPayment.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateSalesDownPayment(VarToStr(dbeIdDownPayment.EditValue)) then
    Exit;

  // Process
  S := TStringList.Create;
  try
    TfmNotes.ExecuteForm(Self.Caption + ' ' + NS_REJECT, S);
    dsDefault.DataSet.Edit;
    dsDefault.DataSet.FieldByName('txNotes').AsString :=
      VarToStr(dbmNotes.EditValue) +
      'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
      ' - ' + NS_REJECT + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10 +
      S.Text + #13#10;
    dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := STATUS_REJECT;
    dsDefault.DataSet.Post;
  finally
    S.Free;
  end;
end;

procedure TfmSalesDownPayment.cgvDownPaymentStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) >= IntToStr(FStatusApprove + 1) then
      AStyle := dmGlobal.stYellowLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) = IntToStr(STATUS_REJECT) then
      AStyle := dmGlobal.stRedLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) = IntToStr(STATUS_DONE) then
      AStyle := dmGlobal.stGreenLight;
  end;
end;

procedure TfmSalesDownPayment.dbeIdDownPaymentPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  ShowCurrentDownPaymentAmount;
end;

procedure TfmSalesDownPayment.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if dtsACSalesDownPayment.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;
    if Field.FieldName = 'vcIdPaymentType' then
    begin
      // Control
      dbeEffectiveDate.Enabled := False;
      dblcIdBank.Enabled := False;
      dblcAccountNo.Enabled := False;
      dblcCustomerIdBank.Enabled := False;
      dblcCustomerAccountNo.Enabled := False;
      if (dtsACSalesDownPayment.FieldByName('vcIdPaymentType').AsString = '2') or
        (dtsACSalesDownPayment.FieldByName('vcIdPaymentType').AsString = '3') or
        (dtsACSalesDownPayment.FieldByName('vcIdPaymentType').AsString = '4') then
      begin
        dbeEffectiveDate.Enabled := True;
        dblcIdBank.Enabled := True;
        dblcAccountNo.Enabled := True;
        dblcCustomerIdBank.Enabled := True;
        dblcCustomerAccountNo.Enabled := True;
      end;
    end;
    if Field.FieldName = 'vcIdBank' then
    begin
      dtsACSalesDownPayment.FieldByName('vcAccountNo').AsVariant := null;
      qryPrevBankAccount.Close;
      qryPrevBankAccount.Parameters[0].Value := VarToStr(dblcIdBank.EditValue);
      OpenIfClose(qryPrevBankAccount);
    end;
    if Field.FieldName = 'vcCustomerIdBank' then
    begin
      dtsACSalesDownPayment.FieldByName('vcCustomerAccountNo').AsVariant := null;
      qryPrevCustomerBankAccount.Close;
      qryPrevCustomerBankAccount.Parameters[0].Value := dtsACSalesDownPayment.FieldbyName('vcIdCustomer').AsString;
      qryPrevCustomerBankAccount.Parameters[1].Value := VarToStr(dblcCustomerIdBank.EditValue);
      OpenIfClose(qryPrevCustomerBankAccount);
    end;
    if Field.FieldName = 'vcIdCustomer' then
    begin
      ShowCurrentDownPaymentAmount;
    end;
  end;
end;

procedure TfmSalesDownPayment.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  // Setting button enabled
  if TDataSource(Sender).DataSet.State in [dsInsert] then
    SetReadOnly(dbeDownPaymentDate, False);
  if TDataSource(Sender).DataSet.State in [dsBrowse] then
    SetReadOnly(dbeDownPaymentDate, True, COLOR_INACTIVE);
end;

procedure TfmSalesDownPayment.dtsACSalesDownPaymentAfterPost(DataSet: TDataSet);
begin
  inherited;

  ShowCurrentDownPaymentAmount;
end;

procedure TfmSalesDownPayment.dtsACSalesDownPaymentBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;

  if not ValidateSalesDownPayment(dtsACSalesDownPayment.FieldByName('vcIdSalesDownPayment').AsString) then
    Abort;
end;

procedure TfmSalesDownPayment.dtsACSalesDownPaymentBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  // Validate
  if (DataSet.FieldByName('vcIdPaymentType').AsString = '2') or
    (DataSet.FieldByName('vcIdPaymentType').AsString = '3') or
    (DataSet.FieldByName('vcIdPaymentType').AsString = '4') then
  begin
    if (Dataset.FieldByName('vcIdBank').AsString = '') or
      (Dataset.FieldByName('vcAccountNo').AsString = '') then
    begin
      MessageDlg(MSG_INCOMPLETE_PAYMENT_INFO, mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else
  begin
    DataSet.FieldByName('dtEffectiveDate').AsVariant := null;
    DataSet.FieldByName('vcIdBank').AsVariant := null;
    DataSet.FieldByName('vcAccountNo').AsVariant := null;
    DataSet.FieldByName('vcCustomerIdBank').AsVariant := null;
    DataSet.FieldByName('vcCustomerAccountNo').AsVariant := null;
  end;
  if not ValidateCurrentAmount then
    Abort;

  // Process
  if DataSet.FieldByName('vcIdSalesDownPayment').IsNull then
    DataSet.FieldByName('vcIdSalesDownPayment').AsString :=
      dmShare.GetCurrentTransNo(utSalesDownPayment,
      DataSet.FieldByName('dtSalesDownPaymentDate').AsDateTime);
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmSalesDownPayment.dtsACSalesDownPaymentNewRecord(DataSet: TDataSet);
begin
  inherited;


  DataSet.FieldByName('dtSalesDownPaymentDate').AsDateTime := DateOf(dmGlobal.SettingGlobal.ServerDateTime);
  Dataset.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
  Dataset.FieldByName('vcEmployeeName').Value := dmGlobal.SettingGlobal.LoginEmployeeName;
  Dataset.FieldByName('dcAmount').Value := 0;
end;

procedure TfmSalesDownPayment.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_SD);

  // Display Format
  edtDownPaymentLimit.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  case FStatusApprove of
    0:
      begin
        Self.Caption := Self.Caption + ' - Entry';
        btnRevision.Enabled := False;
        btnPrint.Enabled := False;
      end;
    1:
      begin
        Self.Caption := Self.Caption + ' - Approval 1';
      end;
  end;

  SetReadOnly(cgvDownPayment);
  SetReadOnly(dbeIdDownPayment, True, COLOR_INACTIVE);
  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(edtDownPaymentLimit, True, COLOR_INACTIVE);
  SetReadOnly(dbeDownPaymentDate, True, COLOR_INACTIVE);

  dbeEffectiveDate.Enabled := False;
  dblcIdBank.Enabled := False;
  dblcAccountNo.Enabled := False;
  dblcCustomerIdBank.Enabled := False;
  dblcCustomerAccountNo.Enabled := False;

  qryPrevPaymentType.Close;
  qryPrevPaymentType.Parameters[0].Value := '5'; // DownPayment
  qryPrevPaymentType.Parameters[1].Value := '%';
  qryPrevPaymentType.Parameters[2].Value := '%';
  OpenIfClose(qryPrevPaymentType);
  OpenIfClose(dmInventory.qryCustomer);
  OpenIfClose(dmAccounting.qryBank);

  MonthYearValueChange(nil); // -> Trigger dsDefault
end;

procedure TfmSalesDownPayment.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  dtsACSalesDownPayment.Close;
  dtsACSalesDownPayment.Parameters[0].Value := FStatusApprove;
  dtsACSalesDownPayment.Parameters[1].Value := FStatusApprove + 1;
  dtsACSalesDownPayment.Parameters[2].Value := STATUS_REJECT;
  dtsACSalesDownPayment.Parameters[3].Value := STATUS_DONE;
  dtsACSalesDownPayment.Parameters[4].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsACSalesDownPayment.Parameters[5].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsACSalesDownPayment, True);

  cgvDownPayment.ViewData.Expand(True);
end;

procedure TfmSalesDownPayment.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevPaymentType);
  LockRefresh(dmInventory.qryCustomer);
  LockRefresh(dmAccounting.qryBank);
  LockRefresh(dtsACSalesDownPayment, True);
  cgvDownPayment.ViewData.Expand(True);
end;

procedure TfmSalesDownPayment.ShowCurrentDownPaymentAmount;
begin
  dmAccounting.qryPrevCustomerDownPayment.Close;
  dmAccounting.qryPrevCustomerDownPayment.Parameters[0].Value := dtsACSalesDownPayment.FieldbyName('vcIdCustomer').AsString;
  dmAccounting.qryPrevCustomerDownPayment.Parameters[1].Value := DateOf(dmGlobal.SettingGlobal.ServerDateTime);
  OpenIfClose(dmAccounting.qryPrevCustomerDownPayment);
  edtDownPaymentLimit.EditValue := dmAccounting.qryPrevCustomerDownPayment.FieldByName('dcDownPayment').AsFloat;
end;

function TfmSalesDownPayment.ValidateCurrentAmount: boolean;
begin
  Result := False;

  if dtsACSalesDownPayment.FieldByName('chFlagTransType').AsString = '1' then
  begin
    ShowCurrentDownPaymentAmount;
    if dtsACSalesDownPayment.FieldByName('dcAmount').AsFloat > edtDownPaymentLimit.EditValue then
    begin
      MessageDlg(MSG_AMOUNT_GREATER_INVALID2, mtInformation, [mbOK], 0);
      Exit;
    end;
  end;

  Result := True;
end;

function TfmSalesDownPayment.ValidateSalesDownPayment(
  const AIdPD: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(Self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select chStatusApprove from tbACSalesDownPayment');
    qryTemp.SQL.Add('where vcIdSalesDownPayment = :vcIdSalesDownPayment');
    qryTemp.Parameters[0].Value := AIdPD;
    qryTemp.Open;
    if qryTemp.IsEmpty then
      Exit;
    if qryTemp.FieldByName('chStatusApprove').AsInteger <> FStatusApprove then
    begin
      MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [PD, AIdPD]), mtInformation,
        [mbOk], 0);
      Exit;
    end;
    Result := True;
  finally
    FreeAndNil(qryTemp);
  end;
end;

end.
