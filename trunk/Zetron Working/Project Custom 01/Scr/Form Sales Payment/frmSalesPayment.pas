unit frmSalesPayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  //
  frmUniDB, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCalendar, cxCurrencyEdit,
  cxDBExtLookupComboBox, cxCalc, ADODB, cxSplitter, cxMemo, cxDBEdit, cxPC,
  cxSpinEdit, cxDropDownEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxTextEdit, cxContainer, cxMaskEdit, ExtCtrls, StdCtrls,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxButtons;

type
  TfmSalesPayment = class(TFormUniDB)
    pnlHeader: TPanel;
    pnlHeaderTop: TPanel;
    shpDueDateOneMonth: TShape;
    lbl2Month: TLabel;
    shpDueDateOverTwoMonth: TShape;
    lblOver1Month: TLabel;
    shpDueDateOverOneMonth: TShape;
    lblBefore: TLabel;
    shpDueDateNow: TShape;
    lblDueDateToday: TLabel;
    shpDueDateExpired: TShape;
    lblDueDateExpired: TLabel;
    bvlBevel1: TBevel;
    lblToday: TLabel;
    edtToday: TcxTextEdit;
    cgSalesInvoiceHd: TcxGrid;
    cgvSalesInvoiceHd: TcxGridDBTableView;
    cgvSalesInvoiceHdvcIdSalesInvoice: TcxGridDBColumn;
    cgvSalesInvoiceHdvcSalesInvoiceCustomer: TcxGridDBColumn;
    cgvSalesInvoiceHddtSalesInvoiceDate: TcxGridDBColumn;
    cgvSalesInvoiceHddtDueDate: TcxGridDBColumn;
    cgvSalesInvoiceHdvcCustomerName: TcxGridDBColumn;
    cgvSalesInvoiceHdvcAddress: TcxGridDBColumn;
    cgvSalesInvoiceHdvcCategoryName: TcxGridDBColumn;
    cgvSalesInvoiceHddcOutstandingTotalAmount: TcxGridDBColumn;
    cgSalesInvoiceHdLevel1: TcxGridLevel;
    pnlDetail: TPanel;
    pnlDetailTop: TPanel;
    lblIdSalesInvoice: TLabel;
    lblSalesInvoiceDate: TLabel;
    lblInvoiceDueDate: TLabel;
    lblCustomerName: TLabel;
    lblOutstanding: TLabel;
    lblSalesOrder: TLabel;
    lblReceivingRecord: TLabel;
    lblDisc: TLabel;
    lblTax: TLabel;
    lblTotal: TLabel;
    lblAmount: TLabel;
    Label1: TLabel;
    dbeSalesInvoiceDate: TcxDBDateEdit;
    dbeInvoiceDueDate: TcxDBDateEdit;
    dbeCustomerName: TcxDBTextEdit;
    dbeOutstanding: TcxDBCurrencyEdit;
    dbeSalesOrder: TcxDBTextEdit;
    dbeDeliveryOrder: TcxDBTextEdit;
    dbeIdSalesInvoice: TcxDBTextEdit;
    dbeDisc: TcxDBSpinEdit;
    dbeTax: TcxDBSpinEdit;
    dbeAmount: TcxDBCurrencyEdit;
    dbeDiscAmount: TcxDBCurrencyEdit;
    dbeTaxAmount: TcxDBCurrencyEdit;
    dbeTotalAmount: TcxDBCurrencyEdit;
    pcNotes: TcxPageControl;
    tsMemo: TcxTabSheet;
    dbmMemo: TcxDBMemo;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    dbeRef: TcxDBTextEdit;
    pnlDetailBottom: TPanel;
    pnlDetailBodyTop: TPanel;
    lblApproved: TLabel;
    shpApproved: TShape;
    shpReject: TShape;
    lblReject: TLabel;
    cgSalesPayment: TcxGrid;
    cgvSalesPayment: TcxGridDBTableView;
    cgvSalesPaymentvcIdSalesPayment: TcxGridDBColumn;
    cgvSalesPaymentdtSalesPaymentDate: TcxGridDBColumn;
    cgvSalesPaymentvcIdSalesInvoice: TcxGridDBColumn;
    cgvSalesPaymentdcAmount: TcxGridDBColumn;
    cgvSalesPaymentvcIdPaymentType: TcxGridDBColumn;
    cgvSalesPaymentdtEffectiveDate: TcxGridDBColumn;
    cgvSalesPaymentvcIdBank: TcxGridDBColumn;
    cgvSalesPaymentvcAccountNo: TcxGridDBColumn;
    cgvSalesPaymentvcCustomerIdBank: TcxGridDBColumn;
    cgvSalesPaymentvcCustomerAccountNo: TcxGridDBColumn;
    cgvSalesPaymenttxNotes: TcxGridDBColumn;
    cgvSalesPaymentvcEmployeeName: TcxGridDBColumn;
    cgvSalesPaymentchStatusApprove: TcxGridDBColumn;
    cgvSalesInvoiceDt: TcxGridDBTableView;
    cgvSalesInvoiceDtvcIdSalesInvoice: TcxGridDBColumn;
    cgvSalesInvoiceDtinNo: TcxGridDBColumn;
    cgvSalesInvoiceDtvcSuppliesName: TcxGridDBColumn;
    cgvSalesInvoiceDtinQty: TcxGridDBColumn;
    cgvSalesInvoiceDtdcPrice: TcxGridDBColumn;
    cgvSalesInvoiceDtdcDiscItem: TcxGridDBColumn;
    cgvSalesInvoiceDtdcDiscItemPrice: TcxGridDBColumn;
    cgvSalesInvoiceDtdcAmount: TcxGridDBColumn;
    cgvSalesReturnDt: TcxGridDBTableView;
    cgvSalesReturnDtvcIdSalesInvoice: TcxGridDBColumn;
    cgvSalesReturnDtvcIdSalesReturn: TcxGridDBColumn;
    cgvSalesReturnDtvcSuppliesName: TcxGridDBColumn;
    cgvSalesReturnDtinQty: TcxGridDBColumn;
    cgvSalesReturnDtdcPrice: TcxGridDBColumn;
    cgvSalesReturnDtdcDisc: TcxGridDBColumn;
    cgvSalesReturnDtdcDiscAmount: TcxGridDBColumn;
    cgvSalesReturnDtdcTax: TcxGridDBColumn;
    cgvSalesReturnDtdcTaxAmount: TcxGridDBColumn;
    cgvSalesReturnDtdcAmount: TcxGridDBColumn;
    cgSalesPaymentLevel1: TcxGridLevel;
    cgSalesPaymentLevel2: TcxGridLevel;
    cgSalesPaymentLevel3: TcxGridLevel;
    splDetail: TcxSplitter;
    btnPay: TcxButton;
    actPay: TAction;
    dtsIMSalesInvoiceHd: TADODataSet;
    dtsIMSalesInvoiceDt: TADODataSet;
    dtsIMSalesPayment: TADODataSet;
    dtsIMSalesReturnDt: TADODataSet;
    dsIMSalesReturnDt: TDataSource;
    dsIMSalesPayment: TDataSource;
    dsIMSalesInvoiceDt: TDataSource;
    dsIMSalesInvoiceHd: TDataSource;
    procedure cgvSalesPaymentStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cgvSalesInvoiceHdStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure actPayExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
  public
    { Public declarations }
  end;

var
  fmSalesPayment: TfmSalesPayment;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, dtmAccounting,
  untConstanta, frmSalesPaymentPay;

procedure TfmSalesPayment.actPayExecute(Sender: TObject);
begin
  inherited;

  TfmSalesPaymentPay.ExecuteForm(cgvSalesInvoiceHdvcIdSalesInvoice.EditValue);
  btnRefresh.Click;
end;

procedure TfmSalesPayment.cgvSalesInvoiceHdStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  DueDate: TDateTime;
  Today: TDateTime;
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    // Due Date = Invoice Date + Invoice Due Day
    DueDate := VarToDateTime(ARecord.Values[GetColumnByFieldName('dtDueDate').Index]);
    Today := DateOf(dmGlobal.SettingGlobal.ServerDateTime);

    // Not yet
    if DueDate > Today then
      AStyle := dmGlobal.stGreenLight;
    if DueDate = Today then
      AStyle := dmGlobal.stGreen;

    if Today > DueDate then
    begin
      AStyle := dmGlobal.stYellowLight;
      if (Today - 30) > DueDate then
        AStyle := dmGlobal.stRedLight;
      if (Today - 60) > DueDate then
        AStyle := dmGlobal.stRed;
    end;

//    // 30 in day
//    if DueDate <= (Today + 30) then
//    begin
//      AStyle := dmGlobal.stGreenLight;
//      // 14 in day
//      if DueDate <= (Today + 14) then
//      begin
//        AStyle := dmGlobal.stYellowLight;
//        // 7 in day
//        if DueDate <= (Today + 7) then
//        begin
//          AStyle := dmGlobal.stOrangeLight;
//          // Today
//          if DueDate = Today then
//            AStyle := dmGlobal.stRedLight;
//          // Expired
//          if DueDate < Today then
//            AStyle := dmGlobal.stRed;
//        end;
//      end;
//    end;
  end;
end;

procedure TfmSalesPayment.cgvSalesPaymentStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) = IntToStr(STATUS_DONE) then
      AStyle := dmGlobal.stGreenLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) = IntToStr(STATUS_REJECT) then
      AStyle := dmGlobal.stRedLight;
  end;
end;

procedure TfmSalesPayment.InitForm;
begin
  inherited;

  TcxCalcEditProperties(cgvSalesInvoiceHddcOutstandingTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesPaymentdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesInvoiceDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSalesInvoiceDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesInvoiceDtdcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvSalesInvoiceDtdcDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesInvoiceDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesReturnDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSalesReturnDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesReturnDtdcDisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvSalesReturnDtdcDiscAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesReturnDtdcTax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvSalesReturnDtdcTaxAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesReturnDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  dbeOutstanding.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTaxAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeDiscAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTax.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeDisc.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;

  shpDueDateOneMonth.Brush.Color := dmGlobal.stGreenLight.Color;
  shpDueDateNow.Brush.Color := dmGlobal.stGreen.Color;
  shpDueDateOverOneMonth.Brush.Color := dmGlobal.stYellowLight.Color;
  shpDueDateOverTwoMonth.Brush.Color := dmGlobal.stRedLight.Color;
  shpDueDateExpired.Brush.Color := dmGlobal.stRed.Color;
  shpApproved.Brush.Color := dmGlobal.stGreenLight.Color;
  shpReject.Brush.Color := dmGlobal.stRedLight.Color;

  edtToday.EditValue := DateToStr(dmGlobal.SettingGlobal.ServerDateTime);
  SetReadOnly(edtToday, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdSalesInvoice, True, COLOR_INACTIVE);
  SetReadOnly(dbeSalesInvoiceDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeInvoiceDueDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeCustomerName, True, COLOR_INACTIVE);
  SetReadOnly(dbeDeliveryOrder, True, COLOR_INACTIVE);
  SetReadOnly(dbeSalesOrder, True, COLOR_INACTIVE);
  SetReadOnly(dbeAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTax, True, COLOR_INACTIVE);
  SetReadOnly(dbeTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeDisc, True, COLOR_INACTIVE);
  SetReadOnly(dbeDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeOutstanding, True, COLOR_INACTIVE);
  SetReadOnly(dbmMemo, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbeRef, True, COLOR_INACTIVE);

  SetReadOnly(cgvSalesInvoiceHd);
  SetReadOnly(cgvSalesInvoiceDt);
  SetReadOnly(cgvSalesPayment);
  SetReadOnly(cgvSalesReturnDt);

  OpenIfClose(dmAccounting.qryPaymentType);
  OpenIfClose(dmAccounting.qryBank);
  cgvSalesInvoiceHd.BeginUpdate;
  dtsIMSalesInvoiceHd.Close;
  dtsIMSalesInvoiceHd.Parameters[0].Value := '3';
  dtsIMSalesInvoiceHd.Open;
  cgvSalesInvoiceHd.EndUpdate;
  OpenIfClose(dtsIMSalesInvoiceDt);
  OpenIfClose(dtsIMSalesPayment, True);
  OpenIfClose(dtsIMSalesReturnDt);
end;

procedure TfmSalesPayment.RefreshAll;
begin
  inherited;

  LockRefresh(dmAccounting.qryPaymentType);
  LockRefresh(dmAccounting.qryBank);
  LockRefresh(dtsIMSalesInvoiceHd, True);
  LockRefresh(dtsIMSalesInvoiceDt);
  LockRefresh(dtsIMSalesPayment, True);
  LockRefresh(dtsIMSalesReturnDt);
end;

end.
