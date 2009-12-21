unit frmPurchasePayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxSpinEdit, cxDBExtLookupComboBox, cxCalc, cxCurrencyEdit, cxImageComboBox,
  cxGrid, MemDS, DBAccess, Uni, cxDBEdit, cxPC, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxMemo, cxDropDownEdit, cxCalendar,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit,
  cxMaskEdit, StdCtrls, cxButtons, ExtCtrls, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxSkinscxPCPainter;

type
  TfmPurchasePayment = class(TFormUniTransactionEx)
    dsPurchasePaymentDt: TDataSource;
    pnlTop: TPanel;
    lblVendor: TLabel;
    lblDeposit: TLabel;
    lblPurchasePaymentDate: TLabel;
    lblPurchasePaymentId: TLabel;
    dblcVendorId: TcxDBExtLookupComboBox;
    dblcVendorId2: TcxDBExtLookupComboBox;
    dbeVendorDepositBalance: TcxDBCurrencyEdit;
    dbePurchasePaymentDate: TcxDBDateEdit;
    dbePurchasePaymentId: TcxDBTextEdit;
    edtAddress: TcxMemo;
    edtCityName: TcxExtLookupComboBox;
    edtProvinceName: TcxExtLookupComboBox;
    edtCountryName: TcxExtLookupComboBox;
    cgPurchasePaymentDt: TcxGrid;
    cgvPurchasePaymentDt: TcxGridDBTableView;
    cgvPurchasePaymentDtpurchasepaymentid: TcxGridDBColumn;
    cgvPurchasePaymentDtno: TcxGridDBColumn;
    cgvPurchasePaymentDtpurchaseinvoiceid1: TcxGridDBColumn;
    cgvPurchasePaymentDtpurchaseinvoiceid4: TcxGridDBColumn;
    cgvPurchasePaymentDtpurchaseinvoiceid3: TcxGridDBColumn;
    cgvPurchasePaymentDtpurchaseinvoiceid2: TcxGridDBColumn;
    cgvPurchasePaymentDtpaymenttypeid: TcxGridDBColumn;
    cgvPurchasePaymentDtreferenceid: TcxGridDBColumn;
    cgvPurchasePaymentDtamount: TcxGridDBColumn;
    cgvPurchasePaymentDtemployeeid: TcxGridDBColumn;
    cgPurchasePaymentDtLevel1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    tsExternalMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    cgDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplaystatusapprove: TcxGridDBColumn;
    cgvPrevDisplaypurchasepaymentid: TcxGridDBColumn;
    cgvPrevDisplaypurchasepaymentdate: TcxGridDBColumn;
    cgvPrevDisplayvendorid: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    cgvPurchasePaymentDtCurrencyId: TcxGridDBColumn;
    cgvPurchasePaymentDtKurs: TcxGridDBColumn;
    qryPurchasePayment: TUniQuery;
    qryPurchasePaymentDt: TUniQuery;
    qryGetPaymentType: TUniQuery;
    qryGetCashTransaction: TUniQuery;
    qryGetBankTransaction: TUniQuery;
    gvrAccounting: TcxGridViewRepository;
    cgvPrevPaymentType: TcxGridDBTableView;
    cgvPrevPaymentTypePaymentTypeId: TcxGridDBColumn;
    cgvPrevPaymentPaymentTypeName: TcxGridDBColumn;
    qryPrevPaymentType: TUniQuery;
    dsPrevPaymentType: TDataSource;
    lblCashRegisterTransactionId: TLabel;
    dbeCashRegisterTransactionId: TcxDBTextEdit;
    procedure qryPurchasePaymentAfterPost(DataSet: TDataSet);
    procedure qryPurchasePaymentBeforeInsert(DataSet: TDataSet);
    procedure qryPurchasePaymentAfterCancel(DataSet: TDataSet);
    procedure qryPurchasePaymentDtNewRecord(DataSet: TDataSet);
    procedure qryPurchasePaymentDtBeforePost(DataSet: TDataSet);
    procedure qryPurchasePaymentDtAfterPost(DataSet: TDataSet);
    procedure qryPurchasePaymentDtAfterDelete(DataSet: TDataSet);
    procedure qryPurchasePaymentNewRecord(DataSet: TDataSet);
    procedure qryPurchasePaymentBeforePost(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsPurchasePaymentDtStateChange(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dblcVendorIdPropertiesEditValueChanged(Sender: TObject);
    procedure dbePurchasePaymentIdPropertiesEditValueChanged(Sender: TObject);
    procedure qryPurchasePaymentDtBeforeInsert(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FInsertState: boolean;
  public

  end;

var
  fmPurchasePayment: TfmPurchasePayment;

implementation

{$R *.dfm}

uses
  untConstanta, untProcedure, dtmGlobal, dtmGeneral, dtmShare, dtmInventory,
  frmPrintFastReport;

procedure TfmPurchasePayment.dbePurchasePaymentIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  dmInventory.qryPrevOutstandingPI.Close;
  if not qryPurchasePayment.Active then
    Exit;

  dmInventory.qryPrevOutstandingPI.Params[0].Value := qryPurchasePayment.FieldByName('VendorId').AsString;
  dmInventory.qryPrevOutstandingPI.Params[1].Value := qryPurchasePayment.FieldByName('PurchasePaymentId').AsString;
  OpenIfClose(dmInventory.qryPrevOutstandingPI);
end;

procedure TfmPurchasePayment.dblcVendorIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if VarToStr(TcxDBExtLookupComboBox(Sender).EditValue) <> '' then
  begin
    edtAddress.EditValue := dmGeneral.cgvPrevVendorAddress.EditValue;
    edtCityName.EditValue := dmGeneral.cgvPrevVendorCityId.EditValue;
{ TODO : province }//    edtProvinceName.EditValue := dmGeneral.cgvPrevVendorProvinceId.EditValue;
//    edtCountryName.EditValue := dmGeneral.cgvPrevVendorCountryId.EditValue;
  end
  else
  begin
    edtAddress.EditValue := null;
    edtCityName.EditValue := null;
    edtProvinceName.EditValue := null;
    edtCountryName.EditValue := null;
  end;
end;

procedure TfmPurchasePayment.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Field = nil then
    Exit;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'VendorId') = 0) or
      (CompareText(Field.FieldName, 'PurchasePaymentId') = 0) then
    begin
      dmInventory.qryPrevOutstandingPI.Close;
      dmInventory.qryPrevOutstandingPI.Params[0].Value := qryPurchasePayment.FieldByName('VendorId').AsString;
      dmInventory.qryPrevOutstandingPI.Params[1].Value := qryPurchasePayment.FieldByName('PurchasePaymentId').AsString;
      OpenIfClose(dmInventory.qryPrevOutstandingPI, False, False);
    end;
  end;
end;

procedure TfmPurchasePayment.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qryPurchasePayment.State in [dsBrowse] then
  begin
    SetReadOnly(dblcVendorId, True, COLOR_INACTIVE);
    SetReadOnly(dblcVendorId2, True, COLOR_INACTIVE);
  end;

  if qryPurchasePayment.State in [dsInsert] then
  begin
    SetReadOnly(dblcVendorId, False);
    SetReadOnly(dblcVendorId2, False);
  end;
end;

procedure TfmPurchasePayment.dsPurchasePaymentDtStateChange(Sender: TObject);
begin
  inherited;

  if qryPurchasePaymentDt.State in [dsBrowse] then
  begin
    LockRefresh(dmInventory.qryPrevOutstandingPI, True);
  end;
end;

procedure TfmPurchasePayment.InitForm;
begin
  inherited;

  // Init Print
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PP);

  SetReadOnly(edtAddress, True, COLOR_INACTIVE);
  SetReadOnly(edtCityName, True, COLOR_INACTIVE);
  SetReadOnly(edtProvinceName, True, COLOR_INACTIVE);
  SetReadOnly(edtCountryName, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchasePaymentId, True, COLOR_INACTIVE);
  SetReadOnly(dbeCashRegisterTransactionId);
  SetReadOnly(dbeVendorDepositBalance, True, COLOR_INACTIVE);
  SetReadOnly(cgvPurchasePaymentDtCurrencyId, True, dmGlobal.stYellowLight);

  OpenIfClose(dmGeneral.qryVendor, True);
  qryPrevPaymentType.Close;
  qryPrevPaymentType.Params[0].Value := '%'; // FlagInactive
  OpenIfClose(qryPrevPaymentType);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  MonthYearValueChange(nil); // -> Trigger PurchasePaymentHd
  OpenIfClose(qryPurchasePaymentDt);

  dbeVendorDepositBalance.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchasePaymentDtamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchasePaymentDtKurs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
end;

procedure TfmPurchasePayment.MonthYearValueChange(Sender: TObject);
begin
  if (qryPurchasePayment.State in [dsEdit, dsInsert]) or
    (qryPurchasePaymentDt.State in [dsEdit, dsInsert]) then
    Abort;

  qryPurchasePayment.Close;
  qryPurchasePayment.Params[0].Value := StrToInt(cbYear.Text);
  qryPurchasePayment.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryPurchasePayment, True, True);
end;

procedure TfmPurchasePayment.qryPurchasePaymentAfterCancel(DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmPurchasePayment.qryPurchasePaymentAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('PurchasePayment', dmShare.OptionPP.Prefix,
      DataSet.FieldByName('PurchasePaymentDate').AsDateTime, dmShare.OptionPP.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmPurchasePayment.qryPurchasePaymentBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmPurchasePayment.qryPurchasePaymentBeforePost(DataSet: TDataSet);
begin
  inherited;

  // Insert Id
  if FInsertState then
    DataSet.FieldByName('PurchasePaymentId').AsString :=
      dmGlobal.GetLastTransactionId('PurchasePayment', dmShare.OptionPP.Prefix, dmShare.OptionPP.Length,
        DataSet.FieldByName('PurchasePaymentDate').AsDateTime, dmShare.OptionPP.RunYear);

  // Last Employee modified
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPurchasePayment.qryPurchasePaymentDtAfterDelete(
  DataSet: TDataSet);
begin
  inherited;

  LockRefresh(dmInventory.qryPrevOutstandingPI, True);
end;

procedure TfmPurchasePayment.qryPurchasePaymentDtAfterPost(DataSet: TDataSet);
begin
  inherited;

  // Refresh Ref Id
  LockRefresh(qryPurchasePaymentDt);
  LockRefresh(dmInventory.qryPrevOutstandingPI, True);
end;

procedure TfmPurchasePayment.qryPurchasePaymentDtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;
end;

procedure TfmPurchasePayment.qryPurchasePaymentDtBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName('ReferenceId').AsString <> '' then
  begin
    qryGetPaymentType.Close;
    qryGetPaymentType.Params[0].Value := Dataset.FieldByName('PaymentTypeId').AsString;
    OpenIfClose(qryGetPaymentType);
    if qryGetPaymentType.FieldByName('FlagBank').AsString = '0' then
    begin
      qryGetCashTransaction.Close;
      qryGetCashTransaction.Params[0].Value := Dataset.FieldByName('ReferenceId').AsString;
      OpenIfClose(qryGetCashTransaction);
      Dataset.FieldByName('CurrencyId').AsVariant := qryGetCashTransaction.FieldByName('CurrencyId').AsVariant;
      Dataset.FieldByName('Kurs').AsVariant := qryGetCashTransaction.FieldByName('Kurs').AsVariant;
    end
    else
    begin
      qryGetBankTransaction.Close;
      qryGetBankTransaction.Params[0].Value := Dataset.FieldByName('ReferenceId').AsString;
      OpenIfClose(qryGetBankTransaction);
      Dataset.FieldByName('CurrencyId').AsVariant := qryGetBankTransaction.FieldByName('CurrencyId').AsVariant;
      Dataset.FieldByName('Kurs').AsVariant := qryGetBankTransaction.FieldByName('Kurs').AsVariant;
    end;
  end
  else
  begin
    if Dataset.FieldByName('CurrencyId').AsString = 'IDR' then
      Dataset.FieldByName('Kurs').AsVariant := 1;
    if Dataset.FieldByName('Kurs').AsVariant = 0 then
      Dataset.FieldByName('Kurs').AsVariant := 1;
  end;

  Dataset.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPurchasePayment.qryPurchasePaymentDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
  Dataset.FieldByName('CurrencyId').AsVariant := 'IDR';
  Dataset.FieldByName('Kurs').AsInteger := 1;
end;

procedure TfmPurchasePayment.qryPurchasePaymentNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('CounterPrint').AsInteger := 0;
  Dataset.FieldByName('StatusApprove').AsString := '1';
  DataSet.FieldByName('FlagAutomatic').AsString := '1';
end;

procedure TfmPurchasePayment.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryVendor, True);
  LockRefresh(qryPrevPaymentType);
  LockRefresh(dmGlobal.qryCurrencyMaster);
  LockRefresh(qryPurchasePayment, True);
  LockRefresh(qryPurchasePaymentDt);
  LockRefresh(dmInventory.qryPrevOutstandingPI, True);
end;

end.
