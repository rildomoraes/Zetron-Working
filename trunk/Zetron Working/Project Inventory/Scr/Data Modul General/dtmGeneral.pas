unit dtmGeneral;

interface

uses
  SysUtils, Classes, Forms, DB, cxNavigator, Dialogs,

  // Auto Generate
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxDBExtLookupComboBox, cxDBLookupComboBox, cxCurrencyEdit,
  cxImageComboBox, cxCalendar, MemDS, DBAccess, Uni, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid;



type
  TdmGeneral = class(TDataModule)
    gvrGeneral: TcxGridViewRepository;
    cgvPrevCustomer: TcxGridDBTableView;
    cgvPrevCustomerAddress: TcxGridDBColumn;
    cgvPrevCustomerCityId: TcxGridDBColumn;
    cgvPrevCustomerCustomerName: TcxGridDBColumn;
    cgvPrevCustomerCustomerId: TcxGridDBColumn;
    cgvPrevVendor: TcxGridDBTableView;
    cgvPrevVendorAddress: TcxGridDBColumn;
    cgvPrevVendorCityId: TcxGridDBColumn;
    cgvPrevVendorVendorId: TcxGridDBColumn;
    cgvPrevVendorVendorName: TcxGridDBColumn;
    dsPrevCustomer: TDataSource;
    dsPrevVendor: TDataSource;
    dsPrevWarehouse: TDataSource;
    cgvPrevWarehouse: TcxGridDBTableView;
    cgvPrevWarehouseWarehouseId: TcxGridDBColumn;
    cgvPrevWarehouseWarehouseName: TcxGridDBColumn;
    cgvPrevWarehouseContactPerson: TcxGridDBColumn;
    cgvPrevOutlet: TcxGridDBTableView;
    cgvPrevOutletOutletId: TcxGridDBColumn;
    cgvPrevOutletOutletName: TcxGridDBColumn;
    cgvPrevOutletContactPerson: TcxGridDBColumn;
    cgvPrevCategory: TcxGridDBTableView;
    dsPrevCategory: TDataSource;
    cgvPrevCategoryCategoryId: TcxGridDBColumn;
    cgvPrevCategoryCategoryName: TcxGridDBColumn;
    dsPrevStatusApprove: TDataSource;
    cgvPrevVendorCategoryId: TcxGridDBColumn;
    cgvPrevCustomerCategoryId: TcxGridDBColumn;
    dsPrevOutlet: TDataSource;
    cgvPrevVendorDepositBalance: TcxGridDBColumn;
    cgvPrevCustomerDepositBalance: TcxGridDBColumn;
    dsPrevProject: TDataSource;
    cgvPrevProject: TcxGridDBTableView;
    cgvPrevProjectprojectid: TcxGridDBColumn;
    cgvPrevProjectprojectname: TcxGridDBColumn;
    cgvPrevProjectdatestart: TcxGridDBColumn;
    cgvPrevProjectdateend: TcxGridDBColumn;
    cgvPrevProjectcontactperson: TcxGridDBColumn;
    dsPrevSalesman: TDataSource;
    cgvPrevSalesman: TcxGridDBTableView;
    cgvPrevSalesmanemployeeid: TcxGridDBColumn;
    cgvPrevSalesmanemployeename: TcxGridDBColumn;
    cgvPrevWarehouseflaginactive: TcxGridDBColumn;
    dsPrevShipping: TDataSource;
    cgvPrevShipping: TcxGridDBTableView;
    cgvPrevShippingShippingId: TcxGridDBColumn;
    cgvPrevShippingShippingName: TcxGridDBColumn;
    cgvPrevShippingContactPerson: TcxGridDBColumn;
    dsPrevVendorShipping: TDataSource;
    dsPrevCustomerShipping: TDataSource;
    cgvPrevVendorShipping: TcxGridDBTableView;
    cgvPrevCustomerShipping: TcxGridDBTableView;
    cgvPrevVendorShippingShippingName: TcxGridDBColumn;
    cgvPrevVendorShippingContactPerson: TcxGridDBColumn;
    cgvPrevVendorShippingAddress: TcxGridDBColumn;
    cgvPrevVendorShippingCityName: TcxGridDBColumn;
    cgvPrevCustomerShippingShippingName: TcxGridDBColumn;
    cgvPrevCustomerShippingContactPerson: TcxGridDBColumn;
    cgvPrevCustomerShippingAddress: TcxGridDBColumn;
    cgvPrevCustomerShippingCityName: TcxGridDBColumn;
    dsPrevPurchaseCategory: TDataSource;
    dsPrevSalesCategory: TDataSource;
    cgvPrevPurchaseCategory: TcxGridDBTableView;
    cgvPrevSalesCategory: TcxGridDBTableView;
    cgvPrevPurchaseCategorypurchasecategoryid: TcxGridDBColumn;
    cgvPrevPurchaseCategorypurchasecategoryname: TcxGridDBColumn;
    cgvPrevSalesCategorysalescategoryid: TcxGridDBColumn;
    cgvPrevSalesCategorysalescategoryname: TcxGridDBColumn;
    cgvPrevPurchaseCategoryPrefix: TcxGridDBColumn;
    cgvPrevSalesCategoryPrefix: TcxGridDBColumn;
    cgvPrevWarehouseCityId: TcxGridDBColumn;
    cgvPrevOutletCityId: TcxGridDBColumn;
    cgvPrevShippingCityId: TcxGridDBColumn;
    cgvPrevShippingAddress: TcxGridDBColumn;
    qryCustomer: TUniQuery;
    qryCategory: TUniQuery;
    qryVendor: TUniQuery;
    qryPrevStatusApprove: TUniQuery;
    qryPrevSalesman: TUniQuery;
    qryWarehouse: TUniQuery;
    qryOutlet: TUniQuery;
    qryProject: TUniQuery;
    qryShipping: TUniQuery;
    qryPrevVendorShipping: TUniQuery;
    qryPrevCustomerShipping: TUniQuery;
    qryPurchaseCategory: TUniQuery;
    qrySalesCategory: TUniQuery;
    qryWarehouseRack: TUniQuery;
    dsPrevWarehouseRack: TDataSource;
    procedure qryCustomerNewRecord(DataSet: TDataSet);
    procedure qryPurchaseCategoryNewRecord(DataSet: TDataSet);
    procedure qrySalesCategoryNewRecord(DataSet: TDataSet);
    procedure qryVendorNewRecord(DataSet: TDataSet);
    procedure qryWarehouseNewRecord(DataSet: TDataSet);
    procedure qrySalesCategoryBeforeDelete(DataSet: TDataSet);
    procedure qryPurchaseCategoryBeforeDelete(DataSet: TDataSet);
    procedure qryCustomerBeforeOpen(DataSet: TDataSet);
    procedure qryVendorBeforeOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cgvNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure qryVendorBeforePost(DataSet: TDataSet);
    procedure qryCustomerBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DeinitDataModule;
    procedure InitDataModule;
  public
    { Public declarations }
  end;

var
  dmGeneral: TdmGeneral;

implementation

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal,
  frmCountry, frmProvince, frmCity;

{$R *.dfm}

procedure TdmGeneral.DataModuleCreate(Sender: TObject);
begin
  InitDataModule;
end;

procedure TdmGeneral.DataModuleDestroy(Sender: TObject);
begin
  DeinitDataModule;
end;

procedure TdmGeneral.DeinitDataModule;
begin
  //
end;

procedure TdmGeneral.qryCustomerBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(dmGlobal.qryCountry);
  OpenIfClose(dmGlobal.qryProvince);
  OpenIfClose(dmGlobal.qryCity);
  OpenIfClose(qryCategory);
end;

procedure TdmGeneral.qryCustomerBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('CustomerId').AsVariant = DataSet.FieldByName('CustomerIdParent').AsVariant then
  begin
    MessageDlg(MSG_CUSTOMER_PARENT_INVALID, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TdmGeneral.qryCustomerNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CustomerSince').AsVariant := dmGlobal.SettingGlobal.ServerDateTime;
  Dataset.FieldByName('FlagShippingCost').AsInteger := 0;
  Dataset.FieldByName('FlagPKP').AsInteger := 0;
end;

procedure TdmGeneral.qryPurchaseCategoryBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TdmGeneral.qryPurchaseCategoryNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('FlagFix').AsString := '0';
end;

procedure TdmGeneral.qrySalesCategoryBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TdmGeneral.qrySalesCategoryNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('FlagFix').AsString := '0';
end;

procedure TdmGeneral.qryVendorBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(dmGlobal.qryCountry);
  OpenIfClose(dmGlobal.qryProvince);
  OpenIfClose(dmGlobal.qryCity);
  OpenIfClose(qryCategory);
end;

procedure TdmGeneral.qryVendorBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('VendorId').AsVariant = DataSet.FieldByName('VendorIdParent').AsVariant then
  begin
    MessageDlg(MSG_VENDOR_PARENT_INVALID, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TdmGeneral.qryVendorNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('VendorSince').AsVariant := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('FlagShippingCost').AsString := '0';
  DataSet.FieldByName('FlagPKP').AsString := '0';
end;

procedure TdmGeneral.qryWarehouseNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('FlagInactive').AsString := '0';
end;

procedure TdmGeneral.InitDataModule;
begin
  if not Application.Terminated then
    dmGlobal.InitComponent(Self);
end;

procedure TdmGeneral.cgvNavigatorButtonsButtonClick(Sender: TObject;
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

end.











