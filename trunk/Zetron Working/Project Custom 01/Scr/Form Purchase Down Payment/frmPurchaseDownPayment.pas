unit frmPurchaseDownPayment;

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
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCalendar, cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ADODB, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  DBActns, ActnList, dxDockPanel, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxDBEdit, cxImageComboBox, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxMemo,
  cxCurrencyEdit;

type
  TfmPurchaseDownPayment = class(TFormUniTransactionApprovalEx)
    dtsACPurchaseDownPayment: TADODataSet;
    spPurchaseDownPaymentValidation: TADOStoredProc;
    cgDownPayment: TcxGrid;
    cgvDownPayment: TcxGridDBTableView;
    cgvDownPaymentvcIdPurchaseDownPayment: TcxGridDBColumn;
    cgvDownPaymentdtPurchaseDownPaymentDate: TcxGridDBColumn;
    cgvDownPaymentchStatusApprove: TcxGridDBColumn;
    cgDownPaymentLevel1: TcxGridLevel;
    lblIdDownPayment: TLabel;
    dbeIdDownPayment: TcxDBTextEdit;
    lblDownPaymentDate: TLabel;
    dbeDownPaymentDate: TcxDBDateEdit;
    lblIdSupplier: TLabel;
    lblDownPaymentType: TLabel;
    lblEmployeeName: TLabel;
    dbicDownPaymentType: TcxDBImageComboBox;
    dbeEmployeeName: TcxDBTextEdit;
    lblCurrentBalance: TLabel;
    edtDownPaymentLimit: TcxCurrencyEdit;
    lblPaymentType: TLabel;
    dblcPaymentType: TcxDBExtLookupComboBox;
    lblEffectiveDate: TLabel;
    dbeEffectiveDate: TcxDBDateEdit;
    lblOurBank: TLabel;
    dblcIdBank: TcxDBExtLookupComboBox;
    lblOurAccountNo: TLabel;
    dblcAccountNo: TcxDBExtLookupComboBox;
    lblSupplierBank: TLabel;
    dblcSupplierIdBank: TcxDBExtLookupComboBox;
    lblSupplierAccountNo: TLabel;
    dblcSupplierAccountNo: TcxDBExtLookupComboBox;
    lblAmount: TLabel;
    dbeAmount: TcxDBCurrencyEdit;
    dblcIdSupplier: TcxDBExtLookupComboBox;
    dbmNotes: TcxDBMemo;
    qryPrevPaymentType: TADOQuery;
    dsPrevPaymentType: TDataSource;
    qryPrevBankAccount: TADOQuery;
    dsPrevBankAccount: TDataSource;
    qryPrevSupplierBankAccount: TADOQuery;
    dsPrevSupplierBankAccount: TDataSource;
    gvrAccounting: TcxGridViewRepository;
    cgvBankAccount: TcxGridDBTableView;
    cgvBankAccountvcIdBank: TcxGridDBColumn;
    cgvBankAccountvcBankName: TcxGridDBColumn;
    cgvBankAccountvcAccountNo: TcxGridDBColumn;
    cgvBankAccountvcAccountName: TcxGridDBColumn;
    cgvPrevSupplierBankAccount: TcxGridDBTableView;
    cgvPrevSupplierBankAccountvcSupplierName: TcxGridDBColumn;
    cgvPrevSupplierBankAccountvcSupplierIdBank: TcxGridDBColumn;
    cgvPrevSupplierBankAccountvcBankName: TcxGridDBColumn;
    cgvPrevSupplierBankAccountvcSupplierAccountNo: TcxGridDBColumn;
    cgvPrevSupplierBankAccountvcAccountName: TcxGridDBColumn;
    cgvPaymentType: TcxGridDBTableView;
    cgvPaymentTypevcIdPaymentType: TcxGridDBColumn;
    cgvPaymentTypevcPaymentTypeName: TcxGridDBColumn;
    cgvPaymentTypevcEmployeeName: TcxGridDBColumn;
    cgvPaymentTypechFlagInactive: TcxGridDBColumn;
    cgvPaymentTypechFlagFix: TcxGridDBColumn;
    cgvPaymentTypeStatusPayment: TcxGridDBColumn;
    cgvPaymentTypeFlagPurchasePayment: TcxGridDBColumn;
    cgvPaymentTypeFlagSalesPayment: TcxGridDBColumn;
    procedure dtsACPurchaseDownPaymentAfterPost(DataSet: TDataSet);
    procedure cgvDownPaymentStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dtsACPurchaseDownPaymentNewRecord(DataSet: TDataSet);
    procedure dtsACPurchaseDownPaymentBeforeEdit(DataSet: TDataSet);
    procedure dtsACPurchaseDownPaymentBeforePost(DataSet: TDataSet);
    procedure dblcIdSupplierPropertiesEditValueChanged(Sender: TObject);
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
    function ValidatePurchaseDownPayment(const AIdPD: string): boolean;
    function ValidateCurrentAmount: boolean;
  public
    { Public declarations }
  end;

var
  fmPurchaseDownPayment: TfmPurchaseDownPayment;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, frmNotes,
  untConstanta, dtmAccounting;

procedure TfmPurchaseDownPayment.actApproveExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if (dtsACPurchaseDownPayment.IsEmpty) then
  begin
    MessageDlg(Format(MSG_CANNOT_APPROVE_EMPTY, [PD]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if MessageDlg(Format(ASK_APPROVE, [PD, VarToStr(dbeIdDownPayment.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidatePurchaseDownPayment(VarToStr(dbeIdDownPayment.EditValue)) then
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
    spPurchaseDownPaymentValidation.Close;
    spPurchaseDownPaymentValidation.Parameters[1].Value := dbeIdDownPayment.EditValue;
    spPurchaseDownPaymentValidation.ExecProc;
    if (spPurchaseDownPaymentValidation.Parameters[0].Value <> 0) or
      (VarIsEmpty(spPurchaseDownPaymentValidation.Parameters[0].Value)) then
    begin
      MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spPurchaseDownPaymentValidation']), mtInformation, [mbOk], 0);
      //dmGlobal.AddApplicationLog('spPurchaseDownPaymentValidation cannot be execute !', llHigh);
      dsDefault.DataSet.Edit;
      dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
      dsDefault.DataSet.Post;
    end;
  end;
end;

procedure TfmPurchaseDownPayment.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dtsACPurchaseDownPayment.IsEmpty then
    Exit;
  if not ValidatePurchaseDownPayment(VarToStr(dbeIdDownPayment.EditValue)) then
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

procedure TfmPurchaseDownPayment.actRevisionExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if dtsACPurchaseDownPayment.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REVISION, [PD, VarToStr(dbeIdDownPayment.EditValue)]), mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidatePurchaseDownPayment(VarToStr(dbeIdDownPayment.EditValue)) then
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

procedure TfmPurchaseDownPayment.actVoidExecute(Sender: TObject);
var
  S: TStringList;
begin
  //Ivan do not :inherited;

  // Validate
  if dtsACPurchaseDownPayment.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REJECT, [PD, VarToStr(dbeIdDownPayment.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidatePurchaseDownPayment(VarToStr(dbeIdDownPayment.EditValue)) then
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

procedure TfmPurchaseDownPayment.cgvDownPaymentStylesGetContentStyle(
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

procedure TfmPurchaseDownPayment.dblcIdSupplierPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  ShowCurrentDownPaymentAmount;
end;

procedure TfmPurchaseDownPayment.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if dtsACPurchaseDownPayment.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;
    if Field.FieldName = 'vcIdPaymentType' then
    begin
      // Control
      dbeEffectiveDate.Enabled := False;
      dblcIdBank.Enabled := False;
      dblcAccountNo.Enabled := False;
      dblcSupplierIdBank.Enabled := False;
      dblcSupplierAccountNo.Enabled := False;
      if (dtsACPurchaseDownPayment.FieldByName('vcIdPaymentType').AsString = '2') or
        (dtsACPurchaseDownPayment.FieldByName('vcIdPaymentType').AsString = '3') or
        (dtsACPurchaseDownPayment.FieldByName('vcIdPaymentType').AsString = '4') then
      begin
        dbeEffectiveDate.Enabled := True;
        dblcIdBank.Enabled := True;
        dblcAccountNo.Enabled := True;
        dblcSupplierIdBank.Enabled := True;
        dblcSupplierAccountNo.Enabled := True;
      end;
    end;
    if Field.FieldName = 'vcIdBank' then
    begin
      dtsACPurchaseDownPayment.FieldByName('vcAccountNo').AsVariant := null;
      qryPrevBankAccount.Close;
      qryPrevBankAccount.Parameters[0].Value := VarToStr(dblcIdBank.EditValue);
      OpenIfClose(qryPrevBankAccount);
    end;
    if Field.FieldName = 'vcSupplierIdBank' then
    begin
      dtsACPurchaseDownPayment.FieldByName('vcSupplierAccountNo').AsVariant := null;
      qryPrevSupplierBankAccount.Close;
      qryPrevSupplierBankAccount.Parameters[0].Value := dtsACPurchaseDownPayment.FieldbyName('vcIdSupplier').AsString;
      qryPrevSupplierBankAccount.Parameters[1].Value := VarToStr(dblcSupplierIdBank.EditValue);
      OpenIfClose(qryPrevSupplierBankAccount);
    end;
    if Field.FieldName = 'vcIdSupplier' then
    begin
      ShowCurrentDownPaymentAmount;
    end;
  end;
end;

procedure TfmPurchaseDownPayment.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  // Setting button enabled
  if TDataSource(Sender).DataSet.State in [dsInsert] then
    SetReadOnly(dbeDownPaymentDate, False);
  if TDataSource(Sender).DataSet.State in [dsBrowse] then
    SetReadOnly(dbeDownPaymentDate, True, COLOR_INACTIVE);
end;

procedure TfmPurchaseDownPayment.dtsACPurchaseDownPaymentAfterPost(
  DataSet: TDataSet);
begin
  inherited;

  ShowCurrentDownPaymentAmount;
end;

procedure TfmPurchaseDownPayment.dtsACPurchaseDownPaymentBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;

  if not ValidatePurchaseDownPayment(dtsACPurchaseDownPayment.FieldByName('vcIdPurchaseDownPayment').AsString) then
    Abort;
end;

procedure TfmPurchaseDownPayment.dtsACPurchaseDownPaymentBeforePost(
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
    DataSet.FieldByName('vcSupplierIdBank').AsVariant := null;
    DataSet.FieldByName('vcSupplierAccountNo').AsVariant := null;
  end;
  if not ValidateCurrentAmount then
    Abort;

  // Process
  if DataSet.FieldByName('vcIdPurchaseDownPayment').IsNull then
    DataSet.FieldByName('vcIdPurchaseDownPayment').AsString :=
      dmShare.GetCurrentTransNo(utPurchaseDownPayment,
      DataSet.FieldByName('dtPurchaseDownPaymentDate').AsDateTime);
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmPurchaseDownPayment.dtsACPurchaseDownPaymentNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('dtPurchaseDownPaymentDate').AsDateTime := DateOf(dmGlobal.SettingGlobal.ServerDateTime);
  Dataset.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
  Dataset.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
  Dataset.FieldByName('dcAmount').AsInteger := 0;
  Dataset.FieldByName('CounterPrint').AsInteger := 0;
end;

procedure TfmPurchaseDownPayment.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PD);

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
  dblcSupplierIdBank.Enabled := False;
  dblcSupplierAccountNo.Enabled := False;

  qryPrevPaymentType.Close;
  qryPrevPaymentType.Parameters[0].Value := '5'; // DownPayment
  qryPrevPaymentType.Parameters[1].Value := '%';
  qryPrevPaymentType.Parameters[2].Value := '%';
  OpenIfClose(qryPrevPaymentType);
  OpenIfClose(dmInventory.qrySupplier);
  OpenIfClose(dmAccounting.qryBank);

  MonthYearValueChange(nil); // -> Trigger dsDefault
end;

procedure TfmPurchaseDownPayment.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  dtsACPurchaseDownPayment.Close;
  dtsACPurchaseDownPayment.Parameters[0].Value := FStatusApprove;
  dtsACPurchaseDownPayment.Parameters[1].Value := FStatusApprove + 1;
  dtsACPurchaseDownPayment.Parameters[2].Value := STATUS_REJECT;
  dtsACPurchaseDownPayment.Parameters[3].Value := STATUS_DONE;
  dtsACPurchaseDownPayment.Parameters[4].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsACPurchaseDownPayment.Parameters[5].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsACPurchaseDownPayment, True);

  cgvDownPayment.ViewData.Expand(True);
end;

procedure TfmPurchaseDownPayment.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevPaymentType);
  LockRefresh(dmInventory.qrySupplier);
  LockRefresh(dmAccounting.qryBank);
  LockRefresh(dtsACPurchaseDownPayment, True);
  cgvDownPayment.ViewData.Expand(True);
end;

procedure TfmPurchaseDownPayment.ShowCurrentDownPaymentAmount;
begin
  dmAccounting.qryPrevSupplierDownPayment.Close;
  dmAccounting.qryPrevSupplierDownPayment.Parameters[0].Value := dtsACPurchaseDownPayment.FieldbyName('vcIdSupplier').AsString;
  dmAccounting.qryPrevSupplierDownPayment.Parameters[1].Value := DateOf(dmGlobal.SettingGlobal.ServerDateTime);
  OpenIfClose(dmAccounting.qryPrevSupplierDownPayment);
  edtDownPaymentLimit.EditValue := dmAccounting.qryPrevSupplierDownPayment.FieldByName('dcDownPayment').AsFloat;
end;

function TfmPurchaseDownPayment.ValidateCurrentAmount: boolean;
begin
  Result := False;

  if dtsACPurchaseDownPayment.FieldByName('chFlagTransType').AsString = '1' then
  begin
    ShowCurrentDownPaymentAmount;
    if dtsACPurchaseDownPayment.FieldByName('dcAmount').AsFloat > edtDownPaymentLimit.EditValue then
    begin
      MessageDlg(MSG_AMOUNT_GREATER_INVALID2, mtInformation, [mbOK], 0);
      Exit;
    end;
  end;

  Result := True;
end;

function TfmPurchaseDownPayment.ValidatePurchaseDownPayment(
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
    qryTemp.SQL.Add('select chStatusApprove from tbACPurchaseDownPayment');
    qryTemp.SQL.Add('where vcIdPurchaseDownPayment = :vcIdPurchaseDownPayment');
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
