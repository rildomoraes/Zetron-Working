unit frmPurchasePayment;

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
  TfmPurchasePayment = class(TFormUniDB)
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
    cgPurchaseInvoiceHd: TcxGrid;
    cgvPurchaseInvoiceHd: TcxGridDBTableView;
    cgvPurchaseInvoiceHdvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPurchaseInvoiceHdvcPurchaseInvoiceSupplier: TcxGridDBColumn;
    cgvPurchaseInvoiceHddtPurchaseInvoiceDate: TcxGridDBColumn;
    cgvPurchaseInvoiceHddtDueDate: TcxGridDBColumn;
    cgvPurchaseInvoiceHdvcSupplierName: TcxGridDBColumn;
    cgvPurchaseInvoiceHdvcAddress: TcxGridDBColumn;
    cgvPurchaseInvoiceHdvcCategoryName: TcxGridDBColumn;
    cgvPurchaseInvoiceHddcOutstandingTotalAmount: TcxGridDBColumn;
    cgPurchaseInvoiceHdLevel1: TcxGridLevel;
    pnlDetail: TPanel;
    pnlDetailTop: TPanel;
    lblIdPurchaseInvoice: TLabel;
    lblPurchaseInvoiceDate: TLabel;
    lblInvoiceDueDate: TLabel;
    lblSupplierName: TLabel;
    lblOutstanding: TLabel;
    lblPurchaseOrder: TLabel;
    lblReceivingRecord: TLabel;
    lblDisc: TLabel;
    lblTax: TLabel;
    lblTotal: TLabel;
    lblAmount: TLabel;
    Label1: TLabel;
    dbePurchaseInvoiceDate: TcxDBDateEdit;
    dbeInvoiceDueDate: TcxDBDateEdit;
    dbeSupplierName: TcxDBTextEdit;
    dbeOutstanding: TcxDBCurrencyEdit;
    dbePurchaseOrder: TcxDBTextEdit;
    dbeReceivingRecord: TcxDBTextEdit;
    dbeIdPurchaseInvoice: TcxDBTextEdit;
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
    dbePurchaseInvoiceSupplier: TcxDBTextEdit;
    pnlDetailBottom: TPanel;
    pnlDetailBodyTop: TPanel;
    lblApproved: TLabel;
    shpApproved: TShape;
    shpReject: TShape;
    lblReject: TLabel;
    cgPurchasePayment: TcxGrid;
    cgvPurchasePayment: TcxGridDBTableView;
    cgvPurchasePaymentvcIdPurchasePayment: TcxGridDBColumn;
    cgvPurchasePaymentdtPurchasePaymentDate: TcxGridDBColumn;
    cgvPurchasePaymentvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPurchasePaymentdcAmount: TcxGridDBColumn;
    cgvPurchasePaymentvcIdPaymentType: TcxGridDBColumn;
    cgvPurchasePaymentdtEffectiveDate: TcxGridDBColumn;
    cgvPurchasePaymentvcIdBank: TcxGridDBColumn;
    cgvPurchasePaymentvcAccountNo: TcxGridDBColumn;
    cgvPurchasePaymentvcSupplierIdBank: TcxGridDBColumn;
    cgvPurchasePaymentvcSupplierAccountNo: TcxGridDBColumn;
    cgvPurchasePaymenttxNotes: TcxGridDBColumn;
    cgvPurchasePaymentvcEmployeeName: TcxGridDBColumn;
    cgvPurchasePaymentchStatusApprove: TcxGridDBColumn;
    cgvPurchaseInvoiceDt: TcxGridDBTableView;
    cgvPurchaseInvoiceDtvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPurchaseInvoiceDtinNo: TcxGridDBColumn;
    cgvPurchaseInvoiceDtvcSuppliesName: TcxGridDBColumn;
    cgvPurchaseInvoiceDtinQty: TcxGridDBColumn;
    cgvPurchaseInvoiceDtdcPrice: TcxGridDBColumn;
    cgvPurchaseInvoiceDtdcDiscItem: TcxGridDBColumn;
    cgvPurchaseInvoiceDtdcDiscItemPrice: TcxGridDBColumn;
    cgvPurchaseInvoiceDtdcAmount: TcxGridDBColumn;
    cgvPurchaseReturnDt: TcxGridDBTableView;
    cgvPurchaseReturnDtvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPurchaseReturnDtvcIdPurchaseReturn: TcxGridDBColumn;
    cgvPurchaseReturnDtvcSuppliesName: TcxGridDBColumn;
    cgvPurchaseReturnDtinQty: TcxGridDBColumn;
    cgvPurchaseReturnDtdcPrice: TcxGridDBColumn;
    cgvPurchaseReturnDtdcDisc: TcxGridDBColumn;
    cgvPurchaseReturnDtdcDiscAmount: TcxGridDBColumn;
    cgvPurchaseReturnDtdcTax: TcxGridDBColumn;
    cgvPurchaseReturnDtdcTaxAmount: TcxGridDBColumn;
    cgvPurchaseReturnDtdcAmount: TcxGridDBColumn;
    cgPurchasePaymentLevel1: TcxGridLevel;
    cgPurchasePaymentLevel2: TcxGridLevel;
    cgPurchasePaymentLevel3: TcxGridLevel;
    splDetail: TcxSplitter;
    btnPay: TcxButton;
    actPay: TAction;
    dtsIMPurchaseInvoiceHd: TADODataSet;
    dtsIMPurchaseInvoiceDt: TADODataSet;
    dtsIMPurchasePayment: TADODataSet;
    dtsIMPurchaseReturnDt: TADODataSet;
    dsIMPurchaseReturnDt: TDataSource;
    dsIMPurchasePayment: TDataSource;
    dsIMPurchaseInvoiceDt: TDataSource;
    dsIMPurchaseInvoiceHd: TDataSource;
    procedure cgvPurchasePaymentStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cgvPurchaseInvoiceHdStylesGetContentStyle(
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
  fmPurchasePayment: TfmPurchasePayment;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, dtmAccounting,
  untConstanta, frmPurchasePaymentPay;

procedure TfmPurchasePayment.actPayExecute(Sender: TObject);
begin
  inherited;

  TfmPurchasePaymentPay.ExecuteForm(cgvPurchaseInvoiceHdvcIdPurchaseInvoice.EditValue);
  btnRefresh.Click;
end;

procedure TfmPurchasePayment.cgvPurchaseInvoiceHdStylesGetContentStyle(
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

procedure TfmPurchasePayment.cgvPurchasePaymentStylesGetContentStyle(
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

procedure TfmPurchasePayment.InitForm;
begin
  inherited;

  TcxCalcEditProperties(cgvPurchaseInvoiceHddcOutstandingTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchasePaymentdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseInvoiceDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPurchaseInvoiceDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseInvoiceDtdcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPurchaseInvoiceDtdcDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseInvoiceDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseReturnDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPurchaseReturnDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseReturnDtdcDisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPurchaseReturnDtdcDiscAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseReturnDtdcTax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPurchaseReturnDtdcTaxAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseReturnDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

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
  SetReadOnly(dbeIdPurchaseInvoice, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchaseInvoiceDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeInvoiceDueDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeSupplierName, True, COLOR_INACTIVE);
  SetReadOnly(dbeReceivingRecord, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchaseOrder, True, COLOR_INACTIVE);
  SetReadOnly(dbeAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTax, True, COLOR_INACTIVE);
  SetReadOnly(dbeTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeDisc, True, COLOR_INACTIVE);
  SetReadOnly(dbeDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeOutstanding, True, COLOR_INACTIVE);
  SetReadOnly(dbmMemo, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchaseInvoiceSupplier, True, COLOR_INACTIVE);

  SetReadOnly(cgvPurchaseInvoiceHd);
  SetReadOnly(cgvPurchaseInvoiceDt);
  SetReadOnly(cgvPurchasePayment);
  SetReadOnly(cgvPurchaseReturnDt);

  OpenIfClose(dmAccounting.qryPaymentType);
  OpenIfClose(dmAccounting.qryBank);
  cgvPurchaseInvoiceHd.BeginUpdate;
  dtsIMPurchaseInvoiceHd.Close;
  dtsIMPurchaseInvoiceHd.Parameters[0].Value := '2';
  OpenIfClose(dtsIMPurchaseInvoiceHd);
  cgvPurchaseInvoiceHd.EndUpdate;
  OpenIfClose(dtsIMPurchaseInvoiceDt);
  OpenIfClose(dtsIMPurchasePayment, True);
  OpenIfClose(dtsIMPurchaseReturnDt);
end;

procedure TfmPurchasePayment.RefreshAll;
begin
  inherited;

  LockRefresh(dmAccounting.qryPaymentType);
  LockRefresh(dmAccounting.qryBank);
  LockRefresh(dtsIMPurchaseInvoiceHd, True);
  LockRefresh(dtsIMPurchaseInvoiceDt);
  LockRefresh(dtsIMPurchasePayment, True);
  LockRefresh(dtsIMPurchaseReturnDt);
end;

end.
