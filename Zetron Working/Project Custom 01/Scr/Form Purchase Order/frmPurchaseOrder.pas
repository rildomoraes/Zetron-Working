unit frmPurchaseOrder;

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
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, dxDockControl, DB,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxDBLookupComboBox,
  cxSpinEdit, cxCalc, cxCurrencyEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, cxMemo, cxPC, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ADODB;

type
  TfmPurchaseOrder = class(TFormUniTransactionApprovalEx)
    dtsIMPurchaseOrderHd: TADODataSet;
    dtsIMPurchaseOrderDt: TADODataSet;
    dsIMPurchaseOrderDt: TDataSource;
    spPurchaseOrderValidation: TADOStoredProc;
    cgPurchaseOrderHd: TcxGrid;
    cgvPurchaseOrderHd: TcxGridDBTableView;
    cgvPurchaseOrderHdvcIdPurchaseOrder: TcxGridDBColumn;
    cgvPurchaseOrderHddtPurchaseOrderDate: TcxGridDBColumn;
    cgvPurchaseOrderHdvcIdSupplier: TcxGridDBColumn;
    cgvPurchaseOrderHdchStatusApprove: TcxGridDBColumn;
    cgPurchaseOrderHdLevel1: TcxGridLevel;
    pnlDetailTop: TPanel;
    lblPurchaseOrderDate: TLabel;
    lblIdSupplier: TLabel;
    lblIdPurchaseOrder: TLabel;
    lblEmployeeName: TLabel;
    lblContactPerson: TLabel;
    lblSupplierSO: TLabel;
    dblcSupplier: TcxDBExtLookupComboBox;
    dbePurchaseOrderDate: TcxDBDateEdit;
    dbeIdPurchaseOrder: TcxDBTextEdit;
    dbeEmployeeName: TcxDBTextEdit;
    dbeContactPerson: TcxDBTextEdit;
    pcNotes: TcxPageControl;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsMemo: TcxTabSheet;
    dbMemo: TcxDBMemo;
    dbeSupplierSO: TcxDBTextEdit;
    cgPurchaseOrderDt: TcxGrid;
    cgvPurchaseOrderDt: TcxGridDBBandedTableView;
    cgvPurchaseOrderDtvcIdPurchaseOrder: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtinNo: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtvcIdSupplies: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtvcIdSupplies2: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtvcIdSupplies3: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtdtShippingDate: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtinQty: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtdcPrice: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtdcDiscItem: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtdcDiscItemPrice: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtdcAmount: TcxGridDBBandedColumn;
    cgPurchaseOrderDtLevel1: TcxGridLevel;
    pnlDetailBottom: TPanel;
    lblTax: TLabel;
    lblTotal: TLabel;
    lblDisc: TLabel;
    dbeTax: TcxDBSpinEdit;
    dbeDisc: TcxDBSpinEdit;
    dbeDiscAmount: TcxDBCurrencyEdit;
    dbeTaxAmount: TcxDBCurrencyEdit;
    dbeTotalAmount: TcxDBCurrencyEdit;
    qryGetPOInfo: TADOQuery;
    procedure dtsIMPurchaseOrderDtAfterPost(DataSet: TDataSet);
    procedure dtsIMPurchaseOrderDtAfterDelete(DataSet: TDataSet);
    procedure cgvPurchaseOrderDtDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure dsIMPurchaseOrderDtDataChange(Sender: TObject; Field: TField);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dtsIMPurchaseOrderDtNewRecord(DataSet: TDataSet);
    procedure dtsIMPurchaseOrderDtBeforePost(DataSet: TDataSet);
    procedure dtsIMPurchaseOrderDtBeforeDelete(DataSet: TDataSet);
    procedure dtsIMPurchaseOrderHdBeforePost(DataSet: TDataSet);
    procedure dtsIMPurchaseOrderHdBeforeEdit(DataSet: TDataSet);
    procedure dtsIMPurchaseOrderHdNewRecord(DataSet: TDataSet);
    procedure cgvPurchaseOrderHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure actNotesExecute(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
    procedure actRevisionExecute(Sender: TObject);
    procedure actApproveExecute(Sender: TObject);
    procedure dtsIMPurchaseOrderDtBeforeInsert(DataSet: TDataSet);
    procedure dtsIMPurchaseOrderDtBeforeEdit(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FDoSaveCalculate: boolean;
    procedure CalculateTotal;
    function ValidatePurchaseOrderHd(const AIdPO: string): boolean;
  public
    { Public declarations }
  end;

var
  fmPurchaseOrder: TfmPurchaseOrder;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, frmNotes,
  untConstanta;

procedure TfmPurchaseOrder.actApproveExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if (dtsIMPurchaseOrderHd.IsEmpty) or
    (dtsIMPurchaseOrderDt.IsEmpty) then
  begin
    MessageDlg(Format(MSG_CANNOT_APPROVE_EMPTY, [PO]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if MessageDlg(Format(ASK_APPROVE, [PO, VarToStr(dbeIdPurchaseOrder.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidatePurchaseOrderHd(VarToStr(dbeIdPurchaseOrder.EditValue)) then
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
    actPrint.Execute;

  if (FStatusApprove + 1) = 3 then
  begin
    spPurchaseOrderValidation.Close;
    spPurchaseOrderValidation.Parameters[1].Value := dbeIdPurchaseOrder.EditValue;
    spPurchaseOrderValidation.ExecProc;
    if (spPurchaseOrderValidation.Parameters[0].Value <> 0) or
      (VarIsEmpty(spPurchaseOrderValidation.Parameters[0].Value)) then
    begin
      MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spPurchaseOrderValidation']), mtInformation, [mbOk], 0);
      //dmGlobal.AddApplicationLog('spPurchaseOrderValidation cannot be execute !', llHigh);
      dsDefault.DataSet.Edit;
      dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
      dsDefault.DataSet.Post;
    end;
  end;
end;

procedure TfmPurchaseOrder.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dsDefault.DataSet.IsEmpty then
    Exit;
  if not ValidatePurchaseOrderHd(VarToStr(dbeIdPurchaseOrder.EditValue)) then
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

procedure TfmPurchaseOrder.actRevisionExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if dtsIMPurchaseOrderHd.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REVISION, [PO, VarToStr(dbeIdPurchaseOrder.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidatePurchaseOrderHd(VarToStr(dbeIdPurchaseOrder.EditValue)) then
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

procedure TfmPurchaseOrder.actVoidExecute(Sender: TObject);
var
  S: TStringList;
begin
  //Ivan do not :inherited;

  // Validate
  if dtsIMPurchaseOrderHd.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REJECT, [PO, VarToStr(dbeIdPurchaseOrder.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidatePurchaseOrderHd(VarToStr(dbeIdPurchaseOrder.EditValue)) then
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
    dsDefault.DataSet.Post;
  finally
    S.Free;
  end;
  dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := STATUS_REJECT;
end;

procedure TfmPurchaseOrder.CalculateTotal;
begin
  dtsIMPurchaseOrderHd.FieldByName('dcAmount').AsFloat :=
    IsNull(cgvPurchaseOrderDt.DataController.Summary.FooterSummaryValues[1], 0);
  dtsIMPurchaseOrderHd.FieldByName('dcDiscAmount').AsFloat :=
    (dtsIMPurchaseOrderHd.FieldByName('dcAmount').AsFloat * dtsIMPurchaseOrderHd.FieldByName('dcDisc').AsFloat) / 100;
  dtsIMPurchaseOrderHd.FieldByName('dcTaxAmount').AsFloat :=
    ((dtsIMPurchaseOrderHd.FieldByName('dcAmount').AsFloat - dtsIMPurchaseOrderHd.FieldByName('dcDiscAmount').AsFloat) *
    dtsIMPurchaseOrderHd.FieldByName('dcTax').AsFloat) / 100;
  dtsIMPurchaseOrderHd.FieldByName('dcTotalAmount').AsFloat :=
    dtsIMPurchaseOrderHd.FieldByName('dcAmount').AsFloat -
    dtsIMPurchaseOrderHd.FieldByName('dcDiscAmount').AsFloat +
    dtsIMPurchaseOrderHd.FieldByName('dcTaxAmount').AsFloat;
end;

procedure TfmPurchaseOrder.cgvPurchaseOrderDtDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;

  if FDoSaveCalculate then
  begin
    dsDefault.DataSet.Edit;
    CalculateTotal;
    dsDefault.DataSet.Post;
  end;
end;

procedure TfmPurchaseOrder.cgvPurchaseOrderHdStylesGetContentStyle(
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

procedure TfmPurchaseOrder.dsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if dtsIMPurchaseOrderHd.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;
    if (Field.FieldName = 'dcDisc') or (Field.FieldName = 'dcTax') then
    begin
      CalculateTotal;
    end;
  end;
end;

procedure TfmPurchaseOrder.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  // Setting button enabled
  if TDataSource(Sender).DataSet.State in [dsInsert] then
    SetReadOnly(dbePurchaseOrderDate, False);
  if TDataSource(Sender).DataSet.State in [dsBrowse] then
    SetReadOnly(dbePurchaseOrderDate, True, COLOR_INACTIVE);
end;

procedure TfmPurchaseOrder.dsIMPurchaseOrderDtDataChange(Sender: TObject;
  Field: TField);
var
  IdSupplies: string;
  TempDisc, TempPrice: real;
begin
  inherited;

  if dtsIMPurchaseOrderDt.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;
    if Field.FieldName = 'vcIdSupplies' then
    begin
      IdSupplies := Field.Value;
      dmShare.GetPurchasePriceAndDisc(dblcSupplier.EditValue, IdSupplies, TempPrice, TempDisc);

      dtsIMPurchaseOrderDt.FieldByName('dcPrice').AsFloat := TempPrice;
      dtsIMPurchaseOrderDt.FieldByName('dcDiscItem').AsFloat := TempDisc;
    end;
  end;
end;

procedure TfmPurchaseOrder.dtsIMPurchaseOrderDtAfterDelete(DataSet: TDataSet);
begin
  inherited;

  FDoSaveCalculate := True;
end;

procedure TfmPurchaseOrder.dtsIMPurchaseOrderDtAfterPost(DataSet: TDataSet);
begin
  inherited;

  FDoSaveCalculate := True;
end;

procedure TfmPurchaseOrder.dtsIMPurchaseOrderDtBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if not ValidatePurchaseOrderHd(dtsIMPurchaseOrderHd.FieldByName('vcIdPurchaseOrder').AsString) then
    Abort;
end;

procedure TfmPurchaseOrder.dtsIMPurchaseOrderDtBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if not ValidatePurchaseOrderHd(dtsIMPurchaseOrderHd.FieldByName('vcIdPurchaseOrder').AsString) then
    Abort;
end;

procedure TfmPurchaseOrder.dtsIMPurchaseOrderDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if not ValidatePurchaseOrderHd(dtsIMPurchaseOrderHd.FieldByName('vcIdPurchaseOrder').AsString) then
    Abort;
end;

procedure TfmPurchaseOrder.dtsIMPurchaseOrderDtBeforePost(DataSet: TDataSet);
var
  Amount, AmountAfterDisc: real;
begin
  inherited;

  Amount := dtsIMPurchaseOrderDt.FieldByName('inQty').AsFloat *
    dtsIMPurchaseOrderDt.FieldByName('dcPrice').AsFloat;

  dtsIMPurchaseOrderDt.FieldByName('dcDiscItemPrice').AsFloat :=
    (Amount * dtsIMPurchaseOrderDt.FieldByName('dcDiscItem').AsFloat) / 100;

  AmountAfterDisc := Amount - dtsIMPurchaseOrderDt.FieldByName('dcDiscItemPrice').AsFloat;

  dtsIMPurchaseOrderDt.FieldByName('dcAmount').AsFloat := AmountAfterDisc;

  // Check Status Approval
  if not ValidatePurchaseOrderHd(dtsIMPurchaseOrderHd.FieldByName('vcIdPurchaseOrder').AsString) then
    Abort;
end;

procedure TfmPurchaseOrder.dtsIMPurchaseOrderDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('inNo').AsInteger := Dataset.RecordCount + 1;
  Dataset.FieldByName('inQty').AsFloat := 0;
  Dataset.FieldByName('dcPrice').AsFloat := 0;
  Dataset.FieldByName('dcDiscItem').AsFloat := 0;
  Dataset.FieldByName('dcDiscItemPrice').AsFloat := 0;
  Dataset.FieldByName('dcAmount').AsFloat := 0;
end;

procedure TfmPurchaseOrder.dtsIMPurchaseOrderHdBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if not ValidatePurchaseOrderHd(dtsIMPurchaseOrderHd.FieldByName('vcIdPurchaseOrder').AsString) then
    Abort;
end;

procedure TfmPurchaseOrder.dtsIMPurchaseOrderHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  if DataSet.FieldByName('vcIdPurchaseOrder').IsNull then
    DataSet.FieldByName('vcIdPurchaseOrder').AsString :=
      dmShare.GetCurrentTransNo(utPurchaseOrder, DataSet.FieldByName('dtPurchaseOrderDate').AsDateTime);
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmPurchaseOrder.dtsIMPurchaseOrderHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('dtPurchaseOrderDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  Dataset.FieldByName('dcDisc').AsFloat := 0;
  Dataset.FieldByName('dcDiscAmount').AsFloat := 0;
  Dataset.FieldByName('dcTax').AsFloat := 0;
  Dataset.FieldByName('dcTaxAmount').AsFloat := 0;
  Dataset.FieldByName('dcTotalAmount').AsFloat := 0;
  Dataset.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
  Dataset.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
  Dataset.FieldByName('CounterPrint').AsInteger := 0;
end;

procedure TfmPurchaseOrder.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PO);

  // Display Format
  TcxCalcEditProperties(cgvPurchaseOrderDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPurchaseOrderDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseOrderDtdcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPurchaseOrderDtdcDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseOrderDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
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

        // Hide Price
        cgvPurchaseOrderDtdcPrice.Free;
        cgvPurchaseOrderDtdcDiscItem.Free;
        cgvPurchaseOrderDtdcDiscItemPrice.Free;
        cgvPurchaseOrderDtdcAmount.Free;
        lblTotal.Visible := False;
        dbeTotalAmount.Visible := False;
      end;
    1:
      begin
        Self.Caption := Self.Caption + ' - Approval 1';
      end;
    2:
      begin
        Self.Caption := Self.Caption + ' - Approval 2';
      end;
  end;
  cgvPurchaseOrderHd.ViewData.Expand(True);

  SetReadOnly(cgvPurchaseOrderHd);
  SetReadOnly(dbeIdPurchaseOrder, True, COLOR_INACTIVE);
  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbeDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchaseOrderDate, True, COLOR_INACTIVE);

//  if (dmGlobal.OptionOnlyPOEntryCanModifyData) and (FStatusApprove <> 0) then
//  if FStatusApprove <> 0 then
//  begin
//    btnInsert.Enabled := False;
//    btnEdit.Enabled := False;
//    SetReadOnly(cgvPurchaseOrderDt);
//    SetReadOnly(dbePurchaseOrderDate, True, COLOR_INACTIVE);
//    SetReadOnly(dblcSupplier, True, COLOR_INACTIVE);
//    SetReadOnly(dbeSupplierSO, True, COLOR_INACTIVE);
//    SetReadOnly(dbeContactPerson, True, COLOR_INACTIVE);
//    SetReadOnly(dbMemo, True, COLOR_INACTIVE);
//    SetReadOnly(dbeDisc, True, COLOR_INACTIVE);
//    SetReadOnly(dbeTax, True, COLOR_INACTIVE);
//  end;

  // Query
  OpenIfClose(dmInventory.qrySupplier, True);
  OpenIfClose(dmInventory.qrySupplies, True);

  FDoSaveCalculate := False;
  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMPurchaseOrderDt);
end;

procedure TfmPurchaseOrder.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (dtsIMPurchaseOrderHd.State in [dsEdit, dsInsert]) or
    (dtsIMPurchaseOrderDt.State in [dsEdit, dsInsert]) then
    Abort;

  dtsIMPurchaseOrderHd.Close;
  dtsIMPurchaseOrderHd.Parameters[0].Value := FStatusApprove;
  dtsIMPurchaseOrderHd.Parameters[1].Value := FStatusApprove + 1;
  dtsIMPurchaseOrderHd.Parameters[2].Value := STATUS_REJECT;
  dtsIMPurchaseOrderHd.Parameters[3].Value := STATUS_DONE;
  dtsIMPurchaseOrderHd.Parameters[4].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMPurchaseOrderHd.Parameters[5].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsIMPurchaseOrderHd, True);
  cgvPurchaseOrderHd.ViewData.Expand(False);
end;

procedure TfmPurchaseOrder.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qrySupplier);
  LockRefresh(dmInventory.qrySupplies, True);
  LockRefresh(dtsIMPurchaseOrderHd, True);
  LockRefresh(dtsIMPurchaseOrderDt);
  cgvPurchaseOrderHd.ViewData.Expand(False);
end;

function TfmPurchaseOrder.ValidatePurchaseOrderHd(const AIdPO: string): boolean;
begin
  Result := False;

  qryGetPOInfo.Close;
  qryGetPOInfo.Parameters[0].Value := AIdPO;
  OpenIfClose(qryGetPOInfo, False);
  if qryGetPOInfo.IsEmpty then
    Exit;

  if qryGetPOInfo.FieldByName('chStatusApprove').AsInteger <> FStatusApprove then
  begin
    MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [PO, AIdPO]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if qryGetPOInfo.FieldByName('chStatusApprove').AsInteger = STATUS_REJECT then
  begin
    MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [PO, AIdPO]), mtInformation, [mbOk], 0);
    Exit;
  end;

  Result := True;
end;

end.
