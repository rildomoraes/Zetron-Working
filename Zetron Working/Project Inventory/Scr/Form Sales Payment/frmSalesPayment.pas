unit frmSalesPayment;

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
  TfmSalesPayment = class(TFormUniTransactionEx)
    pnlTop: TPanel;
    lblCustomer: TLabel;
    lblDeposit: TLabel;
    lblSalesPaymentDate: TLabel;
    lblSalesPaymentId: TLabel;
    dblcCustomerId: TcxDBExtLookupComboBox;
    dblcCustomerId2: TcxDBExtLookupComboBox;
    dbeCustomerDepositBalance: TcxDBCurrencyEdit;
    dbeSalesPaymentDate: TcxDBDateEdit;
    dbeSalesPaymentId: TcxDBTextEdit;
    edtAddress: TcxMemo;
    edtCityName: TcxExtLookupComboBox;
    edtProvinceName: TcxExtLookupComboBox;
    edtCountryName: TcxExtLookupComboBox;
    cgSalesPaymentDt: TcxGrid;
    cgvSalesPaymentDt: TcxGridDBTableView;
    cgvSalesPaymentDtSalespaymentid: TcxGridDBColumn;
    cgvSalesPaymentDtno: TcxGridDBColumn;
    cgvSalesPaymentDtSalesinvoiceid1: TcxGridDBColumn;
    cgvSalesPaymentDtSalesinvoiceid4: TcxGridDBColumn;
    cgvSalesPaymentDtSalesinvoiceid3: TcxGridDBColumn;
    cgvSalesPaymentDtSalesinvoiceid2: TcxGridDBColumn;
    cgvSalesPaymentDtpaymenttypeid: TcxGridDBColumn;
    cgvSalesPaymentDtreferenceid1: TcxGridDBColumn;
    cgvSalesPaymentDtreferenceid2: TcxGridDBColumn;
    cgvSalesPaymentDtamount: TcxGridDBColumn;
    cgvSalesPaymentDtemployeeid: TcxGridDBColumn;
    cgSalesPaymentDtLevel1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    tsExternalMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    dsSalesPaymentDt: TDataSource;
    cgDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplaystatusapprove: TcxGridDBColumn;
    cgvPrevDisplaysalespaymentid: TcxGridDBColumn;
    cgvPrevDisplaysalespaymentdate: TcxGridDBColumn;
    cgvPrevDisplaycustomerid: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    lblAutoCreate: TLabel;
    cgvSalesPaymentDtCurrencyId: TcxGridDBColumn;
    cgvSalesPaymentDtKurs: TcxGridDBColumn;
    qrySalesPayment: TUniQuery;
    qrySalesPaymentDt: TUniQuery;
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
    procedure qrySalesPaymentBeforeInsert(DataSet: TDataSet);
    procedure qrySalesPaymentAfterPost(DataSet: TDataSet);
    procedure qrySalesPaymentAfterCancel(DataSet: TDataSet);
    procedure qrySalesPaymentNewRecord(DataSet: TDataSet);
    procedure qrySalesPaymentDtNewRecord(DataSet: TDataSet);
    procedure qrySalesPaymentDtBeforePost(DataSet: TDataSet);
    procedure qrySalesPaymentDtAfterPost(DataSet: TDataSet);
    procedure qrySalesPaymentDtAfterDelete(DataSet: TDataSet);
    procedure qrySalesPaymentBeforePost(DataSet: TDataSet);
    procedure dsSalesPaymentDtStateChange(Sender: TObject);
    procedure dblcCustomerIdPropertiesEditValueChanged(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dbeSalesPaymentIdPropertiesEditValueChanged(Sender: TObject);
    procedure qrySalesPaymentDtBeforeInsert(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FInsertState: boolean;
  public

  end;

var
  fmSalesPayment: TfmSalesPayment;

implementation

{$R *.dfm}

uses
  untConstanta, untProcedure, dtmGlobal, dtmGeneral, dtmShare, dtmInventory,
  frmPrintFastReport;

procedure TfmSalesPayment.dbeSalesPaymentIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  lblAutoCreate.Visible := qrySalesPayment.FieldByName('FlagAutomatic').AsString = '1';

  dmInventory.qryPrevOutstandingSI.Close;
  if not qrySalesPayment.Active then
    Exit;

  dmInventory.qryPrevOutstandingSI.Params[0].Value := qrySalesPayment.FieldByName('CustomerId').AsString;
  dmInventory.qryPrevOutstandingSI.Params[1].Value := qrySalesPayment.FieldByName('SalesPaymentId').AsString;
  OpenIfClose(dmInventory.qryPrevOutstandingSI);
end;

procedure TfmSalesPayment.dblcCustomerIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if VarToStr(TcxDBExtLookupComboBox(Sender).EditValue) <> '' then
  begin
    edtAddress.EditValue := dmGeneral.cgvPrevCustomerAddress.EditValue;
    edtCityName.EditValue := dmGeneral.cgvPrevCustomerCityId.EditValue;
{ TODO : province }//    edtProvinceName.EditValue := dmGeneral.cgvPrevCustomerProvinceId.EditValue;
//    edtCountryName.EditValue := dmGeneral.cgvPrevCustomerCountryId.EditValue;
  end
  else
  begin
    edtAddress.EditValue := null;
    edtCityName.EditValue := null;
    edtProvinceName.EditValue := null;
    edtCountryName.EditValue := null;
  end;
end;

procedure TfmSalesPayment.dsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if Field = nil then
    Exit;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'CustomerId') = 0) or
      (CompareText(Field.FieldName, 'SalesPaymentId') = 0) then
    begin
      dmInventory.qryPrevOutstandingSI.Close;
      dmInventory.qryPrevOutstandingSI.Params[0].Value := qrySalesPayment.FieldByName('CustomerId').AsString;
      dmInventory.qryPrevOutstandingSI.Params[1].Value := qrySalesPayment.FieldByName('SalesPaymentId').AsString;
      OpenIfClose(dmInventory.qryPrevOutstandingSI);
    end;
  end;
end;

procedure TfmSalesPayment.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qrySalesPayment.State in [dsBrowse] then
  begin
    SetReadOnly(dblcCustomerId, True, COLOR_INACTIVE);
    SetReadOnly(dblcCustomerId2, True, COLOR_INACTIVE);
  end;

  if qrySalesPayment.State in [dsInsert] then
  begin
    SetReadOnly(dblcCustomerId, False);
    SetReadOnly(dblcCustomerId2, False);
  end;
end;

procedure TfmSalesPayment.dsSalesPaymentDtStateChange(Sender: TObject);
begin
  inherited;

  if qrySalesPaymentDt.State in [dsBrowse] then
  begin
    LockRefresh(dmInventory.qryPrevOutstandingSI, True);
  end;
end;

procedure TfmSalesPayment.InitForm;
begin
  inherited;

  // Init Print
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_SP);

  SetReadOnly(edtAddress, True, COLOR_INACTIVE);
  SetReadOnly(edtCityName, True, COLOR_INACTIVE);
  SetReadOnly(edtProvinceName, True, COLOR_INACTIVE);
  SetReadOnly(edtCountryName, True, COLOR_INACTIVE);
  SetReadOnly(dbeSalesPaymentId, True, COLOR_INACTIVE);
  SetReadOnly(dbeCashRegisterTransactionId);
  SetReadOnly(dbeCustomerDepositBalance, True, COLOR_INACTIVE);
  SetReadOnly(cgvSalesPaymentDtCurrencyId, True, dmGlobal.stYellowLight);

  OpenIfClose(dmGeneral.qryCustomer, True);
  qryPrevPaymentType.Close;
  qryPrevPaymentType.Params[0].Value := '%'; // FlagInactive
  OpenIfClose(qryPrevPaymentType);
  OpenIfClose(dmGlobal.qryCurrencyMaster);
  
  MonthYearValueChange(nil); // -> Trigger qrySalesPaymentHd
  OpenIfClose(qrySalesPaymentDt);

  dbeCustomerDepositBalance.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesPaymentDtamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesPaymentDtKurs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
end;

procedure TfmSalesPayment.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qrySalesPayment.State in [dsEdit, dsInsert]) or
    (qrySalesPaymentDt.State in [dsEdit, dsInsert]) then
    Abort;

  qrySalesPayment.Close;
  qrySalesPayment.Params[0].Value := StrToInt(cbYear.Text);
  qrySalesPayment.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qrySalesPayment, True, True);
end;

procedure TfmSalesPayment.qrySalesPaymentAfterCancel(DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmSalesPayment.qrySalesPaymentAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('SalesPayment', dmShare.OptionSP.Prefix,
      DataSet.FieldByName('SalesPaymentDate').AsDateTime, dmShare.OptionSP.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmSalesPayment.qrySalesPaymentBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmSalesPayment.qrySalesPaymentBeforePost(DataSet: TDataSet);
begin
  inherited;

  // Insert Id
  if FInsertState then
    DataSet.FieldByName('SalesPaymentId').AsString :=
      dmGlobal.GetLastTransactionId('SalesPayment', dmShare.OptionSP.Prefix, dmShare.OptionSP.Length,
        DataSet.FieldByName('SalesPaymentDate').AsDateTime, dmShare.OptionSP.RunYear);

  // Last Employee modified
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmSalesPayment.qrySalesPaymentDtAfterDelete(DataSet: TDataSet);
begin
  inherited;

  LockRefresh(dmInventory.qryPrevOutstandingSI, True);
end;

procedure TfmSalesPayment.qrySalesPaymentDtAfterPost(DataSet: TDataSet);
begin
  inherited;

  // Refresh Ref Id
  LockRefresh(qrySalesPaymentDt);
  LockRefresh(dmInventory.qryPrevOutstandingSI, True);
end;

procedure TfmSalesPayment.qrySalesPaymentDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;
end;

procedure TfmSalesPayment.qrySalesPaymentDtBeforePost(DataSet: TDataSet);
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

procedure TfmSalesPayment.qrySalesPaymentDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
  Dataset.FieldByName('CurrencyId').AsVariant := 'IDR';
  Dataset.FieldByName('Kurs').AsInteger := 1;
end;

procedure TfmSalesPayment.qrySalesPaymentNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('CounterPrint').AsInteger := 0;
  Dataset.FieldByName('StatusApprove').AsString := '1';
  DataSet.FieldByName('FlagAutomatic').AsString := '0';
end;

procedure TfmSalesPayment.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryCustomer, True);
  LockRefresh(qryPrevPaymentType);
  LockRefresh(dmGlobal.qryCurrencyMaster);
  LockRefresh(qrySalesPayment, True);
  LockRefresh(qrySalesPaymentDt);
  LockRefresh(dmInventory.qryPrevOutstandingSI, True);
end;

end.
