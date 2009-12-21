unit frmOtherTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxSpinEdit,
  cxDBExtLookupComboBox, cxCalendar, cxCalc, cxCurrencyEdit, cxImageComboBox,
  ADODB, cxMemo, cxDBEdit, cxPC, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxDropDownEdit, ExtCtrls, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, dxDockPanel, cxLookupEdit, cxDBLookupEdit,
  cxContainer, cxTextEdit, cxMaskEdit, StdCtrls, cxButtons;

type
  TfmOtherTransaction = class(TFormUniTransactionEx)
    cgDisplay: TcxGrid;
    cgDisplayLevel1: TcxGridLevel;
    cgOtherTransactionDt: TcxGrid;
    cgOtherTransactionDtLevel1: TcxGridLevel;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplayemployeeid: TcxGridDBColumn;
    cgvDisplayothertransactiondate: TcxGridDBColumn;
    cgvDisplayothertransactionid: TcxGridDBColumn;
    cgvDisplayprojectid: TcxGridDBColumn;
    cgvDisplaystatusapprove: TcxGridDBColumn;
    cgvDisplaytransactiontypeid: TcxGridDBColumn;
    cgvDisplaywarehousedest: TcxGridDBColumn;
    cgvDisplaywarehousesource: TcxGridDBColumn;
    cgvOtherTransactionDt: TcxGridDBTableView;
    cgvOtherTransactionDtAmount: TcxGridDBColumn;
    cgvOtherTransactionDtemployeeid: TcxGridDBColumn;
    cgvOtherTransactionDtExpiredDate: TcxGridDBColumn;
    cgvOtherTransactionDtItemId: TcxGridDBColumn;
    cgvOtherTransactionDtItemId2: TcxGridDBColumn;
    cgvOtherTransactionDtItemId3: TcxGridDBColumn;
    cgvOtherTransactionDtitemid4: TcxGridDBColumn;
    cgvOtherTransactionDtitemtext: TcxGridDBColumn;
    cgvOtherTransactionDtNo: TcxGridDBColumn;
    cgvOtherTransactionDtothertransactionid: TcxGridDBColumn;
    cgvOtherTransactionDtPrice: TcxGridDBColumn;
    cgvOtherTransactionDtQty: TcxGridDBColumn;
    cgvOtherTransactionDtStatusColor: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    dbeOtherTransactionDate: TcxDBDateEdit;
    dbeOtherTransactionId: TcxDBTextEdit;
    dblcbWarehouseId: TcxDBExtLookupComboBox;
    dblcTransactionTypeId: TcxDBExtLookupComboBox;
    dbmInternalMemo: TcxDBMemo;
    dbmStatementMemo: TcxDBMemo;
    dsOtherTransactionDt: TDataSource;
    Image1: TImage;
    Image2: TImage;
    Label2: TLabel;
    Label5: TLabel;
    lblFixed: TLabel;
    lblPurchaseInvoiceId: TLabel;
    lblTransactionType: TLabel;
    lblWarehouseSource: TLabel;
    pnlTop: TPanel;
    tsExternalMemo: TcxTabSheet;
    tsInternalMemo: TcxTabSheet;
    qryOtherTransactionHd: TADOQuery;
    qryOtherTransactionDt: TADOQuery;
    qryGetTransactionTypeStatus: TADOQuery;
    qryGetPurchasePrice: TADOQuery;
    procedure qryOtherTransactionHdAfterPost(DataSet: TDataSet);
    procedure qryOtherTransactionHdBeforeInsert(DataSet: TDataSet);
    procedure qryOtherTransactionHdAfterCancel(DataSet: TDataSet);
    procedure qryOtherTransactionHdNewRecord(DataSet: TDataSet);
    procedure qryOtherTransactionHdBeforePost(DataSet: TDataSet);
    procedure qryOtherTransactionHdBeforeEdit(DataSet: TDataSet);
    procedure qryOtherTransactionDtNewRecord(DataSet: TDataSet);
    procedure qryOtherTransactionDtBeforePost(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsOtherTransactionDtDataChange(Sender: TObject; Field: TField);
    procedure dblcTransactionTypeIdPropertiesEditValueChanged(Sender: TObject);
    procedure cgvTransactionDtStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cgvOtherTransactionDtStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FTransactionTypeStatus: string;
    FInsertState: boolean;
  public

  end;

var
  fmOtherTransaction: TfmOtherTransaction;

implementation

{$R *.dfm}

uses
  untConstanta, untProcedure, dtmGlobal, dtmInventory;

procedure TfmOtherTransaction.cgvOtherTransactionDtStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.Values[GetColumnByFieldName('StatusColor').Index] = '1' then
      AStyle := dmGlobal.stPurpleLight;
  end;
end;

procedure TfmOtherTransaction.cgvTransactionDtStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
    if ARecord.Values[GetColumnByFieldName('Qty').Index] < '0' then
      AStyle := dmGlobal.stRedLight;
end;

procedure TfmOtherTransaction.dblcTransactionTypeIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if (dblcTransactionTypeId.EditValue<>null) then
  begin
    qryGetTransactionTypeStatus.Close;
    qryGetTransactionTypeStatus.Parameters[0].Value := VarToStr(dblcTransactionTypeId.EditValue);
    OpenIfClose(qryGetTransactionTypeStatus);
    FTransactionTypeStatus := qryGetTransactionTypeStatus.FieldByName('StatusTransaction').AsString;

    if qryOtherTransactionHd.State in [dsBrowse] then
    begin
      if FTransactionTypeStatus = '0' then // In
        cgvOtherTransactionDtPrice.Options.Editing := True;
      if FTransactionTypeStatus = '1' then // Out
        cgvOtherTransactionDtPrice.Options.Editing := False;
      if FTransactionTypeStatus = '2' then // Transfer
        cgvOtherTransactionDtPrice.Options.Editing := False;
    end
    else
    begin
    end;
  end;
end;

procedure TfmOtherTransaction.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if qryOtherTransactionHd.State in [dsBrowse] then
  begin
    SetReadOnly(dblcTransactionTypeId, True, COLOR_INACTIVE);
    SetReadOnly(dblcbWarehouseId, True, COLOR_INACTIVE);
    SetReadOnly(dbeOtherTransactionDate, True, COLOR_INACTIVE);
  end;
end;

procedure TfmOtherTransaction.dsOtherTransactionDtDataChange(Sender: TObject;
  Field: TField);
var
  Amount: real;
begin
  inherited;

  if (Field = nil) then
    Exit;

  if qryOtherTransactionDt.State in [dsInsert, dsEdit] then
  begin
    // Get default price
    if CompareText(Field.FieldName, 'ItemId') = 0 then
    begin
      if FTransactionTypeStatus = '0' then
      begin
        // get last purchase price
        qryGetPurchasePrice.Close;
        qryGetPurchasePrice.parameters[0].Value := Field.Value;
        OpenIfClose(qryGetPurchasePrice);
        if not qryGetPurchasePrice.IsEmpty then
          qryOtherTransactionDt.FieldByName('Price').AsCurrency := qryGetPurchasePrice.FieldByName('Price').AsCurrency;
      end;
    end;

    if (CompareText(Field.FieldName, 'Qty') = 0) or
      (CompareText(Field.FieldName, 'Price') = 0) then
    begin
      Amount :=
        qryOtherTransactionDt.FieldByName('Qty').AsFloat *
        qryOtherTransactionDt.FieldByName('Price').AsFloat;

      qryOtherTransactionDt.FieldByName('Amount').AsFloat := Amount;
    end;
  end;
end;

procedure TfmOtherTransaction.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_OT);

  SetReadOnly(dblcTransactionTypeId, True, COLOR_INACTIVE);
  SetReadOnly(dblcbWarehouseId, True, COLOR_INACTIVE);
  SetReadOnly(dbeOtherTransactionDate, True, COLOR_INACTIVE);
//  SetReadOnly(dbeOtherTransactionId, True, COLOR_INACTIVE);

  OpenIfClose(dminventory.qryWarehouse);
  //OpenIfClose(dmGeneral.qryProject);
  OpenIfClose(dmInventory.qryItem, True);
  dmInventory.qryPrevTransactionType.Close;
  dmInventory.qryPrevTransactionType.parameters[0].Value := '0';
  OpenIfClose(dmInventory.qryPrevTransactionType);

  MonthYearValueChange(nil); // -> Trigger qryOtherTransactionHd

  OpenIfClose(qryOtherTransactionDt);

  TcxCalcEditProperties(cgvOtherTransactionDtQty.Properties).DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatQty;

  TcxCurrencyEditProperties(cgvOtherTransactionDtPrice.Properties).DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatCurrency;

  TcxCurrencyEditProperties(cgvOtherTransactionDtAmount.Properties).DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatCurrency;

end;

procedure TfmOtherTransaction.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryOtherTransactionHd.State in [dsEdit, dsInsert]) or
    (qryOtherTransactionDt.State in [dsEdit, dsInsert]) then
    Abort;

  qryOtherTransactionHd.Close;
  qryOtherTransactionHd.parameters[0].Value := StrToInt(cbYear.Text);
  qryOtherTransactionHd.parameters[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryOtherTransactionHd, True, True);
end;

procedure TfmOtherTransaction.qryOtherTransactionDtBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  // Item Inactive
  Dataset.FieldByName('StatusColor').AsInteger := 0;
//  if dmShare.OptionWarningItemInactive then
//  begin
//    dmShare.qryGetItemFlagInactive.Close;
//    dmShare.qryGetItemFlagInactive.parameters[0].Value := DataSet.FieldByName('ItemId').AsString;
//    OpenIfClose(dmShare.qryGetItemFlagInactive);
//    if dmShare.qryGetItemFlagInactive.FieldByName('FlagInactive').AsString = '1' then
//    begin
//      if MessageDlg(ASK_ITEM_INACTIVE, mtInformation, [mbYes, mbNo], 0) = mrNo then
//        Abort;
//      Dataset.FieldByName('StatusColor').AsInteger := 1;
//    end;
//  end;

  Dataset.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmOtherTransaction.qryOtherTransactionDtNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('Price').AsCurrency := 0;
  DataSet.FieldByName('StatusColor').AsString := '0';
end;

procedure TfmOtherTransaction.qryOtherTransactionHdAfterCancel(
  DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmOtherTransaction.qryOtherTransactionHdAfterPost(DataSet: TDataSet);
begin
  inherited;

//  if FInsertState then
//  begin
//    dmGlobal.SetLastTransactionId('OtherTransactionHd', dmShare.OptionOT.Prefix,
//      DataSet.FieldByName('OtherTransactionDate').AsDateTime, dmShare.OptionOT.RunYear);
//    FInsertState := False;
//  end;
end;

procedure TfmOtherTransaction.qryOtherTransactionHdBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;

  // Untuk Transaksi In/Out gudang dan tanggal transaksi tidak boleh di ubah
  qryGetTransactionTypeStatus.Close;
  qryGetTransactionTypeStatus.parameters[0].Value := VarToStr(dblcTransactionTypeId.EditValue);
  OpenIfClose(qryGetTransactionTypeStatus);
  if qryGetTransactionTypeStatus.FieldByName('StatusTransaction').AsString <> '2' then
  begin
    SetReadOnly(dblcbWarehouseId, False);
    SetReadOnly(dbeOtherTransactionDate, False);
  end;
end;

procedure TfmOtherTransaction.qryOtherTransactionHdBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmOtherTransaction.qryOtherTransactionHdBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  // Insert Id
//  if FInsertState then
//    DataSet.FieldByName('OtherTransactionCode').AsString :=
//     dmGlobal.GetLastTransactionId('OtherTransactionHd', dmShare.OptionOT.Prefix, dmShare.OptionOT.Length,
//        DataSet.FieldByName('OtherTransactionDate').AsDateTime, dmShare.OptionOT.RunYear);

  // Last Employee modified
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmOtherTransaction.qryOtherTransactionHdNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('Warehouseid').AsVariant := dminventory.qryWarehouse.FieldByName('WarehouseId').AsVariant;
  Dataset.FieldByName('StatusApprove').AsInteger := 1;

  SetReadOnly(dblcTransactionTypeId, False);
  SetReadOnly(dblcbWarehouseId, False);
  SetReadOnly(dbeOtherTransactionDate, False);
end;

procedure TfmOtherTransaction.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryWarehouse);
  LockRefresh(dmInventory.qryItem, True);
  LockRefresh(dmInventory.qryPrevTransactionType);
  LockRefresh(qryOtherTransactionHd, True);
  LockRefresh(qryOtherTransactionDt);
end;

end.



