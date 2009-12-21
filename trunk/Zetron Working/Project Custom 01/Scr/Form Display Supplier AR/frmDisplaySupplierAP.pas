unit frmDisplaySupplierAP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  //
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, DB, ADODB, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  StdCtrls, cxButtons, ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit, cxCalendar, cxCalc,
  cxGridLevel, cxGridChartView, cxGridDBChartView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxPC, cxCheckBox, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TfmDisplaySupplierAP = class(TFormUniDisplay)
    qryPrevAccountPayableHd: TADOQuery;
    dsPrevAccountPayableHd: TDataSource;
    qryPrevAccountPayableDt: TADOQuery;
    qryPrevAccountPayableAging: TADOQuery;
    qryPrevUnpaidInvoiceHd: TADOQuery;
    qryPrevUnpaidInvoiceDt: TADOQuery;
    qryPrevUnpaidInvoicePayment: TADOQuery;
    dsPrevAccountPayableDt: TDataSource;
    dsPrevAccountPayableAging: TDataSource;
    dsPrevUnpaidInvoiceHd: TDataSource;
    dsPrevUnpaidInvoiceDt: TDataSource;
    dsPrevUnpaidInvoicePayment: TDataSource;
    pcAccountPayable: TcxPageControl;
    tsHutang: TcxTabSheet;
    tsHutangDetail: TcxTabSheet;
    tsUmurHutang: TcxTabSheet;
    tsOutstandingPI: TcxTabSheet;
    cgAccountPayable: TcxGrid;
    cgvPrevAccountPayableHd: TcxGridDBTableView;
    cgvPrevAccountPayableHdvcIdSupplier: TcxGridDBColumn;
    cgvPrevAccountPayableHdvcSupplierName: TcxGridDBColumn;
    cgvPrevAccountPayableHdvcCityName: TcxGridDBColumn;
    cgvPrevAccountPayableHddcAmount: TcxGridDBColumn;
    cgvPrevAccountPayableHddcDownPayment: TcxGridDBColumn;
    cgvPrevAccountPayableHddcBudget: TcxGridDBColumn;
    cgvPrevAccountPayableDt: TcxGridTableView;
    cgvPrevAccountPayableDtDate: TcxGridColumn;
    cgvPrevAccountPayableDtDesc: TcxGridColumn;
    cgvPrevAccountPayableDtDebit: TcxGridColumn;
    cgvPrevAccountPayableDtCredit: TcxGridColumn;
    cgvPrevAccountPayableDtBalance: TcxGridColumn;
    cgvPrevAccountPayableAging: TcxGridDBChartView;
    cgvPrevAccountPayableAgingSeries1: TcxGridDBChartSeries;
    cgvPrevUnpaidInvoiceHd: TcxGridDBTableView;
    cgvPrevUnpaidInvoiceHdvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddtPurchaseInvoiceDate: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdvcIdReceivingRecord: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdvcIdPurchaseOrder: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdvcIdSupplier: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdvcSupplierName: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdvcPurchaseInvoiceSupplier: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdinInvoiceDueDay: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddcAmount: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddcDisc: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddcDiscAmount: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddcTax: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddcTaxAmount: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddcTotalAmount: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHddcOutstandingTotalAmount: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceHdvcEmployeeName: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDt: TcxGridDBTableView;
    cgvPrevUnpaidInvoiceDtvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtinNo: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtvcIdSupplies: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtvcSuppliesName: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtinQty: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtdcPrice: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtdcDiscItem: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtdcDiscItemPrice: TcxGridDBColumn;
    cgvPrevUnpaidInvoiceDtdcAmount: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePayment: TcxGridDBTableView;
    cgvPrevUnpaidInvoicePaymentvcIdPurchasePayment: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentdtPurchasePaymentDate: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentvcPaymentTypeName: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentdtEffectiveDate: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentvcIdBank: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentvcAccountNo: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentvcSupplierIdBank: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentvcSupplierAccountNo: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentdcAmount: TcxGridDBColumn;
    cgvPrevUnpaidInvoicePaymentvcEmployeeName: TcxGridDBColumn;
    cgAccountPayableLevel1: TcxGridLevel;
    cgAccountPayableDtLevel1: TcxGridLevel;
    cgAccountPayableDt: TcxGrid;
    cgAccountPayableAgingLevel1: TcxGridLevel;
    cgAccountPayableAging: TcxGrid;
    cgOutstandingInvoiceLevel1: TcxGridLevel;
    cgOutstandingInvoice: TcxGrid;
    cgOutstandingInvoiceLevel2: TcxGridLevel;
    pnlHeader: TPanel;
    lblBudgetExceeded: TLabel;
    shpBudgetExceed: TShape;
    Panel1: TPanel;
    lblPeriod: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    procedure cgvPrevAccountPayableHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure pcAccountPayableChange(Sender: TObject);
    procedure MonthYearValueChange(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    procedure ShowAPCard;
  public
    { Public declarations }
  end;

var
  fmDisplaySupplierAP: TfmDisplaySupplierAP;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, untConstanta;

procedure TfmDisplaySupplierAP.cgvPrevAccountPayableHdStylesGetContentStyle(
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

procedure TfmDisplaySupplierAP.InitForm;
begin
  inherited;

  TcxCalcEditProperties(cgvPrevAccountPayableHddcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevAccountPayableHddcDownPayment.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevAccountPayableHddcBudget.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevAccountPayableDtDebit.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevAccountPayableDtCredit.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevAccountPayableDtBalance.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
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

  SetReadOnly(cgvPrevAccountPayableHd);
  SetReadOnly(cgvPrevAccountPayableDt);
  SetReadOnly(cgvPrevUnpaidInvoiceHd);
  SetReadOnly(cgvPrevUnpaidInvoiceDt);
  SetReadOnly(cgvPrevUnpaidInvoicePayment);

  qryPrevAccountPayableHd.Close;
  qryPrevAccountPayableHd.Parameters[0].Value :=
    EndOfAMonth(YearOf(dmGlobal.SettingGlobal.ServerDateTime),
    MonthOf(dmGlobal.SettingGlobal.ServerDateTime));
  OpenIfClose(qryPrevAccountPayableHd, True);
end;

procedure TfmDisplaySupplierAP.MonthYearValueChange(Sender: TObject);
begin
  ShowAPCard;
end;

procedure TfmDisplaySupplierAP.pcAccountPayableChange(Sender: TObject);
begin
  inherited;

  if qryPrevAccountPayableHd.IsEmpty then
  begin
    qryPrevAccountPayableAging.Close;
    qryPrevUnpaidInvoiceHd.Close;
    Exit;
  end;

  if pcAccountPayable.ActivePage = tsHutangDetail then
  begin
    if qryPrevAccountPayableDt.Parameters[0].Value <> qryPrevAccountPayableHd.FieldByName('vcIdSupplier').AsString then
      ShowAPCard;
  end
  else if pcAccountPayable.ActivePage = tsUmurHutang then
  begin
    if qryPrevAccountPayableAging.Parameters[0].Value <> qryPrevAccountPayableHd.FieldByName('vcIdSupplier').AsString then
    begin
      qryPrevAccountPayableAging.Close;
      qryPrevAccountPayableAging.Parameters[0].Value := qryPrevAccountPayableHd.FieldByName('vcIdSupplier').AsString;
      OpenIfClose(qryPrevAccountPayableAging);
    end;
  end
  else if pcAccountPayable.ActivePage = tsOutstandingPI then
  begin
    if qryPrevUnpaidInvoiceHd.Parameters[0].Value <> qryPrevAccountPayableHd.FieldByName('vcIdSupplier').AsString then
    begin
      qryPrevUnpaidInvoiceHd.Close;
      qryPrevUnpaidInvoiceHd.Parameters[0].Value := qryPrevAccountPayableHd.FieldByName('vcIdSupplier').AsString;
      OpenIfClose(qryPrevUnpaidInvoiceHd);

//      qryPrevUnpaidInvoiceDt.Close;
//      qryPrevUnpaidInvoiceDt.Parameters[0].Value := qryPrevAccountPayableHd.FieldByName('vcIdSupplier').AsString;
//      OpenIfClose(qryPrevUnpaidInvoiceDt);

      qryPrevUnpaidInvoicePayment.Close;
      qryPrevUnpaidInvoicePayment.Parameters[0].Value := qryPrevAccountPayableHd.FieldByName('vcIdSupplier').AsString;
      OpenIfClose(qryPrevUnpaidInvoicePayment);
    end;
  end;
end;

procedure TfmDisplaySupplierAP.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevAccountPayableHd);
  ShowAPCard;
  LockRefresh(qryPrevUnpaidInvoiceHd);
  //LockRefresh(qryPrevUnpaidInvoiceDt);
  LockRefresh(qryPrevUnpaidInvoicePayment);
end;

procedure TfmDisplaySupplierAP.ShowAPCard;
var
  i: integer;
  Balance, Debit, Credit: currency;
begin
  qryPrevAccountPayableDt.Close;
  qryPrevAccountPayableDt.Parameters[0].Value := qryPrevAccountPayableHd.FieldByName('vcIdSupplier').AsString;
  qryPrevAccountPayableDt.Parameters[1].Value := StartOfAMonth(cbYear.EditValue, cbMonth.ItemIndex + 1);
  qryPrevAccountPayableDt.Parameters[2].Value := GetPriorPeriod(cbYear.EditingText + AddingZero(IntToStr(cbMonth.ItemIndex + 1), 2)) + '01';
  qryPrevAccountPayableDt.Parameters[3].Value := GetPriorPeriod(GetPriorPeriod(cbYear.EditingText + AddingZero(IntToStr(cbMonth.ItemIndex + 1), 2))) + '01';
  qryPrevAccountPayableDt.Open;
  cgvPrevAccountPayableDt.DataController.RecordCount := qryPrevAccountPayableDt.RecordCount;
  Balance := 0;
  for i := 0 to qryPrevAccountPayableDt.RecordCount - 1 do
  begin
    qryPrevAccountPayableDt.RecNo := i + 1;
    with cgvPrevAccountPayableDt do
    begin
      if qryPrevAccountPayableDt.FieldByName('chStatusTransaction').AsInteger = 0 then
      begin
        Debit := qryPrevAccountPayableDt.FieldByName('dcAmount').AsFloat;
        Credit := 0;
      end
      else
      begin
        Debit := 0;
        Credit := qryPrevAccountPayableDt.FieldByName('dcAmount').AsFloat;
      end;
      Balance := Balance + (Debit - Credit);

      DataController.Values[i, 0] := qryPrevAccountPayableDt.FieldByName('DateTransaction').AsVariant;
      DataController.Values[i, 1] := qryPrevAccountPayableDt.FieldByName('DescriptionText').AsVariant;
      DataController.Values[i, 2] := Debit;
      DataController.Values[i, 3] := Credit;
      DataController.Values[i, 4] := Balance;
    end;
  end;
end;

end.
