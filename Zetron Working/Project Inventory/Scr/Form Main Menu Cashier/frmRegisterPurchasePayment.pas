unit frmRegisterPurchasePayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxCalendar, cxCurrencyEdit, cxDBExtLookupComboBox, Menus,
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
  TfmRegisterPurchasePayment = class(TForm)
    ActionList1: TActionList;
    actPay: TAction;
    actVoidPayment: TAction;
    IvPositionDevExpress1: TIvPositionDevExpress;
    btnPay: TcxButton;
    cgPurchaseInvoice: TcxGrid;
    cgPurchaseInvoiceLevel1: TcxGridLevel;
    pnlTop: TPanel;
    Label1: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    cgPurchasePayment: TcxGrid;
    cgvPurchasePayment: TcxGridDBTableView;
    cgPurchasePaymentLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    pnlInvoice: TPanel;
    pnlPayment: TPanel;
    btnVoid: TcxButton;
    qryPurchasePaymentDt: TUniQuery;
    dsPurchasePaymentDt: TDataSource;
    qryPurchaseInvoiceHd: TUniQuery;
    dsPurchaseInvoiceHd: TDataSource;
    qryPurchaseInvoiceDt: TUniQuery;
    dsPurchaseInvoiceDt: TDataSource;
    cgPurchaseInvoiceLevel2: TcxGridLevel;
    cgvPurchaseInvoiceHd: TcxGridDBTableView;
    cgvPurchaseInvoiceHdPurchaseinvoiceid: TcxGridDBColumn;
    cgvPurchaseInvoiceHdPurchaseinvoicedate: TcxGridDBColumn;
    cgvPurchaseInvoiceHdvendorname: TcxGridDBColumn;
    cgvPurchaseInvoiceHdPurchaseinvoiceidinternal: TcxGridDBColumn;
    cgvPurchaseInvoiceHdwarehousename: TcxGridDBColumn;
    cgvPurchaseInvoiceHdemployeeid: TcxGridDBColumn;
    cgvPurchaseInvoiceHdPurchasecategoryname: TcxGridDBColumn;
    cgvPurchaseInvoiceHdtotalamount: TcxGridDBColumn;
    cgvPurchaseInvoiceHdoutstandingtotalamount: TcxGridDBColumn;
    cgvPurchaseInvoiceDt: TcxGridDBTableView;
    cgvPurchaseInvoiceDtpurchaseinvoiceid: TcxGridDBColumn;
    cgvPurchaseInvoiceDtno: TcxGridDBColumn;
    cgvPurchaseInvoiceDtitemid: TcxGridDBColumn;
    cgvPurchaseInvoiceDtqty: TcxGridDBColumn;
    cgvPurchaseInvoiceDtprice: TcxGridDBColumn;
    cgvPurchaseInvoiceDtdiscitem: TcxGridDBColumn;
    cgvPurchaseInvoiceDtdiscitemprice: TcxGridDBColumn;
    cgvPurchaseInvoiceDtdiscitem2: TcxGridDBColumn;
    cgvPurchaseInvoiceDtdiscitemprice2: TcxGridDBColumn;
    cgvPurchaseInvoiceDtvoucheritem: TcxGridDBColumn;
    cgvPurchaseInvoiceDtamount: TcxGridDBColumn;
    cgvPurchasePaymentPurchasepaymentid: TcxGridDBColumn;
    cgvPurchasePaymentPurchasepaymentdate: TcxGridDBColumn;
    cgvPurchasePaymentpaymenttypename: TcxGridDBColumn;
    cgvPurchasePaymentemployeeid: TcxGridDBColumn;
    cgvPurchasePaymentamount: TcxGridDBColumn;
    cgvPurchasePaymentreferenceid: TcxGridDBColumn;
    cgvPurchasePaymentcashregistertransactionid: TcxGridDBColumn;
    cgvPurchasePaymentPurchaseinvoiceid: TcxGridDBColumn;
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
    qryDelPurchasePaymentDt: TUniQuery;
    cgvPurchasePaymentonhandamount: TcxGridDBColumn;
    cgvPurchasePaymentshortage: TcxGridDBColumn;
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
  frmRegisterPayment;

procedure TfmRegisterPurchasePayment.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmRegisterPurchasePayment.actPayExecute(Sender: TObject);
begin
  if qryPurchaseInvoiceHd.IsEmpty then
    Exit;

  if qryPurchaseInvoiceHd.FieldByName('OutstandingTotalAmount').AsCurrency <> 0 then
  begin
    if TfmRegisterPayment.ExecuteForm(tptPurchasePayment,
      qryPurchaseInvoiceHd.FieldByName('PurchaseInvoiceId').AsString,
      qryPurchaseInvoiceHd.FieldByName('VendorId').AsString,
      qryPurchaseInvoiceHd.FieldByName('OutstandingTotalAmount').AsCurrency) = mrOk then
    begin
      actRefresh.Execute;
    end;
  end;
end;

procedure TfmRegisterPurchasePayment.actRefreshExecute(Sender: TObject);
begin
  MonthYearValueChange(nil); // -> Trigger qryPurchaseInvoiceHd
  LockRefresh(qryPurchasePaymentDt);
end;

procedure TfmRegisterPurchasePayment.actResetExecute(Sender: TObject);
begin
  if MessageDlg(ASK_RESET_POSITION, mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  IvPositionStandard1.AutoLoad := False;
  IvPositionDevExpress1.AutoLoad := False;

  DeleteFile(IvPositionStandard1.Filename);

  MessageDlg(MSG_RESET_POSITION, mtInformation, [mbOk], 0);
end;

procedure TfmRegisterPurchasePayment.actVoidPaymentExecute(Sender: TObject);
begin
  if qryPurchasePaymentDt.FieldByName('CashRegisterTransactionId').AsString <>
    dmRegister.CurrentCashRegisterTransactionId then
  begin
    MessageDlg(MSG_INVALID_PAYMENT_VOID, mtInformation, [mbOk], 0);
    Exit;
  end;

  if MessageDlg(ASK_VOID, mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    qryDelPurchasePaymentDt.Params[0].Value := qryPurchasePaymentDt.FieldByName('PurchasePaymentId').AsString;
    qryDelPurchasePaymentDt.Params[1].Value := qryPurchasePaymentDt.FieldByName('No').AsInteger;
    qryDelPurchasePaymentDt.Execute;
    actRefresh.Execute;
  end;
end;

class procedure TfmRegisterPurchasePayment.ExecuteForm(
  const ACashRegisterTransactionId: string);
var
  fmRegisterPurchasePayment: TfmRegisterPurchasePayment;
begin
  fmRegisterPurchasePayment := TfmRegisterPurchasePayment.Create(Application);
  with fmRegisterPurchasePayment do
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

procedure TfmRegisterPurchasePayment.InitForm;
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

  SetReadOnly(cgvPurchaseInvoiceHd);
  TcxCurrencyEditProperties(cgvPurchaseInvoiceHdtotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceHdoutstandingtotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  SetReadOnly(cgvPurchaseInvoiceDt);
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtdiscitem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtdiscitemprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtdiscitem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtdiscitemprice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseInvoiceDtamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  SetReadOnly(cgvPurchasePayment);
  TcxCurrencyEditProperties(cgvPurchasePaymentamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchasePaymentonhandamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchasePaymentshortage.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  dmGlobal.InitComponent(Self);

  OpenIfClose(dmGlobal.qryEmployee);
  MonthYearValueChange(nil); // -> Trigger qryPurchaseInvoiceHd
  OpenIfClose(qryPurchasePaymentDt);
end;

procedure TfmRegisterPurchasePayment.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qryPurchaseInvoiceHd.Close;
  qryPurchaseInvoiceHd.Params[0].Value := StrToInt(cbYear.Text);
  qryPurchaseInvoiceHd.Params[1].Value := cbMonth.ItemIndex + 1;
  qryPurchaseInvoiceHd.Params[2].Value := dmRegister.CurrentCashRegisterTransactionId;
  OpenIfClose(qryPurchaseInvoiceHd, True, True);

  qryPurchaseInvoiceDt.Close;
  qryPurchaseInvoiceDt.Params[0].Value := StrToInt(cbYear.Text);
  qryPurchaseInvoiceDt.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryPurchaseInvoiceDt, True, True);
end;

end.
