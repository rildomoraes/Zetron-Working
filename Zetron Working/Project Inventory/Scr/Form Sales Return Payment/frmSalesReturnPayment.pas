unit frmSalesReturnPayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

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
  TfmSalesReturnPayment = class(TFormUniTransactionEx)
    dsSalesReturnPaymentDt: TDataSource;
    cgDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplaystatusapprove: TcxGridDBColumn;
    cgvPrevDisplaysalesreturnpaymentid: TcxGridDBColumn;
    cgvPrevDisplaysalesreturnpaymentdate: TcxGridDBColumn;
    cgvPrevDisplayvendorid: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    pnlTop: TPanel;
    lblCustomer: TLabel;
    lblDeposit: TLabel;
    lblSalesReturnPaymentDate: TLabel;
    lblSalesReturnPaymentId: TLabel;
    dbeCustomerDepositBalance: TcxDBCurrencyEdit;
    dbeSalesReturnPaymentDate: TcxDBDateEdit;
    dbeSalesReturnPaymentId: TcxDBTextEdit;
    dblcCustomerId: TcxDBExtLookupComboBox;
    dblcCustomerId2: TcxDBExtLookupComboBox;
    edtAddress: TcxMemo;
    edtCityName: TcxExtLookupComboBox;
    edtProvinceName: TcxExtLookupComboBox;
    edtCountryName: TcxExtLookupComboBox;
    cgSalesReturnPaymentDt: TcxGrid;
    cgvSalesReturnPaymentDt: TcxGridDBTableView;
    cgvSalesReturnPaymentDtSalesReturnPaymentid: TcxGridDBColumn;
    cgvSalesReturnPaymentDtno: TcxGridDBColumn;
    cgvSalesReturnPaymentDtSalesreturnid1: TcxGridDBColumn;
    cgvSalesReturnPaymentDtSalesreturnid2: TcxGridDBColumn;
    cgvSalesReturnPaymentDtSalesreturnid3: TcxGridDBColumn;
    cgvSalesReturnPaymentDtpaymenttypeid: TcxGridDBColumn;
    cgvSalesReturnPaymentDtreferenceid1: TcxGridDBColumn;
    cgvSalesReturnPaymentDtreferenceid2: TcxGridDBColumn;
    cgvSalesReturnPaymentDtamount: TcxGridDBColumn;
    cgvSalesReturnPaymentDtemployeeid: TcxGridDBColumn;
    cgSalesReturnPaymentDtLevel1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    tsExternalMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    cgvSalesReturnPaymentDtCurrencyId: TcxGridDBColumn;
    cgvSalesReturnPaymentDtKurs: TcxGridDBColumn;
    qrySalesReturnPaymentHd: TUniQuery;
    qrySalesReturnPaymentDt: TUniQuery;
    qryGetPaymentType: TUniQuery;
    gvrAccounting: TcxGridViewRepository;
    cgvPrevPaymentType: TcxGridDBTableView;
    cgvPrevPaymentTypePaymentTypeId: TcxGridDBColumn;
    cgvPrevPaymentPaymentTypeName: TcxGridDBColumn;
    qryPrevPaymentType: TUniQuery;
    dsPrevPaymentType: TDataSource;
    procedure qrySalesReturnPaymentHdAfterPost(DataSet: TDataSet);
    procedure qrySalesReturnPaymentHdBeforeInsert(DataSet: TDataSet);
    procedure qrySalesReturnPaymentHdAfterCancel(DataSet: TDataSet);
    procedure qrySalesReturnPaymentHdNewRecord(DataSet: TDataSet);
    procedure qrySalesReturnPaymentHdBeforePost(DataSet: TDataSet);
    procedure qrySalesReturnPaymentDtNewRecord(DataSet: TDataSet);
    procedure qrySalesReturnPaymentDtBeforePost(DataSet: TDataSet);
    procedure qrySalesReturnPaymentDtAfterPost(DataSet: TDataSet);
    procedure qrySalesReturnPaymentDtAfterDelete(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsSalesReturnPaymentDtStateChange(Sender: TObject);
    procedure dblcCustomerIdPropertiesEditValueChanged(Sender: TObject);
    procedure dbeSalesReturnPaymentIdPropertiesEditValueChanged(Sender: TObject);
    procedure qrySalesReturnPaymentDtBeforeInsert(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FInsertState: boolean;
  public

  end;

var
  fmSalesReturnPayment: TfmSalesReturnPayment;

implementation

{$R *.dfm}

uses
  untConstanta, untProcedure, dtmGlobal, dtmGeneral, dtmShare, dtmInventory,
  frmPrintFastReport;

procedure TfmSalesReturnPayment.dbeSalesReturnPaymentIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  dmInventory.qryPrevOutstandingSR.Close;
  if not qrySalesReturnPaymentHd.Active then
    Exit;

  dmInventory.qryPrevOutstandingSR.Params[0].Value := qrySalesReturnPaymentHd.FieldByName('CustomerId').AsString;
  dmInventory.qryPrevOutstandingSR.Params[1].Value := qrySalesReturnPaymentHd.FieldByName('SalesReturnPaymentId').AsString;
  OpenIfClose(dmInventory.qryPrevOutstandingSR, True);
end;

procedure TfmSalesReturnPayment.dblcCustomerIdPropertiesEditValueChanged(
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

procedure TfmSalesReturnPayment.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Field = nil then
    Exit;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'CustomerId') = 0) or
      (CompareText(Field.FieldName, 'SalesReturnPaymentId') = 0) then
    begin
      dmInventory.qryPrevOutstandingSR.Close;
      dmInventory.qryPrevOutstandingSR.Params[0].Value := qrySalesReturnPaymentHd.FieldByName('CustomerId').AsString;
      dmInventory.qryPrevOutstandingSR.Params[1].Value := qrySalesReturnPaymentHd.FieldByName('SalesReturnPaymentId').AsString;
      OpenIfClose(dmInventory.qryPrevOutstandingSR, False, False);
    end;
  end;
end;

procedure TfmSalesReturnPayment.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qrySalesReturnPaymentHd.State in [dsBrowse] then
  begin
    SetReadOnly(dblcCustomerId, True, COLOR_INACTIVE);
    SetReadOnly(dblcCustomerId2, True, COLOR_INACTIVE);
  end;

  if qrySalesReturnPaymentHd.State in [dsInsert] then
  begin
    SetReadOnly(dblcCustomerId, False);
    SetReadOnly(dblcCustomerId2, False);
  end;
end;

procedure TfmSalesReturnPayment.dsSalesReturnPaymentDtStateChange(
  Sender: TObject);
begin
  inherited;

  if qrySalesReturnPaymentDt.State in [dsBrowse] then
  begin
    LockRefresh(dmInventory.qryPrevOutstandingSR, True);
  end;
end;

procedure TfmSalesReturnPayment.InitForm;
begin
  inherited;

  // Init Print
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_SRP);

  SetReadOnly(cgvPrevDisplay);
  SetReadOnly(edtAddress, True, COLOR_INACTIVE);
  SetReadOnly(edtCityName, True, COLOR_INACTIVE);
  SetReadOnly(edtProvinceName, True, COLOR_INACTIVE);
  SetReadOnly(edtCountryName, True, COLOR_INACTIVE);
  SetReadOnly(dbeSalesReturnPaymentId, True, COLOR_INACTIVE);
  SetReadOnly(dbeCustomerDepositBalance, True, COLOR_INACTIVE);

  OpenIfClose(dmGeneral.qryCustomer, True);
  qryPrevPaymentType.Close;
  qryPrevPaymentType.Params[0].Value := '%'; // FlagInactive
  OpenIfClose(qryPrevPaymentType);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  MonthYearValueChange(nil); // -> Trigger qrySalesReturnPaymentHd
  OpenIfClose(qrySalesReturnPaymentDt);

  dbeCustomerDepositBalance.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesReturnPaymentDtamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvSalesReturnPaymentDtKurs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
end;

procedure TfmSalesReturnPayment.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qrySalesReturnPaymentHd.State in [dsEdit, dsInsert]) or
    (qrySalesReturnPaymentDt.State in [dsEdit, dsInsert]) then
    Abort;

  qrySalesReturnPaymentHd.Close;
  qrySalesReturnPaymentHd.Params[0].Value := StrToInt(cbYear.Text);
  qrySalesReturnPaymentHd.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qrySalesReturnPaymentHd, True, True);
end;

procedure TfmSalesReturnPayment.qrySalesReturnPaymentDtAfterDelete(
  DataSet: TDataSet);
begin
  inherited;

  LockRefresh(dmInventory.qryPrevOutstandingSR, True);
end;

procedure TfmSalesReturnPayment.qrySalesReturnPaymentDtAfterPost(
  DataSet: TDataSet);
begin
  inherited;

  // Refresh Ref Id
  LockRefresh(qrySalesReturnPaymentDt);
  LockRefresh(dmInventory.qryPrevOutstandingSR, True);
end;

procedure TfmSalesReturnPayment.qrySalesReturnPaymentDtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;
end;

procedure TfmSalesReturnPayment.qrySalesReturnPaymentDtBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName('Kurs').AsVariant = 0 then
    Dataset.FieldByName('Kurs').AsVariant := 1;

  Dataset.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmSalesReturnPayment.qrySalesReturnPaymentDtNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('CurrencyId').AsVariant := 'IDR';
  Dataset.FieldByName('Kurs').AsInteger := 1;
end;

procedure TfmSalesReturnPayment.qrySalesReturnPaymentHdAfterCancel(
  DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmSalesReturnPayment.qrySalesReturnPaymentHdAfterPost(
  DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('SalesReturnPaymentHd', dmShare.OptionSRP.Prefix,
      DataSet.FieldByName('SalesReturnPaymentDate').AsDateTime, dmShare.OptionSRP.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmSalesReturnPayment.qrySalesReturnPaymentHdBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmSalesReturnPayment.qrySalesReturnPaymentHdBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  // Insert Id
  if FInsertState then
    DataSet.FieldByName('SalesReturnPaymentId').AsString :=
      dmGlobal.GetLastTransactionId('SalesReturnPaymentHd', dmShare.OptionSRP.Prefix, dmShare.OptionSRP.Length,
        DataSet.FieldByName('SalesReturnPaymentDate').AsDateTime, dmShare.OptionSRP.RunYear);

  // Last Employee modified
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmSalesReturnPayment.qrySalesReturnPaymentHdNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('FlagAutomatic').AsString := '0';
  Dataset.FieldByName('StatusApprove').AsInteger := 1;
  DataSet.FieldByName('CounterPrint').AsInteger := 0;
end;

procedure TfmSalesReturnPayment.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryCustomer, True);
  LockRefresh(qryPrevPaymentType);
  LockRefresh(qrySalesReturnPaymentHd, True);
  LockRefresh(qrySalesReturnPaymentDt);
  LockRefresh(dmInventory.qryPrevOutstandingSR, True);
  LockRefresh(dmGlobal.qryCurrencyMaster);
end;

end.

