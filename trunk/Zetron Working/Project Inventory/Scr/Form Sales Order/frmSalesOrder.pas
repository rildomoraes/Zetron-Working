unit frmSalesOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

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
  TfmSalesOrder = class(TFormUniTransactionEx)
    pnlTop: TPanel;
    lblCustomer: TLabel;
    lblSalesOrderId: TLabel;
    lblOutlet: TLabel;
    lblTanggal: TLabel;
    lblProject: TLabel;
    dblcCustomerId: TcxDBExtLookupComboBox;
    dblcCustomerId2: TcxDBExtLookupComboBox;
    dbeSalesOrderDate: TcxDBDateEdit;
    dbeSalesOrderId: TcxDBTextEdit;
    dblcOutletId: TcxDBExtLookupComboBox;
    dbeCustomerSalesOrderId: TcxDBTextEdit;
    dblcProjectId: TcxDBExtLookupComboBox;
    edtAddress: TcxMemo;
    edtCityName: TcxExtLookupComboBox;
    edtProvinceName: TcxExtLookupComboBox;
    edtCountryName: TcxExtLookupComboBox;
    dsSalesOrderDt: TDataSource;
    cgSalesOrderDt: TcxGrid;
    cgvSalesOrderDt: TcxGridDBBandedTableView;
    cgvSalesOrderDtSalesOrderId: TcxGridDBBandedColumn;
    cgvSalesOrderDtNo: TcxGridDBBandedColumn;
    cgvSalesOrderDtItemId: TcxGridDBBandedColumn;
    cgvSalesOrderDtItemId2: TcxGridDBBandedColumn;
    cgvSalesOrderDtItemId3: TcxGridDBBandedColumn;
    cgvSalesOrderDtItemId4: TcxGridDBBandedColumn;
    cgvSalesOrderDtitemtext: TcxGridDBBandedColumn;
    cgvSalesOrderDtQty: TcxGridDBBandedColumn;
    cgvSalesOrderDtPrice: TcxGridDBBandedColumn;
    cgvSalesOrderDtDiscItem: TcxGridDBBandedColumn;
    cgvSalesOrderDtDiscItemPrice: TcxGridDBBandedColumn;
    cgvSalesOrderDtDiscItem2: TcxGridDBBandedColumn;
    cgvSalesOrderDtDiscItemPrice2: TcxGridDBBandedColumn;
    cgvSalesOrderDtAmount: TcxGridDBBandedColumn;
    cgvSalesOrderDtemployeeid: TcxGridDBBandedColumn;
    cgSalesOrderDtLevel1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    tsAmount: TcxTabSheet;
    tsExternalMemo: TcxTabSheet;
    tsInternalMemo: TcxTabSheet;
    lblDisc1: TLabel;
    dbeDisc1: TcxDBSpinEdit;
    lbl2: TLabel;
    edtDiscAmount: TcxCurrencyEdit;
    lblDisc2: TLabel;
    dbeDisc2: TcxDBSpinEdit;
    lbl4: TLabel;
    edtDiscAmount2: TcxCurrencyEdit;
    lbl16: TLabel;
    dbeVoucher: TcxDBTextEdit;
    lblPurchaseTax: TLabel;
    dbeTax: TcxDBSpinEdit;
    lblPercent: TLabel;
    edtTaxAmount: TcxCurrencyEdit;
    lblTotal: TLabel;
    edtTotalAmount: TcxCurrencyEdit;
    dbmStatementMemo: TcxDBMemo;
    dbmInternalMemo: TcxDBMemo;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplaystatusapprove: TcxGridDBColumn;
    cgvPrevDisplaySalesorderid: TcxGridDBColumn;
    cgvPrevDisplaySalesorderdate: TcxGridDBColumn;
    cgvPrevDisplayCustomerid: TcxGridDBColumn;
    cgvPrevDisplayCustomerSalesorderid: TcxGridDBColumn;
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
    qrySalesOrderHd: TUniQuery;
    qrySalesOrderDt: TUniQuery;
    qryGetSalePrice: TUniQuery;
    Label1: TLabel;
    dbePPH22: TcxDBSpinEdit;
    Label2: TLabel;
    edtPPH22Amount: TcxCurrencyEdit;
    cgvPrevDisplaypph22: TcxGridDBColumn;
    cgvPrevDisplaypph22amount: TcxGridDBColumn;
    cgvSalesOrderDtvoucheritem: TcxGridDBBandedColumn;
    dbeVoucherAmount: TcxDBCalcEdit;
    procedure qrySalesOrderHdAfterPost(DataSet: TDataSet);
    procedure qrySalesOrderHdBeforeInsert(DataSet: TDataSet);
    procedure qrySalesOrderHdAfterCancel(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsSalesOrderDtDataChange(Sender: TObject; Field: TField);
    procedure dblcCustomerIdPropertiesEditValueChanged(Sender: TObject);
    procedure qrySalesOrderHdNewRecord(DataSet: TDataSet);
    procedure qrySalesOrderHdBeforePost(DataSet: TDataSet);
    procedure dbeSalesOrderIdPropertiesEditValueChanged(Sender: TObject);
    procedure qrySalesOrderDtNewRecord(DataSet: TDataSet);
    procedure qrySalesOrderDtBeforePost(DataSet: TDataSet);
    procedure qrySalesOrderDtAfterPost(DataSet: TDataSet);
    procedure cgvSalesOrderDtDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure qrySalesOrderDtBeforeInsert(DataSet: TDataSet);
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
  fmSalesOrder: TfmSalesOrder;

implementation

{$R *.dfm}

uses
  untConstanta, untConstantaPOS, untProcedure, dtmGlobal, dtmGeneral, dtmShare,
  dtmAccounting, dtmInventory, frmPrintFastReport;

procedure TfmSalesOrder.CalculateTotal;
var
  Amount: Currency;
begin
  if not qrySalesOrderHd.Active then
    Exit;

  if cgvSalesOrderDt.DataController.Summary.FooterSummaryValues[1] = null then
    Amount := 0
  else
    Amount := cgvSalesOrderDt.DataController.Summary.FooterSummaryValues[1];

  edtDiscAmount.EditValue :=
    (Amount * qrySalesOrderHd.FieldByName('Disc').AsFloat) / 100;

  edtDiscAmount2.EditValue :=
    ((Amount - edtDiscAmount.EditValue) * qrySalesOrderHd.FieldByName('Disc2').AsFloat) / 100;

  edtTaxAmount.EditValue :=
    ((Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qrySalesOrderHd.FieldByName('VoucherAmount').AsCurrency) *
    qrySalesOrderHd.FieldByName('Tax').AsFloat) / 100;

  edtPPH22Amount.EditValue :=
    ((Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qrySalesOrderHd.FieldByName('VoucherAmount').AsCurrency +
    edtTaxAmount.EditValue) *
    qrySalesOrderHd.FieldByName('PPH22').AsFloat) / 100;

  edtTotalAmount.EditValue :=
    Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qrySalesOrderHd.FieldByName('VoucherAmount').AsCurrency +
    edtTaxAmount.EditValue + edtPPH22Amount.EditValue;
end;

procedure TfmSalesOrder.cgvSalesOrderDtDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;

  CalculateTotal;
end;

procedure TfmSalesOrder.dbeSalesOrderIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  CalculateTotal;
end;

procedure TfmSalesOrder.dblcCustomerIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if VarToStr(TcxDBExtLookupComboBox(Sender).EditValue) <> '' then
  begin
    edtAddress.EditValue := dmGeneral.cgvPrevCustomerAddress.EditValue;
    edtCityName.EditValue := dmGeneral.cgvPrevCustomerCityId.EditValue;
{ TODO : province }//    edtProvinceName.EditValue := dmGeneral.cgvPrevCustomerProvinceId.EditValue;
//    edtCountryName.EditValue := dmGeneral.cgvPrevCustomerCountryId.EditValue;
  end
  else
  begin
    edtAddress.EditValue := null;
    edtCityName.EditValue := null;
    edtProvinceName.EditValue := null;
    edtCountryName.EditValue := null;
  end;
end;

procedure TfmSalesOrder.dsDefaultDataChange(Sender: TObject;
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

procedure TfmSalesOrder.dsSalesOrderDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if (Field = nil) then
    Exit;

  if qrySalesOrderDt.State in [dsInsert, dsEdit] then
  begin
    // Get default price
    if CompareText(Field.FieldName, 'ItemId') = 0 then
    begin
      qryGetSalePrice.Close;
      qryGetSalePrice.Params[0].Value := qrySalesOrderHd.FieldByName('CustomerId').AsString;
      qryGetSalePrice.Params[1].Value := Field.Value;
      OpenIfClose(qryGetSalePrice);
      if not qryGetSalePrice.IsEmpty then
      begin
        qrySalesOrderDt.FieldByName('Price').AsFloat := qryGetSalePrice.FieldByName('Price').AsFloat;
        qrySalesOrderDt.FieldByName('DiscItem').AsFloat := qryGetSalePrice.FieldByName('DiscItem').AsFloat;
        qrySalesOrderDt.FieldByName('DiscItemPrice').AsFloat := qryGetSalePrice.FieldByName('DiscItemPrice').AsFloat;
        qrySalesOrderDt.FieldByName('DiscItemPrice2').AsFloat := qryGetSalePrice.FieldByName('DiscItemPrice2').AsFloat;
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
      if qrySalesOrderDt.FieldByName('DiscItem').AsFloat >= 0 then
        qrySalesOrderDt.FieldByName('DiscItemPrice').AsCurrency :=
          (qrySalesOrderDt.FieldByName('Price').AsCurrency *
          qrySalesOrderDt.FieldByName('DiscItem').AsFloat) / 100;

      if qrySalesOrderDt.FieldByName('DiscItem2').AsFloat >= 0 then
        qrySalesOrderDt.FieldByName('DiscItemPrice2').AsCurrency :=
          ((qrySalesOrderDt.FieldByName('Price').AsCurrency -
          qrySalesOrderDt.FieldByName('DiscItemPrice').AsCurrency) *
          qrySalesOrderDt.FieldByName('DiscItem2').AsFloat) / 100;

      qrySalesOrderDt.FieldByName('Amount').AsCurrency :=
        qrySalesOrderDt.FieldByName('Qty').AsFloat *
        (qrySalesOrderDt.FieldByName('Price').AsCurrency -
        qrySalesOrderDt.FieldByName('DiscItemPrice').AsCurrency -
        qrySalesOrderDt.FieldByName('DiscItemPrice2').AsCurrency -
        qrySalesOrderDt.FieldByName('VoucherItem').AsCurrency);
    end;
  end;
end;

procedure TfmSalesOrder.InitForm;
begin
  inherited;

  // Init Print
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PO);

  SetReadOnly(edtAddress, True, COLOR_INACTIVE);
  SetReadOnly(edtCityName, True, COLOR_INACTIVE);
  SetReadOnly(edtProvinceName, True, COLOR_INACTIVE);
  SetReadOnly(edtCountryName, True, COLOR_INACTIVE);
  SetReadOnly(dbeSalesOrderId, True, COLOR_INACTIVE);
  SetReadOnly(edtDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(edtDiscAmount2, True, COLOR_INACTIVE);
  SetReadOnly(edtTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(edtPPH22Amount, True, COLOR_INACTIVE);
  SetReadOnly(edtTotalAmount, True, COLOR_INACTIVE);

  OpenIfClose(dmGeneral.qryCustomer, True);
  OpenIfClose(dmGeneral.qryOutlet);
  OpenIfClose(dmGeneral.qryProject);
  OpenIfClose(dmInventory.qryItem, True);

  MonthYearValueChange(nil); // -> Trigger dtsSalesOrderHd
  OpenIfClose(qrySalesOrderDt);

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
  TcxCurrencyEditProperties(cgvSalesOrderDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvSalesOrderDtPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesOrderDtDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvSalesOrderDtDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesOrderDtDiscItem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvSalesOrderDtDiscItemPrice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesOrderDtAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesOrderDtvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
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

procedure TfmSalesOrder.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qrySalesOrderHd.State in [dsEdit, dsInsert]) or
    (qrySalesOrderDt.State in [dsEdit, dsInsert]) then
    Abort;

  qrySalesOrderHd.Close;
  qrySalesOrderHd.Params[0].Value := StrToInt(cbYear.Text);
  qrySalesOrderHd.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qrySalesOrderHd, True, True);
end;

procedure TfmSalesOrder.qrySalesOrderDtAfterPost(DataSet: TDataSet);
begin
  inherited;

  CalculateTotal;
end;

procedure TfmSalesOrder.qrySalesOrderDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;
end;

procedure TfmSalesOrder.qrySalesOrderDtBeforePost(DataSet: TDataSet);
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

procedure TfmSalesOrder.qrySalesOrderDtNewRecord(DataSet: TDataSet);
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

procedure TfmSalesOrder.qrySalesOrderHdAfterCancel(DataSet: TDataSet);
begin
  inherited;

  CalculateTotal;
  FInsertState := False;
end;

procedure TfmSalesOrder.qrySalesOrderHdAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('SalesOrderHd', dmShare.OptionSO.Prefix,
      DataSet.FieldByName('SalesOrderDate').AsDateTime, dmShare.OptionSO.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmSalesOrder.qrySalesOrderHdBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmSalesOrder.qrySalesOrderHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  // Insert Id
  if FInsertState then
    DataSet.FieldByName('SalesOrderId').AsString :=
      dmGlobal.GetLastTransactionId('SalesOrderHd', dmShare.OptionSO.Prefix, dmShare.OptionSO.Length,
        DataSet.FieldByName('SalesOrderDate').AsDateTime, dmShare.OptionSO.RunYear);

  // Last Employee
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmSalesOrder.qrySalesOrderHdNewRecord(DataSet: TDataSet);
begin
  inherited;

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
  DataSet.FieldByName('StatusApprove').AsString := '0';
end;

procedure TfmSalesOrder.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryCustomer, True);
  LockRefresh(dmGeneral.qryOutlet);
  LockRefresh(dmGeneral.qryProject);
  LockRefresh(dmInventory.qryItem, True);
  LockRefresh(qrySalesOrderHd, True);
  LockRefresh(qrySalesOrderDt);
end;

end.
