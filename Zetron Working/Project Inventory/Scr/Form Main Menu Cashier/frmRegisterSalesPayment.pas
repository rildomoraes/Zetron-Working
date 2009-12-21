unit frmRegisterSalesPayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  Menus, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxCalendar, cxCurrencyEdit, cxDBExtLookupComboBox,
  cxLookAndFeelPainters, untIvPositionStandard, MemDS, DBAccess, Uni,
  untIvPositionDevExpress, ActnList, ExtCtrls, StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxSplitter, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmRegisterSalesPayment = class(TForm)
    ActionList1: TActionList;
    actPay: TAction;
    actVoidPayment: TAction;
    IvPositionDevExpress1: TIvPositionDevExpress;
    btnPay: TcxButton;
    cgSalesInvoice: TcxGrid;
    cgSalesInvoiceLevel1: TcxGridLevel;
    pnlTop: TPanel;
    Label1: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    cgSalesPayment: TcxGrid;
    cgvSalesPayment: TcxGridDBTableView;
    cgSalesPaymentLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    pnlInvoice: TPanel;
    pnlPayment: TPanel;
    btnVoid: TcxButton;
    qrySalesPaymentDt: TUniQuery;
    dsSalesPaymentDt: TDataSource;
    qrySalesInvoiceHd: TUniQuery;
    dsSalesInvoiceHd: TDataSource;
    qrySalesInvoiceDt: TUniQuery;
    dsSalesInvoiceDt: TDataSource;
    cgSalesInvoiceLevel2: TcxGridLevel;
    cgvSalesInvoiceHd: TcxGridDBTableView;
    cgvSalesInvoiceHdsalesinvoiceid: TcxGridDBColumn;
    cgvSalesInvoiceHdsalesinvoicedate: TcxGridDBColumn;
    cgvSalesInvoiceHdvendorname: TcxGridDBColumn;
    cgvSalesInvoiceHdsalesinvoiceidinternal: TcxGridDBColumn;
    cgvSalesInvoiceHdwarehousename: TcxGridDBColumn;
    cgvSalesInvoiceHdemployeeid: TcxGridDBColumn;
    cgvSalesInvoiceHdsalescategoryname: TcxGridDBColumn;
    cgvSalesInvoiceHdtotalamount: TcxGridDBColumn;
    cgvSalesInvoiceHdoutstandingtotalamount: TcxGridDBColumn;
    cgvSalesInvoiceDt: TcxGridDBTableView;
    cgvSalesInvoiceDtpurchaseinvoiceid: TcxGridDBColumn;
    cgvSalesInvoiceDtno: TcxGridDBColumn;
    cgvSalesInvoiceDtitemid: TcxGridDBColumn;
    cgvSalesInvoiceDtqty: TcxGridDBColumn;
    cgvSalesInvoiceDtprice: TcxGridDBColumn;
    cgvSalesInvoiceDtdiscitem: TcxGridDBColumn;
    cgvSalesInvoiceDtdiscitemprice: TcxGridDBColumn;
    cgvSalesInvoiceDtdiscitem2: TcxGridDBColumn;
    cgvSalesInvoiceDtdiscitemprice2: TcxGridDBColumn;
    cgvSalesInvoiceDtvoucheritem: TcxGridDBColumn;
    cgvSalesInvoiceDtamount: TcxGridDBColumn;
    cgvSalesPaymentsalespaymentid: TcxGridDBColumn;
    cgvSalesPaymentsalespaymentdate: TcxGridDBColumn;
    cgvSalesPaymentpaymenttypename: TcxGridDBColumn;
    cgvSalesPaymentemployeeid: TcxGridDBColumn;
    cgvSalesPaymentamount: TcxGridDBColumn;
    cgvSalesPaymentreferenceid: TcxGridDBColumn;
    cgvSalesPaymentcashregistertransactionid: TcxGridDBColumn;
    cgvSalesPaymentsalesinvoiceid: TcxGridDBColumn;
    IvPositionStandard1: TIvPositionStandard;
    pnlMenu: TPanel;
    bvlSpacer1: TBevel;
    bvlSpacer2: TBevel;
    bvlSpacer3: TBevel;
    bvlSpacer4: TBevel;
    btnClose: TcxButton;
    btnReset: TcxButton;
    btnRefresh: TcxButton;
    actClose: TAction;
    actReset: TAction;
    actRefresh: TAction;
    qryDelSalesPaymentDt: TUniQuery;
    qryUpdCounterPrintSI: TUniQuery;
    cgvSalesInvoiceHdshiftname: TcxGridDBColumn;
    cgvSalesPaymentonhandamount: TcxGridDBColumn;
    cgvSalesPaymentshortage: TcxGridDBColumn;
    procedure MonthYearValueChange(Sender: TObject);
    procedure actPayExecute(Sender: TObject);
    procedure actVoidPaymentExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actResetExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    FCashRegisterTransactionId: string;

    procedure InitForm;
  public
    class procedure ExecuteForm(const ACashRegisterTransactionId: string);
  end;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmRegister,
  frmRegisterPayment, frmPrintFastReport;

procedure TfmRegisterSalesPayment.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmRegisterSalesPayment.actPayExecute(Sender: TObject);
begin
  if qrySalesInvoiceHd.IsEmpty then
    Exit;

  if qrySalesInvoiceHd.FieldByName('OutstandingTotalAmount').AsCurrency <> 0 then
  begin
    if TfmRegisterPayment.ExecuteForm(tptSalesPayment,
      qrySalesInvoiceHd.FieldByName('SalesInvoiceId').AsString,
      qrySalesInvoiceHd.FieldByName('CustomerId').AsString,
      qrySalesInvoiceHd.FieldByName('OutstandingTotalAmount').AsCurrency) = mrOk then
    begin
      //Print
      if TfmPrintFastReport.ExecuteForm('%', FORM_REGISTER_INVOICE_POSTING,
        qrySalesInvoiceHd.FieldByName('SalesInvoiceId').AsString, '', '') = mrOk then
      begin
        qryUpdCounterPrintSI.Params[0].Value := qrySalesInvoiceHd.FieldByName('SalesInvoiceId').AsString;
        qryUpdCounterPrintSI.Execute;
      end
      else
        MessageDlg(MSG_PRINTER_FAILED, mtInformation, [mbOk], 0);

      actRefresh.Execute;
    end;
  end;
end;

procedure TfmRegisterSalesPayment.actRefreshExecute(Sender: TObject);
begin
  MonthYearValueChange(nil); // -> Trigger qrySalesInvoiceHd
  LockRefresh(qrySalesPaymentDt);
end;

procedure TfmRegisterSalesPayment.actResetExecute(Sender: TObject);
begin
  if MessageDlg(ASK_RESET_POSITION, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  IvPositionStandard1.AutoLoad := False;
  IvPositionDevExpress1.AutoLoad := False;

  DeleteFile(IvPositionStandard1.Filename);

  MessageDlg(MSG_RESET_POSITION, mtInformation, [mbOk], 0);
end;

procedure TfmRegisterSalesPayment.actVoidPaymentExecute(Sender: TObject);
begin
  if qrySalesPaymentDt.FieldByName('CashRegisterTransactionId').AsString <>
    dmRegister.CurrentCashRegisterTransactionId then
  begin
    MessageDlg(MSG_INVALID_PAYMENT_VOID, mtInformation, [mbOk], 0);
    Exit;
  end;

  if MessageDlg(ASK_VOID, mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    qryDelSalesPaymentDt.Params[0].Value := qrySalesPaymentDt.FieldByName('SalesPaymentId').AsString;
    qryDelSalesPaymentDt.Params[1].Value := qrySalesPaymentDt.FieldByName('No').AsInteger;
    qryDelSalesPaymentDt.Execute;
    actRefresh.Execute;
  end;
end;

class procedure TfmRegisterSalesPayment.ExecuteForm(
  const ACashRegisterTransactionId: string);
var
  fmRegisterSalesPayment: TfmRegisterSalesPayment;
begin
  fmRegisterSalesPayment := TfmRegisterSalesPayment.Create(Application);
  with fmRegisterSalesPayment do
  begin
    try
      FCashRegisterTransactionId := ACashRegisterTransactionId;
      InitForm;
      ShowModal;
    finally
      Release;
    end;
  end;
end;

procedure TfmRegisterSalesPayment.InitForm;
var
  Filename: string;
begin
  Filename := dmGlobal.SettingLocal.Path_AppData + 'Setting ' +
    TranslateToNumeric(Copy(Self.Name, 3, Length(Self.Name) - 2)) + '.cfg';
  IvPositionDevExpress1.Filename := Filename;
  IvPositionDevExpress1.AutoLoad := True;
  IvPositionDevExpress1.ExecuteLoadProcceses;
  IvPositionStandard1.Filename := Filename;
  IvPositionStandard1.AutoLoad := True;
  IvPositionStandard1.ExecuteLoadProcceses;

  GetMonthList(cbMonth, dmGlobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;

  SetReadOnly(cgvSalesInvoiceHd);
  TcxCurrencyEditProperties(cgvSalesInvoiceHdtotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceHdoutstandingtotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  SetReadOnly(cgvSalesInvoiceDt);
  TcxCurrencyEditProperties(cgvSalesInvoiceDtqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtdiscitem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtdiscitemprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtdiscitem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtdiscitemprice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  SetReadOnly(cgvSalesPayment);
  TcxCurrencyEditProperties(cgvSalesPaymentamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesPaymentonhandamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesPaymentshortage.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  dmGlobal.InitComponent(Self);

  OpenIfClose(dmGlobal.qryEmployee);
  MonthYearValueChange(nil); // -> Trigger qrySalesInvoiceHd
  OpenIfClose(qrySalesPaymentDt);
end;

procedure TfmRegisterSalesPayment.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qrySalesInvoiceHd.Close;
  qrySalesInvoiceHd.Params[0].Value := StrToInt(cbYear.Text);
  qrySalesInvoiceHd.Params[1].Value := cbMonth.ItemIndex + 1;
  qrySalesInvoiceHd.Params[2].Value := dmRegister.CurrentCashRegisterTransactionId;
  OpenIfClose(qrySalesInvoiceHd, True, True);

  qrySalesInvoiceDt.Close;
  qrySalesInvoiceDt.Params[0].Value := StrToInt(cbYear.Text);
  qrySalesInvoiceDt.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qrySalesInvoiceDt, True, True);
end;

end.
