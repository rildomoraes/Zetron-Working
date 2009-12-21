unit frmDisplayCashTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplayPeriod, Menus, cxLookAndFeelPainters, cxGraphics, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, cxCurrencyEdit, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxPC, cxProgressBar, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, MemDS, DBAccess, Uni, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter;

type
  TfmDisplayCashTransaction = class(TFormUniDisplayPeriod)
    dsDisplay: TDataSource;
    dsPrevCashFlow: TDataSource;
    pcCash: TcxPageControl;
    tsCashTransaction: TcxTabSheet;
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplayStatusApprove: TcxGridDBColumn;
    cgvDisplayflagout: TcxGridDBColumn;
    cgvDisplaycashtransactionid: TcxGridDBColumn;
    cgvDisplaycashtransactiondate: TcxGridDBColumn;
    cgvDisplaycashbanktransactiontypename: TcxGridDBColumn;
    cgvDisplaymemo: TcxGridDBColumn;
    cgvDisplayvendorname: TcxGridDBColumn;
    cgvDisplaycustomername: TcxGridDBColumn;
    cgvDisplayamount: TcxGridDBColumn;
    cgvDisplayemployeename: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    tsCashFlow: TcxTabSheet;
    cgPrevCashFlow: TcxGrid;
    cgvPrevCashFlow: TcxGridTableView;
    cgvPrevCashFlowTransactionDate: TcxGridColumn;
    cgvPrevCashFlowMemo: TcxGridColumn;
    cgvPrevCashFlowTransactionType: TcxGridColumn;
    cgvPrevCashFlowRef: TcxGridColumn;
    cgvPrevCashFlowVendor: TcxGridColumn;
    cgvPrevCashFlowCustomer: TcxGridColumn;
    cgvPrevCashFlowCredit: TcxGridColumn;
    cgvPrevCashFlowDebit: TcxGridColumn;
    cgvPrevCashFlowBalance: TcxGridColumn;
    cgPrevCashFlowLevel1: TcxGridLevel;
    pnlProgressBar: TPanel;
    Label5: TLabel;
    pbProcess: TcxProgressBar;
    qryDisplay: TUniQuery;
    qryPrevCashFlow: TUniQuery;
    procedure pcCashChange(Sender: TObject);
  private
    FOldPeriod: string;
    procedure ShowCashFlow;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmDisplayCashTransaction: TfmDisplayCashTransaction;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmDisplayCashTransaction.InitForm;
begin
  inherited;

  // Default Filter
  cgvDisplay.DataController.Filter.Active := True;
  cgvDisplay.DataController.Filter.AddItem(cgvDisplay.DataController.Filter.Root,
    cgvDisplaystatusapprove, foEqual, '1', 'Posting');

  SetReadOnly(cgvDisplay);
  SetReadOnly(cgvPrevCashFlow);

  TcxCurrencyEditProperties(cgvDisplayamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevCashFlowDebit.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevCashFlowCredit.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevCashFlowBalance.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  MonthYearValueChange(nil); // -> Trigger qryDisplay
end;

procedure TfmDisplayCashTransaction.MonthYearValueChange(Sender: TObject);
var
  TempDate: TDateTime;
begin
  inherited;

  if pcCash.ActivePageIndex = tsCashTransaction.PageIndex then
  begin
    qryDisplay.Close;
    qryDisplay.Params[0].Value := StrToInt(cbYear.Text);
    qryDisplay.Params[1].Value := cbMonth.ItemIndex + 1;
    OpenIfClose(qryDisplay, True);
  end;
  if pcCash.ActivePageIndex = tsCashFlow.PageIndex then
  begin
    qryPrevCashFlow.Close;
    TempDate := EncodeDate(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1), 1);
    qryPrevCashFlow.Params[0].Value := TempDate;
    qryPrevCashFlow.Params[1].Value := StrToInt(cbYear.Text);
    qryPrevCashFlow.Params[2].Value := cbMonth.ItemIndex + 1;
    OpenIfClose(qryPrevCashFlow, True);
    ShowCashFlow;
  end;
end;

procedure TfmDisplayCashTransaction.pcCashChange(Sender: TObject);
begin
  inherited;

  if pcCash.ActivePageIndex = tsCashTransaction.PageIndex then
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

procedure TfmDisplayCashTransaction.RefreshAll;
begin
  inherited;

  MonthYearValueChange(nil);
end;

procedure TfmDisplayCashTransaction.ShowCashFlow;
var
  i: integer;
  Balance, Debit, Credit: currency;
begin
  pbProcess.Properties.Max := qryPrevCashFlow.RecordCount;
  cgvPrevCashFlow.DataController.RecordCount := qryPrevCashFlow.RecordCount;
  Balance := 0;
  for i := 0 to qryPrevCashFlow.RecordCount - 1 do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;
    qryPrevCashFlow.RecNo := i + 1;
    with cgvPrevCashFlow do
    begin
      if qryPrevCashFlow.FieldByName('FlagOut').AsString = '0' then
      begin
        Debit := qryPrevCashFlow.FieldByName('Amount').AsCurrency;
        Credit := 0;
      end
      else
      begin
        Debit := 0;
        Credit := Abs(qryPrevCashFlow.FieldByName('Amount').AsCurrency);
      end;
      Balance := Balance + (Debit - Credit);

      DataController.Values[i, cgvPrevCashFlowTransactionDate.Index] := qryPrevCashFlow.FieldByName('TransactionDate').AsVariant;
      DataController.Values[i, cgvPrevCashFlowMemo.Index] := qryPrevCashFlow.FieldByName('Memo').AsVariant;
      DataController.Values[i, cgvPrevCashFlowTransactionType.Index] := qryPrevCashFlow.FieldByName('TransactionTypeName').AsVariant;
      DataController.Values[i, cgvPrevCashFlowRef.Index] := qryPrevCashFlow.FieldByName('Ref').AsVariant;
      DataController.Values[i, cgvPrevCashFlowVendor.Index] := qryPrevCashFlow.FieldByName('VendorName').AsVariant;
      DataController.Values[i, cgvPrevCashFlowCustomer.Index] := qryPrevCashFlow.FieldByName('CustomerName').AsVariant;
      if qryPrevCashFlow.RecNo = 1 then
      begin
        // Saldo awal
        DataController.Values[i, cgvPrevCashFlowDebit.Index] := 0;
        DataController.Values[i, cgvPrevCashFlowCredit.Index] := 0;
      end
      else
      begin
        DataController.Values[i, cgvPrevCashFlowDebit.Index] := Debit;
        DataController.Values[i, cgvPrevCashFlowCredit.Index] := Credit;
      end;
      DataController.Values[i, cgvPrevCashFlowBalance.Index] := Balance;
    end;
  end;
  pbProcess.Position := 0;
end;

end.
