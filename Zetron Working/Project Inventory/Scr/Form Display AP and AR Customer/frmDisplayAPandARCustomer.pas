unit frmDisplayAPandARCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  // Auto Create
  frmUniDisplayPeriod, Menus, cxLookAndFeelPainters, cxGraphics, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCurrencyEdit, cxCalendar, cxRichEdit, cxDBExtLookupComboBox, cxSplitter,
  cxGridDBTableView, TeEngine, Series, TeeProcs, Chart, DBChart, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxPC, ExtCtrls, cxProgressBar, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, MemDS,
  DBAccess, Uni, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons;

type
  TfmDisplayAPandARCustomer = class(TFormUniDisplayPeriod)
    dsPrevAccountReceivable: TDataSource;
    dsPrevARAging: TDataSource;
    dsPrevARCustAging: TDataSource;
    dsPrevSI: TDataSource;
    dsPrevSP: TDataSource;
    pcAccountReceivable: TcxPageControl;
    tsAccountReceivable: TcxTabSheet;
    cgPrevAccountReceivable: TcxGrid;
    cgvPrevAccountReceivable: TcxGridDBBandedTableView;
    cgvPrevAccountReceivableCustomerid: TcxGridDBBandedColumn;
    cgvPrevAccountReceivableCustomername: TcxGridDBBandedColumn;
    cgvPrevAccountReceivablecreditlimit: TcxGridDBBandedColumn;
    cgvPrevAccountReceivableAP: TcxGridDBBandedColumn;
    cgvPrevAccountReceivableAmount: TcxGridDBBandedColumn;
    cgvPrevAccountReceivableaddress: TcxGridDBBandedColumn;
    cgvPrevAccountReceivablecityname: TcxGridDBBandedColumn;
    cgvPrevAccountReceivablecategoryname: TcxGridDBBandedColumn;
    cgvPrevAccountReceivableCurrencyId: TcxGridDBBandedColumn;
    cgPrevAccountReceivableLevel1: TcxGridLevel;
    tsAccountPayableCard: TcxTabSheet;
    cgPrevAccountPayableCard: TcxGrid;
    cgPrevAccountPayableCardLevel1: TcxGridLevel;
    tsAccountReceivableCard: TcxTabSheet;
    cgPrevAccountReceivableCard: TcxGrid;
    cgPrevAccountReceivableCardLevel1: TcxGridLevel;
    tsAccountReceivableAging: TcxTabSheet;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    tsAccountReceivableCustomerAging: TcxTabSheet;
    DBChart2: TDBChart;
    PieSeries1: TPieSeries;
    cgPrevDetailSI: TcxGrid;
    cgvPrevDetailSI: TcxGridDBTableView;
    cgvPrevDetailSIsalesinvoiceid: TcxGridDBColumn;
    cgvPrevDetailSIsalesinvoicedate: TcxGridDBColumn;
    cgvPrevDetailSIJatuhTempo: TcxGridDBColumn;
    cgvPrevDetailSIsalesinvoiceidinternal: TcxGridDBColumn;
    cgvPrevDetailSIoutletid: TcxGridDBColumn;
    cgvPrevDetailSItotalamount: TcxGridDBColumn;
    cgvPrevDetailSIoutstandingtotalamount: TcxGridDBColumn;
    cgvPrevDetailSIPeriodeJatuhTempo: TcxGridDBColumn;
    cgvPrevDetailSP: TcxGridDBTableView;
    cgvPrevDetailSPsalespaymentdate: TcxGridDBColumn;
    cgvPrevDetailSPsalespaymentid: TcxGridDBColumn;
    cgvPrevDetailSPsalesinvoiceid: TcxGridDBColumn;
    cgvPrevDetailSPpaymenttypename: TcxGridDBColumn;
    cgvPrevDetailSPgironumber: TcxGridDBColumn;
    cgvPrevDetailSPreferenceid: TcxGridDBColumn;
    cgvPrevDetailSPamount: TcxGridDBColumn;
    cgvPrevDetailSPemployeename: TcxGridDBColumn;
    cgPrevDetailSILevel1: TcxGridLevel;
    cgPrevDetailSILevel2: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    imgInfo: TImage;
    lblInfo: TLabel;
    pnlProgressBar: TPanel;
    Label5: TLabel;
    pbProcess: TcxProgressBar;
    cgvPrevAccountPayableCard: TcxGridBandedTableView;
    cgvPrevAccountPayableCardTransactionDate: TcxGridBandedColumn;
    cgvPrevAccountPayableCardTransaction: TcxGridBandedColumn;
    cgvPrevAccountPayableCardMemo: TcxGridBandedColumn;
    cgvPrevAccountPayableCardCashBankRef: TcxGridBandedColumn;
    cgvPrevAccountPayableCardCashBankExternal: TcxGridBandedColumn;
    cgvPrevAccountPayableCardInvoiceId: TcxGridBandedColumn;
    cgvPrevAccountPayableCardInvoiceIdExt: TcxGridBandedColumn;
    cgvPrevAccountPayableCardPaymentId: TcxGridBandedColumn;
    cgvPrevAccountPayableCardKurs: TcxGridBandedColumn;
    cgvPrevAccountPayableCardDebit: TcxGridBandedColumn;
    cgvPrevAccountPayableCardDebitRp: TcxGridBandedColumn;
    cgvPrevAccountPayableCardCredit: TcxGridBandedColumn;
    cgvPrevAccountPayableCardCreditRp: TcxGridBandedColumn;
    cgvPrevAccountPayableCardBalance: TcxGridBandedColumn;
    cgvPrevAccountPayableCardBalanceRp: TcxGridBandedColumn;
    cgvPrevAccountReceivableCard: TcxGridBandedTableView;
    cgvPrevAccountReceivableCardTransactionDate: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardTransaction: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardMemo: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardCashBankRef: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardCashBankExternal: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardInvoiceId: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardInvoiceIdExt: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardPaymentId: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardKurs: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardDebit: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardDebitRp: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardCredit: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardCreditRp: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardBalance: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardBalanceRp: TcxGridBandedColumn;
    qryPrevAccountReceivable: TUniQuery;
    qryPrevARCard: TUniQuery;
    qryPrevAPCard: TUniQuery;
    qryPrevARAging: TUniQuery;
    qryPrevARCustAging: TUniQuery;
    qryPrevSI: TUniQuery;
    qryPrevSP: TUniQuery;
    procedure pcAccountReceivableChange(Sender: TObject);
    procedure cgvPrevAccountReceivableStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    FOldPeriod: string;
    procedure ShowAR;
    procedure ShowAPCard;
    procedure ShowARCard;
    procedure ShowARAging;
    procedure ShowARCustomerAging;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public

  end;

var
  fmDisplayAPandARCustomer: TfmDisplayAPandARCustomer;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmGeneral;

procedure TfmDisplayAPandARCustomer.cgvPrevAccountReceivableStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  Temp: string;
begin
  inherited;

  with (Sender as TcxGridDBBandedTableView) do
  begin
    Temp := VarToStr(ARecord.Values[GetColumnByFieldName('CreditLimit').Index]);
    if (Temp <> '') and (Temp <> '0') then
    begin
      if ARecord.Values[GetColumnByFieldName('Amount').Index] > Temp then
        AStyle := dmGlobal.stRedLight;
    end;
  end;
end;

procedure TfmDisplayAPandARCustomer.InitForm;
begin
  inherited;

  SetReadOnly(cgvPrevAccountReceivable);
  SetReadOnly(cgvPrevAccountReceivableCard);
  SetReadOnly(cgvPrevAccountPayableCard);
  SetReadOnly(cgvPrevDetailSI);
  SetReadOnly(cgvPrevDetailSP);

  // Default Filter
  cgvPrevAccountReceivable.DataController.Filter.Active := True;
  cgvPrevAccountReceivable.DataController.Filter.Root.BoolOperatorKind := fboOr;
  cgvPrevAccountReceivable.DataController.Filter.AddItem(cgvPrevAccountReceivable.DataController.Filter.Root,
    cgvPrevAccountReceivableAmount, foGreater, '0', 'Nol');
  cgvPrevAccountReceivable.DataController.Filter.AddItem(cgvPrevAccountReceivable.DataController.Filter.Root,
    cgvPrevAccountReceivableAP, foGreater, '0', 'Nol');

  // Display format
  TcxCurrencyEditProperties(cgvPrevAccountReceivablecreditlimit.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountReceivableAP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountReceivableAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountPayableCardKurs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountPayableCardDebit.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountPayableCardDebitRp.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountPayableCardCredit.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountPayableCardCreditRp.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountPayableCardBalance.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountPayableCardBalanceRp.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountReceivableCardKurs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountReceivableCardDebit.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountReceivableCardDebitRp.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountReceivableCardCredit.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountReceivableCardCreditRp.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountReceivableCardBalance.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountReceivableCardBalanceRp.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevDetailSItotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevDetailSIoutstandingtotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevDetailSPamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  ShowAR;
end;

procedure TfmDisplayAPandARCustomer.MonthYearValueChange(Sender: TObject);
begin
  inherited;

//  if pcAccountReceivable.ActivePageIndex = tsAccountReceivable.PageIndex then
//    ShowAr;
  if pcAccountReceivable.ActivePageIndex = tsAccountPayableCard.PageIndex then
    ShowAPCard;
  if pcAccountReceivable.ActivePageIndex = tsAccountReceivableCard.PageIndex then
    ShowARCard;
  if pcAccountReceivable.ActivePageIndex = tsAccountReceivableAging.PageIndex then
    ShowARAging;
  if pcAccountReceivable.ActivePageIndex = tsAccountReceivableCustomerAging.PageIndex then
    ShowARCustomerAging;
end;

procedure TfmDisplayAPandARCustomer.pcAccountReceivableChange(Sender: TObject);
begin
  inherited;

  if pcAccountReceivable.ActivePageIndex = tsAccountReceivable.PageIndex then
  begin
    // Cek terlebih dahulu apakah periode berubah
    if FOldPeriod <> FormatDateTime('YYYYMM', EncodeDate(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1), 1)) then
      MonthYearValueChange(nil);
  end
  else
  begin
    FOldPeriod := FormatDateTime('YYYYMM', EncodeDate(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1), 1));
    MonthYearValueChange(nil);
  end;
end;

procedure TfmDisplayAPandARCustomer.RefreshAll;
begin
  inherited;

  if pcAccountReceivable.ActivePageIndex = tsAccountReceivable.PageIndex then
    ShowAR;
  if pcAccountReceivable.ActivePageIndex = tsAccountReceivableCard.PageIndex then
    ShowARCard;
  if pcAccountReceivable.ActivePageIndex = tsAccountPayableCard.PageIndex then
    ShowAPCard;
  if pcAccountReceivable.ActivePageIndex = tsAccountReceivableAging.PageIndex then
    LockRefresh(qryPrevARAging, True);
  if pcAccountReceivable.ActivePageIndex = tsAccountReceivableCustomerAging.PageIndex then
  begin
    LockRefresh(qryPrevARCustAging, True);
    LockRefresh(qryPrevSI, True);
    LockRefresh(qryPrevSP, True);
  end;
end;

procedure TfmDisplayAPandARCustomer.ShowAPCard;
var
  i: integer;
  Balance, BalanceRp, Kurs: currency;
begin
  // change caption
  cgvPrevAccountPayableCardDebit.Caption := cgvPrevAccountReceivableCurrencyId.EditValue;
  cgvPrevAccountPayableCardCredit.Caption := cgvPrevAccountReceivableCurrencyId.EditValue;
  cgvPrevAccountPayableCardBalance.Caption := cgvPrevAccountReceivableCurrencyId.EditValue;

  qryPrevAPCard.Close;
  if VarToStr(cgvPrevAccountReceivableCustomerid.EditValue) = '' then
    Exit;
  qryPrevAPCard.Params[0].Value := EncodeDate(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1), 1);
  qryPrevAPCard.Params[1].Value := cgvPrevAccountReceivableCustomerid.EditValue;
  qryPrevAPCard.Params[2].Value := StrToInt(cbYear.Text);
  qryPrevAPCard.Params[3].Value := cbMonth.ItemIndex + 1;
  qryPrevAPCard.Params[4].Value := cgvPrevAccountReceivableCurrencyId.EditValue;
  OpenIfClose(qryPrevAPCard, True);

  pbProcess.Properties.Max := qryPrevAPCard.RecordCount;
  cgvPrevAccountPayableCard.DataController.BeginFullUpdate;
  cgvPrevAccountPayableCard.DataController.RecordCount := qryPrevAPCard.RecordCount;
  Balance := 0;
  BalanceRp := 0;
  for i := 0 to qryPrevAPCard.RecordCount - 1 do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;
    qryPrevAPCard.RecNo := i + 1;

    Kurs := qryPrevAPCard.FieldByName('Kurs').AsCurrency;
    //Hutang bertambah di credit
    Balance := Balance + (qryPrevAPCard.FieldByName('Credit').AsCurrency - qryPrevAPCard.FieldByName('Debit').AsCurrency);
    BalanceRp := BalanceRp + (qryPrevAPCard.FieldByName('CreditRp').AsCurrency - qryPrevAPCard.FieldByName('DebitRp').AsCurrency);
    // Calculate new kurs
    if (qryPrevAPCard.FieldByName('OrderNo').AsInteger = 0) or
      (qryPrevAPCard.FieldByName('SubOrderNo').AsInteger = 6) then
      if Balance <> 0 then
        Kurs := BalanceRp / Balance
      else
        Kurs := 0;

    with cgvPrevAccountPayableCard do
    begin
      DataController.Values[i, cgvPrevAccountPayableCardTransactionDate.Index] := qryPrevAPCard.FieldByName('TransactionDate').AsVariant;
      DataController.Values[i, cgvPrevAccountPayableCardTransaction.Index] := qryPrevAPCard.FieldByName('Transaksi').AsVariant;
      DataController.Values[i, cgvPrevAccountPayableCardMemo.Index] := qryPrevAPCard.FieldByName('Memo').AsVariant;
      DataController.Values[i, cgvPrevAccountPayableCardCashBankRef.Index] := qryPrevAPCard.FieldByName('CashBankRef').AsVariant;
      DataController.Values[i, cgvPrevAccountPayableCardCashBankExternal.Index] := qryPrevAPCard.FieldByName('CashBankExternal').AsVariant;      DataController.Values[i, cgvPrevAccountPayableCardInvoiceId.Index] := qryPrevAPCard.FieldByName('InvoiceId').AsVariant;
      DataController.Values[i, cgvPrevAccountPayableCardInvoiceIdExt.Index] := qryPrevAPCard.FieldByName('InvoiceIdExt').AsVariant;
      DataController.Values[i, cgvPrevAccountPayableCardPaymentId.Index] := qryPrevAPCard.FieldByName('PaymentId').AsVariant;
      DataController.Values[i, cgvPrevAccountPayableCardKurs.Index] := Kurs;
      DataController.Values[i, cgvPrevAccountPayableCardDebit.Index] := qryPrevAPCard.FieldByName('Debit').AsCurrency;
      DataController.Values[i, cgvPrevAccountPayableCardDebitRp.Index] := qryPrevAPCard.FieldByName('DebitRp').AsCurrency;
      DataController.Values[i, cgvPrevAccountPayableCardCredit.Index] := qryPrevAPCard.FieldByName('Credit').AsCurrency;
      DataController.Values[i, cgvPrevAccountPayableCardCreditRp.Index] := qryPrevAPCard.FieldByName('CreditRp').AsCurrency;
      DataController.Values[i, cgvPrevAccountPayableCardBalance.Index] := Balance;
      DataController.Values[i, cgvPrevAccountPayableCardBalanceRp.Index] := BalanceRp;
    end;
  end;
  cgvPrevAccountPayableCard.DataController.EndFullUpdate;
  pbProcess.Position := 0;
end;

procedure TfmDisplayAPandARCustomer.ShowAR;
var
  CustomerId: string;
begin
  if not qryPrevAccountReceivable.IsEmpty then
    CustomerId := qryPrevAccountReceivable.FieldbyName('CustomerId').AsString;
  qryPrevAccountReceivable.Close;

  qryPrevAccountReceivable.Params[0].Value := StrToInt(cbYear.Text);
  qryPrevAccountReceivable.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryPrevAccountReceivable, True);
  qryPrevAccountReceivable.Locate('CustomerId', CustomerId, [loCaseInsensitive]);
end;

procedure TfmDisplayAPandARCustomer.ShowARAging;
begin
  qryPrevARAging.Close;
  OpenIfClose(qryPrevARAging, True);
end;

procedure TfmDisplayAPandARCustomer.ShowARCard;
var
  i: integer;
  Balance, BalanceRp, Kurs: currency;
begin
  // change caption
  cgvPrevAccountReceivableCardDebit.Caption := cgvPrevAccountReceivableCurrencyId.EditValue;
  cgvPrevAccountReceivableCardCredit.Caption := cgvPrevAccountReceivableCurrencyId.EditValue;
  cgvPrevAccountReceivableCardBalance.Caption := cgvPrevAccountReceivableCurrencyId.EditValue;

  qryPrevARCard.Close;
  if VarToStr(cgvPrevAccountReceivableCustomerid.EditValue) = '' then
    Exit;
  qryPrevARCard.Params[0].Value := EncodeDate(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1), 1);
  qryPrevARCard.Params[1].Value := cgvPrevAccountReceivableCustomerid.EditValue;
  qryPrevARCard.Params[2].Value := StrToInt(cbYear.Text);
  qryPrevARCard.Params[3].Value := cbMonth.ItemIndex + 1;
  qryPrevARCard.Params[4].Value := cgvPrevAccountReceivableCurrencyId.EditValue;
  OpenIfClose(qryPrevARCard, True);

  pbProcess.Properties.Max := qryPrevARCard.RecordCount;
  cgvPrevAccountReceivableCard.DataController.BeginFullUpdate;
  cgvPrevAccountReceivableCard.DataController.RecordCount := qryPrevARCard.RecordCount;
  Balance := 0;
  BalanceRp := 0;
  for i := 0 to qryPrevARCard.RecordCount - 1 do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;
    qryPrevARCard.RecNo := i + 1;

    Kurs := qryPrevARCard.FieldByName('Kurs').AsCurrency;
    Balance := Balance + (qryPrevARCard.FieldByName('Debit').AsCurrency - qryPrevARCard.FieldByName('Credit').AsCurrency);
    BalanceRp := BalanceRp + (qryPrevARCard.FieldByName('DebitRp').AsCurrency - qryPrevARCard.FieldByName('CreditRp').AsCurrency);
    // Calculate new kurs
    if (qryPrevARCard.FieldByName('OrderNo').AsInteger = 0) or
      (qryPrevARCard.FieldByName('SubOrderNo').AsInteger = 6) then
      if Balance <> 0 then
        Kurs := BalanceRp / Balance
      else
        Kurs := 0;

    with cgvPrevAccountReceivableCard do
    begin
      DataController.Values[i, cgvPrevAccountReceivableCardTransactionDate.Index] := qryPrevARCard.FieldByName('TransactionDate').AsVariant;
      DataController.Values[i, cgvPrevAccountReceivableCardTransaction.Index] := qryPrevARCard.FieldByName('Transaksi').AsVariant;
      DataController.Values[i, cgvPrevAccountReceivableCardMemo.Index] := qryPrevARCard.FieldByName('Memo').AsVariant;
      DataController.Values[i, cgvPrevAccountReceivableCardCashBankRef.Index] := qryPrevARCard.FieldByName('CashBankRef').AsVariant;
      DataController.Values[i, cgvPrevAccountReceivableCardCashBankExternal.Index] := qryPrevARCard.FieldByName('CashBankExternal').AsVariant;
      DataController.Values[i, cgvPrevAccountReceivableCardInvoiceId.Index] := qryPrevARCard.FieldByName('InvoiceId').AsVariant;
      DataController.Values[i, cgvPrevAccountReceivableCardInvoiceIdExt.Index] := qryPrevARCard.FieldByName('InvoiceIdExt').AsVariant;
      DataController.Values[i, cgvPrevAccountReceivableCardPaymentId.Index] := qryPrevARCard.FieldByName('PaymentId').AsVariant;
      DataController.Values[i, cgvPrevAccountReceivableCardKurs.Index] := Kurs;
      DataController.Values[i, cgvPrevAccountReceivableCardDebit.Index] := qryPrevARCard.FieldByName('Debit').AsCurrency;
      DataController.Values[i, cgvPrevAccountReceivableCardDebitRp.Index] := qryPrevARCard.FieldByName('DebitRp').AsCurrency;
      DataController.Values[i, cgvPrevAccountReceivableCardCredit.Index] := qryPrevARCard.FieldByName('Credit').AsCurrency;
      DataController.Values[i, cgvPrevAccountReceivableCardCreditRp.Index] := qryPrevARCard.FieldByName('CreditRp').AsCurrency;
      DataController.Values[i, cgvPrevAccountReceivableCardBalance.Index] := Balance;
      DataController.Values[i, cgvPrevAccountReceivableCardBalanceRp.Index] := BalanceRp;
    end;
  end;
  cgvPrevAccountReceivableCard.DataController.EndFullUpdate;
  pbProcess.Position := 0;
end;

procedure TfmDisplayAPandARCustomer.ShowARCustomerAging;
begin
  qryPrevARCustAging.Close;
  qryPrevSI.Close;
  qryPrevSP.Close;
  if VarToStr(cgvPrevAccountReceivableCustomerid.EditValue) = '' then
    Exit;

  qryPrevARCustAging.Params[0].Value := cgvPrevAccountReceivableCustomerid.EditValue;
  OpenIfClose(qryPrevARCustAging, True);

  qryPrevSI.Params[0].Value := dmGlobal.SettingGlobal.ServerDateTime;
  qryPrevSI.Params[1].Value := cgvPrevAccountReceivableCustomerid.EditValue;
  OpenIfClose(qryPrevSI, True);

  qryPrevSP.Params[0].Value := cgvPrevAccountReceivableCustomerid.EditValue;
  OpenIfClose(qryPrevSP, True);
end;

end.
