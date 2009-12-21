unit frmPurchaseOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxSpinEdit, cxDBExtLookupComboBox, cxCalc, cxCurrencyEdit, cxImageComboBox,
  MemDS, DBAccess, Uni, cxGridDBTableView, cxDBEdit, cxPC, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxMemo, cxDropDownEdit, cxCalendar, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, dxDockPanel, cxLookupEdit, cxDBLookupEdit,
  cxContainer, cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, ExtCtrls,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, dxSkinscxPCPainter;

type
  TfmPurchaseOrder = class(TFormUniTransactionEx)
    dsPurchaseOrderDt: TDataSource;
    pnlTop: TPanel;
    lblVendor: TLabel;
    lblPurchaseOrderId: TLabel;
    lblOutlet: TLabel;
    lblVendorPurchaseOrderId: TLabel;
    lblProject: TLabel;
    dblcVendorId: TcxDBExtLookupComboBox;
    dblcVendorId2: TcxDBExtLookupComboBox;
    dbePurchaseOrderDate: TcxDBDateEdit;
    dbePurchaseOrderId: TcxDBTextEdit;
    dblcOutletId: TcxDBExtLookupComboBox;
    dbeVendorPurchaseOrderId: TcxDBTextEdit;
    dblcProjectId: TcxDBExtLookupComboBox;
    edtAddress: TcxMemo;
    edtCityName: TcxExtLookupComboBox;
    edtProvinceName: TcxExtLookupComboBox;
    edtCountryName: TcxExtLookupComboBox;
    cgPurchaseOrderDt: TcxGrid;
    cgvPurchaseOrderDt: TcxGridDBBandedTableView;
    cgvPurchaseOrderDtPurchaseOrderId: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtNo: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtItemId: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtItemId2: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtItemId3: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtItemId4: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtitemtext: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtQty: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtPrice: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtDiscItem: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtDiscItemPrice: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtDiscItem2: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtDiscItemPrice2: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtAmount: TcxGridDBBandedColumn;
    cgvPurchaseOrderDtemployeeid: TcxGridDBBandedColumn;
    cgPurchaseOrderDtLevel1: TcxGridLevel;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplaystatusapprove: TcxGridDBColumn;
    cgvPrevDisplaypurchaseorderid: TcxGridDBColumn;
    cgvPrevDisplaypurchaseorderdate: TcxGridDBColumn;
    cgvPrevDisplayvendorid: TcxGridDBColumn;
    cgvPrevDisplayvendorpurchaseorderid: TcxGridDBColumn;
    cgvPrevDisplayoutletid: TcxGridDBColumn;
    cgvPrevDisplayprojectid: TcxGridDBColumn;
    cgvPrevDisplayamount: TcxGridDBColumn;
    cgvPrevDisplaydisc: TcxGridDBColumn;
    cgvPrevDisplaydiscamount: TcxGridDBColumn;
    cgvPrevDisplaydisc2: TcxGridDBColumn;
    cgvPrevDisplaydiscamount2: TcxGridDBColumn;
    cgvPrevDisplayvoucher: TcxGridDBColumn;
    cgvPrevDisplayvoucheramount: TcxGridDBColumn;
    cgvPrevDisplaytax: TcxGridDBColumn;
    cgvPrevDisplaytaxamount: TcxGridDBColumn;
    cgvPrevDisplaytotalamount: TcxGridDBColumn;
    cgvPrevDisplayemployeeid: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    tsAmount: TcxTabSheet;
    lblDisc1: TLabel;
    lbl2: TLabel;
    lblDisc2: TLabel;
    lbl4: TLabel;
    lbl16: TLabel;
    lblPurchaseTax: TLabel;
    lblPercent: TLabel;
    lblTotal: TLabel;
    dbeDisc1: TcxDBSpinEdit;
    edtDiscAmount: TcxCurrencyEdit;
    dbeDisc2: TcxDBSpinEdit;
    edtDiscAmount2: TcxCurrencyEdit;
    dbeVoucher: TcxDBTextEdit;
    dbeTax: TcxDBSpinEdit;
    edtTaxAmount: TcxCurrencyEdit;
    edtTotalAmount: TcxCurrencyEdit;
    tsExternalMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    qryPurchaseOrderHd: TUniQuery;
    qryPurchaseOrderDt: TUniQuery;
    qryGetPurchasePrice: TUniQuery;
    Label1: TLabel;
    dbePPH22: TcxDBSpinEdit;
    Label2: TLabel;
    edtPPH22Amount: TcxCurrencyEdit;
    cgvPrevDisplaypph22: TcxGridDBColumn;
    cgvPrevDisplaypph22amount: TcxGridDBColumn;
    cgvPurchaseOrderDtvoucheritem: TcxGridDBBandedColumn;
    dbeVoucherAmount: TcxDBCalcEdit;
    procedure qryPurchaseOrderHdAfterPost(DataSet: TDataSet);
    procedure qryPurchaseOrderHdNewRecord(DataSet: TDataSet);
    procedure qryPurchaseOrderHdBeforePost(DataSet: TDataSet);
    procedure qryPurchaseOrderHdAfterCancel(DataSet: TDataSet);
    procedure qryPurchaseOrderDtNewRecord(DataSet: TDataSet);
    procedure qryPurchaseOrderDtBeforePost(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsPurchaseOrderDtDataChange(Sender: TObject; Field: TField);
    procedure dblcVendorIdPropertiesEditValueChanged(Sender: TObject);
    procedure dbePurchaseOrderIdPropertiesEditValueChanged(Sender: TObject);
    procedure cgvPurchaseOrderDtDataControllerSummaryAfterSummary(ASender: TcxDataSummary);
    procedure qryPurchaseOrderDtBeforeInsert(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FInsertState: boolean;
    procedure CalculateTotal;
  public

  end;

var
  fmPurchaseOrder: TfmPurchaseOrder;

implementation

{$R *.dfm}

uses
  untConstanta, untConstantaPOS, untProcedure, dtmGlobal, dtmGeneral, dtmShare,
  dtmAccounting, dtmInventory, frmPrintFastReport;

procedure TfmPurchaseOrder.CalculateTotal;
var
  Amount: Currency;
begin
  if not qryPurchaseOrderHd.Active then
    Exit;

  if cgvPurchaseOrderDt.DataController.Summary.FooterSummaryValues[1] = null then
    Amount := 0
  else
    Amount := cgvPurchaseOrderDt.DataController.Summary.FooterSummaryValues[1];

  edtDiscAmount.EditValue :=
    (Amount * qryPurchaseOrderHd.FieldByName('Disc').AsFloat) / 100;

  edtDiscAmount2.EditValue :=
    ((Amount - edtDiscAmount.EditValue) * qryPurchaseOrderHd.FieldByName('Disc2').AsFloat) / 100;

  edtTaxAmount.EditValue :=
    ((Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qryPurchaseOrderHd.FieldByName('VoucherAmount').AsCurrency) *
    qryPurchaseOrderHd.FieldByName('Tax').AsFloat) / 100;

  edtPPH22Amount.EditValue :=
    ((Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qryPurchaseOrderHd.FieldByName('VoucherAmount').AsCurrency +
    edtTaxAmount.EditValue) *
    qryPurchaseOrderHd.FieldByName('PPH22').AsFloat) / 100;

  edtTotalAmount.EditValue :=
    Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qryPurchaseOrderHd.FieldByName('VoucherAmount').AsCurrency +
    edtTaxAmount.EditValue + edtPPH22Amount.EditValue;
end;

procedure TfmPurchaseOrder.cgvPurchaseOrderDtDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;

  CalculateTotal;
end;

procedure TfmPurchaseOrder.dbePurchaseOrderIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  CalculateTotal;
end;

procedure TfmPurchaseOrder.dblcVendorIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if VarToStr(TcxDBExtLookupComboBox(Sender).EditValue) <> '' then
  begin
    edtAddress.EditValue := dmGeneral.cgvPrevVendorAddress.EditValue;
    edtCityName.EditValue := dmGeneral.cgvPrevVendorCityId.EditValue;
{ TODO : province }//    edtProvinceName.EditValue := dmGeneral.cgvPrevVendorProvinceId.EditValue;
//    edtCountryName.EditValue := dmGeneral.cgvPrevVendorCountryId.EditValue;
  end
  else
  begin
    edtAddress.EditValue := null;
    edtCityName.EditValue := null;
    edtProvinceName.EditValue := null;
    edtCountryName.EditValue := null;
  end;
end;

procedure TfmPurchaseOrder.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Field = nil then
    Exit;
  if (CompareText(Field.FieldName, 'Disc') = 0) or
    (CompareText(Field.FieldName, 'Disc2') = 0) or
    (CompareText(Field.FieldName, 'VoucherAmount') = 0) or
    (CompareText(Field.FieldName, 'PPH22') = 0) or
    (CompareText(Field.FieldName, 'Tax') = 0) then
    CalculateTotal;
end;

procedure TfmPurchaseOrder.dsPurchaseOrderDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if (Field = nil) then
    Exit;

  if qryPurchaseOrderDt.State in [dsInsert, dsEdit] then
  begin
    // Get default price
    if CompareText(Field.FieldName, 'ItemId') = 0 then
    begin
      qryGetPurchasePrice.Close;
      qryGetPurchasePrice.Params[0].Value := qryPurchaseOrderHd.FieldByName('VendorId').AsString;
      qryGetPurchasePrice.Params[1].Value := Field.Value;
      OpenIfClose(qryGetPurchasePrice);
      if not qryGetPurchasePrice.IsEmpty then
      begin
        qryPurchaseOrderDt.FieldByName('Price').AsFloat := qryGetPurchasePrice.FieldByName('Price').AsFloat;
        qryPurchaseOrderDt.FieldByName('DiscItem').AsFloat := qryGetPurchasePrice.FieldByName('DiscItem').AsFloat;
        qryPurchaseOrderDt.FieldByName('DiscItemPrice').AsFloat := qryGetPurchasePrice.FieldByName('DiscItemPrice').AsFloat;
        qryPurchaseOrderDt.FieldByName('DiscItemPrice2').AsFloat := qryGetPurchasePrice.FieldByName('DiscItemPrice2').AsFloat;
      end;
    end;

    // Calculate
    if (CompareText(Field.FieldName, 'Qty') = 0) or
      (CompareText(Field.FieldName, 'Price') = 0) or
      (CompareText(Field.FieldName, 'VoucherItem') = 0) or
      (CompareText(Field.FieldName, 'DiscItem') = 0) or
      (CompareText(Field.FieldName, 'DiscItem2') = 0) then
    begin
      // Jika disc lebih besar dari 0%
      if qryPurchaseOrderDt.FieldByName('DiscItem').AsFloat >= 0 then
        qryPurchaseOrderDt.FieldByName('DiscItemPrice').AsCurrency :=
          (qryPurchaseOrderDt.FieldByName('Price').AsCurrency *
          qryPurchaseOrderDt.FieldByName('DiscItem').AsFloat) / 100;

      if qryPurchaseOrderDt.FieldByName('DiscItem2').AsFloat >= 0 then
        qryPurchaseOrderDt.FieldByName('DiscItemPrice2').AsCurrency :=
          ((qryPurchaseOrderDt.FieldByName('Price').AsCurrency -
          qryPurchaseOrderDt.FieldByName('DiscItemPrice').AsCurrency) *
          qryPurchaseOrderDt.FieldByName('DiscItem2').AsFloat) / 100;

      qryPurchaseOrderDt.FieldByName('Amount').AsCurrency :=
        qryPurchaseOrderDt.FieldByName('Qty').AsFloat *
        (qryPurchaseOrderDt.FieldByName('Price').AsCurrency -
        qryPurchaseOrderDt.FieldByName('DiscItemPrice').AsCurrency -
        qryPurchaseOrderDt.FieldByName('DiscItemPrice2').AsCurrency -
        qryPurchaseOrderDt.FieldByName('VoucherItem').AsCurrency);
    end;
  end;
end;

procedure TfmPurchaseOrder.InitForm;
begin
  inherited;

  // Init Print
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PO);

  SetReadOnly(cgvPrevDisplay, True);
  SetReadOnly(edtAddress, True, COLOR_INACTIVE);
  SetReadOnly(edtCityName, True, COLOR_INACTIVE);
  SetReadOnly(edtProvinceName, True, COLOR_INACTIVE);
  SetReadOnly(edtCountryName, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchaseOrderId, True, COLOR_INACTIVE);
  SetReadOnly(edtDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(edtDiscAmount2, True, COLOR_INACTIVE);
  SetReadOnly(edtTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(edtPPH22Amount, True, COLOR_INACTIVE);
  SetReadOnly(edtTotalAmount, True, COLOR_INACTIVE);

  OpenIfClose(dmGeneral.qryVendor, True);
  OpenIfClose(dmGeneral.qryOutlet);
  OpenIfClose(dmGeneral.qryProject);
  OpenIfClose(dmInventory.qryItem, True);

  MonthYearValueChange(nil); // -> Trigger PurchaseOrderHd
  OpenIfClose(qryPurchaseOrderDt);

  dbeDisc1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  edtDiscAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeDisc2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  edtDiscAmount2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeVoucherAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTax.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  edtTaxAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbePPH22.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  edtPPH22Amount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseOrderDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPurchaseOrderDtPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseOrderDtDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPurchaseOrderDtDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseOrderDtDiscItem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPurchaseOrderDtDiscItemPrice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseOrderDtAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseOrderDtvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevDisplayamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevDisplaydisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPrevDisplaydiscamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevDisplaydisc2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPrevDisplaydiscamount2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevDisplayvoucheramount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevDisplaytax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPrevDisplaytaxamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevDisplaypph22.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPrevDisplaypph22amount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevDisplaytotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
end;

procedure TfmPurchaseOrder.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryPurchaseOrderHd.State in [dsEdit, dsInsert]) or
    (qryPurchaseOrderDt.State in [dsEdit, dsInsert]) then
    Abort;

  qryPurchaseOrderHd.Close;
  qryPurchaseOrderHd.Params[0].Value := StrToInt(cbYear.Text);
  qryPurchaseOrderHd.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryPurchaseOrderHd, True, True);
end;

procedure TfmPurchaseOrder.qryPurchaseOrderDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;
end;

procedure TfmPurchaseOrder.qryPurchaseOrderDtBeforePost(DataSet: TDataSet);
begin
  inherited;

  // Item Inactive
  dmShare.qryGetItemFlagInactive.Close;
  dmShare.qryGetItemFlagInactive.Params[0].Value := DataSet.FieldByName('ItemId').AsString;
  OpenIfClose(dmShare.qryGetItemFlagInactive);
  if dmShare.qryGetItemFlagInactive.FieldByName('FlagInactive').AsString = '1' then
    if MessageDlg(ASK_ITEM_INACTIVE, mtInformation, [mbYes, mbNo], 0) = mrNo then
      Abort;

  Dataset.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPurchaseOrder.qryPurchaseOrderDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('Price').AsCurrency := 0;
  DataSet.FieldByName('Qty').AsCurrency := 0;
  DataSet.FieldByName('DiscItem').AsCurrency := 0;
  DataSet.FieldByName('DiscItemPrice').AsCurrency := 0;
  DataSet.FieldByName('DiscItem2').AsCurrency := 0;
  DataSet.FieldByName('DiscItemPrice2').AsCurrency := 0;
  DataSet.FieldByName('VoucherItem').AsCurrency := 0;
  DataSet.FieldByName('Amount').AsCurrency := 0;
end;

procedure TfmPurchaseOrder.qryPurchaseOrderHdAfterCancel(DataSet: TDataSet);
begin
  inherited;

  CalculateTotal;
  FInsertState := False;
end;

procedure TfmPurchaseOrder.qryPurchaseOrderHdAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('PurchaseOrderHd', dmShare.OptionPO.Prefix,
      DataSet.FieldByName('PurchaseOrderDate').AsDateTime, dmShare.OptionPO.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmPurchaseOrder.qryPurchaseOrderHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  // Insert Id
  if FInsertState then
    DataSet.FieldByName('PurchaseOrderId').AsString :=
      dmGlobal.GetLastTransactionId('PurchaseOrderHd', dmShare.OptionPO.Prefix, dmShare.OptionPO.Length,
        DataSet.FieldByName('PurchaseOrderDate').AsDateTime, dmShare.OptionPO.RunYear);

  // Last Employee modified
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPurchaseOrder.qryPurchaseOrderHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
  Dataset.FieldByName('StatusApprove').AsInteger := FStatusApprove;
  DataSet.FieldByName('Amount').AsCurrency := 0;
  DataSet.FieldByName('Disc').AsCurrency := 0;
  DataSet.FieldByName('DiscAmount').AsCurrency := 0;
  DataSet.FieldByName('Disc2').AsCurrency := 0;
  DataSet.FieldByName('DiscAmount2').AsCurrency := 0;
  DataSet.FieldByName('VoucherAmount').AsCurrency := 0;
  DataSet.FieldByName('Tax').AsCurrency := 0;
  DataSet.FieldByName('TaxAmount').AsCurrency := 0;
  DataSet.FieldByName('PPH22').AsCurrency := 0;
  DataSet.FieldByName('PPH22Amount').AsCurrency := 0;
  DataSet.FieldByName('TotalAmount').AsCurrency := 0;
  DataSet.FieldByName('CounterPrint').AsInteger := 0;
end;

procedure TfmPurchaseOrder.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryVendor, True);
  LockRefresh(dmGeneral.qryOutlet);
  LockRefresh(dmGeneral.qryProject);
  LockRefresh(dmInventory.qryItem, True);
  LockRefresh(qryPurchaseOrderHd, True);
  LockRefresh(qryPurchaseOrderDt);
end;

end.


