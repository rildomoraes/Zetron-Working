unit frmPurchasePaymentApproval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  // Auto Create
  frmUniTransactionApprovalEx, Menus, cxLookAndFeelPainters,
  cxGraphics, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCalendar, cxDBLookupComboBox, cxMemo, cxDBEdit, cxPC, cxCurrencyEdit,
  cxSpinEdit, cxDropDownEdit, ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ADODB, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  DBActns, ActnList, dxDockPanel, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxImageComboBox, cxContainer, cxTextEdit, cxMaskEdit,
  StdCtrls, cxButtons;

type
  TfmPurchasePaymentApproval = class(TFormUniTransactionApprovalEx)
    dtsIMPurchasePayment: TADODataSet;
    spPurchasePaymentValidation: TADOStoredProc;
    cgPurchasePayment: TcxGrid;
    cgvPurchasePayment: TcxGridDBTableView;
    cgvPurchasePaymentvcIdPurchasePayment: TcxGridDBColumn;
    cgvPurchasePaymentdtDatePurchasePayment: TcxGridDBColumn;
    cgvPurchasePaymentvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPurchasePaymentvcIdSupplier: TcxGridDBColumn;
    cgvPurchasePaymentchStatusApprove: TcxGridDBColumn;
    cgPurchasePaymentLevel1: TcxGridLevel;
    lblPurchaseInvoice: TLabel;
    dbeIdPurchaseInvoice: TcxDBTextEdit;
    lblPurchaseInvoiceDate: TLabel;
    lblSupplier: TLabel;
    lblIdPurchaseOrder: TLabel;
    lblIdReceiveRecord: TLabel;
    dbePurchaseInvoiceDate: TcxDBDateEdit;
    dbeSupplier: TcxDBTextEdit;
    dbeIdReceiveRecord: TcxDBTextEdit;
    dbeIdPurchaseOrder: TcxDBTextEdit;
    lblInvoiceDueDate: TLabel;
    dbeInvoiceDueDate: TcxDBDateEdit;
    dbeTotalAmount: TcxDBCurrencyEdit;
    dbeDisc: TcxDBSpinEdit;
    dbeDiscAmount: TcxDBCurrencyEdit;
    dbeTaxAmount: TcxDBCurrencyEdit;
    dbeTax: TcxDBSpinEdit;
    lblAmount: TLabel;
    lblDisc: TLabel;
    lblTax: TLabel;
    lblTotal: TLabel;
    dbeTotal: TcxDBCurrencyEdit;
    bvlLine1: TBevel;
    lblIdPurchasePayment: TLabel;
    lblPurchasePaymentDate: TLabel;
    lblPaymentType: TLabel;
    lblEffectiveDate: TLabel;
    lblNameOfBank: TLabel;
    lblAccountNo: TLabel;
    lblSupplierBank: TLabel;
    lblSupplierAccountNo: TLabel;
    dbeIdPurchasePayment: TcxDBTextEdit;
    dbePurchasePaymentDate: TcxDBDateEdit;
    dblcPaymentType: TcxDBExtLookupComboBox;
    dbeEffectiveDate: TcxDBDateEdit;
    dblcIdBank: TcxDBExtLookupComboBox;
    dblcSupplierIdBank: TcxDBExtLookupComboBox;
    lblOutstanding: TLabel;
    dbeOutstanding: TcxDBCurrencyEdit;
    lblPayment: TLabel;
    dbeAmount: TcxDBCurrencyEdit;
    lblShortage: TLabel;
    bvlLine2: TBevel;
    edtShortage: TcxCurrencyEdit;
    bvlLine5: TBevel;
    lblDownPaymentLimit: TLabel;
    edtDownPaymentLimit: TcxCurrencyEdit;
    lblInfo: TLabel;
    pcNotes: TcxPageControl;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsSINotes: TcxTabSheet;
    dbmSINotes: TcxDBMemo;
    tsSIMemo: TcxTabSheet;
    dbmSIMemo: TcxDBMemo;
    dsIMPurchaseInvoice: TDataSource;
    dtsIMPurchaseInvoice: TADODataSet;
    lblEmployeeName: TLabel;
    dbeEmployeeName: TcxDBTextEdit;
    dbeAccountNo: TcxDBTextEdit;
    dbeSupplierAccountNo: TcxDBTextEdit;
    procedure actApproveExecute(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
    procedure actRevisionExecute(Sender: TObject);
    procedure cgvPurchasePaymentStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure dbeIdPurchaseInvoicePropertiesEditValueChanged(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    procedure CalculateTotal;
    function  ValidatePurchasePayment(const AIdPP: string): boolean;
  public
    { Public declarations }
  end;

var
  fmPurchasePaymentApproval: TfmPurchasePaymentApproval;

implementation

{$R *.dfm}

uses
  untConstanta, untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare,
  dtmAccounting, frmNotes;

procedure TfmPurchasePaymentApproval.actApproveExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if (dtsIMPurchasePayment.IsEmpty) then
  begin
    MessageDlg(Format(MSG_CANNOT_APPROVE_EMPTY, [PP]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if edtShortage.EditValue < 0 then
  begin
    MessageDlg(MSG_AMOUNT_GREATER_INVALID, mtInformation, [mbOk], 0);
    Exit;
  end;
  if not dmShare.CheckOutstandingPurchaseInvoice(dbeIdPurchaseInvoice.EditValue, dbeAmount.EditValue) then
  begin
    MessageDlg(MSG_AMOUNT_GREATER_INVALID, mtInformation, [mbOK], 0);
    Exit;
  end;
  if dtsIMPurchasePayment.FieldByName('vcIdPaymentType').AsString = '5' then
  begin
    edtDownPaymentLimit.EditValue := dmShare.GetSupplierDownPayment(dtsIMPurchaseInvoice.FieldByName('vcIdSupplier').AsString);
    if dbeAmount.EditValue > edtDownPaymentLimit.EditValue then
    begin
      MessageDlg(MSG_AMOUNT_GREATER_INVALID2, mtInformation, [mbOK], 0);
      Exit;
    end;
  end;
  if MessageDlg(Format(ASK_APPROVE, [PP, VarToStr(dbeIdPurchasePayment.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidatePurchasePayment(VarToStr(dbeIdPurchasePayment.EditValue)) then
    Exit;

  // Process
  dsDefault.DataSet.Edit;
  dsDefault.DataSet.FieldByName('txNotes').AsString :=
    VarToStr(dbmNotes.EditValue) +
    'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
    ' - ' + NS_APPROVE + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10;
  dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove + 1;
  dsDefault.DataSet.Post;

  if (FStatusApprove + 1) = 2 then
  begin
    spPurchasePaymentValidation.Close;
    spPurchasePaymentValidation.Parameters[1].Value := dbeIdPurchasePayment.EditValue;
    spPurchasePaymentValidation.ExecProc;
    if (spPurchasePaymentValidation.Parameters[0].Value <> 0) or
      (VarIsEmpty(spPurchasePaymentValidation.Parameters[0].Value)) then
    begin
      MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spPurchasePaymentValidation']), mtInformation, [mbOk], 0);
      //dmGlobal.AddApplicationLog('spPurchasePaymentValidation cannot be execute !', llHigh);
      dsDefault.DataSet.Edit;
      dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
      dsDefault.DataSet.Post;
    end;
  end;
end;

procedure TfmPurchasePaymentApproval.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dsDefault.DataSet.IsEmpty then
    Exit;
  if not ValidatePurchasePayment(VarToStr(dbeIdPurchaseInvoice.EditValue)) then
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

procedure TfmPurchasePaymentApproval.actRevisionExecute(Sender: TObject);
begin
  inherited;

  // Cannot be revision
end;

procedure TfmPurchasePaymentApproval.actVoidExecute(Sender: TObject);
var
  S: TStringList;
begin
  //Ivan do not :inherited;

  // Validate
  if dtsIMPurchasePayment.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REJECT, [PI, VarToStr(dbeIdPurchaseInvoice.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidatePurchasePayment(VarToStr(dbeIdPurchaseInvoice.EditValue)) then
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

procedure TfmPurchasePaymentApproval.CalculateTotal;
begin
  if (cgvPurchasePaymentchStatusApprove.EditValue = STATUS_DONE) or
    (cgvPurchasePaymentchStatusApprove.EditValue = STATUS_REJECT) then
  begin
    lblOutstanding.Visible := False;
    lblShortage.Visible := False;
    dbeOutstanding.Visible := False;
    edtShortage.Visible := False;
    bvlLine2.Visible := False;
  end
  else
  begin
    lblOutstanding.Visible := True;
    lblShortage.Visible := True;
    dbeOutstanding.Visible := True;
    edtShortage.Visible := True;
    bvlLine2.Visible := True;
  end;

  edtShortage.EditValue := dbeOutstanding.EditValue - dbeAmount.EditValue;
end;

procedure TfmPurchasePaymentApproval.cgvPurchasePaymentStylesGetContentStyle(
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

procedure TfmPurchasePaymentApproval.dbeIdPurchaseInvoicePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  edtDownPaymentLimit.EditValue := dmShare.GetSupplierDownPayment(dtsIMPurchaseInvoice.FieldByName('vcIdSupplier').AsString);
  CalculateTotal;
end;

procedure TfmPurchasePaymentApproval.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PP);

  if FParamArrayValues [0] = '0' then
    Self.Caption := Self.Caption + ' (Tunai)'
  else
    Self.Caption := Self.Caption + ' (Kredit)';
  btnInsert.Enabled := False;
  btnEdit.Enabled := False;
  btnRevision.Enabled := False;

  SetReadOnly(cgvPurchasePayment);
  SetReadOnly(dbeSupplier, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdPurchaseOrder, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdReceiveRecord, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdPurchaseInvoice, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchaseInvoiceDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeInvoiceDueDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdPurchasePayment, True, COLOR_INACTIVE);
  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeOutstanding, True, COLOR_INACTIVE);
  SetReadOnly(edtShortage, True, COLOR_INACTIVE);
  SetReadOnly(dbeEffectiveDate, True, COLOR_INACTIVE);
  SetReadOnly(dblcIdBank, True, COLOR_INACTIVE);
  SetReadOnly(dbeAccountNo, True, COLOR_INACTIVE);
  SetReadOnly(dblcSupplierIdBank, True, COLOR_INACTIVE);
  SetReadOnly(dbeSupplierAccountNo, True, COLOR_INACTIVE);
  SetReadOnly(dbeTax, True, COLOR_INACTIVE);
  SetReadOnly(dbeTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeDisc, True, COLOR_INACTIVE);
  SetReadOnly(dbeDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotal, True, COLOR_INACTIVE);
  SetReadOnly(dbeAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbmSINotes, True, COLOR_INACTIVE);
  SetReadOnly(dbmSIMemo, True, COLOR_INACTIVE);
  SetReadOnly(edtDownPaymentLimit, True, COLOR_INACTIVE);
  SetReadOnly(dblcPaymentType);
  SetReadOnly(dbePurchasePaymentDate);

  dbeTotal.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTaxAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeDiscAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTax.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeDisc.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtShortage.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeOutstanding.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtDownPaymentLimit.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  // Open all query
  OpenIfClose(dmAccounting.qryBank);
  OpenIfClose(dmAccounting.qryPaymentType);

  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMPurchaseInvoice);
end;

procedure TfmPurchasePaymentApproval.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (dtsIMPurchasePayment.State in [dsEdit, dsInsert]) then
    Abort;

  dtsIMPurchasePayment.Close;
  dtsIMPurchasePayment.Parameters[0].Value := FStatusApprove;
  dtsIMPurchasePayment.Parameters[1].Value := FStatusApprove + 1;
  dtsIMPurchasePayment.Parameters[2].Value := STATUS_REJECT;
  dtsIMPurchasePayment.Parameters[3].Value := STATUS_DONE;
  dtsIMPurchasePayment.Parameters[4].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMPurchasePayment.Parameters[5].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMPurchasePayment.Parameters[6].Value := FParamArrayValues[0];
  OpenIfClose(dtsIMPurchasePayment, True);
  cgvPurchasePayment.ViewData.Expand(True);
end;

procedure TfmPurchasePaymentApproval.RefreshAll;
begin
  inherited;

  LockRefresh(dtsIMPurchasePayment, True);
  LockRefresh(dtsIMPurchaseInvoice);
  cgvPurchasePayment.ViewData.Expand(True);
end;

function TfmPurchasePaymentApproval.ValidatePurchasePayment(
  const AIdPP: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(Self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select chStatusApprove from tbIMPurchasePayment');
    qryTemp.SQL.Add('where vcIdPurchasePayment = :vcIdPurchasePayment');
    qryTemp.Parameters[0].Value := AIdPP;
    qryTemp.Open;
    if qryTemp.IsEmpty then
      Exit;
    if qryTemp.FieldByName('chStatusApprove').AsInteger <> FStatusApprove then
    begin
      MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [PP, AIdPP]), mtInformation,
        [mbOk], 0);
      Exit;
    end;
  finally
    FreeAndNil(qryTemp);
  end;
  Result := True;
end;

end.
