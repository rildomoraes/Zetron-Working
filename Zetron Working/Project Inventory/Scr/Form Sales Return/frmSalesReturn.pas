unit frmSalesReturn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  // Auto Generate
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxCalendar, cxCalc, cxCurrencyEdit, cxImageComboBox,
  MemDS, DBAccess, Uni, cxGridDBTableView, cxDBEdit, cxPC, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxMemo, cxSpinEdit, cxDropDownEdit, dxDockControl, untIvPositionDevExpress,
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
  TfmSalesReturn = class(TFormUniTransactionEx)
    pnlTop: TPanel;
    lblCustomer: TLabel;
    lblSalesReturnDate: TLabel;
    lblWarehouse: TLabel;
    lblVendorPurchaseReturnId: TLabel;
    lblOutlet: TLabel;
    dblcCustomerId: TcxDBExtLookupComboBox;
    dblcCustomerId2: TcxDBExtLookupComboBox;
    dbeSalesReturnDate: TcxDBDateEdit;
    dbeSalesReturnId: TcxDBTextEdit;
    dblcbWarehouseId: TcxDBExtLookupComboBox;
    dblcOutletId: TcxDBExtLookupComboBox;
    dbeSalesReturnIdInternal: TcxDBTextEdit;
    dbeInvoiceDueDay: TcxDBSpinEdit;
    edtAddress: TcxMemo;
    edtCityName: TcxExtLookupComboBox;
    edtProvinceName: TcxExtLookupComboBox;
    edtCountryName: TcxExtLookupComboBox;
    cgSalesReturnDt: TcxGrid;
    cgvSalesReturnDt: TcxGridDBBandedTableView;
    cgvSalesReturnDtSalesReturnId: TcxGridDBBandedColumn;
    cgvSalesReturnDtSalesinvoiceid: TcxGridDBBandedColumn;
    cgvSalesReturnDtItemId: TcxGridDBBandedColumn;
    cgvSalesReturnDtItemId2: TcxGridDBBandedColumn;
    cgvSalesReturnDtItemId3: TcxGridDBBandedColumn;
    cgvSalesReturnDtItemId4: TcxGridDBBandedColumn;
    cgvSalesReturnDtitemtext: TcxGridDBBandedColumn;
    cgvSalesReturnDtExpiredDate: TcxGridDBBandedColumn;
    cgvSalesReturnDtQty: TcxGridDBBandedColumn;
    cgvSalesReturnDtPrice: TcxGridDBBandedColumn;
    cgvSalesReturnDtDiscItem: TcxGridDBBandedColumn;
    cgvSalesReturnDtDiscItemPrice: TcxGridDBBandedColumn;
    cgvSalesReturnDtDiscItem2: TcxGridDBBandedColumn;
    cgvSalesReturnDtDiscItemPrice2: TcxGridDBBandedColumn;
    cgvSalesReturnDtvoucheritem: TcxGridDBBandedColumn;
    cgvSalesReturnDtAmount: TcxGridDBBandedColumn;
    cgvSalesReturnDtemployeeid: TcxGridDBBandedColumn;
    cgSalesReturnDtLevel1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    tsAmount: TcxTabSheet;
    lblDisc1: TLabel;
    lbl2: TLabel;
    lblDisc2: TLabel;
    lbl4: TLabel;
    lbl16: TLabel;
    lblPurchaseTax: TLabel;
    lblPercent: TLabel;
    Label7: TLabel;
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
    tsExternalMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    dsSalesReturnDt: TDataSource;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplaystatusapprove: TcxGridDBColumn;
    cgvPrevDisplaysalesreturnid: TcxGridDBColumn;
    cgvPrevDisplaySalesReturnIdInternal: TcxGridDBColumn;
    cgvPrevDisplaysalesreturndate: TcxGridDBColumn;
    cgvPrevDisplaycustomerid: TcxGridDBColumn;
    cgvPrevDisplaywarehouseid: TcxGridDBColumn;
    cgvPrevDisplayoutletid: TcxGridDBColumn;
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
    dbeMeterai: TcxDBCurrencyEdit;
    cgvSalesReturnDtNo: TcxGridDBBandedColumn;
    qrySalesReturnHd: TUniQuery;
    qrySalesReturnDt: TUniQuery;
    qryGetSalesReturnIdInternal: TUniQuery;
    qryGetSRPayment: TUniQuery;
    Label1: TLabel;
    dbePPH22: TcxDBSpinEdit;
    Label2: TLabel;
    edtPPH22Amount: TcxCurrencyEdit;
    cgvPrevDisplaypph22: TcxGridDBColumn;
    cgvPrevDisplaypph22amount: TcxGridDBColumn;
    dbeVoucherAmount: TcxDBCalcEdit;
    procedure qrySalesReturnHdAfterPost(DataSet: TDataSet);
    procedure qrySalesReturnDtNewRecord(DataSet: TDataSet);
    procedure qrySalesReturnHdNewRecord(DataSet: TDataSet);
    procedure qrySalesReturnHdBeforePost(DataSet: TDataSet);
    procedure qrySalesReturnHdBeforeInsert(DataSet: TDataSet);
    procedure qrySalesReturnHdAfterCancel(DataSet: TDataSet);
    procedure qrySalesReturnDtBeforePost(DataSet: TDataSet);
    procedure qrySalesReturnDtBeforeInsert(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsSalesReturnDtDataChange(Sender: TObject; Field: TField);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dblcCustomerIdPropertiesEditValueChanged(Sender: TObject);
    procedure dbeSalesReturnIdPropertiesEditValueChanged(Sender: TObject);
    procedure cgvSalesReturnDtNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cgvSalesReturnDtDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure actListPaymentExecute(Sender: TObject);
    procedure actPayExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FInsertState: boolean;
    procedure CalculateTotal(ARefreshPayment: boolean);
  public

  end;

var
  fmSalesReturn: TfmSalesReturn;

implementation

{$R *.dfm}

uses
  untConstanta, untConstantaPOS, untProcedure, dtmGlobal, dtmGeneral, dtmShare,
  dtmInventory, frmSalesReturnItem, frmSalesReturnCashPayment,
  frmPrintFastReport;

procedure TfmSalesReturn.actListPaymentExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfmSalesReturn.actPayExecute(Sender: TObject);
begin
  inherited;

  if qrySalesReturnHd.State in [dsInsert, dsEdit] then
    qrySalesReturnHd.Post;
  if qrySalesReturnDt.State in [dsInsert, dsEdit] then
    qrySalesReturnHd.Post;
  if qrySalesReturnHd.IsEmpty then
    Exit;
  if edtOutstandingTotalAmount.EditValue = 0 then
    Exit;

  if TfmSalesReturnCashPayment.ExecuteForm(
    qrySalesReturnHd.FieldByName('SalesReturnId').AsString) = mrOk then
  begin
    CalculateTotal(True);
  end;
end;

procedure TfmSalesReturn.CalculateTotal(ARefreshPayment: boolean);
var
  Amount: Currency;
begin
  if not qrySalesReturnHd.Active then
    Exit;

  if cgvSalesReturnDt.DataController.Summary.FooterSummaryValues[1] = null then
    Amount := 0
  else
    Amount := cgvSalesReturnDt.DataController.Summary.FooterSummaryValues[1];

  edtDiscAmount.EditValue :=
    (Amount * qrySalesReturnHd.FieldByName('Disc').AsFloat) / 100;

  edtDiscAmount2.EditValue :=
    ((Amount - edtDiscAmount.EditValue) * qrySalesReturnHd.FieldByName('Disc2').AsFloat) / 100;

  edtTaxAmount.EditValue :=
    ((Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qrySalesReturnHd.FieldByName('VoucherAmount').AsCurrency) *
    qrySalesReturnHd.FieldByName('Tax').AsFloat) / 100;

  edtPPH22Amount.EditValue :=
    ((Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qrySalesReturnHd.FieldByName('VoucherAmount').AsCurrency +
    edtTaxAmount.EditValue) *
    qrySalesReturnHd.FieldByName('PPH22').AsFloat) / 100;

  edtTotalAmount.EditValue :=
    Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qrySalesReturnHd.FieldByName('VoucherAmount').AsCurrency +
    edtTaxAmount.EditValue + edtPPH22Amount.EditValue +
    qrySalesReturnHd.FieldByName('Meterai').AsCurrency;

  if ARefreshPayment then
  begin
    qryGetSRPayment.Close;
    qryGetSRPayment.Params[0].Value := qrySalesReturnHd.FieldByName('SalesReturnId').AsString;
    OpenIfClose(qryGetSRPayment);
    edtPayment.EditValue := qryGetSRPayment.FieldByName('TotalAmount').AsCurrency;
  end;

  edtOutstandingTotalAmount.EditValue := edtTotalAmount.EditValue - edtPayment.EditValue;
end;

procedure TfmSalesReturn.cgvSalesReturnDtDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;

  CalculateTotal(False);
end;

procedure TfmSalesReturn.cgvSalesReturnDtNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;

  case AButtonIndex of
    6:
      begin //Insert
        if qrySalesReturnHd.State in [dsInsert, dsEdit] then
          qrySalesReturnHd.Post;
        if not qrySalesReturnHd.IsEmpty then
        begin
          TfmSalesReturnItem.ExecuteForm(VarToStr(dblcCustomerId.EditValue),
            VarToStr(dbeSalesReturnId.EditValue));
          LockRefresh(qrySalesReturnDt);
        end;
        ADone := True;
      end;
  end;
end;

procedure TfmSalesReturn.dbeSalesReturnIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  CalculateTotal(True);
end;

procedure TfmSalesReturn.dblcCustomerIdPropertiesEditValueChanged(
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

procedure TfmSalesReturn.dsDefaultDataChange(Sender: TObject;
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
end;

procedure TfmSalesReturn.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qrySalesReturnHd.State in [dsBrowse] then
  begin
    SetReadOnly(dblcCustomerId, True, COLOR_INACTIVE);
    SetReadOnly(dblcCustomerId2, True, COLOR_INACTIVE);
  end;
end;

procedure TfmSalesReturn.dsSalesReturnDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if (Field = nil) then
    Exit;

  if (qrySalesReturnDt.State in [dsInsert, dsEdit]) and (Field <> nil) then
  begin
    if (CompareText(Field.FieldName, 'Qty') = 0) or
      (CompareText(Field.FieldName, 'PriceInvoice') = 0) or
      (CompareText(Field.FieldName, 'DiscItemInvoice') = 0) or
      (CompareText(Field.FieldName, 'DiscItemInvoice2') = 0) or
      (CompareText(Field.FieldName, 'VoucherItemInvoice') = 0) then
    begin
      if qrySalesReturnDt.FieldByName('DiscItemInvoice').AsFloat >= 0 then
        qrySalesReturnDt.FieldByName('DiscItemPriceInvoice').AsCurrency :=
          (qrySalesReturnDt.FieldByName('PriceInvoice').AsCurrency *
          qrySalesReturnDt.FieldByName('DiscItemInvoice').AsFloat) / 100;

      if qrySalesReturnDt.FieldByName('DiscItemInvoice2').AsFloat >= 0 then
        qrySalesReturnDt.FieldByName('DiscItemPriceInvoice2').AsCurrency :=
          ((qrySalesReturnDt.FieldByName('PriceInvoice').AsCurrency -
          qrySalesReturnDt.FieldByName('DiscItemPriceInvoice').AsCurrency) *
          qrySalesReturnDt.FieldByName('DiscItemInvoice2').AsFloat) / 100;

      qrySalesReturnDt.FieldByName('AmountInvoice').AsCurrency :=
        qrySalesReturnDt.FieldByName('Qty').AsFloat *
        (qrySalesReturnDt.FieldByName('PriceInvoice').AsCurrency -
        qrySalesReturnDt.FieldByName('DiscItemPriceInvoice').AsCurrency -
        qrySalesReturnDt.FieldByName('DiscItemPriceInvoice2').AsCurrency -
        qrySalesReturnDt.FieldByName('VoucherItemInvoice').AsCurrency);
    end;
  end;
end;

procedure TfmSalesReturn.InitForm;
begin
  inherited;

  // Init Print
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_SRT);

  if dmGlobal.SettingLocal.LanguageFlag = 1 then
  begin
    btnPayment.Caption := 'Bayar';
    btnPayment.Hint := 'Bayar (F3)';
  end;

  SetReadOnly(dblcCustomerId, True, COLOR_INACTIVE);
  SetReadOnly(dblcCustomerId2, True, COLOR_INACTIVE);
  SetReadOnly(edtAddress, True, COLOR_INACTIVE);
  SetReadOnly(edtCityName, True, COLOR_INACTIVE);
  SetReadOnly(edtProvinceName, True, COLOR_INACTIVE);
  SetReadOnly(edtCountryName, True, COLOR_INACTIVE);
  SetReadOnly(dbeSalesReturnId, True, COLOR_INACTIVE);
  SetReadOnly(edtDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(edtDiscAmount2, True, COLOR_INACTIVE);
  SetReadOnly(edtTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(edtPPH22Amount, True, COLOR_INACTIVE);
  SetReadOnly(edtTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(edtPayment, True, COLOR_INACTIVE);
  SetReadOnly(edtOutstandingTotalAmount, True, COLOR_INACTIVE);

  OpenIfClose(dmGeneral.qryCustomer, True);
  OpenIfClose(dmGeneral.qryWarehouse);
  OpenIfClose(dmGeneral.qryOutlet);
  OpenIfClose(dmInventory.qryItem, True);

  MonthYearValueChange(nil); // -> Trigger SalesReturnHd
  OpenIfClose(qrySalesReturnDt);

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
  TcxCurrencyEditProperties(cgvSalesReturnDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvSalesReturnDtPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesReturnDtDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvSalesReturnDtDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesReturnDtDiscItem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvSalesReturnDtDiscItemPrice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesReturnDtAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesReturnDtvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
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
end;

procedure TfmSalesReturn.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qrySalesReturnHd.State in [dsEdit, dsInsert]) or
    (qrySalesReturnDt.State in [dsEdit, dsInsert]) then
    Abort;

  qrySalesReturnHd.Close;
  qrySalesReturnHd.Params[0].Value := StrToInt(cbYear.Text);
  qrySalesReturnHd.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qrySalesReturnHd, True, True);
end;

procedure TfmSalesReturn.qrySalesReturnDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Handle by cgvSalesReturnDtNavigatorButtonsButtonClick
end;

procedure TfmSalesReturn.qrySalesReturnDtBeforePost(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmSalesReturn.qrySalesReturnDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  // Handle by cgvSalesReturnDtNavigatorButtonsButtonClick
end;

procedure TfmSalesReturn.qrySalesReturnHdAfterCancel(DataSet: TDataSet);
begin
  inherited;

  CalculateTotal(False);
  FInsertState := False;
end;

procedure TfmSalesReturn.qrySalesReturnHdAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('SalesReturnHd', dmShare.OptionSR.Prefix,
      DataSet.FieldByName('SalesReturnDate').AsDateTime, dmShare.OptionSR.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmSalesReturn.qrySalesReturnHdBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;  
end;

procedure TfmSalesReturn.qrySalesReturnHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName('Kurs').AsVariant = 0 then
    Dataset.FieldByName('Kurs').AsVariant := 1;

  // Cek SR Inernal
  if DataSet.FieldByName('SalesReturnIdInternal').AsString <> '' then
  begin
    qryGetSalesReturnIdInternal.Close;
    qryGetSalesReturnIdInternal.Params[0].Value := DataSet.FieldByName('SalesReturnIdInternal').AsString;
    qryGetSalesReturnIdInternal.Params[1].Value := DataSet.FieldByName('SalesReturnId').AsString;
    OpenIfClose(qryGetSalesReturnIdInternal);
    if not qryGetSalesReturnIdInternal.IsEmpty then
    begin
      MessageDlg(MSG_DUPLICATE_SR_ID_INTERNAL, mtInformation, [mbOk], 0);
      Abort;
    end;
  end;

  // Insert Id
  if FInsertState then
    DataSet.FieldByName('SalesReturnId').AsString :=
      dmGlobal.GetLastTransactionId('SalesReturnHd', dmShare.OptionSR.Prefix, dmShare.OptionSR.Length,
        DataSet.FieldByName('SalesReturnDate').AsDateTime, dmShare.OptionSR.RunYear);

  // Last Employee
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmSalesReturn.qrySalesReturnHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('StatusApprove').AsInteger := 1;
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
  DataSet.FieldByName('PPH22').AsCurrency := 0;
  DataSet.FieldByName('PPH22Amount').AsCurrency := 0;
  DataSet.FieldByName('Meterai').AsCurrency := 0;
  DataSet.FieldByName('TotalAmount').AsCurrency := 0;
  DataSet.FieldByName('OutstandingTotalAmount').AsCurrency := 0;
  DataSet.FieldByName('CounterPrint').AsInteger := 0;

  SetReadOnly(dblcCustomerId, False);
  SetReadOnly(dblcCustomerId2, False);
end;

procedure TfmSalesReturn.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryCustomer, True);
  LockRefresh(dmGeneral.qryWarehouse);
  LockRefresh(dmGeneral.qryOutlet);
  LockRefresh(dmInventory.qryItem, True);
  LockRefresh(qrySalesReturnHd, True);
  LockRefresh(qrySalesReturnDt);
end;

end.
