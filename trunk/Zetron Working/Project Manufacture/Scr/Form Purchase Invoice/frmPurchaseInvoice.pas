unit frmPurchaseInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  // Auto Generate
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxDockControlPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxSpinEdit,
  cxDBExtLookupComboBox, cxCalendar, cxCalc, cxCurrencyEdit, cxImageComboBox,
  cxCheckBox, ADODB, cxGridDBTableView, cxDBEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxButtonEdit, cxDropDownEdit, cxMemo, cxPC, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit, cxMaskEdit, StdCtrls,
  cxButtons, ExtCtrls;

type
  TfmPurchaseInvoice = class(TFormUniTransactionEx)
    dsPurchaseInvoiceDt: TDataSource;
    pnlHeader: TPanel;
    lblVendor: TLabel;
    lblPurchaseDate: TLabel;
    lblPINo: TLabel;
    dblcVendorId: TcxDBExtLookupComboBox;
    dbePurchaseInvoiceDate: TcxDBDateEdit;
    dbePurchaseInvoiceId: TcxDBTextEdit;
    cgDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplaystatusapprove: TcxGridDBColumn;
    cgvPrevDisplaypurchaseinvoiceid: TcxGridDBColumn;
    cgvPrevDisplayvendorpurchaseinvoiceid: TcxGridDBColumn;
    cgvPrevDisplaypurchaseinvoicedate: TcxGridDBColumn;
    cgvPrevDisplayvendorid: TcxGridDBColumn;
    cgvPrevDisplaywarehouseid: TcxGridDBColumn;
    cgvPrevDisplayoutletid: TcxGridDBColumn;
    cgvPrevDisplayprojectid: TcxGridDBColumn;
    cgvPrevDisplayinvoicedueday: TcxGridDBColumn;
    cgvPrevDisplayamount: TcxGridDBColumn;
    cgvPrevDisplaydisc: TcxGridDBColumn;
    cgvPrevDisplaydiscamount: TcxGridDBColumn;
    cgvPrevDisplaydisc2: TcxGridDBColumn;
    cgvPrevDisplaydiscamount2: TcxGridDBColumn;
    cgvPrevDisplaytax: TcxGridDBColumn;
    cgvPrevDisplaytaxamount: TcxGridDBColumn;
    cgvPrevDisplayvoucher: TcxGridDBColumn;
    cgvPrevDisplayvoucheramount: TcxGridDBColumn;
    cgvPrevDisplaytotalamount: TcxGridDBColumn;
    cgvPrevDisplayoutstandingtotalamount: TcxGridDBColumn;
    cgvPrevDisplayflagkonsinyasi: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    cgPurchaseInvoiceDt: TcxGrid;
    cgvPurchaseInvoiceDt: TcxGridDBBandedTableView;
    cgvPurchaseInvoiceDtPurchaseInvoiceId: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtNo: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtItemId: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtItemId2: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtItemId3: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtItemId4: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtitemtext: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtExpiredDate: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtQty: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtPrice: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtDiscItem: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtDiscItemPrice: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtDiscItem2: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtDiscItemPrice2: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtvoucheritem: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtAmount: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtemployeeid: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtStatusColor: TcxGridDBBandedColumn;
    cgPurchaseInvoiceDtLevel1: TcxGridLevel;
    lblDisc1: TLabel;
    lbl2: TLabel;
    lblDisc2: TLabel;
    lbl4: TLabel;
    lbl16: TLabel;
    lblPurchaseTax: TLabel;
    lblPercent: TLabel;
    lblOtherAmountPlus: TLabel;
    lblTotal: TLabel;
    lblOutstanding: TLabel;
    dbeDisc1: TcxDBSpinEdit;
    edtDiscAmount: TcxCurrencyEdit;
    dbeDisc2: TcxDBSpinEdit;
    edtDiscAmount2: TcxCurrencyEdit;
    dbeVoucher: TcxDBTextEdit;
    dbeTax: TcxDBSpinEdit;
    edtTaxAmount: TcxCurrencyEdit;
    edtTotalAmount: TcxCurrencyEdit;
    btnPayment: TcxButton;
    edtPayment: TcxCurrencyEdit;
    edtOutstandingTotalAmount: TcxCurrencyEdit;
    pmGrid: TPopupMenu;
    DisplayStock1: TMenuItem;
    DisplayPrice1: TMenuItem;
    N1: TMenuItem;
    CopyItem1: TMenuItem;
    actStockInfo: TAction;
    actPriceInfo: TAction;
    actCopyItem: TAction;
    btnPrintBarcode: TcxButton;
    actPrintBarcode: TAction;
    dbeOtherAmountPlus: TcxDBCurrencyEdit;
    Label1: TLabel;
    dbePPH22: TcxDBSpinEdit;
    Label2: TLabel;
    edtPPH22Amount: TcxCurrencyEdit;
    cgvPrevDisplaypph22: TcxGridDBColumn;
    cgvPrevDisplaypph22amount: TcxGridDBColumn;
    dbeVoucherAmount: TcxDBCalcEdit;
    Label3: TLabel;
    dbetaxnumber: TcxDBTextEdit;
    Label4: TLabel;
    dbeTaxDate: TcxDBDateEdit;
    pcBody: TcxPageControl;
    tsInfo: TcxTabSheet;
    tsAddress: TcxTabSheet;
    tsInternalMemo: TcxTabSheet;
    tsStatementMemo: TcxTabSheet;
    edtAddress: TcxMemo;
    edtCityName: TcxExtLookupComboBox;
    edtProvinceName: TcxExtLookupComboBox;
    edtCountryName: TcxExtLookupComboBox;
    lblDueDate: TLabel;
    dbeInvoiceDueDay: TcxDBSpinEdit;
    lblPIExternal: TLabel;
    dbeVendorPurchaseInvoiceId: TcxDBTextEdit;
    lblWarehouse: TLabel;
    dblcbWarehouseId: TcxDBExtLookupComboBox;
    lblCurrency: TLabel;
    dblcCurrencyId: TcxDBExtLookupComboBox;
    dbeKurs: TcxDBCurrencyEdit;
    dblcPurchaseCategoryId: TcxDBExtLookupComboBox;
    pnlLeft: TPanel;
    pnlFooter: TPanel;
    lblKurs: TLabel;
    lblPurchaseCategory: TLabel;
    lblOutlet: TLabel;
    dblcOutletId: TcxDBExtLookupComboBox;
    dblcProject: TcxDBExtLookupComboBox;
    lblShipping: TLabel;
    dblcShippingId: TcxDBExtLookupComboBox;
    lblProject: TLabel;
    qryGetVendorPurchaseInvoiceId: TADOQuery;
    qryGetPIPayment: TADOQuery;
    qryGetPurchasePrice: TADOQuery;
    qryGetLowerVendorPrice: TADOQuery;
    qryGetPurchaseCategory: TADOQuery;
    lblAddress: TLabel;
    lblRR: TLabel;
    dbeReceivingRecordId: TcxDBButtonEdit;
    lblPONo: TLabel;
    dbePurchaseOrderId: TcxDBExtLookupComboBox;
    dbmStatementMemo: TcxDBMemo;
    dbmInternalMemo: TcxDBMemo;
    qryPurchaseInvoiceDt: TADOQuery;
    qryPurchaseInvoiceHd: TADOQuery;
    Label5: TLabel;
    dbeOtherAmountMinus: TcxDBCurrencyEdit;
    tsDipendencies: TcxTabSheet;
    cgvDependencies: TcxGridDBTableView;
    cgDependenciesLevel1: TcxGridLevel;
    cgDependencies: TcxGrid;
    cgvDependenciesTransaction: TcxGridDBColumn;
    cgvDependenciesCode: TcxGridDBColumn;
    cgvDependenciesDate: TcxGridDBColumn;
    lblContactPerson: TLabel;
    dbeContactPerson: TcxDBExtLookupComboBox;
    qryPrevVendorContact: TADOQuery;
    dsPrevVendorContact: TDataSource;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevVendorContact: TcxGridDBTableView;
    cgvPrevVendorContactVendorContactId: TcxGridDBColumn;
    cgvPrevVendorContactVendorId: TcxGridDBColumn;
    cgvPrevVendorContactVendorContactName: TcxGridDBColumn;
    cgvPrevVendorContactPhoneNo: TcxGridDBColumn;
    actPay: TAction;
    qryPrevPurchaseOrder: TADOQuery;
    dsPrevPurchaseOrder: TDataSource;
    cgvPrevPurchaseOrder: TcxGridDBTableView;
    cgvPrevPurchaseOrderPurchaseOrderId: TcxGridDBColumn;
    cgvPrevPurchaseOrderPurchaseOrderCode: TcxGridDBColumn;
    cgvPrevPurchaseOrderPurchaseOrderExternal: TcxGridDBColumn;
    cgvPrevPurchaseOrderPurchaseOrderDate: TcxGridDBColumn;
    cgvPrevPurchaseOrderTglKirimAwal: TcxGridDBColumn;
    cgvPrevPurchaseOrderTglKirimAkhir: TcxGridDBColumn;
    procedure qryPurchaseInvoiceDtBeforeEdit(DataSet: TDataSet);
    procedure qryPurchaseInvoiceDtBeforeInsert(DataSet: TDataSet);
    procedure qryPurchaseInvoiceHdAfterPost(DataSet: TDataSet);
    procedure qryPurchaseInvoiceHdBeforeInsert(DataSet: TDataSet);
    procedure qryPurchaseInvoiceHdNewRecord(DataSet: TDataSet);
    procedure qryPurchaseInvoiceHdBeforePost(DataSet: TDataSet);
    procedure qryPurchaseInvoiceHdAfterCancel(DataSet: TDataSet);
    procedure qryPurchaseInvoiceDtNewRecord(DataSet: TDataSet);
    procedure qryPurchaseInvoiceDtBeforePost(DataSet: TDataSet);
    procedure qryPurchaseInvoiceDtAfterPost(DataSet: TDataSet);
    procedure actPrintBarcodeExecute(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsPurchaseInvoiceDtDataChange(Sender: TObject; Field: TField);
    procedure dblcVendorIdPropertiesEditValueChanged(Sender: TObject);
    procedure dbePurchaseInvoiceIdPropertiesEditValueChanged(Sender: TObject);
    procedure actCopyItemExecute(Sender: TObject);
    procedure actPriceInfoExecute(Sender: TObject);
    procedure actStockInfoExecute(Sender: TObject);
    procedure cgvPurchaseInvoiceDtStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cgvPurchaseInvoiceDtDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure actPayExecute(Sender: TObject);
  private
    FLowerPriceList: string;
    FInsertState: boolean;
    procedure CalculateTotal(ARefreshPayment: boolean);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public

  end;

var
  fmPurchaseInvoice: TfmPurchaseInvoice;

implementation

{$R *.dfm}

uses
  untConstanta, untProcedure, dtmGlobal, //dtmGeneral, dtmShare,
  dtmInventory;
//  frmPurchaseInvoiceCashPayment, frmPrintBarcode, frmCopyItem, frmDisplayItemStock, frmDisplayItemPrice;

procedure TfmPurchaseInvoice.actCopyItemExecute(Sender: TObject);
begin
  inherited;

//  TfmCopyItem.ExecuteForm('', 0);
//  if qryPurchaseInvoiceDt.State in [dsInsert, dsEdit] then
//    qryPurchaseInvoiceDt.FieldByName('ItemId').AsString :=
//      dmInventory.qryItem.FieldByName('ItemId').AsString;
end;

procedure TfmPurchaseInvoice.actPayExecute(Sender: TObject);
begin
  inherited;

  if qryPurchaseInvoiceHd.State in [dsInsert, dsEdit] then
    qryPurchaseInvoiceHd.Post;
  if qryPurchaseInvoiceDt.State in [dsInsert, dsEdit] then
    qryPurchaseInvoiceHd.Post;
  if qryPurchaseInvoiceHd.IsEmpty then
    Exit;
  if edtOutstandingTotalAmount.EditValue = 0 then // Sudah lunas
    Exit;

//  if TfmPurchaseInvoiceCashPayment.ExecuteForm(
//    qryPurchaseInvoiceHd.FieldByName('PurchaseInvoiceId').AsString) = mrOk then
//  begin
//    CalculateTotal(True);
//  end;
end;

procedure TfmPurchaseInvoice.actPriceInfoExecute(Sender: TObject);
begin
  inherited;

//  if qryPurchaseInvoiceDt.FieldByName('ItemId').AsString <> '' then
//    TfmDisplayItemPrice.ExecuteForm(qryPurchaseInvoiceDt.FieldByName('ItemId').AsInteger, 0);
end;

procedure TfmPurchaseInvoice.actPrintBarcodeExecute(Sender: TObject);
begin
  inherited;

  if qryPurchaseInvoiceHd.IsEmpty then
    Exit;

//  if VarToStr(dbePurchaseInvoiceId.EditValue) <> '' then
//    TfmPrintBarcode.ExecuteForm(dbePurchaseInvoiceId.EditValue, 0);
end;

procedure TfmPurchaseInvoice.actStockInfoExecute(Sender: TObject);
begin
  inherited;

//  TfmDisplayItemStock.ExecuteForm(qryPurchaseInvoiceDt.FieldByName('ItemId').AsInteger, 0);
end;

procedure TfmPurchaseInvoice.CalculateTotal(ARefreshPayment: boolean);
var
  Amount: Currency;
begin
  {This Procedure call:
  1. Id Change
  2. Grid After Summary
  3. Header Datachange
  4. Payment Click
  5. Header onCancel}

  if not qryPurchaseInvoiceHd.Active then
    Exit;

  if cgvPurchaseInvoiceDt.DataController.Summary.FooterSummaryValues[1] = null then
    Amount := 0
  else
    Amount := cgvPurchaseInvoiceDt.DataController.Summary.FooterSummaryValues[1];

  edtDiscAmount.EditValue :=
    (Amount * qryPurchaseInvoiceHd.FieldByName('Disc').AsFloat) / 100;

  edtDiscAmount2.EditValue :=
    ((Amount - edtDiscAmount.EditValue) * qryPurchaseInvoiceHd.FieldByName('Disc2').AsFloat) / 100;

  edtTaxAmount.EditValue :=
    ((Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qryPurchaseInvoiceHd.FieldByName('VoucherAmount').AsCurrency) *
    qryPurchaseInvoiceHd.FieldByName('Tax').AsFloat) / 100;

  edtPPH22Amount.EditValue :=
    ((Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qryPurchaseInvoiceHd.FieldByName('VoucherAmount').AsCurrency +
    edtTaxAmount.EditValue) *
    qryPurchaseInvoiceHd.FieldByName('PPH22').AsFloat) / 100;

  edtTotalAmount.EditValue :=
    Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qryPurchaseInvoiceHd.FieldByName('VoucherAmount').AsCurrency +
    edtTaxAmount.EditValue + edtPPH22Amount.EditValue +
    qryPurchaseInvoiceHd.FieldByName('Meterai').AsCurrency;

  if ARefreshPayment then
  begin
    qryGetPIPayment.Close;
    qryGetPIPayment.Parameters[0].Value := qryPurchaseInvoiceHd.FieldByName('PurchaseInvoiceId').AsString;
    OpenIfClose(qryGetPIPayment);
    edtPayment.EditValue := qryGetPIPayment.FieldByName('TotalAmount').AsCurrency;
  end;

  edtOutstandingTotalAmount.EditValue := edtTotalAmount.EditValue - edtPayment.EditValue
end;

procedure TfmPurchaseInvoice.cgvPurchaseInvoiceDtDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;

  CalculateTotal(False);
end;

procedure TfmPurchaseInvoice.cgvPurchaseInvoiceDtStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBBandedTableView) do
  begin
    if ARecord.Values[GetColumnByFieldName('StatusColor').Index] = '1' then
      AStyle := dmGlobal.stRedLight;
  end;
end;

procedure TfmPurchaseInvoice.dbePurchaseInvoiceIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  CalculateTotal(True);
end;

procedure TfmPurchaseInvoice.dblcVendorIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

//  dmGeneral.qryPrevVendorShipping.Close;
//  if VarToStr(TcxDBExtLookupComboBox(Sender).EditValue) <> '' then
//  begin
//    edtAddress.EditValue := dmGeneral.cgvPrevVendorAddress.EditValue;
//    edtCityName.EditValue := dmGeneral.cgvPrevVendorCityId.EditValue;
////    edtProvinceName.EditValue := dmGeneral.cgvPrevVendorProvinceId.EditValue;
////    edtCountryName.EditValue := dmGeneral.cgvPrevVendorCountryId.EditValue;
//    dmGeneral.qryPrevVendorShipping.Params[0].Value := dmGeneral.cgvPrevVendorVendorId.EditValue;
//    OpenIfClose(dmGeneral.qryPrevVendorShipping);
//  end
//  else
//  begin
//    edtAddress.EditValue := null;
//    edtCityName.EditValue := null;
//    edtProvinceName.EditValue := null;
//    edtCountryName.EditValue := null;
//  end;
end;

procedure TfmPurchaseInvoice.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Field = nil then
    Exit;

  if (CompareText(Field.FieldName, 'VendorId') = 0) then
  begin
    qryPurchaseInvoiceHd.FieldByName('ShippingId').AsVariant := null;
    qryPurchaseInvoiceHd.FieldByName('PurchaseOrderId').AsVariant := null;
  end;

  if (CompareText(Field.FieldName, 'Disc') = 0) or
    (CompareText(Field.FieldName, 'Disc2') = 0) or
    (CompareText(Field.FieldName, 'VoucherAmount') = 0) or
    (CompareText(Field.FieldName, 'Tax') = 0) or
    (CompareText(Field.FieldName, 'PPH22') = 0) or
    (CompareText(Field.FieldName, 'Meterai') = 0) then
    CalculateTotal(False);
end;

procedure TfmPurchaseInvoice.dsPurchaseInvoiceDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if (Field = nil) then
    Exit;

  if qryPurchaseInvoiceDt.State in [dsInsert, dsEdit] then
  begin
    // Get default price
    if CompareText(Field.FieldName, 'ItemId') = 0 then
    begin
      qryGetPurchasePrice.Close;
      qryGetPurchasePrice.Parameters[0].Value := qryPurchaseInvoiceHd.FieldByName('VendorId').AsString;
      qryGetPurchasePrice.Parameters[1].Value := Field.Value;
      OpenIfClose(qryGetPurchasePrice);
      if not qryGetPurchasePrice.IsEmpty then
      begin
        qryPurchaseInvoiceDt.FieldByName('Price').AsCurrency := qryGetPurchasePrice.FieldByName('Price').AsCurrency;
        qryPurchaseInvoiceDt.FieldByName('DiscItem').AsFloat := qryGetPurchasePrice.FieldByName('DiscItem').AsFloat;
        qryPurchaseInvoiceDt.FieldByName('DiscItemPrice').AsCurrency := qryGetPurchasePrice.FieldByName('DiscItemPrice').AsCurrency;
      end;
    end;

    // Calculate Detail
    if (CompareText(Field.FieldName, 'Qty') = 0) or
      (CompareText(Field.FieldName, 'Price') = 0) or
      (CompareText(Field.FieldName, 'VoucherItem') = 0) or
      (CompareText(Field.FieldName, 'DiscItem') = 0) or
      (CompareText(Field.FieldName, 'DiscItem2') = 0) then
    begin
      // Jika disc lebih besar dari 0%
      if qryPurchaseInvoiceDt.FieldByName('DiscItem').AsFloat >= 0 then
        qryPurchaseInvoiceDt.FieldByName('DiscItemPrice').AsCurrency :=
          (qryPurchaseInvoiceDt.FieldByName('Price').AsCurrency *
          qryPurchaseInvoiceDt.FieldByName('DiscItem').AsFloat) / 100;

      if qryPurchaseInvoiceDt.FieldByName('DiscItem2').AsFloat >= 0 then
        qryPurchaseInvoiceDt.FieldByName('DiscItemPrice2').AsCurrency :=
          ((qryPurchaseInvoiceDt.FieldByName('Price').AsCurrency -
          qryPurchaseInvoiceDt.FieldByName('DiscItemPrice').AsCurrency) *
          qryPurchaseInvoiceDt.FieldByName('DiscItem2').AsFloat) / 100;

      qryPurchaseInvoiceDt.FieldByName('Amount').AsCurrency :=
        qryPurchaseInvoiceDt.FieldByName('Qty').AsFloat *
        (qryPurchaseInvoiceDt.FieldByName('Price').AsCurrency -
        qryPurchaseInvoiceDt.FieldByName('DiscItemPrice').AsCurrency -
        qryPurchaseInvoiceDt.FieldByName('DiscItemPrice2').AsCurrency -
        qryPurchaseInvoiceDt.FieldByName('VoucherItem').AsCurrency);
    end;
  end;
end;

procedure TfmPurchaseInvoice.InitForm;
begin
  inherited;

  // Init Print
  DefaultPrimaryKeyField := 'PurchaseInvoiceId';
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PI);

  if dmGlobal.SettingLocal.LanguageFlag = 1 then
  begin
    btnPayment.Caption := 'Bayar';
    btnPayment.Hint := 'Bayar (F3)';
  end;

  SetReadOnly(edtAddress, True, COLOR_INACTIVE);
  SetReadOnly(edtCityName, True, COLOR_INACTIVE);
  SetReadOnly(edtProvinceName, True, COLOR_INACTIVE);
  SetReadOnly(edtCountryName, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchaseInvoiceId, True, COLOR_INACTIVE);
  SetReadOnly(edtDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(edtDiscAmount2, True, COLOR_INACTIVE);
  SetReadOnly(edtTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(edtPPH22Amount, True, COLOR_INACTIVE);
  SetReadOnly(edtTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(edtPayment, True, COLOR_INACTIVE);
  SetReadOnly(edtOutstandingTotalAmount, True, COLOR_INACTIVE);

  dbeDisc1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  edtDiscAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeDisc2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  edtDiscAmount2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeVoucherAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTax.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  edtTaxAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbePPH22.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  edtPPH22Amount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeOtherAmountPlus.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtPayment.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtOutstandingTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtDiscItem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtDiscItemPrice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
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
  TcxCurrencyEditProperties(cgvPrevDisplayoutstandingtotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmInventory.qryVendor, True);
  OpenIfClose(dmInventory.qryWarehouse);
  OpenIfClose(dmInventory.qryOutlet);
  OpenIfClose(dmInventory.qryProject);
  OpenIfClose(dmInventory.qryItem, True);
//  OpenIfClose(dmGeneral.qryPurchaseCategory);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  MonthYearValueChange(nil); // -> Trigger qryPurchaseInvoiceHd
  OpenIfClose(qryPurchaseInvoiceDt);
end;

procedure TfmPurchaseInvoice.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryPurchaseInvoiceHd.State in [dsEdit, dsInsert]) or
    (qryPurchaseInvoiceDt.State in [dsEdit, dsInsert]) then
    Abort;

  qryPurchaseInvoiceHd.Close;
  qryPurchaseInvoiceHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  qryPurchaseInvoiceHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  OpenIfClose(qryPurchaseInvoiceHd, True, True);
end;

procedure TfmPurchaseInvoice.qryPurchaseInvoiceDtAfterPost(DataSet: TDataSet);
begin
  inherited;

  // Save lower price info
  if FLowerPriceList <> '' then
  begin
    qryPurchaseInvoiceHd.Edit;
    if qryPurchaseInvoiceHd.FieldByName('InternalMemo').AsString <> '' then
      qryPurchaseInvoiceHd.FieldByName('InternalMemo').AsString :=
        qryPurchaseInvoiceHd.FieldByName('InternalMemo').AsString + #13#10;
    qryPurchaseInvoiceHd.FieldByName('InternalMemo').AsString :=
      qryPurchaseInvoiceHd.FieldByName('InternalMemo').AsString +
      Dataset.FieldByName('No').AsString +
      '. ' + qryGetLowerVendorPrice.FieldByName('ItemName').AsString +
      ' = ' + FLowerPriceList;
    qryPurchaseInvoiceHd.Post;
  end;
end;

procedure TfmPurchaseInvoice.qryPurchaseInvoiceDtBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if qryPurchaseInvoiceHd.State in [dsInsert, dsEdit] then
    qryPurchaseInvoiceHd.Post;
  if qryPurchaseInvoiceHd.IsEmpty then
    Abort;
end;

procedure TfmPurchaseInvoice.qryPurchaseInvoiceDtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
//  if TUniQuery(DataSet).MasterSource <> nil then
//    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
//      TUniQuery(DataSet).MasterSource.DataSet.Post;

  if qryPurchaseInvoiceHd.IsEmpty then
    Abort;
end;

procedure TfmPurchaseInvoice.qryPurchaseInvoiceDtBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  // Item Inactive
  Dataset.FieldByName('StatusColor').AsInteger := 0;
//  if dmShare.OptionWarningItemInactive then
//  begin
//    dmShare.qryGetItemFlagInactive.Close;
//    dmShare.qryGetItemFlagInactive.Parameters[0].Value := DataSet.FieldByName('ItemId').AsString;
//    OpenIfClose(dmShare.qryGetItemFlagInactive);
//    if dmShare.qryGetItemFlagInactive.FieldByName('FlagInactive').AsString = '1' then
//    begin
//      if MessageDlg(ASK_ITEM_INACTIVE, mtInformation, [mbYes, mbNo], 0) = mrNo then
//        Abort;
//      Dataset.FieldByName('StatusColor').AsInteger := 1;
//    end;
//  end;

  // Check high purchase price
//  if dmShare.OptionWarningHighPuchasePrice then
//  begin
//    FLowerPriceList := '';
//    qryGetLowerVendorPrice.Close;
//    qryGetLowerVendorPrice.Parameters[0].Value := DataSet.FieldByName('ItemId').AsString;
//    qryGetLowerVendorPrice.Parameters[1].Value := qryPurchaseInvoiceHd.FieldByName('VendorId').AsString;
//    qryGetLowerVendorPrice.Parameters[2].Value := DataSet.FieldByName('Price').AsCurrency;
//    OpenIfClose(qryGetLowerVendorPrice);
//    if not qryGetLowerVendorPrice.IsEmpty then
//    begin
//      if MessageDlg(ASK_PURCHASE_PRICE_HIGH, mtInformation, [mbYes, mbNo], 0) = mrNo then
//        Abort;
//      Dataset.FieldByName('StatusColor').AsInteger := 1;
//      while not qryGetLowerVendorPrice.Eof do
//      begin
//        if FLowerPriceList <> '' then
//          FLowerPriceList := FLowerPriceList + ' ';
//        FLowerPriceList := FLowerPriceList + qryGetLowerVendorPrice.FieldByName('VendorName').AsString +
//          ' (' + FormatFloat(',.00', qryGetLowerVendorPrice.FieldByName('Price').AsCurrency) + ')';
//        qryGetLowerVendorPrice.Next;
//      end;
//    end;
//  end;

  Dataset.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPurchaseInvoice.qryPurchaseInvoiceDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
//  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
//    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('Price').AsCurrency := 0;
  DataSet.FieldByName('ExpiredDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('StatusColor').AsString := '0';
end;

procedure TfmPurchaseInvoice.qryPurchaseInvoiceHdAfterCancel(
  DataSet: TDataSet);
begin
  inherited;

  CalculateTotal(False);
  FInsertState := False;
end;

procedure TfmPurchaseInvoice.qryPurchaseInvoiceHdAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
//    dmGlobal.SetLastTransactionId('PurchaseInvoiceHd', qryGetPurchaseCategory.FieldByName('Prefix').AsString,
//      DataSet.FieldByName('PurchaseInvoiceDate').AsDateTime, dmShare.OptionPI.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmPurchaseInvoice.qryPurchaseInvoiceHdBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmPurchaseInvoice.qryPurchaseInvoiceHdBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName('CurrencyId').AsString = 'IDR' then
    Dataset.FieldByName('Kurs').AsVariant := 1;
  if Dataset.FieldByName('Kurs').AsVariant = 0 then
    Dataset.FieldByName('Kurs').AsVariant := 1;

  // Cek kategori
  if DataSet.FieldByName('PurchaseCategoryId').IsNull then
  begin
    MessageDlg(MSG_CATEGORY_ISNULL, mtInformation, [mbOk], 0);
    Abort;
  end;

//  if dmShare.OptionPIExternalCannotDuplicate then
//  begin
//    if DataSet.FieldByName('VendorPurchaseInvoiceId').AsString <> '' then
//    begin
//      qryGetVendorPurchaseInvoiceId.Close;
//      qryGetVendorPurchaseInvoiceId.Parameters[0].Value := DataSet.FieldByName('VendorPurchaseInvoiceId').AsString;
//      qryGetVendorPurchaseInvoiceId.Parameters[1].Value := DataSet.FieldByName('PurchaseInvoiceId').AsString;
//      OpenIfClose(qryGetVendorPurchaseInvoiceId, True);
//      if not qryGetVendorPurchaseInvoiceId.IsEmpty then
//      begin
//        MessageDlg(MSG_DUPLICATE_PI_ID_EXTERNAL, mtInformation, [mbOk], 0);
//        Abort;
//      end;
//    end;
//  end;

//  // Insert Id
//  qryGetPurchaseCategory.Close;
//  qryGetPurchaseCategory.Parameters[0].Value := DataSet.FieldByName('PurchaseCategoryId').AsString;
//  OpenIfClose(qryGetPurchaseCategory);
//  if FInsertState then
//    DataSet.FieldByName('PurchaseInvoiceId').AsString :=
//      dmGlobal.GetLastTransactionId('PurchaseInvoiceHd', qryGetPurchaseCategory.FieldByName('Prefix').AsString,
//        dmShare.OptionPI.Length, DataSet.FieldByName('PurchaseInvoiceDate').AsDateTime, dmShare.OptionPI.RunYear);

  if DataSet.FieldByName('VoucherAmount').IsNull  then
    DataSet.FieldByName('VoucherAmount').AsInteger := 0;
  if DataSet.FieldByName('Meterai').IsNull  then
    DataSet.FieldByName('Meterai').AsInteger := 0;

  // Last Employee modified
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPurchaseInvoice.qryPurchaseInvoiceHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('PurchaseInvoiceDate').AsVariant := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('WarehouseId').AsVariant := dmInventory.qryWarehouse.FieldByName('WarehouseId').AsVariant;
  Dataset.FieldByName('StatusApprove').AsInteger := Self.Tag;
  Dataset.FieldByName('PurchaseCategoryId').AsString := 'NR';
  Dataset.FieldByName('CurrencyId').AsString := 'IDR';
  Dataset.FieldByName('Kurs').AsInteger := 1;
  DataSet.FieldByName('Amount').AsCurrency := 0;
  DataSet.FieldByName('Disc').AsCurrency := 0;
  DataSet.FieldByName('DiscAmount').AsCurrency := 0;
  DataSet.FieldByName('Disc2').AsCurrency := 0;
  DataSet.FieldByName('DiscAmount2').AsCurrency := 0;
  DataSet.FieldByName('VoucherAmount').AsCurrency := 0;
  DataSet.FieldByName('Tax').AsCurrency := 0;
  DataSet.FieldByName('TaxAmount').AsCurrency := 0;
  DataSet.FieldByName('TaxDate').AsVariant := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('PPH22').AsCurrency := 0;
  DataSet.FieldByName('PPH22Amount').AsCurrency := 0;
  DataSet.FieldByName('Meterai').AsCurrency := 0;
  DataSet.FieldByName('TotalAmount').AsCurrency := 0;
  DataSet.FieldByName('OutstandingTotalAmount').AsCurrency := 0;
  DataSet.FieldByName('FlagKonsinyasi').AsString := '0';
  DataSet.FieldByName('CounterPrint').AsInteger := 0;
end;

procedure TfmPurchaseInvoice.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryVendor, True);
  LockRefresh(dmInventory.qryWarehouse);
//  LockRefresh(dmInventory.qryOutlet);
//  LockRefresh(dmInventory.qryProject);
  LockRefresh(dmInventory.qryItem, True);
//  LockRefresh(dmGeneral.qryPrevVendorShipping);
//  LockRefresh(dmGeneral.qryPurchaseCategory);
  LockRefresh(dmGlobal.qryCurrencyMaster);
  LockRefresh(qryPurchaseInvoiceHd, True);
  LockRefresh(qryPurchaseInvoiceDt);
end;

end.





