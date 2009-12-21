unit frmDisplayAPandARVendor;

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
  TfmDisplayAPandARVendor = class(TFormUniDisplayPeriod)
    dsPrevAccountPayable: TDataSource;
    dsPrevAPAging: TDataSource;
    dsPrevAPVendorAging: TDataSource;
    dsPrevPI: TDataSource;
    dsPrevPP: TDataSource;
    pcAccountPayable: TcxPageControl;
    tsAccountPayable: TcxTabSheet;
    cgPrevAccountPayable: TcxGrid;
    cgvPrevAccountPayable: TcxGridDBBandedTableView;
    cgvPrevAccountPayablevendorid: TcxGridDBBandedColumn;
    cgvPrevAccountPayablevendorname: TcxGridDBBandedColumn;
    cgvPrevAccountPayablecreditlimit: TcxGridDBBandedColumn;
    cgvPrevAccountPayableCurrencyId: TcxGridDBBandedColumn;
    cgvPrevAccountPayableAmount: TcxGridDBBandedColumn;
    cgvPrevAccountPayableAR: TcxGridDBBandedColumn;
    cgvPrevAccountPayableaddress: TcxGridDBBandedColumn;
    cgvPrevAccountPayablecityname: TcxGridDBBandedColumn;
    cgvPrevAccountPayablecategoryname: TcxGridDBBandedColumn;
    cgPrevAccountPayableLevel1: TcxGridLevel;
    tsAccountPayableCard: TcxTabSheet;
    cgPrevAccountPayableCard: TcxGrid;
    cgPrevAccountPayableCardLevel1: TcxGridLevel;
    tsAccountReceivableCard: TcxTabSheet;
    cgPrevAccountReceivableCard: TcxGrid;
    cgPrevAccountReceivableCardLevel1: TcxGridLevel;
    tsAccountPayableAging: TcxTabSheet;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    tsAccountPayableVendorAging: TcxTabSheet;
    DBChart2: TDBChart;
    PieSeries1: TPieSeries;
    cgPrevDetailPI: TcxGrid;
    cgvPrevDetailPI: TcxGridDBTableView;
    cgvPrevDetailPIpurchaseinvoiceid: TcxGridDBColumn;
    cgvPrevDetailPIpurchaseinvoicedate: TcxGridDBColumn;
    cgvPrevDetailPIJatuhTempo: TcxGridDBColumn;
    cgvPrevDetailPIpurchaseinvoiceidinternal: TcxGridDBColumn;
    cgvPrevDetailPIoutletid: TcxGridDBColumn;
    cgvPrevDetailPItotalamount: TcxGridDBColumn;
    cgvPrevDetailPIoutstandingtotalamount: TcxGridDBColumn;
    cgvPrevDetailPIPeriodeJatuhTempo: TcxGridDBColumn;
    cgvPrevDetailPP: TcxGridDBTableView;
    cgvPrevDetailPPpurchasepaymentdate: TcxGridDBColumn;
    cgvPrevDetailPPpurchasepaymentid: TcxGridDBColumn;
    cgvPrevDetailPPpurchaseinvoiceid: TcxGridDBColumn;
    cgvPrevDetailPPpaymenttypename: TcxGridDBColumn;
    cgvPrevDetailPPgironumber: TcxGridDBColumn;
    cgvPrevDetailPPreferenceid: TcxGridDBColumn;
    cgvPrevDetailPPamount: TcxGridDBColumn;
    cgvPrevDetailPPemployeename: TcxGridDBColumn;
    cgPrevDetailPILevel1: TcxGridLevel;
    cgPrevDetailPILevel2: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    pnlProgressBar: TPanel;
    Label5: TLabel;
    pbProcess: TcxProgressBar;
    lblInfo: TLabel;
    imgInfo: TImage;
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
    cgvPrevAccountReceivableCardCashBankRef: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardCashBankExternal: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardInvoiceId: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardInvoiceIdRef: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardPaymentId: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardKurs: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardDebit: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardDebitRp: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardCredit: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardCreditRp: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardBalance: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardBalanceRp: TcxGridBandedColumn;
    cgvPrevAccountReceivableCardMemo: TcxGridBandedColumn;
    qryPrevAccountPayable: TUniQuery;
    qryPrevAPCard: TUniQuery;
    qryPrevARCard: TUniQuery;
    qryPrevAPAging: TUniQuery;
    qryPrevAPVendorAging: TUniQuery;
    qryPrevPI: TUniQuery;
    qryPrevPP: TUniQuery;
    procedure cgvPrevAccountPayableStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure pcAccountPayableChange(Sender: TObject);
  private
    FOldPeriod: string;
    procedure ShowAP;
    procedure ShowAPCard;
    procedure ShowARCard;
    procedure ShowAPAging;
    procedure ShowAPVendorAging;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmDisplayAPandARVendor: TfmDisplayAPandARVendor;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal, dtmShare, dtmGeneral;

procedure TfmDisplayAPandARVendor.cgvPrevAccountPayableStylesGetContentStyle(
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

procedure TfmDisplayAPandARVendor.InitForm;
begin
  inherited;

  SetReadOnly(cgvPrevAccountPayable);
  SetReadOnly(cgvPrevAccountPayableCard);
  SetReadOnly(cgvPrevAccountReceivableCard);
  SetReadOnly(cgvPrevDetailPI);

  // Default Filter
  cgvPrevAccountPayable.DataController.Filter.Active := True;
  cgvPrevAccountPayable.DataController.Filter.Root.BoolOperatorKind := fboOr;
  cgvPrevAccountPayable.DataController.Filter.AddItem(cgvPrevAccountPayable.DataController.Filter.Root,
    cgvPrevAccountPayableAmount, foGreater, '0', 'Nol');
  cgvPrevAccountPayable.DataController.Filter.AddItem(cgvPrevAccountPayable.DataController.Filter.Root,
    cgvPrevAccountPayableAR, foGreater, '0', 'Nol');

  // Display format
  TcxCurrencyEditProperties(cgvPrevAccountPayablecreditlimit.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountPayableAR.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevAccountPayableAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
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
  TcxCurrencyEditProperties(cgvPrevDetailPItotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevDetailPIoutstandingtotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevDetailPPamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  ShowAP;
end;

procedure TfmDisplayAPandARVendor.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if pcAccountPayable.ActivePageIndex = tsAccountPayable.PageIndex then
    ShowAP;
  if pcAccountPayable.ActivePageIndex = tsAccountPayableCard.PageIndex then
    ShowAPCard;
  if pcAccountPayable.ActivePageIndex = tsAccountReceivableCard.PageIndex then
    ShowARCard;
  if pcAccountPayable.ActivePageIndex = tsAccountPayableAging.PageIndex then
    ShowAPAging;
  if pcAccountPayable.ActivePageIndex = tsAccountPayableVendorAging.PageIndex then
    ShowAPVendorAging;
end;

procedure TfmDisplayAPandARVendor.pcAccountPayableChange(Sender: TObject);
begin
  inherited;

  if pcAccountPayable.ActivePageIndex = tsAccountPayable.PageIndex then
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

procedure TfmDisplayAPandARVendor.RefreshAll;
begin
  inherited;

  if pcAccountPayable.ActivePageIndex = tsAccountPayable.PageIndex then
    ShowAP;
  if pcAccountPayable.ActivePageIndex = tsAccountPayableCard.PageIndex then
    ShowAPCard;
  if pcAccountPayable.ActivePageIndex = tsAccountReceivableCard.PageIndex then
    ShowARCard;
  if pcAccountPayable.ActivePageIndex = tsAccountPayableAging.PageIndex then
    LockRefresh(qryPrevAPAging, True);
  if pcAccountPayable.ActivePageIndex = tsAccountPayableVendorAging.PageIndex then
  begin
    LockRefresh(qryPrevAPVendorAging, True);
    LockRefresh(qryPrevPI, True);
    LockRefresh(qryPrevPP, True);
  end;
end;

procedure TfmDisplayAPandARVendor.ShowAP;
var
  VendorId: string;
begin
  if not qryPrevAccountPayable.IsEmpty then
    VendorId := qryPrevAccountPayable.FieldbyName('VendorId').AsString;
  qryPrevAccountPayable.Close;

  qryPrevAccountPayable.Params[0].Value := StrToInt(cbYear.Text);
  qryPrevAccountPayable.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryPrevAccountPayable, True);
  qryPrevAccountPayable.Locate('VendorId', VendorId, [loCaseInsensitive]);
end;

procedure TfmDisplayAPandARVendor.ShowAPAging;
begin
  qryPrevAPAging.Close;
  OpenIfClose(qryPrevAPAging, True);
end;

procedure TfmDisplayAPandARVendor.ShowAPCard;
var
  i: integer;
  Balance, BalanceRp, Kurs: currency;
begin
  // change caption
  cgvPrevAccountPayableCardDebit.Caption := cgvPrevAccountPayableCurrencyId.EditValue;
  cgvPrevAccountPayableCardCredit.Caption := cgvPrevAccountPayableCurrencyId.EditValue;
  cgvPrevAccountPayableCardBalance.Caption := cgvPrevAccountPayableCurrencyId.EditValue;

  qryPrevAPCard.Close;
  if VarToStr(cgvPrevAccountPayablevendorid.EditValue) = '' then
    Exit;
  qryPrevAPCard.Params[0].Value := EncodeDate(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1), 1);
  qryPrevAPCard.Params[1].Value := cgvPrevAccountPayablevendorid.EditValue;
  qryPrevAPCard.Params[2].Value := StrToInt(cbYear.Text);
  qryPrevAPCard.Params[3].Value := cbMonth.ItemIndex + 1;
  qryPrevAPCard.Params[4].Value := cgvPrevAccountPayableCurrencyId.EditValue;
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
    // Hutang bertambah di credit
    Balance := Balance + (qryPrevAPCard.FieldByName('Credit').AsCurrency - qryPrevAPCard.FieldByName('Debit').AsCurrency);
    BalanceRp := BalanceRp + (qryPrevAPCard.FieldByName('CreditRp').AsCurrency - qryPrevAPCard.FieldByName('DebitRp').AsCurrency);
    // Calculate new kurs
    if (qryPrevAPCard.FieldByName('OrderNo').AsInteger = 0) or
      (qryPrevAPCard.FieldByName('SubOrderNo').AsInteger = 3) then
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
      DataController.Values[i, cgvPrevAccountPayableCardCashBankExternal.Index] := qryPrevAPCard.FieldByName('CashBankExternal').AsVariant;
      DataController.Values[i, cgvPrevAccountPayableCardInvoiceId.Index] := qryPrevAPCard.FieldByName('InvoiceId').AsVariant;
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

procedure TfmDisplayAPandARVendor.ShowAPVendorAging;
begin
  qryPrevAPVendorAging.Close;
  qryPrevPI.Close;
  qryPrevPP.Close;
  if VarToStr(cgvPrevAccountPayablevendorid.EditValue) = '' then
    Exit;

  qryPrevAPVendorAging.Params[0].Value := cgvPrevAccountPayablevendorid.EditValue;
  OpenIfClose(qryPrevAPVendorAging, True);

  qryPrevPI.Params[0].Value := cgvPrevAccountPayablevendorid.EditValue;
  OpenIfClose(qryPrevPI, True);

  qryPrevPP.Params[0].Value := cgvPrevAccountPayablevendorid.EditValue;
  OpenIfClose(qryPrevPP, True);
end;

procedure TfmDisplayAPandARVendor.ShowARCard;
var
  i: integer;
  Balance, BalanceRp, Kurs: currency;
begin
  // change caption
  cgvPrevAccountReceivableCardDebit.Caption := cgvPrevAccountPayableCurrencyId.EditValue;
  cgvPrevAccountReceivableCardCredit.Caption := cgvPrevAccountPayableCurrencyId.EditValue;
  cgvPrevAccountReceivableCardBalance.Caption := cgvPrevAccountPayableCurrencyId.EditValue;

  qryPrevARCard.Close;
  if VarToStr(cgvPrevAccountPayablevendorid.EditValue) = '' then
    Exit;
  qryPrevARCard.Params[0].Value := EncodeDate(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1), 1);
  qryPrevARCard.Params[1].Value := cgvPrevAccountPayablevendorid.EditValue;
  qryPrevARCard.Params[2].Value := StrToInt(cbYear.Text);
  qryPrevARCard.Params[3].Value := cbMonth.ItemIndex + 1;
  qryPrevARCard.Params[4].Value := cgvPrevAccountPayableCurrencyId.EditValue;
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
      DataController.Values[i, cgvPrevAccountReceivableCardInvoiceIdRef.Index] := qryPrevARCard.FieldByName('InvoiceIdExt').AsVariant;
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

end.
