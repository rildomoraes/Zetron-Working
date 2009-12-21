unit frmAdjustmentStockPlus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxSpinEdit, cxDBExtLookupComboBox, cxCalendar, cxCalc, cxCurrencyEdit,
  cxImageComboBox, cxGrid, MemDS, DBAccess, Uni, cxMemo, cxDBEdit, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxDropDownEdit, ExtCtrls,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit,
  cxMaskEdit, StdCtrls, cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinsdxDockControlPainter,
  dxSkinscxPCPainter;

type
  TfmAdjustmentStockPlus = class(TFormUniTransactionEx)
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
    dblcbWarehouseSource: TcxDBExtLookupComboBox;
    dblcProject: TcxDBExtLookupComboBox;
    dblcTransactionTypeId: TcxDBExtLookupComboBox;
    dbmInternalMemo: TcxDBMemo;
    dbmStatementMemo: TcxDBMemo;
    dsOtherTransactionDt: TDataSource;
    dsTransactionDt: TDataSource;
    Image1: TImage;
    Image2: TImage;
    Label2: TLabel;
    Label5: TLabel;
    lblFixed: TLabel;
    lblProject: TLabel;
    lblPurchaseInvoiceId: TLabel;
    lblTransactionType: TLabel;
    lblWarehouse: TLabel;
    pnlTop: TPanel;
    tsExternalMemo: TcxTabSheet;
    tsInternalMemo: TcxTabSheet;
    qryOtherTransactionHd: TUniQuery;
    qryOtherTransactionDt: TUniQuery;
    qryGetPurchasePrice: TUniQuery;
    qryTransactionDt: TUniQuery;
    qryPrevTransactionType: TUniQuery;
    dsPrevTransactionType: TDataSource;
    gvrInventory: TcxGridViewRepository;
    cgvPrevTransactionType: TcxGridDBTableView;
    cgvPrevTransactionTypeTransactionTypeId: TcxGridDBColumn;
    cgvPrevTransactionTypeTransactionTypeName: TcxGridDBColumn;
    cgvPrevTransactionTypeStatusTransaction: TcxGridDBColumn;
    procedure qryOtherTransactionHdAfterPost(DataSet: TDataSet);
    procedure qryOtherTransactionHdBeforeInsert(DataSet: TDataSet);
    procedure qryOtherTransactionHdAfterCancel(DataSet: TDataSet);
    procedure qryOtherTransactionHdNewRecord(DataSet: TDataSet);
    procedure qryOtherTransactionHdBeforePost(DataSet: TDataSet);
    procedure qryOtherTransactionDtNewRecord(DataSet: TDataSet);
    procedure qryOtherTransactionDtBeforePost(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsOtherTransactionDtDataChange(Sender: TObject; Field: TField);
    procedure cgvTransactionDtStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cgvOtherTransactionDtStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure qryOtherTransactionDtBeforeInsert(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FInsertState: boolean;
  public

  end;

var
  fmAdjustmentStockPlus: TfmAdjustmentStockPlus;

implementation

{$R *.dfm}

uses
  untConstanta, untConstantaPOS, untProcedure, dtmGlobal, dtmGeneral,
  dtmInventory, dtmShare;

procedure TfmAdjustmentStockPlus.cgvOtherTransactionDtStylesGetContentStyle(
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

procedure TfmAdjustmentStockPlus.cgvTransactionDtStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
    if ARecord.Values[GetColumnByFieldName('Qty').Index] < '0' then
      AStyle := dmGlobal.stRedLight;
end;

procedure TfmAdjustmentStockPlus.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if qryOtherTransactionHd.State in [dsBrowse] then
  begin
    SetReadOnly(dblcTransactionTypeId, True, COLOR_INACTIVE);
    SetReadOnly(dblcbWarehouseSource, True, COLOR_INACTIVE);
    SetReadOnly(dbeOtherTransactionDate, True, COLOR_INACTIVE);
  end;
end;

procedure TfmAdjustmentStockPlus.dsOtherTransactionDtDataChange(Sender: TObject;
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
      // get last purchase price
      qryGetPurchasePrice.Close;
      qryGetPurchasePrice.Params[0].Value := Field.Value;
      OpenIfClose(qryGetPurchasePrice);
      if not qryGetPurchasePrice.IsEmpty then
        qryOtherTransactionDt.FieldByName('Price').AsCurrency := qryGetPurchasePrice.FieldByName('Price').AsCurrency;
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

procedure TfmAdjustmentStockPlus.InitForm;
begin
  inherited;

  // Init Print
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_AP);

  SetReadOnly(dblcTransactionTypeId, True, COLOR_INACTIVE);
  SetReadOnly(dbeOtherTransactionId, True, COLOR_INACTIVE);

  TcxCalcEditProperties(cgvOtherTransactionDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvOtherTransactionDtPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvOtherTransactionDtAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmGeneral.qryWarehouse);
  OpenIfClose(dmGeneral.qryProject);
  OpenIfClose(dmInventory.qryItem, True);
  OpenIfClose(qryPrevTransactionType);

  MonthYearValueChange(nil); // -> Trigger qryOtherTransactionHd
  OpenIfClose(qryOtherTransactionDt);
  OpenIfClose(qryTransactionDt);
end;

procedure TfmAdjustmentStockPlus.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryOtherTransactionHd.State in [dsEdit, dsInsert]) or
    (qryOtherTransactionDt.State in [dsEdit, dsInsert]) then
    Abort;

  qryOtherTransactionHd.Close;
  qryOtherTransactionHd.Params[0].Value := StrToInt(cbYear.Text);
  qryOtherTransactionHd.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryOtherTransactionHd, True, True);
end;

procedure TfmAdjustmentStockPlus.qryOtherTransactionDtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;
end;

procedure TfmAdjustmentStockPlus.qryOtherTransactionDtBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  // Item Inactive
  Dataset.FieldByName('StatusColor').AsInteger := 0;
  if dmShare.OptionWarningItemInactive then
  begin
    dmShare.qryGetItemFlagInactive.Close;
    if not Dataset.FieldByName('ItemId').IsNull then
    begin
      dmShare.qryGetItemFlagInactive.Params[0].Value := Dataset.FieldByName('ItemId').AsInteger;
      OpenIfClose(dmShare.qryGetItemFlagInactive);
      if dmShare.qryGetItemFlagInactive.FieldByName('FlagInactive').AsString = '1' then
      begin
        if MessageDlg(ASK_ITEM_INACTIVE, mtInformation, [mbYes, mbNo], 0) = mrNo then
          Abort;
        Dataset.FieldByName('StatusColor').AsInteger := 1;
      end;
    end;
  end;

  Dataset.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmAdjustmentStockPlus.qryOtherTransactionDtNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('Price').AsCurrency := 0;
  DataSet.FieldByName('StatusColor').AsString := '0';
end;

procedure TfmAdjustmentStockPlus.qryOtherTransactionHdAfterCancel(
  DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmAdjustmentStockPlus.qryOtherTransactionHdAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('OtherTransactionHd', dmShare.OptionAP.Prefix,
      DataSet.FieldByName('OtherTransactionDate').AsDateTime, dmShare.OptionAP.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmAdjustmentStockPlus.qryOtherTransactionHdBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmAdjustmentStockPlus.qryOtherTransactionHdBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  // Insert Id
  if FInsertState then
    DataSet.FieldByName('OtherTransactionId').AsString :=
     dmGlobal.GetLastTransactionId('OtherTransactionHd', dmShare.OptionAP.Prefix, dmShare.OptionAP.Length,
        DataSet.FieldByName('OtherTransactionDate').AsDateTime, dmShare.OptionAP.RunYear);

  // Last Employee modified
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmAdjustmentStockPlus.qryOtherTransactionHdNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('WarehouseSource').AsVariant := dmGeneral.qryWarehouse.FieldByName('WarehouseId').AsVariant;
  Dataset.FieldByName('StatusApprove').AsInteger := 1;

  SetReadOnly(dblcTransactionTypeId, False);
  SetReadOnly(dblcbWarehouseSource, False);
  SetReadOnly(dbeOtherTransactionDate, False);
end;

procedure TfmAdjustmentStockPlus.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryWarehouse);
  LockRefresh(dmGeneral.qryProject);
  LockRefresh(dmInventory.qryItem, True);
  LockRefresh(qryPrevTransactionType);
  LockRefresh(qryOtherTransactionHd, True);
  LockRefresh(qryOtherTransactionDt);
  LockRefresh(qryTransactionDt);
end;

end.



