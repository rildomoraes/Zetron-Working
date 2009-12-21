unit frmCashRegisterTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplayPeriod, Menus, cxLookAndFeelPainters, cxGraphics, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCurrencyEdit, cxDBExtLookupComboBox, Uni, MemDS, DBAccess, ExtCtrls,
  cxSplitter, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBEdit,
  cxDropDownEdit, cxCalendar, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxContainer,
  cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter;

type
  TfmCashRegisterTransaction = class(TFormUniDisplayPeriod)
    qryDisplay: TUniQuery;
    dsDisplay: TDataSource;
    qryRegisterSalesHd: TUniQuery;
    dsRegisterSalesHd: TDataSource;
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgDisplayLevel1: TcxGridLevel;
    cgvDisplaytanggal: TcxGridDBColumn;
    cgvDisplayshiftname: TcxGridDBColumn;
    cgvDisplaydateopening: TcxGridDBColumn;
    cgvDisplaydateclosing: TcxGridDBColumn;
    cgvDisplayopeningbalance: TcxGridDBColumn;
    cgvDisplaycashregistername: TcxGridDBColumn;
    cgvDisplayemployeename: TcxGridDBColumn;
    cgvDisplaycashregistertransactionid: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    pnlClient: TPanel;
    pnlClientTop: TPanel;
    cgvRegisterSalesHd: TcxGridDBTableView;
    cgDetailLevel1: TcxGridLevel;
    cgDetail: TcxGrid;
    cgDetailLevel2: TcxGridLevel;
    cgvSalesInvoiceHd: TcxGridDBTableView;
    lblCashRegisterTransaction: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbeCashRegisterTransactionId: TcxDBTextEdit;
    dbeDateOpening: TcxDBDateEdit;
    dbeDateClosing: TcxDBDateEdit;
    lblOpeningBalance: TLabel;
    lblEmployeeId: TLabel;
    dbeEmployeeName: TcxDBTextEdit;
    dbeOpeningBalance: TcxDBCurrencyEdit;
    lblCashRegisterId: TLabel;
    dbeCashRegisterName: TcxDBTextEdit;
    qrySalesInvoiceHd: TUniQuery;
    dsSalesInvoiceHd: TDataSource;
    cgvRegisterSalesHdregistersalesid: TcxGridDBColumn;
    cgvRegisterSalesHdcashregistertransactionid: TcxGridDBColumn;
    cgvRegisterSalesHdregistersalesdate: TcxGridDBColumn;
    cgvRegisterSalesHdamount: TcxGridDBColumn;
    cgvRegisterSalesHddisc: TcxGridDBColumn;
    cgvRegisterSalesHddiscamount: TcxGridDBColumn;
    cgvRegisterSalesHddisc2: TcxGridDBColumn;
    cgvRegisterSalesHddiscamount2: TcxGridDBColumn;
    cgvRegisterSalesHdvoucher: TcxGridDBColumn;
    cgvRegisterSalesHdvoucheramount: TcxGridDBColumn;
    cgvRegisterSalesHdtax: TcxGridDBColumn;
    cgvRegisterSalesHdtaxamount: TcxGridDBColumn;
    cgvRegisterSalesHdtotalamount: TcxGridDBColumn;
    cgvRegisterSalesHdoutstandingtotalamount: TcxGridDBColumn;
    cgvRegisterSalesHdstatementmemo: TcxGridDBColumn;
    cgvRegisterSalesHdinternalmemo: TcxGridDBColumn;
    cgvRegisterSalesHdcounterprint: TcxGridDBColumn;
    cgvRegisterSalesHdstatusapprove: TcxGridDBColumn;
    cgvSalesInvoiceHdsalesinvoiceid: TcxGridDBColumn;
    cgvSalesInvoiceHdsalesinvoicedate: TcxGridDBColumn;
    cgvSalesInvoiceHdcustomerid: TcxGridDBColumn;
    cgvSalesInvoiceHdsalesinvoiceidinternal: TcxGridDBColumn;
    cgvSalesInvoiceHdwarehouseid: TcxGridDBColumn;
    cgvSalesInvoiceHdoutletid: TcxGridDBColumn;
    cgvSalesInvoiceHdcurrencyid: TcxGridDBColumn;
    cgvSalesInvoiceHdkurs: TcxGridDBColumn;
    cgvSalesInvoiceHdamount: TcxGridDBColumn;
    cgvSalesInvoiceHddisc: TcxGridDBColumn;
    cgvSalesInvoiceHddiscamount: TcxGridDBColumn;
    cgvSalesInvoiceHddisc2: TcxGridDBColumn;
    cgvSalesInvoiceHddiscamount2: TcxGridDBColumn;
    cgvSalesInvoiceHdvoucher: TcxGridDBColumn;
    cgvSalesInvoiceHdvoucheramount: TcxGridDBColumn;
    cgvSalesInvoiceHdtax: TcxGridDBColumn;
    cgvSalesInvoiceHdtaxamount: TcxGridDBColumn;
    cgvSalesInvoiceHdtaxnumber: TcxGridDBColumn;
    cgvSalesInvoiceHdtaxdate: TcxGridDBColumn;
    cgvSalesInvoiceHdpph22: TcxGridDBColumn;
    cgvSalesInvoiceHdpph22amount: TcxGridDBColumn;
    cgvSalesInvoiceHdmeterai: TcxGridDBColumn;
    cgvSalesInvoiceHdtotalamount: TcxGridDBColumn;
    cgvSalesInvoiceHdoutstandingtotalamount: TcxGridDBColumn;
    cgvSalesInvoiceHdstatusapprove: TcxGridDBColumn;
    cgvSalesInvoiceHdcashregistertransactionid: TcxGridDBColumn;
    cxButton1: TcxButton;
    actPosting: TAction;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    pnlLeft: TPanel;
    Image2: TImage;
    Label4: TLabel;
    cgvDisplaystatusposting: TcxGridDBColumn;
    cgvDisplayshiftcode: TcxGridDBColumn;
    Image3: TImage;
    lblPosting: TLabel;
    spPostingCashRegisterTransaction: TUniStoredProc;
    lblInfo: TLabel;
    qrySalesInvoiceDt: TUniQuery;
    dsSalesInvoiceDt: TDataSource;
    qryRegisterSalesDt: TUniQuery;
    dsRegisterSalesDt: TDataSource;
    qrySalesPaymentDt: TUniQuery;
    dsSalesPaymentDt: TDataSource;
    qryRegisterSalesPayment: TUniQuery;
    dsRegisterSalesPayment: TDataSource;
    cgDetailLevel3: TcxGridLevel;
    cgDetailLevel4: TcxGridLevel;
    cgDetailLevel5: TcxGridLevel;
    cgDetailLevel6: TcxGridLevel;
    cgvRegisterSalesDt: TcxGridDBTableView;
    cgvSalesInvoiceDt: TcxGridDBTableView;
    cgvRegisterSalesDtregistersalesid: TcxGridDBColumn;
    cgvRegisterSalesDtno: TcxGridDBColumn;
    cgvRegisterSalesDtitemid: TcxGridDBColumn;
    cgvRegisterSalesDtqty: TcxGridDBColumn;
    cgvRegisterSalesDtqtydisplay: TcxGridDBColumn;
    cgvRegisterSalesDtprice: TcxGridDBColumn;
    cgvRegisterSalesDtpricedisplay: TcxGridDBColumn;
    cgvRegisterSalesDtdiscitem: TcxGridDBColumn;
    cgvRegisterSalesDtdiscitemprice: TcxGridDBColumn;
    cgvRegisterSalesDtdiscitem2: TcxGridDBColumn;
    cgvRegisterSalesDtdiscitemprice2: TcxGridDBColumn;
    cgvRegisterSalesDtvoucheritem: TcxGridDBColumn;
    cgvRegisterSalesDtamount: TcxGridDBColumn;
    cgvRegisterSalesDtpricelevel: TcxGridDBColumn;
    cgvRegisterSalesDtpricelevelunitmeasure: TcxGridDBColumn;
    cgvRegisterSalesDtstatuscolor: TcxGridDBColumn;
    cgvRegisterSalesDtflagdelete: TcxGridDBColumn;
    cgvSalesInvoiceDtsalesinvoiceid: TcxGridDBColumn;
    cgvSalesInvoiceDtno: TcxGridDBColumn;
    cgvSalesInvoiceDtitemid: TcxGridDBColumn;
    cgvSalesInvoiceDtqty: TcxGridDBColumn;
    cgvSalesInvoiceDtqtydisplay: TcxGridDBColumn;
    cgvSalesInvoiceDtprice: TcxGridDBColumn;
    cgvSalesInvoiceDtpricedisplay: TcxGridDBColumn;
    cgvSalesInvoiceDtdiscitem: TcxGridDBColumn;
    cgvSalesInvoiceDtdiscitemprice: TcxGridDBColumn;
    cgvSalesInvoiceDtdiscitem2: TcxGridDBColumn;
    cgvSalesInvoiceDtdiscitemprice2: TcxGridDBColumn;
    cgvSalesInvoiceDtvoucheritem: TcxGridDBColumn;
    cgvSalesInvoiceDtamount: TcxGridDBColumn;
    cgvSalesInvoiceDtpricelevel: TcxGridDBColumn;
    cgvSalesInvoiceDtpricelevelunitmeasure: TcxGridDBColumn;
    cgvSalesInvoiceDtstatuscolor: TcxGridDBColumn;
    cgvRegisterSalesDtitemid2: TcxGridDBColumn;
    cgvSalesInvoiceDtitemid2: TcxGridDBColumn;
    cgvRegisterSalesPayment: TcxGridDBTableView;
    cgvSalesPaymentDt: TcxGridDBTableView;
    cgvRegisterSalesPaymentregistersalesid: TcxGridDBColumn;
    cgvRegisterSalesPaymentno: TcxGridDBColumn;
    cgvRegisterSalesPaymentpaymenttypeid: TcxGridDBColumn;
    cgvRegisterSalesPaymentcardno: TcxGridDBColumn;
    cgvRegisterSalesPaymentcardholdername: TcxGridDBColumn;
    cgvRegisterSalesPaymentonhandamount: TcxGridDBColumn;
    cgvRegisterSalesPaymentamount: TcxGridDBColumn;
    cgvRegisterSalesPaymentshortage: TcxGridDBColumn;
    cgvSalesPaymentDtsalespaymentdate: TcxGridDBColumn;
    cgvSalesPaymentDtsalespaymentid: TcxGridDBColumn;
    cgvSalesPaymentDtsalesinvoiceid: TcxGridDBColumn;
    cgvSalesPaymentDtpaymenttypeid: TcxGridDBColumn;
    cgvSalesPaymentDtgironumber: TcxGridDBColumn;
    cgvSalesPaymentDtemployeeid: TcxGridDBColumn;
    cgvSalesPaymentDtcurrencyid: TcxGridDBColumn;
    cgvSalesPaymentDtkurs: TcxGridDBColumn;
    cgvSalesPaymentDtamount: TcxGridDBColumn;
    cgvSalesPaymentDtreferenceid: TcxGridDBColumn;
    cgvSalesPaymentDtcardno: TcxGridDBColumn;
    cgvSalesPaymentDtcardholdername: TcxGridDBColumn;
    cgvSalesInvoiceHdroundingamount: TcxGridDBColumn;
    cgvRegisterSalesHdroundingamount: TcxGridDBColumn;
    procedure cgvDisplayStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure actPostingExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmCashRegisterTransaction: TfmCashRegisterTransaction;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmShare,
  dtmGeneral, dtmInventory, dtmAccounting, frmPrintFastReport,
  frmPreviewFastReport;

procedure TfmCashRegisterTransaction.actPostingExecute(Sender: TObject);
begin
  inherited;

  if qryDisplay.IsEmpty then
    Exit;

  lblInfo.Visible := True;
  lblInfo.Refresh;
  try
    spPostingCashRegisterTransaction.Params[0].AsString := qryDisplay.FieldByName('CashRegisterTransactionId').AsString;
    spPostingCashRegisterTransaction.Execute;
    MessageDlg(MSG_POSTING_SHIFT_SUCCESSED, mtInformation, [mbOk], 0);
    RefreshAll;
  finally
    lblInfo.Visible := False;
  end;
end;

procedure TfmCashRegisterTransaction.actPrintExecute(Sender: TObject);
begin
//  inherited; Override Print Action !

  if qryDisplay.IsEmpty then
    Exit;

  // Cetak Laporan Closing
  TfmPreviewFastReport.ExecuteForm(dmGlobal.SettingGlobal.ProgramId, REPORT_REGISTER_CLOSING,
    qryDisplay.FieldByName('CashRegisterTransactionId').AsString, '', '');
end;

procedure TfmCashRegisterTransaction.cgvDisplayStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.IsData then
    begin
      if VarToStr(ARecord.Values[GetColumnByFieldName('StatusPosting').Index]) = '1' then
        AStyle := dmGlobal.stGreenLight;
      if VarToStr(ARecord.Values[GetColumnByFieldName('StatusPosting').Index]) = '0' then
        AStyle := dmGlobal.stYellowLight;
      if VarToStr(ARecord.Values[GetColumnByFieldName('DateClosing').Index]) = '' then
        AStyle := dmGlobal.stRedLight;
    end;
  end;
end;

procedure TfmCashRegisterTransaction.InitForm;
begin
  inherited;

  SetReadOnly(cgvDisplay);
  SetReadOnly(cgvRegisterSalesHd);
  SetReadOnly(cgvRegisterSalesDt);
  SetReadOnly(cgvRegisterSalesPayment);
  SetReadOnly(cgvSalesInvoiceHd);
  SetReadOnly(cgvSalesInvoiceDt);
  SetReadOnly(cgvSalesPaymentDt);
  SetReadOnly(dbeEmployeeName);
  SetReadOnly(dbeOpeningBalance);
  SetReadOnly(dbeCashRegisterName);
  SetReadOnly(dbeDateOpening);
  SetReadOnly(dbeDateClosing);
  SetReadOnly(dbeCashRegisterTransactionId);

  dbeOpeningBalance.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesHdamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesHddisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesHddiscamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesHddisc2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesHddiscamount2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesHdvoucheramount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesHdtax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesHdroundingamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesHdtotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesHdoutstandingtotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesDtqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvRegisterSalesDtqtydisplay.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvRegisterSalesDtprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesDtpricedisplay.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesDtdiscitem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvRegisterSalesDtdiscitemprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesDtdiscitem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvRegisterSalesDtdiscitemprice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesDtvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesDtamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesPaymentonhandamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesPaymentamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvRegisterSalesPaymentshortage.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  TcxCurrencyEditProperties(cgvSalesInvoiceHdamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceHddisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceHddiscamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceHddisc2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceHddiscamount2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceHdvoucheramount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceHdtax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceHdtotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceHdoutstandingtotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtqtydisplay.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtpricedisplay.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtdiscitem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtdiscitemprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtdiscitem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtdiscitemprice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceHdroundingamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesInvoiceDtamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesPaymentDtkurs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesPaymentDtamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  dmGlobal.InitComponent(Self);

  OpenIfClose(dmGlobal.qryCurrencyMaster);
  OpenIfClose(dmGlobal.qryEmployee);
  OpenIfClose(dmGeneral.qryCustomer);
  OpenIfClose(dmGeneral.qryWarehouse);
  OpenIfClose(dmGeneral.qryOutlet);
  OpenIfClose(dmInventory.qryItem);
  OpenIfClose(dmAccounting.qryPaymentType);

  MonthYearValueChange(nil); // -> Trigger qryDisplay
  OpenIfClose(qryRegisterSalesHd, True);
  OpenIfClose(qryRegisterSalesDt, True);
  OpenIfClose(qryRegisterSalesPayment, True);
  OpenIfClose(qrySalesInvoiceHd, True);
  OpenIfClose(qrySalesInvoiceDt, True);
  OpenIfClose(qrySalesPaymentDt, True);
end;

procedure TfmCashRegisterTransaction.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qryDisplay.Close;
  qryDisplay.Params[0].Value := StrToInt(cbYear.Text);
  qryDisplay.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryDisplay, True);
end;

procedure TfmCashRegisterTransaction.RefreshAll;
begin
  inherited;

  LockRefresh(qryDisplay, True);
  LockRefresh(qryRegisterSalesHd, True);
  LockRefresh(qryRegisterSalesDt, True);
  LockRefresh(qryRegisterSalesPayment, True);
  LockRefresh(qrySalesInvoiceHd, True);
  LockRefresh(qrySalesInvoiceDt, True);
  LockRefresh(qrySalesPaymentDt, True);
end;

end.
