unit frmPurchaseReturnPayment;

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
  TfmPurchaseReturnPayment = class(TFormUniTransactionEx)
    dsPurchaseReturnPaymentDt: TDataSource;
    pnlTop: TPanel;
    lblVendor: TLabel;
    lblDeposit: TLabel;
    lblPurchaseReturnPaymentDate: TLabel;
    lblPurchaseReturnPaymentId: TLabel;
    dblcVendorId: TcxDBExtLookupComboBox;
    dblcVendorId2: TcxDBExtLookupComboBox;
    dbeVendorDepositBalance: TcxDBCurrencyEdit;
    dbePurchaseReturnPaymentDate: TcxDBDateEdit;
    dbePurchaseReturnPaymentId: TcxDBTextEdit;
    edtAddress: TcxMemo;
    edtCityName: TcxExtLookupComboBox;
    edtProvinceName: TcxExtLookupComboBox;
    edtCountryName: TcxExtLookupComboBox;
    cgPurchaseReturnPaymentDt: TcxGrid;
    cgvPurchaseReturnPaymentDt: TcxGridDBTableView;
    cgvPurchaseReturnPaymentDtPurchaseReturnPaymentid: TcxGridDBColumn;
    cgvPurchaseReturnPaymentDtno: TcxGridDBColumn;
    cgvPurchaseReturnPaymentDtpurchasereturnid1: TcxGridDBColumn;
    cgvPurchaseReturnPaymentDtpurchasereturnid2: TcxGridDBColumn;
    cgvPurchaseReturnPaymentDtpurchasereturnid3: TcxGridDBColumn;
    cgvPurchaseReturnPaymentDtpaymenttypeid: TcxGridDBColumn;
    cgvPurchaseReturnPaymentDtreferenceid1: TcxGridDBColumn;
    cgvPurchaseReturnPaymentDtreferenceid2: TcxGridDBColumn;
    cgvPurchaseReturnPaymentDtamount: TcxGridDBColumn;
    cgvPurchaseReturnPaymentDtemployeeid: TcxGridDBColumn;
    cgPurchaseReturnPaymentDtLevel1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    tsExternalMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    cgDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplaystatusapprove: TcxGridDBColumn;
    cgvPrevDisplaypurchasereturnpaymentid: TcxGridDBColumn;
    cgvPrevDisplaypurchasereturnpaymentdate: TcxGridDBColumn;
    cgvPrevDisplayvendorid: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    cgvPurchaseReturnPaymentDtCurrencyId: TcxGridDBColumn;
    cgvPurchaseReturnPaymentDtKurs: TcxGridDBColumn;
    qryPurchaseReturnPaymentHd: TUniQuery;
    qryPurchaseReturnPaymentDt: TUniQuery;
    qryGetPaymentType: TUniQuery;
    gvrAccounting: TcxGridViewRepository;
    cgvPrevPaymentType: TcxGridDBTableView;
    cgvPrevPaymentTypePaymentTypeId: TcxGridDBColumn;
    cgvPrevPaymentPaymentTypeName: TcxGridDBColumn;
    qryPrevPaymentType: TUniQuery;
    dsPrevPaymentType: TDataSource;
    procedure qryPurchaseReturnPaymentHdAfterPost(DataSet: TDataSet);
    procedure qryPurchaseReturnPaymentHdBeforeInsert(DataSet: TDataSet);
    procedure qryPurchaseReturnPaymentHdAfterCancel(DataSet: TDataSet);
    procedure qryPurchaseReturnPaymentHdNewRecord(DataSet: TDataSet);
    procedure qryPurchaseReturnPaymentHdBeforePost(DataSet: TDataSet);
    procedure qryPurchaseReturnPaymentDtNewRecord(DataSet: TDataSet);
    procedure qryPurchaseReturnPaymentDtBeforePost(DataSet: TDataSet);
    procedure qryPurchaseReturnPaymentDtAfterPost(DataSet: TDataSet);
    procedure qryPurchaseReturnPaymentDtAfterDelete(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsPurchaseReturnPaymentDtStateChange(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dblcVendorIdPropertiesEditValueChanged(Sender: TObject);
    procedure dbePurchaseReturnPaymentIdPropertiesEditValueChanged(Sender: TObject);
    procedure qryPurchaseReturnPaymentDtBeforeInsert(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FInsertState: boolean;
  end;

var
  fmPurchaseReturnPayment: TfmPurchaseReturnPayment;

implementation

{$R *.dfm}

uses
  untConstanta, untProcedure, dtmGlobal, dtmGeneral, dtmShare, dtmInventory,
  frmPrintFastReport;

procedure TfmPurchaseReturnPayment.dbePurchaseReturnPaymentIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  dmInventory.qryPrevOutstandingPR.Close;
  if not qryPurchaseReturnPaymentHd.Active then
    Exit;

  dmInventory.qryPrevOutstandingPR.Params[0].Value := qryPurchaseReturnPaymentHd.FieldByName('VendorId').AsString;
  dmInventory.qryPrevOutstandingPR.Params[1].Value := qryPurchaseReturnPaymentHd.FieldByName('PurchaseReturnPaymentId').AsString;
  OpenIfClose(dmInventory.qryPrevOutstandingPR);
end;

procedure TfmPurchaseReturnPayment.dblcVendorIdPropertiesEditValueChanged(
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

procedure TfmPurchaseReturnPayment.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Field = nil then
    Exit;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'VendorId') = 0) or
      (CompareText(Field.FieldName, 'PurchaseReturnPaymentId') = 0) then
    begin
      dmInventory.qryPrevOutstandingPR.Close;
      dmInventory.qryPrevOutstandingPR.Params[0].Value := qryPurchaseReturnPaymentHd.FieldByName('VendorId').AsString;
      dmInventory.qryPrevOutstandingPR.Params[1].Value := qryPurchaseReturnPaymentHd.FieldByName('PurchaseReturnPaymentId').AsString;
      OpenIfClose(dmInventory.qryPrevOutstandingPR);
    end;
  end;
end;

procedure TfmPurchaseReturnPayment.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qryPurchaseReturnPaymentHd.State in [dsBrowse] then
  begin
    SetReadOnly(dblcVendorId, True, COLOR_INACTIVE);
    SetReadOnly(dblcVendorId2, True, COLOR_INACTIVE);
  end;

  if qryPurchaseReturnPaymentHd.State in [dsInsert] then
  begin
    SetReadOnly(dblcVendorId, False);
    SetReadOnly(dblcVendorId2, False);
  end;
end;

procedure TfmPurchaseReturnPayment.dsPurchaseReturnPaymentDtStateChange(
  Sender: TObject);
begin
  inherited;

  if qryPurchaseReturnPaymentDt.State in [dsBrowse] then
  begin
    LockRefresh(dmInventory.qryPrevOutstandingPR, True);
  end;
end;

procedure TfmPurchaseReturnPayment.InitForm;
begin
  inherited;

  // Init Print
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PRP);

  SetReadOnly(edtAddress, True, COLOR_INACTIVE);
  SetReadOnly(edtCityName, True, COLOR_INACTIVE);
  SetReadOnly(edtProvinceName, True, COLOR_INACTIVE);
  SetReadOnly(edtCountryName, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchaseReturnPaymentId, True, COLOR_INACTIVE);
  SetReadOnly(dbeVendorDepositBalance, True, COLOR_INACTIVE);

  OpenIfClose(dmGeneral.qryVendor, True);
  qryPrevPaymentType.Close;
  qryPrevPaymentType.Params[0].Value := '%'; // FlagInactive
  OpenIfClose(qryPrevPaymentType);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  MonthYearValueChange(nil); // -> Trigger PurchaseReturnPaymentHd
  OpenIfClose(qryPurchaseReturnPaymentDt);

  dbeVendorDepositBalance.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseReturnPaymentDtamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPurchaseReturnPaymentDtKurs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
end;

procedure TfmPurchaseReturnPayment.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryPurchaseReturnPaymentHd.State in [dsEdit, dsInsert]) or
    (qryPurchaseReturnPaymentDt.State in [dsEdit, dsInsert]) then
    Abort;

  qryPurchaseReturnPaymentHd.Close;
  qryPurchaseReturnPaymentHd.Params[0].Value := StrToInt(cbYear.Text);
  qryPurchaseReturnPaymentHd.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryPurchaseReturnPaymentHd, True, True);
end;

procedure TfmPurchaseReturnPayment.qryPurchaseReturnPaymentDtAfterDelete(
  DataSet: TDataSet);
begin
  inherited;

  LockRefresh(dmInventory.qryPrevOutstandingPR, True);
end;

procedure TfmPurchaseReturnPayment.qryPurchaseReturnPaymentDtAfterPost(
  DataSet: TDataSet);
begin
  inherited;

  // Refresh Ref Id
  LockRefresh(qryPurchaseReturnPaymentDt);
  LockRefresh(dmInventory.qryPrevOutstandingPR, True);
end;

procedure TfmPurchaseReturnPayment.qryPurchaseReturnPaymentDtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;
end;

procedure TfmPurchaseReturnPayment.qryPurchaseReturnPaymentDtBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName('Kurs').AsVariant = 0 then
    Dataset.FieldByName('Kurs').AsVariant := 1;

  Dataset.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPurchaseReturnPayment.qryPurchaseReturnPaymentDtNewRecord(
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

procedure TfmPurchaseReturnPayment.qryPurchaseReturnPaymentHdAfterCancel(
  DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmPurchaseReturnPayment.qryPurchaseReturnPaymentHdAfterPost(
  DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('PurchaseReturnPaymentHd', dmShare.OptionPRP.Prefix,
      DataSet.FieldByName('PurchaseReturnPaymentDate').AsDateTime, dmShare.OptionPRP.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmPurchaseReturnPayment.qryPurchaseReturnPaymentHdBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmPurchaseReturnPayment.qryPurchaseReturnPaymentHdBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  // Insert Id
  if FInsertState then
    DataSet.FieldByName('PurchaseReturnPaymentId').AsString :=
      dmGlobal.GetLastTransactionId('PurchaseReturnPaymentHd', dmShare.OptionPRP.Prefix, dmShare.OptionPRP.Length,
        DataSet.FieldByName('PurchaseReturnPaymentDate').AsDateTime, dmShare.OptionPRP.RunYear);

  // Last Employee modified
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmPurchaseReturnPayment.qryPurchaseReturnPaymentHdNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('CounterPrint').AsInteger := 0;
  Dataset.FieldByName('StatusApprove').AsString := '1';
  DataSet.FieldByName('FlagAutomatic').AsString := '0';
end;

procedure TfmPurchaseReturnPayment.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryVendor, True);
  LockRefresh(qryPrevPaymentType);
  LockRefresh(qryPurchaseReturnPaymentHd, True);
  LockRefresh(qryPurchaseReturnPaymentDt);
  LockRefresh(dmInventory.qryPrevOutstandingPR, True);
  LockRefresh(dmGlobal.qryCurrencyMaster);  
end;

end.
