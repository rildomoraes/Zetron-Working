unit frmPurchaseReturn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxSpinEdit, cxDBExtLookupComboBox, cxCalendar, cxCalc, cxCurrencyEdit,
  cxImageComboBox, MemDS, DBAccess, Uni, cxGridDBTableView, cxDBEdit, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxMemo, cxDropDownEdit, dxDockControl, untIvPositionDevExpress,
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
  TfmPurchaseReturn = class(TFormUniTransactionEx)
    dsPurchaseReturnDt: TDataSource;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplaystatusapprove: TcxGridDBColumn;
    cgvPrevDisplaypurchasereturnid: TcxGridDBColumn;
    cgvPrevDisplayVendorPurchaseReturnId: TcxGridDBColumn;
    cgvPrevDisplaypurchasereturndate: TcxGridDBColumn;
    cgvPrevDisplayvendorid: TcxGridDBColumn;
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
    pnlTop: TPanel;
    lblVendor: TLabel;
    lblPurchaseReturnDate: TLabel;
    lblWarehouse: TLabel;
    lblVendorPurchaseReturnId: TLabel;
    lblOutlet: TLabel;
    dblcVendorId: TcxDBExtLookupComboBox;
    dblcVendorId2: TcxDBExtLookupComboBox;
    dbePurchaseReturnDate: TcxDBDateEdit;
    dbePurchaseReturnId: TcxDBTextEdit;
    dblcbWarehouseId: TcxDBExtLookupComboBox;
    dblcOutletId: TcxDBExtLookupComboBox;
    dbeVendorPurchaseReturnId: TcxDBTextEdit;
    dbeInvoiceDueDay: TcxDBSpinEdit;
    edtAddress: TcxMemo;
    edtCityName: TcxExtLookupComboBox;
    edtProvinceName: TcxExtLookupComboBox;
    edtCountryName: TcxExtLookupComboBox;
    cgPurchaseReturnDt: TcxGrid;
    cgvPurchaseReturnDt: TcxGridDBBandedTableView;
    cgvPurchaseReturnDtPurchaseReturnId: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtNo: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtpurchaseinvoiceid: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtItemId: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtItemId2: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtItemId3: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtItemId4: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtitemtext: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtExpiredDate: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtQty: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtPrice: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtDiscItem: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtDiscItemPrice: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtDiscItem2: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtDiscItemPrice2: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtvoucheritem: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtAmount: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtemployeeid: TcxGridDBBandedColumn;
    cgPurchaseReturnDtLevel1: TcxGridLevel;
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
    actPay: TAction;
    actListPayment: TAction;
    pmPayment: TPopupMenu;
    mnuPay: TMenuItem;
    mnuListPayment: TMenuItem;
    dbeMeterai: TcxDBCurrencyEdit;
    qryPurchaseReturnHd: TUniQuery;
    qryPurchaseReturnDt: TUniQuery;
    qryGetVendorPurchaseReturnId: TUniQuery;
    qryGetPRPayment: TUniQuery;
    Label1: TLabel;
    dbePPH22: TcxDBSpinEdit;
    Label2: TLabel;
    edtPPH22Amount: TcxCurrencyEdit;
    cgvPrevDisplaypph22: TcxGridDBColumn;
    cgvPrevDisplaypph22amount: TcxGridDBColumn;
    dbeVoucherAmount: TcxDBCalcEdit;
    procedure qryPurchaseReturnHdAfterPost(DataSet: TDataSet);
    procedure qryPurchaseReturnHdBeforeInsert(DataSet: TDataSet);
    procedure qryPurchaseReturnDtNewRecord(DataSet: TDataSet);
    procedure qryPurchaseReturnHdNewRecord(DataSet: TDataSet);
    procedure qryPurchaseReturnHdBeforePost(DataSet: TDataSet);
    procedure qryPurchaseReturnHdAfterCancel(DataSet: TDataSet);
    procedure qryPurchaseReturnDtBeforePost(DataSet: TDataSet);
    procedure qryPurchaseReturnDtBeforeInsert(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsPurchaseReturnDtDataChange(Sender: TObject; Field: TField);
    procedure dblcVendorIdPropertiesEditValueChanged(Sender: TObject);
    procedure dbePurchaseReturnIdPropertiesEditValueChanged(Sender: TObject);
    procedure cgvPurchaseReturnDtNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cgvPurchaseReturnDtDataControllerSummaryAfterSummary(
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
  fmPurchaseReturn: TfmPurchaseReturn;

implementation

{$R *.dfm}

uses
  untConstanta, untConstantaPOS, untProcedure, dtmGlobal, dtmGeneral, dtmShare,
  dtmInventory, frmPurchaseReturnItem, frmPurchaseReturnCashPayment;

procedure TfmPurchaseReturn.actListPaymentExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfmPurchaseReturn.actPayExecute(Sender: TObject);
begin
  inherited;

  if qryPurchaseReturnHd.State in [dsInsert, dsEdit] then
    qryPurchaseReturnHd.Post;
  if qryPurchaseReturnDt.State in [dsInsert, dsEdit] then
    qryPurchaseReturnHd.Post;
  if qryPurchaseReturnHd.IsEmpty then
    Exit;
  if edtOutstandingTotalAmount.EditValue = 0 then
    Exit;

  if TfmPurchaseReturnCashPayment.ExecuteForm(
    qryPurchaseReturnHd.FieldByName('PurchaseReturnId').AsString) = mrOk then
  begin
    CalculateTotal(True);
  end;
end;

procedure TfmPurchaseReturn.CalculateTotal(ARefreshPayment: boolean);
var
  Amount: Currency;
begin
  if not qryPurchaseReturnHd.Active then
    Exit;

  if cgvPurchaseReturnDt.DataController.Summary.FooterSummaryValues[1] = null then
    Amount := 0
  else
    Amount := cgvPurchaseReturnDt.DataController.Summary.FooterSummaryValues[1];

  edtDiscAmount.EditValue :=
    (Amount * qryPurchaseReturnHd.FieldByName('Disc').AsFloat) / 100;

  edtDiscAmount2.EditValue :=
    ((Amount - edtDiscAmount.EditValue) * qryPurchaseReturnHd.FieldByName('Disc2').AsFloat) / 100;

  edtTaxAmount.EditValue :=
    ((Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qryPurchaseReturnHd.FieldByName('VoucherAmount').AsCurrency) *
    qryPurchaseReturnHd.FieldByName('Tax').AsFloat) / 100;

  edtPPH22Amount.EditValue :=
    ((Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qryPurchaseReturnHd.FieldByName('VoucherAmount').AsCurrency +
    edtTaxAmount.EditValue) *
    qryPurchaseReturnHd.FieldByName('PPH22').AsFloat) / 100;

  edtTotalAmount.EditValue :=
    Amount - edtDiscAmount.EditValue - edtDiscAmount2.EditValue -
    qryPurchaseReturnHd.FieldByName('VoucherAmount').AsCurrency +
    edtTaxAmount.EditValue + edtPPH22Amount.EditValue +
    qryPurchaseReturnHd.FieldByName('Meterai').AsCurrency;

  if ARefreshPayment then
  begin
    qryGetPRPayment.Close;
    qryGetPRPayment.Params[0].Value := qryPurchaseReturnHd.FieldByName('PurchaseReturnId').AsString;
    OpenIfClose(qryGetPRPayment);
    edtPayment.EditValue := qryGetPRPayment.FieldByName('TotalAmount').AsCurrency;
  end;

  edtOutstandingTotalAmount.EditValue := edtTotalAmount.EditValue - edtPayment.EditValue;
end;

procedure TfmPurchaseReturn.cgvPurchaseReturnDtDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;

  CalculateTotal(False);
end;

procedure TfmPurchaseReturn.cgvPurchaseReturnDtNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;

  case AButtonIndex of
    6:
      begin //Insert
        if qryPurchaseReturnHd.State in [dsInsert, dsEdit] then
          qryPurchaseReturnHd.Post;
        if not qryPurchaseReturnHd.IsEmpty then
        begin
          TfmPurchaseReturnItem.ExecuteForm(VarToStr(dblcVendorId.EditValue),
            VarToStr(dbePurchaseReturnId.EditValue));
          LockRefresh(qryPurchaseReturnDt);
        end;
        ADone := True;
      end;
  end;
end;

procedure TfmPurchaseReturn.dbePurchaseReturnIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  CalculateTotal(True);
end;

procedure TfmPurchaseReturn.dblcVendorIdPropertiesEditValueChanged(
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

procedure TfmPurchaseReturn.dsDefaultDataChange(Sender: TObject;
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

procedure TfmPurchaseReturn.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qryPurchaseReturnHd.State in [dsBrowse] then
  begin
    SetReadOnly(dblcVendorId, True, COLOR_INACTIVE);
    SetReadOnly(dblcVendorId2, True, COLOR_INACTIVE);
  end;
end;

procedure TfmPurchaseReturn.dsPurchaseReturnDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if (Field = nil) then
    Exit;

  if (qryPurchaseReturnDt.State in [dsInsert, dsEdit]) and (Field <> nil) then
  begin
    if (CompareText(Field.FieldName, 'Qty') = 0) or
      (CompareText(Field.FieldName, 'Price') = 0) or
      (CompareText(Field.FieldName, 'VoucherItem') = 0) or
      (CompareText(Field.FieldName, 'DiscItem') = 0) or
      (CompareText(Field.FieldName, 'DiscItem2') = 0) then
    begin
      if qryPurchaseReturnDt.FieldByName('DiscItem').AsFloat >= 0 then
        qryPurchaseReturnDt.FieldByName('DiscItemPrice').AsCurrency :=
          (qryPurchaseReturnDt.FieldByName('Price').AsCurrency *
          qryPurchaseReturnDt.FieldByName('DiscItem').AsFloat) / 100;

      if qryPurchaseReturnDt.FieldByName('DiscItem2').AsFloat >= 0 then
        qryPurchaseReturnDt.FieldByName('DiscItemPrice2').AsCurrency :=
          ((qryPurchaseReturnDt.FieldByName('Price').AsCurrency -
          qryPurchaseReturnDt.FieldByName('DiscItemPrice').AsCurrency) *
          qryPurchaseReturnDt.FieldByName('DiscItem2').AsFloat) / 100;

      qryPurchaseReturnDt.FieldByName('Amount').AsCurrency :=
        qryPurchaseReturnDt.FieldByName('Qty').AsFloat *
        (qryPurchaseReturnDt.FieldByName('Price').AsCurrency -
        qryPurchaseReturnDt.FieldByName('DiscItemPrice').AsCurrency -
        qryPurchaseReturnDt.FieldByName('DiscItemPrice2').AsCurrency -
        qryPurchaseReturnDt.FieldByName('VoucherItem').AsCurrency);
    end;
  end;
end;

procedure TfmPurchaseReturn.InitForm;
begin
  inherited;

  // Init Print
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PRT);

  if dmGlobal.SettingLocal.LanguageFlag = 1 then
  begin
    btnPayment.Caption := 'Bayar';
    btnPayment.Hint := 'Bayar (F3)';
  end;

  SetReadOnly(dblcVendorId, True, COLOR_INACTIVE);
  SetReadOnly(dblcVendorId2, True, COLOR_INACTIVE);
  SetReadOnly(edtAddress, True, COLOR_INACTIVE);
  SetReadOnly(edtCityName, True, COLOR_INACTIVE);
  SetReadOnly(edtProvinceName, True, COLOR_INACTIVE);
  SetReadOnly(edtCountryName, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchaseReturnId, True, COLOR_INACTIVE);
  SetReadOnly(edtDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(edtDiscAmount2, True, COLOR_INACTIVE);
  SetReadOnly(edtTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(edtPPH22Amount, True, COLOR_INACTIVE);
  SetReadOnly(edtTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(edtPayment, True, COLOR_INACTIVE);
  SetReadOnly(edtOutstandingTotalAmount, True, COLOR_INACTIVE);

  OpenIfClose(dmGeneral.qryVendor, True);
  OpenIfClose(dmGeneral.qryWarehouse);
  OpenIfClose(dmGeneral.qryOutlet);
  OpenIfClose(dmInventory.qryItem, True);

  MonthYearValueChange(nil); // -> Trigger PurchaseReturnHd
  OpenIfClose(qryPurchaseReturnDt);

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
  TcxCurrencyEditProperties(cgvPurchaseReturnDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPurchaseReturnDtPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseReturnDtDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPurchaseReturnDtDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseReturnDtDiscItem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPurchaseReturnDtDiscItemPrice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseReturnDtAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseReturnDtvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
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

procedure TfmPurchaseReturn.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryPurchaseReturnHd.State in [dsEdit, dsInsert]) or
    (qryPurchaseReturnDt.State in [dsEdit, dsInsert]) then
    Abort;

  qryPurchaseReturnHd.Close;
  qryPurchaseReturnHd.Params[0].Value := StrToInt(cbYear.Text);
  qryPurchaseReturnHd.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryPurchaseReturnHd, True, True);
end;

procedure TfmPurchaseReturn.qryPurchaseReturnDtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  // Handle by cgvPurchaseReturnDtNavigatorButtonsButtonClick
end;

procedure TfmPurchaseReturn.qryPurchaseReturnDtBeforePost(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPurchaseReturn.qryPurchaseReturnDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  // Handle by cgvPurchaseReturnDtNavigatorButtonsButtonClick
end;

procedure TfmPurchaseReturn.qryPurchaseReturnHdAfterCancel(
  DataSet: TDataSet);
begin
  inherited;

  CalculateTotal(False);
  FInsertState := False;
end;

procedure TfmPurchaseReturn.qryPurchaseReturnHdAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('PurchaseReturnHd', dmShare.OptionPR.Prefix,
      DataSet.FieldByName('PurchaseReturnDate').AsDateTime, dmShare.OptionPR.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmPurchaseReturn.qryPurchaseReturnHdBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmPurchaseReturn.qryPurchaseReturnHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName('Kurs').AsVariant = 0 then
    Dataset.FieldByName('Kurs').AsVariant := 1;

  if DataSet.FieldByName('VendorPurchaseReturnId').AsString <> '' then
  begin
    qryGetVendorPurchaseReturnId.Close;
    qryGetVendorPurchaseReturnId.Params[0].Value := DataSet.FieldByName('VendorPurchaseReturnId').AsString;
    qryGetVendorPurchaseReturnId.Params[1].Value := DataSet.FieldByName('PurchaseReturnId').AsString;
    OpenIfClose(qryGetVendorPurchaseReturnId);
    if not qryGetVendorPurchaseReturnId.IsEmpty then
    begin
      MessageDlg(MSG_DUPLICATE_PR_ID_EXTERNAL, mtInformation, [mbOk], 0);
      Abort;
    end;
  end;

  // Insert Id
  if FInsertState then
    DataSet.FieldByName('PurchaseReturnId').AsString :=
      dmGlobal.GetLastTransactionId('PurchaseReturnHd', dmShare.OptionPR.Prefix, dmShare.OptionPR.Length,
        DataSet.FieldByName('PurchaseReturnDate').AsDateTime, dmShare.OptionPR.RunYear);

  // Last Employee modified
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPurchaseReturn.qryPurchaseReturnHdNewRecord(DataSet: TDataSet);
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

  SetReadOnly(dblcVendorId, False);
  SetReadOnly(dblcVendorId2, False);
end;

procedure TfmPurchaseReturn.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryVendor, True);
  LockRefresh(dmGeneral.qryWarehouse);
  LockRefresh(dmGeneral.qryOutlet);
  LockRefresh(dmInventory.qryItem, True);
  LockRefresh(qryPurchaseReturnHd, True);
  LockRefresh(qryPurchaseReturnDt);
end;

end.
