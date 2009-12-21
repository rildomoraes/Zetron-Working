unit dtmInventory;

interface

uses
  SysUtils, Classes, DB, ADODB, cxStyles, cxCustomData, Dialogs, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxDBExtLookupComboBox,
  cxMemo, cxNavigator, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, untIvNameConverter,
  untIvPropDevExpress, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCurrencyEdit, cxCalendar, dtmGlobal, cxSpinEdit, cxCalc,
  cxImageComboBox, Forms;

type
  TdmInventory = class(TDataModule)
    gvrInventory: TcxGridViewRepository;
    cgvPrevPurchaseOrderHd: TcxGridDBTableView;
    cgvPrevPurchaseOrderHddtPurchaseOrderDate: TcxGridDBColumn;
    cgvPrevPurchaseOrderHdvcContactPerson: TcxGridDBColumn;
    cgvPrevPurchaseOrderHdvcIdPurchaseOrder: TcxGridDBColumn;
    cgvPrevPurchaseOrderHdvcIdSupplier: TcxGridDBColumn;
    cgvPrevReceivingRecordHd: TcxGridDBTableView;
    cgvPrevReceivingRecordHddtReceivingRecordDate: TcxGridDBColumn;
    cgvPrevReceivingRecordHdvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPrevReceivingRecordHdvcIdReceivingRecord: TcxGridDBColumn;
    cgvPrevReceivingRecordHdvcIdWarehouse: TcxGridDBColumn;
    cgvPrevReceivingRecordHdvcSupplierDeliveryOrder: TcxGridDBColumn;
    cgvPrevReceivingRecordHdvcSupplierPurchaseOrder: TcxGridDBColumn;
    cgvPrevSelectedRR: TcxGridDBTableView;
    cgvPrevSelectedRRinNo: TcxGridDBColumn;
    cgvPrevSelectedRRinQty: TcxGridDBColumn;
    cgvPrevSelectedRRvcSuppliesName: TcxGridDBColumn;
    cgvSupplies: TcxGridDBTableView;
    cgvSuppliesvcIdSupplies: TcxGridDBColumn;
    cgvSuppliesvcIdSuppliesCategory: TcxGridDBColumn;
    cgvSuppliesvcIdUnitOfMeasure: TcxGridDBColumn;
    cgvSuppliesvcMerk: TcxGridDBColumn;
    cgvSuppliesvcNotes: TcxGridDBColumn;
    cgvSuppliesvcSuppliesName: TcxGridDBColumn;
    cgvSuppliesvcType: TcxGridDBColumn;
    dsPrevPurchaseOrderHd: TDataSource;
    dsPrevReceivingRecordHd: TDataSource;
    dsSupplies: TDataSource;
    dsValidateRRWithPO: TDataSource;
    qryPrevPurchaseOrderHd: TADOQuery;
    qryPrevReceivingRecordHd: TADOQuery;
    qryValidateRRWithPO: TADOQuery;
    qryPrevSalesOrderHd: TADOQuery;
    dsPrevSalesOrderHd: TDataSource;
    cgvPrevSalesOrderHd: TcxGridDBTableView;
    cgvPrevSalesOrderHdvcIdSalesOrder: TcxGridDBColumn;
    cgvPrevSalesOrderHddtSalesOrderDate: TcxGridDBColumn;
    cgvPrevSalesOrderHdvcIdCustomer: TcxGridDBColumn;
    cgvPrevSalesOrderHdvcContactPerson: TcxGridDBColumn;
    cgvPrevSelectedRRvcIdSupplies: TcxGridDBColumn;
    cgvPrevReceivingRecordHdvcSupplierName: TcxGridDBColumn;
    qryValidateWHWithSO: TADOQuery;
    dsValidateWHWithSO: TDataSource;
    qryPrevSalesInvoiceHd: TADOQuery;
    dsPrevSalesInvoiceHd: TDataSource;
    qryPrevAssembly: TADOQuery;
    dsPrevAssembly: TDataSource;
    qryGetReadyStockQty: TADOQuery;
    qryPrevAssemblySupplies: TADOQuery;
    dsPrevAssemblySupplies: TDataSource;
    qryPrevPurchaseReturnSupplies: TADOQuery;
    dsPrevPurchaseReturnSupplies: TDataSource;
    dsPrevSalesReturnSupplies: TDataSource;
    qryPrevSalesReturnSupplies: TADOQuery;
    cgvPrevPurchaseInvoice: TcxGridDBTableView;                 
    cgvPrevPurchaseInvoicevcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPrevPurchaseInvoicedtPurchaseInvoiceDate: TcxGridDBColumn;
    cgvPrevPurchaseInvoicevcIdReceivingRecord: TcxGridDBColumn;
    cgvPrevPurchaseInvoicevcSupplierName: TcxGridDBColumn;
    cgvPrevSalesInvoice: TcxGridDBTableView;
    cgvPrevSalesInvoicevcIdSalesInvoice: TcxGridDBColumn;
    cgvPrevSalesInvoicedtSalesInvoiceDate: TcxGridDBColumn;
    cgvPrevSalesInvoicevcIdDeliveryOrder: TcxGridDBColumn;
    cgvPrevSalesInvoicevcCustomerName: TcxGridDBColumn;
    qryIsNonStockItem: TADOQuery;
    qryCategory: TADODataSet;
    qrySupplier: TADODataSet;
    qryCustomer: TADODataSet;
    cgvCategory: TcxGridDBTableView;
    dsCategory: TDataSource;
    dsSupplier: TDataSource;
    dsCustomer: TDataSource;
    cgvCategoryvcIdCategory: TcxGridDBColumn;
    cgvCategoryvcCategoryName: TcxGridDBColumn;
    qryWarehouse: TADODataSet;
    dsWarehouse: TDataSource;
    cgvSupplier: TcxGridDBTableView;
    cgvCustomer: TcxGridDBTableView;
    cgvWarehouse: TcxGridDBTableView;
    cgvSuppliervcIdSupplier: TcxGridDBColumn;
    cgvSuppliervcSupplierName: TcxGridDBColumn;
    cgvSuppliervcContactPerson: TcxGridDBColumn;
    cgvSuppliervcAddress: TcxGridDBColumn;
    cgvSuppliervcIdCity: TcxGridDBColumn;
    cgvSuppliervcIdCategory: TcxGridDBColumn;
    cgvCustomervcIdCustomer: TcxGridDBColumn;
    cgvCustomervcCustomerName: TcxGridDBColumn;
    cgvCustomervcContactPerson: TcxGridDBColumn;
    cgvCustomervcAddress: TcxGridDBColumn;
    cgvCustomervcIdCity: TcxGridDBColumn;
    cgvCustomervcIdCategory: TcxGridDBColumn;
    cgvWarehousevcIdWarehouse: TcxGridDBColumn;
    cgvWarehousevcWarehouseName: TcxGridDBColumn;
    cgvWarehousevcContactPerson: TcxGridDBColumn;
    cgvWarehousevcAddress: TcxGridDBColumn;
    cgvWarehousevcIdCity: TcxGridDBColumn;
    qryGetWarehouseId: TADOQuery;
    qrySuppliesCategory: TADODataSet;
    dsSuppliesCategory: TDataSource;
    cgvSuppliesCategory: TcxGridDBTableView;
    cgvSuppliesCategoryvcIdSuppliesCategory: TcxGridDBColumn;
    cgvSuppliesCategoryvcSuppliesCategoryCode: TcxGridDBColumn;
    qrySupplies: TADODataSet;
    qryStatusApprove: TADOQuery;
    dsStatusApprove: TDataSource;
    cgvStatusApprove: TcxGridDBTableView;
    cgvStatusApprovechStatusApprove: TcxGridDBColumn;
    cgvStatusApprovevcStatusName: TcxGridDBColumn;
    qryPrevSalesman: TADOQuery;
    dsPrevSalesman: TDataSource;
    cgvSalesman: TcxGridDBTableView;
    cgvSalesmanEmployeeName: TcxGridDBColumn;
    cgvSalesmanPositionName: TcxGridDBColumn;
    cgvSalesmanDepartmentName: TcxGridDBColumn;
    cgvSalesmanCompanyName: TcxGridDBColumn;
    cgvSalesmanFlagInactive: TcxGridDBColumn;
    qryGetCustomerAddress: TADOQuery;
    qryGetSupplierAddress: TADOQuery;
    qryGetWarehouseAddress: TADOQuery;
    procedure qrySuppliesBeforeOpen(DataSet: TDataSet);
    procedure qrySuppliesBeforeEdit(DataSet: TDataSet);
    procedure qryCustomerBeforeEdit(DataSet: TDataSet);
    procedure qrySupplierBeforeEdit(DataSet: TDataSet);
    procedure qrySuppliesBeforePost(DataSet: TDataSet);
    procedure qrySuppliesBeforeDelete(DataSet: TDataSet);
    procedure qryWarehouseBeforeOpen(DataSet: TDataSet);
    procedure qryWarehouseBeforePost(DataSet: TDataSet);
    procedure qryCustomerBeforeOpen(DataSet: TDataSet);
    procedure qrySupplierBeforeOpen(DataSet: TDataSet);
    procedure qryCustomerBeforeDelete(DataSet: TDataSet);
    procedure qrySupplierBeforeDelete(DataSet: TDataSet);
    procedure qryCustomerNewRecord(DataSet: TDataSet);
    procedure qrySupplierNewRecord(DataSet: TDataSet);
    procedure cgvNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    FCurrentWarehouse: string;
    FOptionStockIsDecimal: boolean;
    FOptionCallPaymentAfterPI: boolean;
    FOptionCallPaymentAfterSI: boolean;
    FOptionHidePriceOnPIEntry: boolean;
    FOptionHidePriceOnPOEntry: boolean;
    FOptionSuppAccMandatory: boolean;
    FOptionCustAccMandatory: boolean;
    FOptionOnlyPOEntryCanModifyData: boolean;
    FOptionOnlyRREntryCanModifyData: boolean;
    FOptionOnlyPIEntryCanModifyData: boolean;
    FOptionOnlySOEntryCanModifyData: boolean;
    FOptionOnlySIEntryCanModifyData: boolean;
    FOptionOnlyDOEntryCanModifyData: boolean;
  public
    procedure LoadDataFromOption;

    procedure ExecuteFormClose(Sender: TObject);
    function GetReadyStockQty(const AIdWarehouse, AIdSupplies: string): Double;
    function IsNonStockItem(const AIdSupplies: string): boolean;

    function  GetCustomerAddress(const AIdCustomer: string): string;
    function  GetSupplierAddress(const AIdSupplier: string): string;
    function  GetWarehouseAddress(const AIdWarehouse: string): string;

    property CurrentWarehouse: string read FCurrentWarehouse write FCurrentWarehouse;
    property OptionStockIsDecimal: boolean read FOptionStockIsDecimal write FOptionStockIsDecimal;
    property OptionCallPaymentAfterPI: boolean read FOptionCallPaymentAfterPI write FOptionCallPaymentAfterPI;
    property OptionCallPaymentAfterSI: boolean read FOptionCallPaymentAfterSI write FOptionCallPaymentAfterSI;
    property OptionHidePriceOnPIEntry: boolean read FOptionHidePriceOnPIEntry write FOptionHidePriceOnPIEntry;
    property OptionHidePriceOnPOEntry: boolean read FOptionHidePriceOnPOEntry write FOptionHidePriceOnPOEntry;
    property OptionSuppAccMandatory: boolean read FOptionSuppAccMandatory write FOptionSuppAccMandatory;
    property OptionCustAccMandatory: boolean read FOptionCustAccMandatory write FOptionCustAccMandatory;
    property OptionOnlyPOEntryCanModifyData: boolean read FOptionOnlyPOEntryCanModifyData write FOptionOnlyPOEntryCanModifyData;
    property OptionOnlyRREntryCanModifyData: boolean read FOptionOnlyRREntryCanModifyData write FOptionOnlyRREntryCanModifyData;
    property OptionOnlyPIEntryCanModifyData: boolean read FOptionOnlyPIEntryCanModifyData write FOptionOnlyPIEntryCanModifyData;
    property OptionOnlySOEntryCanModifyData: boolean read FOptionOnlySOEntryCanModifyData write FOptionOnlySOEntryCanModifyData;
    property OptionOnlySIEntryCanModifyData: boolean read FOptionOnlySIEntryCanModifyData write FOptionOnlySIEntryCanModifyData;
    property OptionOnlyDOEntryCanModifyData: boolean read FOptionOnlyDOEntryCanModifyData write FOptionOnlyDOEntryCanModifyData;
  end;

var
  dmInventory: TdmInventory;

implementation

uses
  untConstanta, untCustom01, untProcedure, dtmShare;

{$R *.dfm}

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

procedure TdmInventory.qryCustomerBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.Tag <> 0 then
    Abort;
end;

procedure TdmInventory.qryCustomerBeforeEdit(DataSet: TDataSet);
begin
  if DataSet.Tag <> 0 then
    Abort;
end;

procedure TdmInventory.qryCustomerBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(qryCategory);
  OpenIfClose(dmGlobal.qryCity);
end;

procedure TdmInventory.qryCustomerNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('inDeliveryDate').AsInteger := 0;
  DataSet.FieldByName('dcBudget').AsFloat := 0;
end;

procedure TdmInventory.qrySupplierBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.Tag <> 0 then
    Abort;
end;

procedure TdmInventory.qrySupplierBeforeEdit(DataSet: TDataSet);
begin
  if DataSet.Tag <> 0 then
    Abort;
end;

procedure TdmInventory.qrySupplierBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(qryCategory);
  OpenIfClose(dmGlobal.qryCity);
end;

procedure TdmInventory.qrySupplierNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('inDeliveryDate').AsInteger := 0;
  DataSet.FieldByName('dcBudget').AsFloat := 0;
end;

procedure TdmInventory.qrySuppliesBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.Tag <> 0 then
    Abort;
end;

procedure TdmInventory.qrySuppliesBeforeEdit(DataSet: TDataSet);
begin
  if DataSet.Tag <> 0 then
    Abort;
end;

procedure TdmInventory.qrySuppliesBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(qrySuppliesCategory);
end;

procedure TdmInventory.qrySuppliesBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TdmInventory.qryWarehouseBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(dmGlobal.qryCity);
end;

procedure TdmInventory.qryWarehouseBeforePost(DataSet: TDataSet);
begin
  if qryWarehouse.FieldByName('vcIdWarehouse').IsNull then
  begin
    qryGetWarehouseId.Close;
    qryGetWarehouseId.Parameters[0].Value := 'NOVA_WH_';
    qryGetWarehouseId.Open;
    qryWarehouse.FieldByName('vcIdWarehouse').AsString := qryGetWarehouseId.FieldByName('NewId').AsString;
  end;
end;

procedure TdmInventory.ExecuteFormClose(Sender: TObject);
begin
  //CloseAllADODataset(Self);
end;

function TdmInventory.GetCustomerAddress(const AIdCustomer: string): string;
begin
  Result := '';
  qryGetCustomerAddress.Close;
  qryGetCustomerAddress.Parameters[0].Value := AIdCustomer;
  qryGetCustomerAddress.Open;
  if not qryGetCustomerAddress.IsEmpty then
  begin
    Result := qryGetCustomerAddress.FieldByName('vcAddress').AsString + #13;
    Result := Result + qryGetCustomerAddress.FieldByName('CityName').AsString +
      ' - ' + qryGetCustomerAddress.FieldByName('ProvinceName').AsString + #13;
    Result := Result + qryGetCustomerAddress.FieldByName('CountryName').AsString;
  end;
  qryGetCustomerAddress.Close;
end;

function TdmInventory.GetReadyStockQty(const AIdWarehouse,
  AIdSupplies: string): Double;
begin
  Result := 0;
  qryGetReadyStockQty.Close;
  qryGetReadyStockQty.Parameters[0].Value := AIdWarehouse;
  qryGetReadyStockQty.Parameters[1].Value := AIdSupplies;
  qryGetReadyStockQty.Open;
  if not qryGetReadyStockQty.IsEmpty then
    Result := qryGetReadyStockQty.FieldByName('inEndQtyReady').AsFloat;
  qryGetReadyStockQty.Close;
end;

function TdmInventory.GetSupplierAddress(const AIdSupplier: string): string;
begin
  Result := '';
  qryGetSupplierAddress.Close;
  qryGetSupplierAddress.Parameters[0].Value := AIdSupplier;
  qryGetSupplierAddress.Open;
  if not qryGetSupplierAddress.IsEmpty then
  begin
    Result := qryGetSupplierAddress.FieldByName('vcAddress').AsString + #13;
    Result := Result + qryGetSupplierAddress.FieldByName('CityName').AsString +
      ' - ' + qryGetSupplierAddress.FieldByName('ProvinceName').AsString + #13;
    Result := Result + qryGetSupplierAddress.FieldByName('CountryName').AsString;
  end;
  qryGetSupplierAddress.Close;
end;

function TdmInventory.GetWarehouseAddress(const AIdWarehouse: string): string;
begin
  Result := '';
  qryGetWarehouseAddress.Close;
  qryGetWarehouseAddress.Parameters[0].Value := AIdWarehouse;
  qryGetWarehouseAddress.Open;
  if not qryGetWarehouseAddress.IsEmpty then
  begin
    Result := qryGetWarehouseAddress.FieldByName('vcAddress').AsString + #13;
    Result := Result + qryGetWarehouseAddress.FieldByName('CityName').AsString +
      ' - ' + qryGetWarehouseAddress.FieldByName('ProvinceName').AsString + #13;
    Result := Result + qryGetWarehouseAddress.FieldByName('CountryName').AsString;
  end;
  qryGetWarehouseAddress.Close;
end;

function TdmInventory.IsNonStockItem(const AIdSupplies: string): boolean;
begin
  Result := False;
  qryIsNonStockItem.Close;
  qryIsNonStockItem.Parameters[0].Value := AIdSupplies;
  qryIsNonStockItem.Open;
  if not qryIsNonStockItem.IsEmpty then
    Result := qryIsNonStockItem.FieldByName('chFlagService').Asstring = '1';
end;

procedure TdmInventory.LoadDataFromOption;
begin
  CurrentWarehouse := GetINIValue(dmGlobal.SettingLocal.Path_AppData + CONFIG_FILENAME, 'Options', 'CurrentWarehouse', 'NOVA_WH_01');

  OptionStockIsDecimal := dmGlobal.GetSetupValue('OPT01', False);
  OptionCallPaymentAfterPI := dmGlobal.GetSetupValue('OPT02', False);
  OptionCallPaymentAfterSI := dmGlobal.GetSetupValue('OPT03', False);
  OptionHidePriceOnPIEntry := dmGlobal.GetSetupValue('OPT04', False);
  OptionHidePriceOnPOEntry := dmGlobal.GetSetupValue('OPT05', False);
  OptionSuppAccMandatory := dmGlobal.GetSetupValue('OPT06', False);
  OptionCustAccMandatory := dmGlobal.GetSetupValue('OPT07', False);
  OptionOnlyPOEntryCanModifyData := dmGlobal.GetSetupValue('OPT08', False);
  OptionOnlyRREntryCanModifyData := dmGlobal.GetSetupValue('OPT09', False);
  OptionOnlyPIEntryCanModifyData := dmGlobal.GetSetupValue('OPT10', False);
  OptionOnlySOEntryCanModifyData := dmGlobal.GetSetupValue('OPT11', False);
  OptionOnlySIEntryCanModifyData := dmGlobal.GetSetupValue('OPT12', False);
  OptionOnlyDOEntryCanModifyData := dmGlobal.GetSetupValue('OPT13', False);
end;

end.

