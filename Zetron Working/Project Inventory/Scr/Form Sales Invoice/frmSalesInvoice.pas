unit frmSalesInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, Math,

  // Auto Generate
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxSpinEdit, cxDBExtLookupComboBox, cxCalendar, cxCalc, cxCurrencyEdit,
  cxImageComboBox, MemDS, DBAccess, Uni, cxGridDBTableView, cxDBEdit, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxMemo, dxDockControl, untIvPositionDevExpress,
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
  TfmSalesInvoice = class(TFormUniTransactionEx)
    lblCustomer: TLabel;
    dblcCustomerId: TcxDBExtLookupComboBox;
    dblcCustomerId2: TcxDBExtLookupComboBox;
    edtAddress: TcxMemo;
    edtCityName: TcxExtLookupComboBox;
    edtProvinceName: TcxExtLookupComboBox;
    edtCountryName: TcxExtLookupComboBox;
    lblSalesInvoiceId: TLabel;
    dbeSalesInvoiceDate: TcxDBDateEdit;
    dbeInvoiceDueDay: TcxDBSpinEdit;
    lblVendorPurchaseInvoiceId: TLabel;
    dbeSalesInvoiceId: TcxDBTextEdit;
    dbeSalesInvoiceIdInternal: TcxDBTextEdit;
    lblWarehouse: TLabel;
    dblcbWarehouseId: TcxDBExtLookupComboBox;
    dsSalesInvoiceDt: TDataSource;
    cgSalesInvoiceDt: TcxGrid;
    cgvSalesInvoiceDt: TcxGridDBBandedTableView;
    cgvSalesInvoiceDtSalesInvoiceId: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtNo: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtItemId: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtItemId2: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtItemId3: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtItemId4: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtitemtext: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtExpiredDate: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtQty: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtPrice: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtPriceDisplay: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtDiscItem: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtDiscItemPrice: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtDiscItem2: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtDiscItemPrice2: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtvoucheritem: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtAmount: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtemployeeid: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtStatusColor: TcxGridDBBandedColumn;
    cgSalesInvoiceDtLevel1: TcxGridLevel;
    pnlTop: TPanel;
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
    btnPayment: TcxButton;
    edtPayment: TcxCurrencyEdit;
    lblOutstanding: TLabel;
    edtOutstandingTotalAmount: TcxCurrencyEdit;
    dbmStatementMemo: TcxDBMemo;
    dbmInternalMemo: TcxDBMemo;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplaystatusapprove: TcxGridDBColumn;
    cgvPrevDisplaysalesinvoiceid: TcxGridDBColumn;
    cgvPrevDisplaysalesinvoicedate: TcxGridDBColumn;
    cgvPrevDisplaycustomerid: TcxGridDBColumn;
    cgvPrevDisplaysalesinvoiceidinternal: TcxGridDBColumn;
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
    cgPrevDisplayLevel1: TcxGridLevel;
    pmPayment: TPopupMenu;
    mnuPay: TMenuItem;
    mnuListPayment: TMenuItem;
    actPay: TAction;
    actListPayment: TAction;
    actStockInfo: TAction;
    actPriceInfo: TAction;
    pmGrid: TPopupMenu;
    DisplayStockInfo1: TMenuItem;
    DisplayPriceInfo1: TMenuItem;
    cgvSalesInvoiceDtsalesorderid: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtsalesorderno: TcxGridDBBandedColumn;
    qrySalesInvoiceHd: TUniQuery;
    qryGetSalesInvoiceIdInternal: TUniQuery;
    qryGetSIPayment: TUniQuery;
    qrySalesInvoiceDt: TUniQuery;
    qryGetSalePrice: TUniQuery;
    qryGetPriceList: TUniQuery;
    qryGetStockOnHandQty: TUniQuery;
    qryGetItemInfo: TUniQuery;
    qryGetSalesCategory: TUniQuery;
    cgvPrevDisplaypph22: TcxGridDBColumn;
    cgvPrevDisplaypph22amount: TcxGridDBColumn;
    dbeVoucherAmount: TcxDBCalcEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbetaxnumber: TcxDBTextEdit;
    dbetaxdate: TcxDBDateEdit;
    lblPPh22: TLabel;
    dbePPH22: TcxDBSpinEdit;
    lblPPh22Percent: TLabel;
    edtPPH22Amount: TcxCurrencyEdit;
    lblOther: TLabel;
    dbeMeterai: TcxDBCurrencyEdit;
    lblRoundUp: TLabel;
    edtRoundUp: TcxCurrencyEdit;
    cgvPrevDisplaysalescategoryid: TcxGridDBColumn;
    procedure qrySalesInvoiceHdBeforeInsert(DataSet: TDataSet);
    procedure qrySalesInvoiceHdAfterPost(DataSet: TDataSet);
    procedure actPayExecute(Sender: TObject);
    procedure actPriceInfoExecute(Sender: TObject);
    procedure actStockInfoExecute(Sender: TObject);
    procedure cgvSalesInvoiceDtDataControllerSummaryAfterSummary(ASender: TcxDataSummary);
    procedure cgvSalesInvoiceDtStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure dbeSalesInvoiceIdPropertiesEditValueChanged(Sender: TObject);
    procedure dblcCustomerIdPropertiesEditValueChanged(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsSalesInvoiceDtDataChange(Sender: TObject; Field: TField);
    procedure qrySalesInvoiceDtBeforeEdit(DataSet: TDataSet);
    procedure qrySalesInvoiceDtBeforeInsert(DataSet: TDataSet);
    procedure qrySalesInvoiceDtBeforePost(DataSet: TDataSet);
    procedure qrySalesInvoiceDtNewRecord(DataSet: TDataSet);
    procedure qrySalesInvoiceHdAfterCancel(DataSet: TDataSet);
    procedure qrySalesInvoiceHdBeforePost(DataSet: TDataSet);
    procedure qrySalesInvoiceHdNewRecord(DataSet: TDataSet);
    procedure qrySalesInvoiceHdBeforeEdit(DataSet: TDataSet);
  private
    FOldItem: string;
    FOldQty: real;
    FInsertState: boolean;
    procedure CalculateTotal(ARefreshPayment: boolean);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public

  end;

var
  fmSalesInvoice: TfmSalesInvoice;

implementation

{$R *.dfm}

uses
  untConstanta, untConstantaPOS, untProcedure, dtmGlobal, dtmGeneral, dtmShare,
  dtmInventory, frmPrintFastReport, frmSalesInvoiceCashPayment,
  frmDisplayItemStock, frmDisplayItemPrice;

procedure TfmSalesInvoice.actPayExecute(Sender: TObject);
begin
  inherited;

  if qrySalesInvoiceHd.State in [dsInsert, dsEdit] then
    qrySalesInvoiceHd.Post;
  if qrySalesInvoiceDt.State in [dsInsert, dsEdit] then
    qrySalesInvoiceHd.Post;
  if qrySalesInvoiceHd.IsEmpty then
    Exit;
  if edtOutstandingTotalAmount.EditValue = 0 then
    Exit;

  if TfmSalesInvoiceCashPayment.ExecuteForm(
    qrySalesInvoiceHd.FieldByName('SalesInvoiceId').AsString) = mrOk then
  begin
    LockRefresh(qrySalesInvoiceHd);
    CalculateTotal(True);
  end;
end;

procedure TfmSalesInvoice.actPriceInfoExecute(Sender: TObject);
begin
  inherited;

  if dmShare.IsAllowViewCOGS then
    if qrySalesInvoiceDt.FieldByName('ItemId').AsString <> '' then
      TfmDisplayItemPrice.ExecuteForm(qrySalesInvoiceDt.FieldByName('ItemId').AsVariant);
end;

procedure TfmSalesInvoice.actStockInfoExecute(Sender: TObject);
begin
  inherited;

  if qrySalesInvoiceDt.FieldByName('ItemId').AsString <> '' then
    TfmDisplayItemStock.ExecuteForm(qrySalesInvoiceDt.FieldByName('ItemId').AsVariant);
end;

procedure TfmSalesInvoice.CalculateTotal(ARefreshPayment: boolean);
var
  Amount, Total: Currency;
begin
  if not qrySalesInvoiceHd.Active then
    Exit;

  if cgvSalesInvoiceDt.DataController.Summary.FooterSummaryValues[1] = null then
    Amount := 0
  else
    Amount := cgvSalesInvoiceDt.DataController.Summary.FooterSummaryValues[1];

  edtDiscAmount.EditValue :=
    (Amount * qrySalesInvoiceHd.FieldByName('Disc').AsFloat) / 100;

  edtDiscAmount2.EditValue :=
    ((Amount - edtDiscAmount.EditValue) * qrySalesInvoiceHd.FieldByName('Disc2').AsFloat) / 100;

  edtTaxAmount.EditValue :=
    ((Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qrySalesInvoiceHd.FieldByName('VoucherAmount').AsCurrency) *
    qrySalesInvoiceHd.FieldByName('Tax').AsFloat) / 100;

  edtPPH22Amount.EditValue :=
    ((Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qrySalesInvoiceHd.FieldByName('VoucherAmount').AsCurrency +
    edtTaxAmount.EditValue) *
    qrySalesInvoiceHd.FieldByName('PPH22').AsFloat) / 100;

  Total :=
    Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qrySalesInvoiceHd.FieldByName('VoucherAmount').AsCurrency +
    edtTaxAmount.EditValue + edtPPH22Amount.EditValue +
    qrySalesInvoiceHd.FieldByName('Meterai').AsCurrency;

  if dmShare.OptionSalesRoundingValue <> 0 then
    edtRoundUp.EditValue := (Ceil(Total / dmShare.OptionSalesRoundingValue) * dmShare.OptionSalesRoundingValue) - Total
  else
    edtRoundUp.EditValue := 0;

  edtTotalAmount.EditValue := Total + edtRoundUp.EditValue;

  if ARefreshPayment then
  begin
    qryGetSIPayment.Close;
    qryGetSIPayment.Params[0].Value := qrySalesInvoiceHd.FieldByName('SalesInvoiceId').AsString;
    OpenIfClose(qryGetSIPayment);
    edtPayment.EditValue := qryGetSIPayment.FieldByName('TotalAmount').AsCurrency;
  end;

  edtOutstandingTotalAmount.EditValue := edtTotalAmount.EditValue - edtPayment.EditValue;
end;

procedure TfmSalesInvoice.cgvSalesInvoiceDtDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;

  CalculateTotal(False);
end;

procedure TfmSalesInvoice.cgvSalesInvoiceDtStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  if not (ARecord.Values[cgvSalesInvoiceDtStatusColor.Index] = null) then
    if (ARecord.Values[cgvSalesInvoiceDtStatusColor.Index] <> '0')then
      AStyle := dmGlobal.stRedLight;
end;

procedure TfmSalesInvoice.dbeSalesInvoiceIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  CalculateTotal(True);
end;

procedure TfmSalesInvoice.dblcCustomerIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  dmGeneral.qryPrevCustomerShipping.Close;
  if VarToStr(TcxDBExtLookupComboBox(Sender).EditValue) <> '' then
  begin
    edtAddress.EditValue := dmGeneral.cgvPrevCustomerAddress.EditValue;
    edtCityName.EditValue := dmGeneral.cgvPrevCustomerCityId.EditValue;
{ TODO : province }//    edtProvinceName.EditValue := dmGeneral.cgvPrevCustomerProvinceId.EditValue;
//    edtCountryName.EditValue := dmGeneral.cgvPrevCustomerCountryId.EditValue;
    dmGeneral.qryPrevCustomerShipping.Params[0].Value := dmGeneral.cgvPrevCustomerCustomerId.EditValue;
    OpenIfClose(dmGeneral.qryPrevCustomerShipping);
  end
  else
  begin
    edtAddress.EditValue := null;
    edtCityName.EditValue := null;
    edtProvinceName.EditValue := null;
    edtCountryName.EditValue := null;
  end;
end;

procedure TfmSalesInvoice.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Field = nil then
    Exit;
  if (CompareText(Field.FieldName, 'Disc') = 0) or
    (CompareText(Field.FieldName, 'Disc2') = 0) or
    (CompareText(Field.FieldName, 'VoucherAmount') = 0) or
    (CompareText(Field.FieldName, 'Tax') = 0) or
    (CompareText(Field.FieldName, 'PPH22') = 0) or
    (CompareText(Field.FieldName, 'Meterai') = 0) then
    CalculateTotal(False);
  if (CompareText(Field.FieldName, 'CustomerId') = 0) then
    qrySalesInvoiceHd.FieldByName('ShippingId').AsVariant := null;
end;

procedure TfmSalesInvoice.dsSalesInvoiceDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if (Field = nil) then
    Exit;

  if qrySalesInvoiceDt.State in [dsInsert, dsEdit] then
  begin
    // Get default price
    if CompareText(Field.FieldName, 'ItemId') = 0 then
    begin
      if dmShare.OptionSalesUsingPriceList then
      begin
        // default harga dari price list
        qryGetPriceList.Close;
        qryGetPriceList.Params[0].Value := Field.Value;
        OpenIfClose(qryGetPriceList);
        if not qryGetPriceList.IsEmpty then
        begin
          qrySalesInvoiceDt.FieldByName('Price').AsCurrency := qryGetPriceList.FieldByName('Price1').AsCurrency;
          qrySalesInvoiceDt.FieldByName('DiscItem').AsFloat := 0;
          qrySalesInvoiceDt.FieldByName('DiscItemPrice').AsCurrency := 0;
          qrySalesInvoiceDt.FieldByName('DiscItemPrice2').AsCurrency := 0;
        end;
      end
      else
      begin
        // default harga dari sale price per customer
        qryGetSalePrice.Close;
        qryGetSalePrice.Params[0].Value := qrySalesInvoiceHd.FieldByName('CustomerId').AsString;
        qryGetSalePrice.Params[1].Value := Field.Value;
        OpenIfClose(qryGetSalePrice);
        if not qryGetSalePrice.IsEmpty then
        begin
          qrySalesInvoiceDt.FieldByName('Price').AsCurrency := qryGetSalePrice.FieldByName('Price').AsCurrency;
          qrySalesInvoiceDt.FieldByName('DiscItem').AsFloat := qryGetSalePrice.FieldByName('DiscItem').AsFloat;
          qrySalesInvoiceDt.FieldByName('DiscItemPrice').AsCurrency := qryGetSalePrice.FieldByName('DiscItemPrice').AsCurrency;
          qrySalesInvoiceDt.FieldByName('DiscItemPrice2').AsCurrency := qryGetSalePrice.FieldByName('DiscItemPrice2').AsCurrency;
        end;
      end;
    end;

    // Calculate
    if (CompareText(Field.FieldName, 'Qty') = 0) or
      (CompareText(Field.FieldName, 'Price') = 0) or
      (CompareText(Field.FieldName, 'VoucherItem') = 0) or
      (CompareText(Field.FieldName, 'DiscItem') = 0) or
      (CompareText(Field.FieldName, 'DiscItem2') = 0) then
    begin
      if qrySalesInvoiceDt.FieldByName('DiscItem').AsFloat >= 0 then
        qrySalesInvoiceDt.FieldByName('DiscItemPrice').AsCurrency :=
          (qrySalesInvoiceDt.FieldByName('Price').AsCurrency *
          qrySalesInvoiceDt.FieldByName('DiscItem').AsFloat) / 100;

      if qrySalesInvoiceDt.FieldByName('DiscItem2').AsFloat >= 0 then
        qrySalesInvoiceDt.FieldByName('DiscItemPrice2').AsCurrency :=
          ((qrySalesInvoiceDt.FieldByName('Price').AsCurrency -
          qrySalesInvoiceDt.FieldByName('DiscItemPrice').AsCurrency) *
          qrySalesInvoiceDt.FieldByName('DiscItem2').AsFloat) / 100;

      qrySalesInvoiceDt.FieldByName('Amount').AsCurrency :=
        qrySalesInvoiceDt.FieldByName('Qty').AsFloat *
        (qrySalesInvoiceDt.FieldByName('Price').AsCurrency -
        qrySalesInvoiceDt.FieldByName('DiscItemPrice').AsCurrency -
        qrySalesInvoiceDt.FieldByName('DiscItemPrice2').AsCurrency -
        qrySalesInvoiceDt.FieldByName('VoucherItem').AsCurrency);
    end;

    if CompareText(Field.FieldName, 'Price') = 0 then
      qrySalesInvoiceDt.FieldByName('PriceDisplay').AsCurrency :=
        qrySalesInvoiceDt.FieldByName('Price').AsCurrency;
  end;
end;

procedure TfmSalesInvoice.InitForm;
begin
  inherited;

  SetReadOnly(edtAddress, True, COLOR_INACTIVE);
  SetReadOnly(edtCityName, True, COLOR_INACTIVE);
  SetReadOnly(edtProvinceName, True, COLOR_INACTIVE);
  SetReadOnly(edtCountryName, True, COLOR_INACTIVE);
  SetReadOnly(dbeSalesInvoiceId, True, COLOR_INACTIVE);
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
  dbeMeterai.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtPayment.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtOutstandingTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtDiscItem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtDiscItemPrice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
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

  OpenIfClose(dmGeneral.qryCustomer, True);
  OpenIfClose(dmGeneral.qryWarehouse);
  OpenIfClose(dmGeneral.qryOutlet);
  OpenIfClose(dmGeneral.qryProject);
  OpenIfClose(dmGeneral.qryPrevSalesman);
  OpenIfClose(dmInventory.qryItem, True);
  OpenIfClose(dmGeneral.qrySalesCategory);
  OpenIfClose(dmGlobal.qryCurrencyMaster);
  
  MonthYearValueChange(nil); // -> Trigger qrySalesInvoiceHd
  OpenIfClose(qrySalesInvoiceDt);
end;

procedure TfmSalesInvoice.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qrySalesInvoiceHd.State in [dsEdit, dsInsert]) or
    (qrySalesInvoiceDt.State in [dsEdit, dsInsert]) then
    Abort;

  qrySalesInvoiceHd.Close;
  qrySalesInvoiceHd.Params[0].Value := StrToInt(cbYear.Text);
  qrySalesInvoiceHd.Params[1].Value := cbMonth.ItemIndex + 1;
  if dmShare.OptionShowAutomaticSalesOnSI then
    qrySalesInvoiceHd.Params[2].Value := '%'
  else
    qrySalesInvoiceHd.Params[2].Value := '0';
  OpenIfClose(qrySalesInvoiceHd, True, True);
end;

procedure TfmSalesInvoice.qrySalesInvoiceDtBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if qrySalesInvoiceHd.State in [dsInsert, dsEdit] then
    qrySalesInvoiceHd.Post;
  if qrySalesInvoiceHd.IsEmpty then
    Abort;

  FOldItem := Dataset.FieldByName('ItemId').AsVariant;
  FOldQty := Dataset.FieldByName('Qty').AsVariant;
end;

procedure TfmSalesInvoice.qrySalesInvoiceDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;

  if qrySalesInvoiceHd.IsEmpty then
    Abort;

  FOldItem := '';
  FOldQty := 0;
end;

procedure TfmSalesInvoice.qrySalesInvoiceDtBeforePost(DataSet: TDataSet);
var
  DoCheckStock: boolean;
  IsStockMinus: boolean;
begin
  inherited;

  if DataSet.FieldByName('ItemId').IsNull then
    Abort;

  // Initialize
  Dataset.FieldByName('StatusColor').AsInteger := 0;
  qryGetItemInfo.Close;
  qryGetItemInfo.Params[0].Value := qrySalesInvoiceDt.FieldByName('ItemId').AsString;
  OpenIfClose(qryGetItemInfo);

  // Cek Item Inactive
  if dmShare.OptionWarningItemInactive then
  begin
    if qryGetItemInfo.FieldByName('FlagInactive').AsString = '1' then
    begin
      if MessageDlg(ASK_ITEM_INACTIVE, mtInformation, [mbYes, mbNo], 0) = mrNo then
        Abort;
      Dataset.FieldByName('StatusColor').AsInteger := 1;
    end;
  end;

  // Cek Item Bonus
  if dmShare.OptionWarningBonusItem then
  begin
    if DataSet.FieldByName('Price').AsCurrency = 0 then
    begin
      if MessageDlg(ASK_ITEM_BONUS, mtInformation, [mbYes, mbNo], 0) = mrNo then
        Abort;
      Dataset.FieldByName('StatusColor').AsInteger := 2;
    end;
  end;

  // Cek Qty minus
  if (qryGetItemInfo.FieldByName('StatusItem').AsInteger = 1) or
    (qryGetItemInfo.FieldByName('StatusItem').AsInteger = 3) then
  begin
    if dmShare.OptionWarningQtyMinus then
    begin
      DoCheckStock := False;
      if DataSet.State in [dsEdit] then
      begin
        if (FOldItem <> Dataset.FieldByName('ItemId').AsString) or
          (FOldQty <> Dataset.FieldByName('Qty').AsVariant) then
          DoCheckStock := True;
      end
      else
        DoCheckStock := True;

      IsStockMinus := False;
      if DoCheckStock then
      begin
        qryGetStockOnHandQty.Close;
        qryGetStockOnHandQty.Params[0].Value := qrySalesInvoiceHd.FieldByName('WarehouseId').AsString;
        qryGetStockOnHandQty.Params[1].Value := Dataset.FieldByName('ItemId').AsString;
        OpenIfClose(qryGetStockOnHandQty);
        if qryGetStockOnHandQty.IsEmpty then
          IsStockMinus := True
        else
        begin
          // Item berubah
          if (FOldItem <> Dataset.FieldByName('ItemId').AsString) and
            (qryGetStockOnHandQty.FieldByName('EndQty').AsFloat < Dataset.FieldByName('Qty').AsFloat) then
            IsStockMinus := True;

          // Item tidak berubah tetapi Qty berubah
          if (FOldItem = Dataset.FieldByName('ItemId').AsString) and
            (FOldQty <> Dataset.FieldByName('Qty').AsVariant) then
            if ((qryGetStockOnHandQty.FieldByName('EndQty').AsFloat + FOldQty) < Dataset.FieldByName('Qty').AsFloat) then
              IsStockMinus := True;
        end;
      end;

      if IsStockMinus then
      begin
        if MessageDlg(ASK_ENDQTY_SMALLER_THAN_QTY_SALES, mtInformation, [mbYes, mbNo], 0) = mrNo then
          Abort;
        Dataset.FieldByName('StatusColor').AsInteger := 3;
      end;
    end;
  end;

  // Cek Min Sale Price
  if (dmShare.OptionMinSalePriceActive) or (dmShare.OptionWarningMinSalePrice) then
  begin
    if (qryGetItemInfo.FieldByName('MinSalePrice').AsCurrency <> 0) and
      (qrySalesInvoiceDt.FieldByName('Price').AsCurrency < qryGetItemInfo.FieldByName('MinSalePrice').AsCurrency) then
    begin
      if dmShare.OptionMinSalePriceActive then // Tidak boleh jual dibawah harga min
      begin
        MessageDlg(Format(MSG_SALE_PRICE_LOWER_THEN_MINIMUM_SALE_PRICE,
          [qryGetItemInfo.FieldByName('MinSalePrice').AsCurrency]), mtInformation, [mbOk], 0);
        Abort;
      end
      else
      begin
        if dmShare.OptionWarningMinSalePrice then // boleh jual tetapi di warning
        begin
          if MessageDlg(Format(ASK_SALE_PRICE_LOWER_THEN_MINIMUM_SALE_PRICE,
            [qryGetItemInfo.FieldByName('MinSalePrice').AsCurrency]), mtInformation, [mbYes, mbNo], 0) = mrNo then
            Abort;
          Dataset.FieldByName('StatusColor').AsInteger := 4;
        end;
      end;
    end;
  end;

  // Set DefultMargin (%) for service and non-stock item
  if (qryGetItemInfo.FieldByName('StatusItem').AsInteger = 0)
    or (qryGetItemInfo.FieldByName('StatusItem').AsInteger = 2) then
  begin
    qrySalesInvoiceDt.FieldByName('DefaultMargin').AsFloat :=
      qryGetItemInfo.FieldByName('Margin').AsFloat;
  end
  else
    qrySalesInvoiceDt.FieldByName('DefaultMargin').AsFloat := 0;

  if Dataset.FieldByName('QtyDisplay').AsInteger = 0 then
    Dataset.FieldByName('QtyDisplay').AsVariant := Dataset.FieldByName('Qty').AsVariant;

  Dataset.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmSalesInvoice.qrySalesInvoiceDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
  Dataset.FieldByName('PriceLevel').AsInteger := 1;
  DataSet.FieldByName('ExpiredDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('Price').AsCurrency := 0;
  DataSet.FieldByName('Qty').AsCurrency := 0;
  DataSet.FieldByName('DiscItem').AsCurrency := 0;
  DataSet.FieldByName('DiscItemPrice').AsCurrency := 0;
  DataSet.FieldByName('DiscItem2').AsCurrency := 0;
  DataSet.FieldByName('DiscItemPrice2').AsCurrency := 0;
  DataSet.FieldByName('VoucherItem').AsCurrency := 0;
  DataSet.FieldByName('Amount').AsCurrency := 0;
  DataSet.FieldByName('StatusColor').AsString := '0';
end;

procedure TfmSalesInvoice.qrySalesInvoiceHdAfterCancel(DataSet: TDataSet);
begin
  inherited;

  CalculateTotal(False);
  FInsertState := False;
end;

procedure TfmSalesInvoice.qrySalesInvoiceHdAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('SalesInvoiceHd', qryGetSalesCategory.FieldByName('Prefix').AsString,
      DataSet.FieldByName('SalesInvoiceDate').AsDateTime, dmShare.OptionSI.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmSalesInvoice.qrySalesInvoiceHdBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if DataSet.FieldByName('SalesCategoryId').AsString = SALES_CATEGORY_REGISTER then
  begin
    MessageDlg(MSG_RECORD_IS_AUTO_CREATE, mtInformation, [mbOk], 0);
    Abort;
  end;
  if DataSet.FieldByName('SalesCategoryId').AsString = SALES_CATEGORY_KONOSEMEN then
  begin
    MessageDlg(MSG_RECORD_IS_AUTO_CREATE, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmSalesInvoice.qrySalesInvoiceHdBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmSalesInvoice.qrySalesInvoiceHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  // Cek kategori
  if DataSet.FieldByName('SalesCategoryId').IsNull then
  begin
    MessageDlg(MSG_CATEGORY_ISNULL, mtInformation, [mbOk], 0);
    Abort;
  end;
  qryGetSalesCategory.Close;
  qryGetSalesCategory.Params[0].Value := DataSet.FieldByName('SalesCategoryId').AsString;
  OpenIfClose(qryGetSalesCategory);
  if qryGetSalesCategory.FieldByName('FlagAutomatic').AsString = '1' then
  begin
    MessageDlg(MSG_SALES_CATEGORY_IS_AUTOMATIC, mtInformation, [mbOk], 0);
    Abort;
  end;

  // Cek Kurs
  if Dataset.FieldByName('CurrencyId').AsString = 'IDR' then
    Dataset.FieldByName('Kurs').AsVariant := 1;
  if Dataset.FieldByName('Kurs').AsVariant = 0 then
    Dataset.FieldByName('Kurs').AsVariant := 1;

  // Cek kategori
  if DataSet.FieldByName('SalesCategoryId').IsNull then
  begin
    MessageDlg(MSG_CATEGORY_ISNULL, mtInformation, [mbOk], 0);
    Abort;
  end;

  // Cek SI Internal
  if dmShare.OptionSIInternalCannotDuplicate then
  begin
    if DataSet.FieldByName('SalesInvoiceIdInternal').AsString <> '' then
    begin
      qryGetSalesInvoiceIdInternal.Close;
      qryGetSalesInvoiceIdInternal.Params[0].Value := DataSet.FieldByName('SalesInvoiceIdInternal').AsString;
      qryGetSalesInvoiceIdInternal.Params[1].Value := DataSet.FieldByName('SalesInvoiceId').AsString;
      OpenIfClose(qryGetSalesInvoiceIdInternal, True);
      if not qryGetSalesInvoiceIdInternal.IsEmpty then
      begin
        MessageDlg(MSG_DUPLICATE_SI_ID_INTERNAL, mtInformation, [mbOk], 0);
        Abort;
      end;
    end;
  end;

  // Insert Id
  if FInsertState then
    DataSet.FieldByName('SalesInvoiceId').AsString :=
      dmGlobal.GetLastTransactionId('SalesInvoiceHd', qryGetSalesCategory.FieldByName('Prefix').AsString,
        dmShare.OptionSI.Length, DataSet.FieldByName('SalesInvoiceDate').AsDateTime, dmShare.OptionSI.RunYear);

  // Last Employee
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId; // Last Employee modified
end;

procedure TfmSalesInvoice.qrySalesInvoiceHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('SalesInvoiceDate').AsVariant := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('WarehouseId').AsVariant := dmGeneral.qryWarehouse.FieldByName('WarehouseId').AsVariant;
  Dataset.FieldByName('StatusApprove').AsInteger := FStatusApprove;
  Dataset.FieldByName('SalesCategoryId').AsString := SALES_CATEGORY_NORMAL;
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
  DataSet.FieldByName('Margin').AsCurrency := 0;
  DataSet.FieldByName('TotalMargin').AsCurrency := 0;
  DataSet.FieldByName('CounterPrint').AsInteger := 0;
end;

procedure TfmSalesInvoice.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryCustomer, True);
  LockRefresh(dmGeneral.qryWarehouse);
  LockRefresh(dmGeneral.qryOutlet);
  LockRefresh(dmGeneral.qryProject);
  LockRefresh(dmInventory.qryItem, True);
  LockRefresh(dmGeneral.qryPrevCustomerShipping);
  LockRefresh(dmGeneral.qrySalesCategory);
  LockRefresh(dmGlobal.qryCurrencyMaster);
  LockRefresh(qrySalesInvoiceHd, True);
  LockRefresh(qrySalesInvoiceDt);

  CalculateTotal(True);
end;

end.
