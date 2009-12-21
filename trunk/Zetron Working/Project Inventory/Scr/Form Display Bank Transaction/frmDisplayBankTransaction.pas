unit frmDisplayBankTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplayPeriod, Menus, cxLookAndFeelPainters, cxGraphics, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, cxCurrencyEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC,
  cxProgressBar, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, MemDS, DBAccess, Uni,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmDisplayBankTransaction = class(TFormUniDisplayPeriod)
    pnlProgressBar: TPanel;
    Label5: TLabel;
    pbProcess: TcxProgressBar;
    dsDisplay: TDataSource;
    dsPrevCashFlow: TDataSource;
    pcBank: TcxPageControl;
    tsBankTransaction: TcxTabSheet;
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplayStatusApprove: TcxGridDBColumn;
    cgvDisplayflagout: TcxGridDBColumn;
    cgvDisplaybanktransactionid: TcxGridDBColumn;
    cgvDisplaybanktransactiondate: TcxGridDBColumn;
    cgvDisplaycashbanktransactiontypename: TcxGridDBColumn;
    cgvDisplaymemo: TcxGridDBColumn;
    cgvDisplayvendorname: TcxGridDBColumn;
    cgvDisplaycustomername: TcxGridDBColumn;
    cgvDisplayamount: TcxGridDBColumn;
    cgvDisplayemployeename: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    tsBankFlow: TcxTabSheet;
    lblBank: TLabel;
    lblNoAccount: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    cgPrevBankFlow: TcxGrid;
    cgvPrevBankFlow: TcxGridTableView;
    cgvPrevBankFlowTransactionDate: TcxGridColumn;
    cgvPrevBankFlowMemo: TcxGridColumn;
    cgvPrevBankFlowTransactionTypeName: TcxGridColumn;
    cgvPrevBankFlowRef: TcxGridColumn;
    cgvPrevBankFlowVendor: TcxGridColumn;
    cgvPrevBankFlowCustomer: TcxGridColumn;
    cgvPrevBankFlowDebit: TcxGridColumn;
    cgvPrevBankFlowCredit: TcxGridColumn;
    cgvPrevBankFlowBalance: TcxGridColumn;
    cgPrevBankFlowLevel1: TcxGridLevel;
    edtBankId: TcxExtLookupComboBox;
    edtAccountNo: TcxExtLookupComboBox;
    qryDisplay: TUniQuery;
    qryPrevBankFlow: TUniQuery;
    procedure edtAccountNoPropertiesEditValueChanged(Sender: TObject);
    procedure edtBankIdPropertiesEditValueChanged(Sender: TObject);
    procedure pcBankChange(Sender: TObject);
  private
    FOldPeriod: string;
    procedure ShowBankFlow;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmDisplayBankTransaction: TfmDisplayBankTransaction;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal, dtmAccounting;

procedure TfmDisplayBankTransaction.edtAccountNoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  MonthYearValueChange(nil);
end;

procedure TfmDisplayBankTransaction.edtBankIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  dmAccounting.qryPrevAccount.Close;
  dmAccounting.qryPrevAccount.Params[0].Value := VarToStr(edtBankId.EditValue);
  OpenIfClose(dmAccounting.qryPrevAccount);
  qryPrevBankFlow.Close;
  edtAccountNo.EditValue := null;
end;

procedure TfmDisplayBankTransaction.InitForm;
begin
  inherited;

  // Default Filter
  cgvDisplay.DataController.Filter.Active := True;
  cgvDisplay.DataController.Filter.AddItem(cgvDisplay.DataController.Filter.Root,
    cgvDisplaystatusapprove, foEqual, '1', 'Posting');

  SetReadOnly(cgvDisplay);
  SetReadOnly(cgvPrevBankFlow);

  // Display format
  TcxCurrencyEditProperties(cgvDisplayamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevBankFlowDebit.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevBankFlowCredit.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevBankFlowBalance.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmAccounting.qryPrevBank);
  MonthYearValueChange(nil); // -> Trigger qryDisplay
end;

procedure TfmDisplayBankTransaction.MonthYearValueChange(Sender: TObject);
var
  TempDate: TDateTime;
begin
  inherited;

  if pcBank.ActivePageIndex = tsBankTransaction.PageIndex then
  begin
    qryDisplay.Close;
    qryDisplay.Params[0].Value := StrToInt(cbYear.Text);
    qryDisplay.Params[1].Value := cbMonth.ItemIndex + 1;
    OpenIfClose(qryDisplay, True);
  end;
  if pcBank.ActivePageIndex = tsBankFlow.PageIndex then
  begin
    qryPrevBankFlow.Close;
    TempDate := EncodeDate(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1), 1);
    qryPrevBankFlow.Params[0].Value := TempDate;
    qryPrevBankFlow.Params[1].Value := VarToStr(edtBankId.EditValue);
    qryPrevBankFlow.Params[2].Value := VarToStr(edtAccountNo.EditValue);
    qryPrevBankFlow.Params[3].Value := StrToInt(cbYear.Text);
    qryPrevBankFlow.Params[4].Value := cbMonth.ItemIndex + 1;
    OpenIfClose(qryPrevBankFlow, True);
    ShowBankFlow;
  end;
end;

procedure TfmDisplayBankTransaction.pcBankChange(Sender: TObject);
begin
  inherited;

  if pcBank.ActivePageIndex = tsBankTransaction.PageIndex then
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

procedure TfmDisplayBankTransaction.RefreshAll;
begin
  inherited;

  MonthYearValueChange(nil);
end;

procedure TfmDisplayBankTransaction.ShowBankFlow;
var
  i: integer;
  Balance, Debit, Credit: currency;
begin
  pbProcess.Properties.Max := qryPrevBankFlow.RecordCount;
  cgvPrevBankFlow.DataController.RecordCount := qryPrevBankFlow.RecordCount;
  Balance := 0;
  for i := 0 to qryPrevBankFlow.RecordCount - 1 do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;
    qryPrevBankFlow.RecNo := i + 1;
    with cgvPrevBankFlow do
    begin
      if qryPrevBankFlow.FieldByName('Amount').AsCurrency >= 0 then
      begin
        Debit := qryPrevBankFlow.FieldByName('Amount').AsCurrency;
        Credit := 0;
      end
      else
      begin
        Debit := 0;
        Credit := Abs(qryPrevBankFlow.FieldByName('Amount').AsCurrency);
      end;
      Balance := Balance + (Debit - Credit);

      DataController.Values[i, cgvPrevBankFlowTransactionDate.Index] := qryPrevBankFlow.FieldByName('TransactionDate').AsVariant;
      DataController.Values[i, cgvPrevBankFlowMemo.Index] := qryPrevBankFlow.FieldByName('Memo').AsVariant;
      DataController.Values[i, cgvPrevBankFlowTransactionTypeName.Index] := qryPrevBankFlow.FieldByName('TransactionTypeName').AsVariant;
      DataController.Values[i, cgvPrevBankFlowRef.Index] := qryPrevBankFlow.FieldByName('Ref').AsVariant;
      DataController.Values[i, cgvPrevBankFlowVendor.Index] := qryPrevBankFlow.FieldByName('VendorName').AsVariant;
      DataController.Values[i, cgvPrevBankFlowCustomer.Index] := qryPrevBankFlow.FieldByName('CustomerName').AsVariant;
      if qryPrevBankFlow.RecNo = 1 then
      begin
        // Saldo awal
        DataController.Values[i, cgvPrevBankFlowDebit.Index] := 0;
        DataController.Values[i, cgvPrevBankFlowCredit.Index] := 0;
      end
      else
      begin
        DataController.Values[i, cgvPrevBankFlowDebit.Index] := Debit;
        DataController.Values[i, cgvPrevBankFlowCredit.Index] := Credit;
      end;
      DataController.Values[i, cgvPrevBankFlowBalance.Index] := Balance;
    end;
  end;
  pbProcess.Position := 0;
end;

end.
