unit frmSalesOrder;

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
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxSpinEdit, cxCalc,
  cxCurrencyEdit, cxGridBandedTableView, cxGridDBBandedTableView, cxMemo, cxPC,
  cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfmSalesOrder = class(TFormUniTransactionApprovalEx)
    dtsIMSalesOrderHd: TADODataSet;
    dtsIMSalesOrderDt: TADODataSet;
    dsIMSalesOrderDt: TDataSource;
    spSalesOrderValidation: TADOStoredProc;
    cgSalesOrderHd: TcxGrid;
    cgvSalesOrderHd: TcxGridDBTableView;
    cgvSalesOrderHdvcIdSalesOrder: TcxGridDBColumn;
    cgvSalesOrderHddtSalesOrderDate: TcxGridDBColumn;
    cgvSalesOrderHdvcIdCustomer: TcxGridDBColumn;
    cgvSalesOrderHdchStatusApprove: TcxGridDBColumn;
    cgSalesOrderHdLevel1: TcxGridLevel;
    pnlDetailTop: TPanel;
    lblSalesOrderDate: TLabel;
    lblIdCustomer: TLabel;
    lblIdSalesOrder: TLabel;
    lblEmployeeName: TLabel;
    lblSalesName: TLabel;
    lblCustomerPO: TLabel;
    dblcCustomer: TcxDBExtLookupComboBox;
    dbeSalesOrderDate: TcxDBDateEdit;
    dbeIdSalesOrder: TcxDBTextEdit;
    dbeEmployeeName: TcxDBTextEdit;
    dbeCustomerPO: TcxDBTextEdit;
    pcNotes: TcxPageControl;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsMemo: TcxTabSheet;
    dbMemo: TcxDBMemo;
    dblcSalesName: TcxDBExtLookupComboBox;
    cgSalesOrderDt: TcxGrid;
    cgvSalesOrderDt: TcxGridDBBandedTableView;
    cgvSalesOrderDtvcIdPurchaseOrder: TcxGridDBBandedColumn;
    cgvSalesOrderDtinNo: TcxGridDBBandedColumn;
    cgvSalesOrderDtvcIdSupplies: TcxGridDBBandedColumn;
    cgvSalesOrderDtvcIdSupplies2: TcxGridDBBandedColumn;
    cgvSalesOrderDtvcIdSupplies3: TcxGridDBBandedColumn;
    cgvSalesOrderDtdtShippingDate: TcxGridDBBandedColumn;
    cgvSalesOrderDtinQty: TcxGridDBBandedColumn;
    cgvSalesOrderDtdcPrice: TcxGridDBBandedColumn;
    cgvSalesOrderDtdcDiscItem: TcxGridDBBandedColumn;
    cgvSalesOrderDtdcDiscItemPrice: TcxGridDBBandedColumn;
    cgvSalesOrderDtdcAmount: TcxGridDBBandedColumn;
    cgSalesOrderDtLevel1: TcxGridLevel;
    pnlDetailBottom: TPanel;
    lblTax: TLabel;
    lblTotal: TLabel;
    lblDisc: TLabel;
    dbeTax: TcxDBSpinEdit;
    dbeDisc: TcxDBSpinEdit;
    dbeDiscAmount: TcxDBCurrencyEdit;
    dbeTaxAmount: TcxDBCurrencyEdit;
    dbeTotalAmount: TcxDBCurrencyEdit;
    qryGetSOInfo: TADOQuery;
    procedure dtsIMSalesOrderDtAfterDelete(DataSet: TDataSet);
    procedure cgvSalesOrderDtDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure dtsIMSalesOrderDtAfterPost(DataSet: TDataSet);
    procedure dsIMSalesOrderDtDataChange(Sender: TObject; Field: TField);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dtsIMSalesOrderDtNewRecord(DataSet: TDataSet);
    procedure dtsIMSalesOrderDtBeforePost(DataSet: TDataSet);
    procedure dtsIMSalesOrderDtBeforeDelete(DataSet: TDataSet);
    procedure dtsIMSalesOrderHdBeforePost(DataSet: TDataSet);
    procedure dtsIMSalesOrderHdBeforeEdit(DataSet: TDataSet);
    procedure dtsIMSalesOrderHdNewRecord(DataSet: TDataSet);
    procedure cgvSalesOrderHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure actNotesExecute(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
    procedure actRevisionExecute(Sender: TObject);
    procedure actApproveExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FDoSaveCalculate: boolean;
    procedure CalculateTotal;
    function ValidateSalesOrderHd(const AIdSO: string): boolean;
  public
    { Public declarations }
  end;

var
  fmSalesOrder: TfmSalesOrder;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, frmNotes,
  untConstanta;

{ TfmSalesOrder }

procedure TfmSalesOrder.actApproveExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if (dtsIMSalesOrderHd.IsEmpty) or
    (dtsIMSalesOrderDt.IsEmpty) then
  begin
    MessageDlg(Format(MSG_CANNOT_APPROVE_EMPTY, [SO]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if MessageDlg(Format(ASK_APPROVE, [SO, VarToStr(dbeIdSalesOrder.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateSalesOrderHd(VarToStr(dbeIdSalesOrder.EditValue)) then
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
    spSalesOrderValidation.Close;
    spSalesOrderValidation.Parameters[1].Value := dbeIdSalesOrder.EditValue;
    spSalesOrderValidation.ExecProc;
    if (spSalesOrderValidation.Parameters[0].Value <> 0) or
      (VarIsEmpty(spSalesOrderValidation.Parameters[0].Value)) then
    begin
      MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spSalesOrderValidation']), mtInformation, [mbOk], 0);
      //dmGlobal.AddApplicationLog('spSalesOrderValidation cannot be execute !', llHigh);
      dsDefault.DataSet.Edit;
      dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
      dsDefault.DataSet.Post;
    end;
  end;
end;

procedure TfmSalesOrder.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dsDefault.DataSet.IsEmpty then
    Exit;
  if not ValidateSalesOrderHd(VarToStr(dbeIdSalesOrder.EditValue)) then
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

procedure TfmSalesOrder.actRevisionExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if dtsIMSalesOrderHd.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REVISION, [PO, VarToStr(dbeIdSalesOrder.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateSalesOrderHd(VarToStr(dbeIdSalesOrder.EditValue)) then
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

procedure TfmSalesOrder.actVoidExecute(Sender: TObject);
var
  S: TStringList;
begin
  //Ivan do not :inherited;

  // Validate
  if dtsIMSalesOrderHd.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REJECT, [PO, VarToStr(dbeIdSalesOrder.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateSalesOrderHd(VarToStr(dbeIdSalesOrder.EditValue)) then
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

procedure TfmSalesOrder.CalculateTotal;
begin
  dtsIMSalesOrderHd.FieldByName('dcAmount').AsFloat :=
    IsNull(cgvSalesOrderDt.DataController.Summary.FooterSummaryValues[1], 0);
  dtsIMSalesOrderHd.FieldByName('dcDiscAmount').AsFloat :=
    (dtsIMSalesOrderHd.FieldByName('dcAmount').AsFloat * dtsIMSalesOrderHd.FieldByName('dcDisc').AsFloat) / 100;
  dtsIMSalesOrderHd.FieldByName('dcTaxAmount').AsFloat :=
    ((dtsIMSalesOrderHd.FieldByName('dcAmount').AsFloat - dtsIMSalesOrderHd.FieldByName('dcDiscAmount').AsFloat) *
    dtsIMSalesOrderHd.FieldByName('dcTax').AsFloat) / 100;
  dtsIMSalesOrderHd.FieldByName('dcTotalAmount').AsFloat :=
    dtsIMSalesOrderHd.FieldByName('dcAmount').AsFloat -
    dtsIMSalesOrderHd.FieldByName('dcDiscAmount').AsFloat +
    dtsIMSalesOrderHd.FieldByName('dcTaxAmount').AsFloat;
end;

procedure TfmSalesOrder.cgvSalesOrderDtDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;

  if FDoSaveCalculate then
  begin
    dtsIMSalesOrderHd.Edit;
    CalculateTotal;
    dtsIMSalesOrderHd.Post;
  end;
end;

procedure TfmSalesOrder.cgvSalesOrderHdStylesGetContentStyle(
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

procedure TfmSalesOrder.dsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if dtsIMSalesOrderHd.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;
    if (Field.FieldName = 'dcDisc') or (Field.FieldName = 'dcTax') then
    begin
      CalculateTotal;
    end;
  end;
end;

procedure TfmSalesOrder.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  // Setting button enabled
  if TDataSource(Sender).DataSet.State in [dsInsert] then
    SetReadOnly(dbeSalesOrderDate, False);
  if TDataSource(Sender).DataSet.State in [dsBrowse] then
    SetReadOnly(dbeSalesOrderDate, True, COLOR_INACTIVE);
end;

procedure TfmSalesOrder.dsIMSalesOrderDtDataChange(Sender: TObject;
  Field: TField);
var
  IdSupplies: string;
  TempDisc, TempPrice: real;
begin
  inherited;

  if dtsIMSalesOrderDt.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;
    if Field.FieldName = 'vcIdSupplies' then
    begin
      IdSupplies := Field.Value;
      dmShare.GetSalesPriceAndDisc(dblcCustomer.EditValue, IdSupplies, TempPrice, TempDisc);

      dtsIMSalesOrderDt.FieldByName('dcPrice').AsFloat := TempPrice;
      dtsIMSalesOrderDt.FieldByName('dcDiscItem').AsFloat := TempDisc;
    end;
  end;
end;

procedure TfmSalesOrder.dtsIMSalesOrderDtAfterDelete(DataSet: TDataSet);
begin
  inherited;

  FDoSaveCalculate := True;
end;

procedure TfmSalesOrder.dtsIMSalesOrderDtAfterPost(DataSet: TDataSet);
begin
  inherited;

  FDoSaveCalculate := True;
end;

procedure TfmSalesOrder.dtsIMSalesOrderDtBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if not ValidateSalesOrderHd(dtsIMSalesOrderHd.FieldByName('vcIdSalesOrder').AsString) then
    Abort;
end;

procedure TfmSalesOrder.dtsIMSalesOrderDtBeforePost(DataSet: TDataSet);
var
  Amount, AmountAfterDisc: real;
begin
  inherited;

  Amount := dtsIMSalesOrderDt.FieldByName('inQty').AsFloat *
    dtsIMSalesOrderDt.FieldByName('dcPrice').AsFloat;

  dtsIMSalesOrderDt.FieldByName('dcDiscItemPrice').AsFloat :=
    (Amount * dtsIMSalesOrderDt.FieldByName('dcDiscItem').AsFloat) / 100;

  AmountAfterDisc := Amount - dtsIMSalesOrderDt.FieldByName('dcDiscItemPrice').AsFloat;

  dtsIMSalesOrderDt.FieldByName('dcAmount').AsFloat := AmountAfterDisc;

  // Check Status Approval
  if not ValidateSalesOrderHd(dtsIMSalesOrderHd.FieldByName('vcIdSalesOrder').AsString) then
    Abort;
end;

procedure TfmSalesOrder.dtsIMSalesOrderDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('inNo').AsInteger := Dataset.RecordCount + 1;
  Dataset.FieldByName('inQty').AsFloat := 0;
  Dataset.FieldByName('dcPrice').AsFloat := 0;
  Dataset.FieldByName('dcDiscItem').AsFloat := 0;
  Dataset.FieldByName('dcDiscItemPrice').AsFloat := 0;
  Dataset.FieldByName('dcAmount').AsFloat := 0;
end;

procedure TfmSalesOrder.dtsIMSalesOrderHdBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if not ValidateSalesOrderHd(dtsIMSalesOrderHd.FieldByName('vcIdSalesOrder').AsString) then
    Abort;
end;

procedure TfmSalesOrder.dtsIMSalesOrderHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  if DataSet.FieldByName('vcIdSalesOrder').IsNull then
    DataSet.FieldByName('vcIdSalesOrder').AsString :=
      dmShare.GetCurrentTransNo(utSalesOrder, DataSet.FieldByName('dtSalesOrderDate').AsDateTime);
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmSalesOrder.dtsIMSalesOrderHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('dtSalesOrderDate').AsDateTime := DateOf(dmGlobal.SettingGlobal.ServerDateTime);
  Dataset.FieldByName('dcDisc').AsFloat := 0;
  Dataset.FieldByName('dcDiscAmount').AsFloat := 0;
  Dataset.FieldByName('dcTax').AsFloat := 0;
  Dataset.FieldByName('dcTaxAmount').AsFloat := 0;
  Dataset.FieldByName('dcTotalAmount').AsFloat := 0;
  Dataset.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
  Dataset.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
  Dataset.FieldByName('CounterPrint').AsInteger := 0;
end;

procedure TfmSalesOrder.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_SO);

  // Display Format
  TcxCalcEditProperties(cgvSalesOrderDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSalesOrderDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesOrderDtdcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvSalesOrderDtdcDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesOrderDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeDisc.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeDiscAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTax.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeTaxAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  // Initial
  lblTotal.Visible := True;
  dbeTotalAmount.Visible := True;
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
  cgvSalesOrderHd.ViewData.Expand(True);

  SetReadOnly(cgvSalesOrderHd);
  SetReadOnly(dbeIdSalesOrder, True, COLOR_INACTIVE);
  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbeDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeSalesOrderDate, True, COLOR_INACTIVE);

//  if (dmGlobal.OptionOnlySOEntryCanModifyData) and (FStatusApprove <> 0) then
//  if FStatusApprove <> 0 then
//  begin
//    btnInsert.Enabled := False;
//    btnEdit.Enabled := False;
//    SetReadOnly(cgvSalesOrderDt);
//    SetReadOnly(dbeSalesOrderDate, True, COLOR_INACTIVE);
//    SetReadOnly(dblcCustomer, True, COLOR_INACTIVE);
//    SetReadOnly(dbeCustomerSO, True, COLOR_INACTIVE);
//    SetReadOnly(dbeContactPerson, True, COLOR_INACTIVE);
//    SetReadOnly(dbMemo, True, COLOR_INACTIVE);
//    SetReadOnly(dbeDisc, True, COLOR_INACTIVE);
//    SetReadOnly(dbeTax, True, COLOR_INACTIVE);
//  end;

  // Query
  OpenIfClose(dmInventory.qryCustomer, True);
  OpenIfClose(dmInventory.qrySupplies, True);
  OpenIfClose(dmInventory.qryPrevSalesman);

  FDoSaveCalculate := False;
  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMSalesOrderDt);
end;

procedure TfmSalesOrder.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (dtsIMSalesOrderHd.State in [dsEdit, dsInsert]) or
    (dtsIMSalesOrderDt.State in [dsEdit, dsInsert]) then
    Abort;

  dtsIMSalesOrderHd.Close;
  dtsIMSalesOrderHd.Parameters[0].Value := FStatusApprove;
  dtsIMSalesOrderHd.Parameters[1].Value := FStatusApprove + 1;
  dtsIMSalesOrderHd.Parameters[2].Value := STATUS_REJECT;
  dtsIMSalesOrderHd.Parameters[3].Value := STATUS_DONE;
  dtsIMSalesOrderHd.Parameters[4].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMSalesOrderHd.Parameters[5].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsIMSalesOrderHd, True);
  cgvSalesOrderHd.ViewData.Expand(False);
end;

procedure TfmSalesOrder.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryCustomer);
  LockRefresh(dmInventory.qrySupplies, True);
  LockRefresh(dmInventory.qryPrevSalesman);
  LockRefresh(dtsIMSalesOrderHd, True);
  LockRefresh(dtsIMSalesOrderDt);
  cgvSalesOrderHd.ViewData.Expand(False);
end;

function TfmSalesOrder.ValidateSalesOrderHd(const AIdSO: string): boolean;
begin
  Result := False;

  qryGetSOInfo.Close;
  qryGetSOInfo.Parameters[0].Value := AIdSO;
  OpenIfClose(qryGetSOInfo, False);
  if qryGetSOInfo.IsEmpty then
    Exit;

  if qryGetSOInfo.FieldByName('chStatusApprove').AsInteger <> FStatusApprove then
  begin
    MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [PO, AIdSO]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if qryGetSOInfo.FieldByName('chStatusApprove').AsInteger = STATUS_REJECT then
  begin
    MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [SO, AIdSO]), mtInformation, [mbOk], 0);
    Exit;
  end;

  Result := True;
end;

end.
