unit dtmInventory;

interface

uses
  SysUtils, Classes, Forms, DB, Dialogs, cxNavigator, Variants,

  // Auto Generate
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxImageComboBox, cxDBExtLookupComboBox, cxCurrencyEdit, cxMemo,
  cxTextEdit, MemDS, DBAccess, Uni, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxTimeEdit;

type
  TdmInventory = class(TDataModule)
    gvrInventory: TcxGridViewRepository;
    cgvPrevItem: TcxGridDBTableView;
    cgvPrevItemCategory: TcxGridDBTableView;
    cgvPrevItemCategoryItemCategoryId: TcxGridDBColumn;
    cgvPrevItemCategoryItemCategoryName: TcxGridDBColumn;
    cgvPrevItemItemIdExternal: TcxGridDBColumn;
    cgvPrevItemItemCategoryId: TcxGridDBColumn;
    cgvPrevItemUnitMeasure: TcxGridDBColumn;
    cgvPrevItemMemo: TcxGridDBColumn;
    cgvPrevItemItemName: TcxGridDBColumn;
    cgvPrevItemType: TcxGridDBColumn;
    dsPrevItem: TDataSource;
    dsPrevItemCategory: TDataSource;
    cgvPrevTransactionType: TcxGridDBTableView;
    cgvPrevTransactionTypeTransactionTypeId: TcxGridDBColumn;
    cgvPrevTransactionTypeTransactionTypeName: TcxGridDBColumn;
    cgvPrevTransactionTypeStatusTransaction: TcxGridDBColumn;
    dsPrevTransactionType: TDataSource;
    cgvPrevOutstandingPI: TcxGridDBTableView;
    dsPrevOutstandingPI: TDataSource;
    cgvPrevOutstandingPIpurchaseinvoiceid: TcxGridDBColumn;
    cgvPrevOutstandingPIpurchaseinvoicedate: TcxGridDBColumn;
    cgvPrevOutstandingPItotalamount: TcxGridDBColumn;
    cgvPrevOutstandingPIoutstandingtotalamount: TcxGridDBColumn;
    cgvPrevOutstandingPIInvoiceDueDate: TcxGridDBColumn;
    dsPrevOutstandingSI: TDataSource;
    cgvPrevOutstandingSI: TcxGridDBTableView;
    cgvPrevOutstandingSIsalesinvoiceid: TcxGridDBColumn;
    cgvPrevOutstandingSIsalesinvoicedate: TcxGridDBColumn;
    cgvPrevOutstandingSItotalamount: TcxGridDBColumn;
    cgvPrevOutstandingSIoutstandingtotalamount: TcxGridDBColumn;
    cgvPrevOutstandingSIInvoiceDueDate: TcxGridDBColumn;
    cgvPrevTransactionTypeStatusTransactionName: TcxGridDBColumn;
    dsPrevItemCouple: TDataSource;
    cgvPrevItemCouple: TcxGridDBTableView;
    cgvPrevItemCoupleItemId: TcxGridDBColumn;
    cgvPrevItemCoupleItemName: TcxGridDBColumn;
    cgvPrevItemCoupleItemCategoryName: TcxGridDBColumn;
    cgvPrevItemCoupleUnitMeasure: TcxGridDBColumn;
    cgvPrevItemCoupleType: TcxGridDBColumn;
    cgvPrevItemCoupleMemo: TcxGridDBColumn;
    cgvPrevItemitemnamechinese: TcxGridDBColumn;
    cgvPrevItemitemid: TcxGridDBColumn;
    cgvPrevItemCoupleitemidexternal: TcxGridDBColumn;
    cgvPrevItemflaginactive: TcxGridDBColumn;
    dsPrevItemCoupleDt: TDataSource;
    cgvPrevItemCoupleDt: TcxGridDBTableView;
    cgvPrevItemCoupleDtitemid: TcxGridDBColumn;
    cgvPrevItemCoupleDtflaginactive: TcxGridDBColumn;
    cgvPrevItemCoupleDtItemIdExternal: TcxGridDBColumn;
    cgvPrevItemCoupleDtItemName: TcxGridDBColumn;
    cgvPrevItemCoupleDtitemnamechinese: TcxGridDBColumn;
    cgvPrevItemCoupleDtType: TcxGridDBColumn;
    cgvPrevItemCoupleDtItemCategoryId: TcxGridDBColumn;
    cgvPrevItemCoupleDtUnitMeasure: TcxGridDBColumn;
    cgvPrevItemCoupleDtMemo: TcxGridDBColumn;
    dsPrevOutstandingPR: TDataSource;
    cgvPrevOutstandingPR: TcxGridDBTableView;
    cgvPrevOutstandingPRpurchaseReturnid: TcxGridDBColumn;
    cgvPrevOutstandingPRpurchaseReturndate: TcxGridDBColumn;
    cgvPrevOutstandingPRInvoiceDueDate: TcxGridDBColumn;
    cgvPrevOutstandingPRtotalamount: TcxGridDBColumn;
    cgvPrevOutstandingPRoutstandingtotalamount: TcxGridDBColumn;
    dsPrevOutstandingSR: TDataSource;
    cgvPrevOutstandingSR: TcxGridDBTableView;
    cgvPrevOutstandingSRsalesreturnid: TcxGridDBColumn;
    cgvPrevOutstandingSRsalesreturndate: TcxGridDBColumn;
    cgvPrevOutstandingSRInvoiceDueDate: TcxGridDBColumn;
    cgvPrevOutstandingSRtotalamount: TcxGridDBColumn;
    cgvPrevOutstandingSRoutstandingtotalamount: TcxGridDBColumn;
    cgvPrevItemPriceList: TcxGridDBColumn;
    cgvPrevItemBarcode: TcxGridDBTableView;
    cgvPrevItemBarcodeitemid: TcxGridDBColumn;
    cgvPrevItemBarcodeitemname: TcxGridDBColumn;
    cgvPrevItemBarcodeitemnamechinese: TcxGridDBColumn;
    cgvPrevItemBarcodebarcodeid: TcxGridDBColumn;
    cgvPrevOutstandingPIVendorPurchaseInvoiceId: TcxGridDBColumn;
    cgvPrevOutstandingSISalesInvoiceIdInternal: TcxGridDBColumn;
    cgvPrevOutstandingPIcurrencyid: TcxGridDBColumn;
    cgvPrevOutstandingPRcurrencyid: TcxGridDBColumn;
    cgvPrevOutstandingSIcurrencyid: TcxGridDBColumn;
    cgvPrevOutstandingSRcurrencyid: TcxGridDBColumn;
    qryItemCategory: TUniQuery;
    qryPrevTransactionType: TUniQuery;
    qryPrevOutstandingPI: TUniQuery;
    qryPrevOutstandingSI: TUniQuery;
    qryPrevItemCouple: TUniQuery;
    qryPrevItemCoupleDt: TUniQuery;
    qryPrevOutstandingPR: TUniQuery;
    qryPrevOutstandingSR: TUniQuery;
    qryGetItemName: TUniQuery;
    qryGetBarcodeId: TUniQuery;
    qryItem: TUniQuery;
    qryExecuteUpdatePrice: TUniQuery;
    qryGetLastItemId: TUniQuery;
    qryUpdateLastItemId: TUniQuery;
    qryEngine: TUniQuery;
    qryJobType: TUniQuery;
    qryEngineGroupJob: TUniQuery;
    dsPrevJobType: TDataSource;
    cgvPrevJobType: TcxGridDBTableView;
    cgvPrevJobTypejobcode: TcxGridDBColumn;
    cgvPrevJobTypejobname: TcxGridDBColumn;
    qryEngineGroup: TUniQuery;
    dsPrevEngineGroup: TDataSource;
    cgvPrevEngineGroup: TcxGridDBTableView;
    cgvPrevEngineGroupenginegroupcode: TcxGridDBColumn;
    cgvPrevEngineGroupenginegroupname: TcxGridDBColumn;
    dsPrevEngineGroupJob: TDataSource;
    cgvPrevEngineGroupJob: TcxGridDBTableView;
    cgvPrevEngineGroupJobenginegroupjobcode: TcxGridDBColumn;
    cgvPrevEngineGroupJobjobcode: TcxGridDBColumn;
    cgvPrevEngineGroupJobenginegroupcode: TcxGridDBColumn;
    dsPrevEngine: TDataSource;
    cgvPrevEngine: TcxGridDBTableView;
    cgvPrevEngineenginecode: TcxGridDBColumn;
    cgvPrevEngineenginename: TcxGridDBColumn;
    cgvPrevEngineenginegroupcode: TcxGridDBColumn;
    qryGetItemInfo: TUniQuery;
    qryShift: TUniQuery;
    dsPrevShift: TDataSource;
    cgvPrevShift: TcxGridDBTableView;
    cgvPrevShiftshiftcode: TcxGridDBColumn;
    cgvPrevShiftshiftname: TcxGridDBColumn;
    cgvPrevShiftstarttime: TcxGridDBColumn;
    cgvPrevShiftendtime: TcxGridDBColumn;
    procedure qryItemBeforeRefresh(DataSet: TDataSet);
    procedure qryItemNewRecord(DataSet: TDataSet);
    procedure qryItemBeforePost(DataSet: TDataSet);
    procedure qryItemBeforeOpen(DataSet: TDataSet);
    procedure qryItemBeforeEdit(DataSet: TDataSet);
    procedure qryPrevItemCoupleDtBeforeOpen(DataSet: TDataSet);
    procedure qryPrevItemCoupleBeforeOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cgvNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure qryItemAfterPost(DataSet: TDataSet);
    procedure qryItemAfterCancel(DataSet: TDataSet);
    procedure qryEngineGroupJobBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FIsInsertState: boolean;
    FOldItemName: string;
    FOldBarcodeId: string;
    FUpdateItemId: boolean;
    procedure DeinitDataModule;
    procedure InitDataModule;
  public
    { Public declarations }
  end;

var
  dmInventory: TdmInventory;

implementation

uses
  untProcedure, untConstanta, untConstantaPos, dtmGlobal, dtmShare;

{$R *.dfm}

procedure TdmInventory.DataModuleCreate(Sender: TObject);
begin
  InitDataModule;
end;

procedure TdmInventory.DataModuleDestroy(Sender: TObject);
begin
  DeinitDataModule;
end;

procedure TdmInventory.DeinitDataModule;
begin
  //
end;

procedure TdmInventory.qryEngineGroupJobBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(qryEngineGroup);
  OpenIfClose(qryJobType);
end;

procedure TdmInventory.qryItemAfterCancel(DataSet: TDataSet);
begin
  FIsInsertState := False;
end;

procedure TdmInventory.qryItemAfterPost(DataSet: TDataSet);
begin
  if FIsInsertState then
  begin
    qryUpdateLastItemId.Params[0].Value := DataSet.FieldByName('ItemId').AsInteger;
    qryUpdateLastItemId.Execute;
  end;

  FIsInsertState := False;
end;

procedure TdmInventory.qryItemBeforeEdit(DataSet: TDataSet);
begin
  FOldItemName := DataSet.FieldByName('ItemName').AsString;
  FOldBarcodeId := DataSet.FieldByName('BarcodeId').AsString;
end;

procedure TdmInventory.qryItemBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(qryItemCategory, True);
  if dmShare.OptionShowInactiveItem then
    qryItem.Params[0].Value := '%'
  else
    qryItem.Params[0].Value := '0';
end;

procedure TdmInventory.qryItemBeforePost(DataSet: TDataSet);
begin
  FUpdateItemId := False;

  if DataSet.FieldByName('ItemName').IsNull then
    DataSet.FieldByName('ItemName').AsVariant := DataSet.FieldByName('ItemIdExternal').AsVariant;
  if FOldItemName <> DataSet.FieldByName('ItemName').AsString then
  begin
    if dmShare.OptionItemNameUnique then
    begin
      qryGetItemName.Close;
      qryGetItemName.Params[0].Value := DataSet.FieldByName('ItemName').AsString;
      OpenIfClose(qryGetItemName, True);
      if not qryGetItemName.IsEmpty then
      begin
        MessageDlg(MSG_ITEM_NAME_DUPLICATE, mtInformation, [mbOk], 0);
        Abort;
      end;
    end;
  end;

  if DataSet.FieldByName('BarcodeId').IsNull then
    DataSet.FieldByName('BarcodeId').AsString := DataSet.FieldByName('ItemIdExternal').AsString;

  if FOldBarcodeId <> DataSet.FieldByName('BarcodeId').AsString then
  begin
    if Trim(DataSet.FieldByName('BarcodeId').AsString) <> '' then
    begin
      qryGetBarcodeId.Close;
      qryGetBarcodeId.Params[0].Value := DataSet.FieldByName('BarcodeId').AsString;
      OpenIfClose(qryGetBarcodeId, True);
      if not qryGetBarcodeId.IsEmpty then
      begin
        MessageDlg(MSG_ITEM_BARCODE_DUPLICATE, mtInformation, [mbOk], 0);
        Abort;
      end;
    end;
  end;

  if DataSet.FieldByName('FlagCouple').AsString = '1' then
  begin
    if DataSet.FieldByName('StatusCostMethod').AsString = '2' then
    begin
      MessageDlg(MSG_ITEM_COUPLE_INVALID1, mtInformation, [mbOk], 0);
      Abort;
    end;
    if (DataSet.FieldByName('StatusItem').AsString = '0') or
      (DataSet.FieldByName('StatusItem').AsString = '2') then
    begin
      MessageDlg(MSG_ITEM_COUPLE_INVALID2, mtInformation, [mbOk], 0);
      Abort;
    end;
  end;

  if DataSet.FieldByName('ItemId').IsNull then
  begin
    //DataSet.FieldByName('ItemId').AsInteger := seqItem.GetNextValue;
    OpenIfClose(qryGetLastItemId);
    DataSet.FieldByName('ItemId').AsInteger := qryGetLastItemId.FieldByName('Last_Value').AsInteger + 1;
    qryGetLastItemId.Close;
    FUpdateItemId := True;
  end;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TdmInventory.qryItemBeforeRefresh(DataSet: TDataSet);
begin
  if dmShare.OptionShowInactiveItem then
    qryItem.Params[0].Value := '%'
  else
    qryItem.Params[0].Value := '0';
end;

procedure TdmInventory.qryItemNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ItemCategoryId').AsString := qryItemCategory.FieldByName('ItemCategoryId').AsString;
  DataSet.FieldByName('StatusSource').AsInteger := 1;
  DataSet.FieldByName('StatusItem').AsInteger := 1;
  DataSet.FieldByName('StatusCostMethod').AsInteger := 0;
  DataSet.FieldByName('Margin').AsFloat := 100;
  DataSet.FieldByName('FlagPrintBarcode').AsInteger := 1;
  DataSet.FieldByName('FlagPrintPrice').AsInteger := 1;
  DataSet.FieldByName('FlagInactive').AsInteger := 0;
  DataSet.FieldByName('FlagTerdaftar').AsInteger := 1;
  DataSet.FieldByName('FlagBahasaIndonesia').AsInteger := 1;
  DataSet.FieldByName('FlagCouple').AsInteger := 0;
  DataSet.FieldByName('FlagPurchaseReturn').AsInteger := 1;
  DataSet.FieldByName('FlagSalesReturn').AsInteger := 1;
  DataSet.FieldByName('FlagProcessOpname').AsInteger := 0;

  FIsInsertState := True;
  FOldItemName := '';
  FOldBarcodeId := '';
end;

procedure TdmInventory.InitDataModule;
begin
  if not Application.Terminated then
    dmGlobal.InitComponent(Self);
end;

procedure TdmInventory.cgvNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
var
  TableView: TcxGridDBTableView;
begin
  if Sender is TcxNavigatorControlButtons then
  begin
    if TcxNavigatorControlButtons(Sender).Navigator.GetNavigatorOwner is TcxGridDBTableView then
    begin
      TableView := TcxGridDBTableView(TcxNavigatorControlButtons(Sender).Navigator.GetNavigatorOwner);

      if AButtonIndex = NAVIGATOR_BUTTON_REFRESH then
      begin
        LockRefresh(TableView.DataController.DataSource.DataSet);
        ADone := True;
      end;
    end;
  end;
end;

procedure TdmInventory.qryPrevItemCoupleBeforeOpen(DataSet: TDataSet);
begin
  if dmShare.OptionShowInactiveItem then
    qryPrevItemCouple.Params[0].Value := '%'
  else
    qryPrevItemCouple.Params[0].Value := '0';
end;

procedure TdmInventory.qryPrevItemCoupleDtBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(qryItemCategory, True);
  if dmShare.OptionShowInactiveItem then
    qryPrevItemCoupleDt.Params[0].Value := '%'
  else
    qryPrevItemCoupleDt.Params[0].Value := '0';
end;

end.




