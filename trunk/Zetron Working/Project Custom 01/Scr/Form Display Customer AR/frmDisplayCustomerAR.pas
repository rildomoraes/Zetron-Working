unit frmDisplayCustomerAR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  //
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCurrencyEdit, cxCalendar, cxCalc,
  cxGridLevel, cxGridChartView, cxGridDBChartView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxPC, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, StdCtrls, cxButtons, ExtCtrls, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, ADODB;

type
  TfmDisplayCustomerAR = class(TFormUniDisplay)
    pcAccountReceivable: TcxPageControl;
    tsPiutang: TcxTabSheet;
    tsPiutangDetail: TcxTabSheet;
    tsUmurPiutang: TcxTabSheet;
    tsOutstandingSI: TcxTabSheet;
    cgAccountReceivable: TcxGrid;
    cgvPrevAccountReceivableHd: TcxGridDBTableView;
    cgvPrevAccountReceivableHdvcIdCustomer: TcxGridDBColumn;
    cgvPrevAccountReceivableHdvcCustomerName: TcxGridDBColumn;
    cgvPrevAccountReceivableHdvcCityName: TcxGridDBColumn;
    cgvPrevAccountReceivableHddcAmount: TcxGridDBColumn;
    cgvPrevAccountReceivableHddcDownPayment: TcxGridDBColumn;
    cgvPrevAccountReceivableHddcBudget: TcxGridDBColumn;
    cgvPrevAccountReceivableDt: TcxGridTableView;
    cgvPrevAccountReceivableDtDate: TcxGridColumn;
    cgvPrevAccountReceivableDtDesc: TcxGridColumn;
    cgvPrevAccountReceivableDtDebit: TcxGridColumn;
    cgvPrevAccountReceivableDtCredit: TcxGridColumn;
    cgvPrevAccountReceivableDtBalance: TcxGridColumn;
    cgvPrevAccountReceivableAging: TcxGridDBChartView;
    cgvPrevAccountReceivableAgingSeries1: TcxGridDBChartSeries;
    cgvPrevUnpaidInvoiceHd: TcxGridDBTableView;
    cgvPrevUnpaidInvoiceHdvcIdSalesInvoice: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddtSalesInvoiceDate: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdvcIdSalesOrder: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdvcIdDeliveryOrder: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdvcIdCustomer: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdvcCustomerName: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdvcIdWarehouse: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdvcWarehouseName: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdinInvoiceDueDay: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddcAmount: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddcDisc: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddcDiscAmount: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddcTax: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddcTaxAmount: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddcTotalAmount: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddcOutstandingTotalAmount: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdSalesman: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdvcEmployeeName: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDt: TcxGridDBTableView;
    cgvPrevUnpaidInvoiceDtvcIdSalesInvoice: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtinNo: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtvcIdSupplies: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtvcSuppliesName: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtinQty: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtdcPrice: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtdcPricePrint: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtdcDiscItem: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtdcDiscItemPrice: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtdcAmount: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePayment: TcxGridDBTableView;
    cgvPrevUnpaidInvoicePaymentvcIdSalesPayment: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentdtSalesPaymentDate: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentvcIdSalesInvoice: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentvcPaymentTypeName: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentdtEffectiveDate: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentvcIdBank: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentvcAccountNo: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentvcCustomerIdBank: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentvcCustomerAccountNo: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentdcAmount: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentvcEmployeeName: TcxGridDBColumn;
    cgAccountReceivableLevel1: TcxGridLevel;
    cgAccountReceivableDtLevel1: TcxGridLevel;
    cgAccountReceivableDt: TcxGrid;
    cgAccountReceivableAgingLevel1: TcxGridLevel;
    cgAccountReceivableAging: TcxGrid;
    cgOutstandingInvoiceLevel1: TcxGridLevel;
    cgOutstandingInvoice: TcxGrid;
    cgOutstandingInvoiceLevel2: TcxGridLevel;
    qryPrevAccountReceivableHd: TADOQuery;
    dsPrevAccountReceivableHd: TDataSource;
    qryPrevAccountReceivableDt: TADOQuery;
    dsPrevAccountReceivableDt: TDataSource;
    qryPrevAccountReceivableAging: TADOQuery;
    dsPrevAccountReceivableAging: TDataSource;
    qryPrevUnpaidInvoiceHd: TADOQuery;
    dsPrevUnpaidInvoiceHd: TDataSource;
    qryPrevUnpaidInvoiceDt: TADOQuery;
    dsPrevUnpaidInvoiceDt: TDataSource;
    qryPrevUnpaidInvoicePayment: TADOQuery;
    dsPrevUnpaidInvoicePayment: TDataSource;
    pnlHeader: TPanel;
    lblBudgetExceeded: TLabel;
    shpBudgetExceed: TShape;
    Panel1: TPanel;
    lblPeriod: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    procedure MonthYearValueChange(Sender: TObject);
    procedure cgvPrevAccountReceivableHdStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure pcAccountReceivableChange(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    procedure ShowARCard;
  public
    { Public declarations }
  end;

var
  fmDisplayCustomerAR: TfmDisplayCustomerAR;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, untConstanta;

procedure TfmDisplayCustomerAR.cgvPrevAccountReceivableHdStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  Amount, DownPayment, Budget: Currency;
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    Amount := ARecord.Values[GetColumnByFieldName('dcAmount').Index];
    DownPayment := ARecord.Values[GetColumnByFieldName('dcDownPayment').Index];
    Budget := ARecord.Values[GetColumnByFieldName('dcBudget').Index];
    if (Budget = 0) and (Amount + DownPayment = 0) then
      Exit;
    if (Amount + DownPayment) >= Budget then
      AStyle := dmGlobal.stRedLight;
  end;
end;

procedure TfmDisplayCustomerAR.pcAccountReceivableChange(Sender: TObject);
begin
  inherited;

  if qryPrevAccountReceivableHd.IsEmpty then
  begin
    qryPrevAccountReceivableAging.Close;
    qryPrevUnpaidInvoiceHd.Close;
    Exit;
  end;

  if pcAccountReceivable.ActivePage = tsPiutangDetail then
  begin
    if qryPrevAccountReceivableDt.Parameters[0].Value <> qryPrevAccountReceivableHd.FieldByName('vcIdCustomer').AsString then
      ShowARCard;
  end
  else if pcAccountReceivable.ActivePage = tsUmurPiutang then
  begin
    if qryPrevAccountReceivableAging.Parameters[0].Value <> qryPrevAccountReceivableHd.FieldByName('vcIdCustomer').AsString then
    begin
      qryPrevAccountReceivableAging.Close;
      qryPrevAccountReceivableAging.Parameters[0].Value := qryPrevAccountReceivableHd.FieldByName('vcIdCustomer').AsString;
      OpenIfClose(qryPrevAccountReceivableAging);
    end;
  end
  else if pcAccountReceivable.ActivePage = tsOutstandingSI then
  begin
    if qryPrevUnpaidInvoiceHd.Parameters[0].Value <> qryPrevAccountReceivableHd.FieldByName('vcIdCustomer').AsString then
    begin
      qryPrevUnpaidInvoiceHd.Close;
      qryPrevUnpaidInvoiceHd.Parameters[0].Value := qryPrevAccountReceivableHd.FieldByName('vcIdCustomer').AsString;
      OpenIfClose(qryPrevUnpaidInvoiceHd);

//      qryPrevUnpaidInvoiceDt.Close;
//      qryPrevUnpaidInvoiceDt.Parameters[0].Value := qryPrevAccountReceivableHd.FieldByName('vcIdCustomer').AsString;
//      OpenIfClose(qryPrevUnpaidInvoiceDt);

      qryPrevUnpaidInvoicePayment.Close;
      qryPrevUnpaidInvoicePayment.Parameters[0].Value := qryPrevAccountReceivableHd.FieldByName('vcIdCustomer').AsString;
      OpenIfClose(qryPrevUnpaidInvoicePayment);
    end;
  end;
end;

procedure TfmDisplayCustomerAR.InitForm;
begin
  inherited;

  TcxCalcEditProperties(cgvPrevAccountReceivableHddcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevAccountReceivableHddcDownPayment.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevAccountReceivableHddcBudget.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevAccountReceivableDtDebit.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevAccountReceivableDtCredit.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevAccountReceivableDtBalance.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevUnpaidInvoiceHddcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevUnpaidInvoiceHddcDisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevUnpaidInvoiceHddcDiscAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevUnpaidInvoiceHddcTax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevUnpaidInvoiceHddcTaxAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevUnpaidInvoiceHddcTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevUnpaidInvoiceHddcOutstandingTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevUnpaidInvoiceDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevUnpaidInvoiceDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevUnpaidInvoiceDtdcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevUnpaidInvoiceDtdcDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevUnpaidInvoiceDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevUnpaidInvoicePaymentdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  shpBudgetExceed.Brush.Color := dmGlobal.stRedLight.Color;

  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
  GetMonthList(cbMonth, dmGlobal.SettingGlobal.ServerDateTime);
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;

  SetReadOnly(cgvPrevAccountReceivableHd);
  SetReadOnly(cgvPrevAccountReceivableDt);
  SetReadOnly(cgvPrevUnpaidInvoiceHd);
  SetReadOnly(cgvPrevUnpaidInvoiceDt);
  SetReadOnly(cgvPrevUnpaidInvoicePayment);

  qryPrevAccountReceivableHd.Close;
  qryPrevAccountReceivableHd.Parameters[0].Value :=
    EndOfAMonth(YearOf(dmGlobal.SettingGlobal.ServerDateTime),
    MonthOf(dmGlobal.SettingGlobal.ServerDateTime));
  OpenIfClose(qryPrevAccountReceivableHd, True);
end;

procedure TfmDisplayCustomerAR.MonthYearValueChange(Sender: TObject);
begin
  ShowARCard;
end;

procedure TfmDisplayCustomerAR.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevAccountReceivableHd);
  ShowARCard;
  LockRefresh(qryPrevUnpaidInvoiceHd);
  //LockRefresh(qryPrevUnpaidInvoiceDt);
  LockRefresh(qryPrevUnpaidInvoicePayment);
end;

procedure TfmDisplayCustomerAR.ShowARCard;
var
  i: integer;
  Balance, Debit, Credit: currency;
begin
  if qryPrevAccountReceivableHd.IsEmpty then
    Exit;

  qryPrevAccountReceivableDt.Close;
  qryPrevAccountReceivableDt.Parameters[0].Value := qryPrevAccountReceivableHd.FieldByName('vcIdCustomer').AsString;
  qryPrevAccountReceivableDt.Parameters[1].Value := StartOfAMonth(cbYear.EditValue, (cbMonth.ItemIndex + 1));
  qryPrevAccountReceivableDt.Parameters[2].Value := GetPriorPeriod(cbYear.EditingText + AddingZero(IntToStr(cbMonth.ItemIndex + 1), 2)) + '01';
  qryPrevAccountReceivableDt.Parameters[3].Value := GetPriorPeriod(GetPriorPeriod(cbYear.EditingText + AddingZero(IntToStr(cbMonth.ItemIndex + 1), 2))) + '01';
  qryPrevAccountReceivableDt.Open;
  cgvPrevAccountReceivableDt.DataController.RecordCount := qryPrevAccountReceivableDt.RecordCount;
  Balance := 0;
  for i := 0 to qryPrevAccountReceivableDt.RecordCount - 1 do
  begin
    qryPrevAccountReceivableDt.RecNo := i + 1;
    with cgvPrevAccountReceivableDt do
    begin
      if qryPrevAccountReceivableDt.FieldByName('chStatusTransaction').AsInteger = 0 then
      begin
        Debit := qryPrevAccountReceivableDt.FieldByName('dcAmount').AsFloat;
        Credit := 0;
      end
      else
      begin
        Debit := 0;
        Credit := qryPrevAccountReceivableDt.FieldByName('dcAmount').AsFloat;
      end;
      Balance := Balance + (Debit - Credit);

      DataController.Values[i, 0] := qryPrevAccountReceivableDt.FieldByName('DateTransaction').AsVariant;
      DataController.Values[i, 1] := qryPrevAccountReceivableDt.FieldByName('DescriptionText').AsVariant;
      DataController.Values[i, 2] := Debit;
      DataController.Values[i, 3] := Credit;
      DataController.Values[i, 4] := Balance;
    end;
  end;
end;

end.
