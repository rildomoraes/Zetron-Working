unit dtmInventory;

interface

uses
  SysUtils, Dialogs, Classes, DB, ADODB, cxGrid, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCalendar,
  cxDBExtLookupComboBox, cxCurrencyEdit, cxImageComboBox, cxMemo, cxClasses,
  cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, Variants;

type
  TdmInventory = class(TDataModule)
    gvrInventory: TcxGridViewRepository;
    cgvPrevItem: TcxGridDBTableView;
    cgvPrevItemCategory: TcxGridDBTableView;
    cgvPrevItemCategoryItemCategoryId: TcxGridDBColumn;
    cgvPrevItemCategoryItemCategoryName: TcxGridDBColumn;
    cgvPrevItemItemCode: TcxGridDBColumn;
    cgvPrevItemItemCategoryId: TcxGridDBColumn;
    cgvPrevItemUnitMeasure: TcxGridDBColumn;
    cgvPrevItemItemName: TcxGridDBColumn;
    cgvPrevItemTypeName: TcxGridDBColumn;
    dsItem: TDataSource;
    dsItemCategory: TDataSource;
    cgvPrevItemWithMeasure: TcxGridDBTableView;
    cgvPrevItemWithMeasureItemId: TcxGridDBColumn;
    cgvPrevItemWithMeasureFlagInactive: TcxGridDBColumn;
    cgvPrevItemWithMeasureItemCode: TcxGridDBColumn;
    cgvPrevItemWithMeasureItemName: TcxGridDBColumn;
    cgvPrevItemWithMeasureUnitMeasure: TcxGridDBColumn;
    cgvPrevItemWithMeasureType: TcxGridDBColumn;
    cgvPrevItemWithMeasureItemCategoryId: TcxGridDBColumn;
    cgvPrevItemWithMeasureMaterialId: TcxGridDBColumn;
    cgvPrevItemWithMeasureStatusDimensi: TcxGridDBColumn;
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
    cgvPrevItemFlagInactive: TcxGridDBColumn;
    dsPrevItemCoupleDt: TDataSource;
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
    cgvPrevBarcode: TcxGridDBTableView;
    cgvPrevBarcodeitemid: TcxGridDBColumn;
    cgvPrevBarcodeitemidexternal: TcxGridDBColumn;
    cgvPrevBarcodeitemname: TcxGridDBColumn;
    cgvPrevBarcodeitemnamechinese: TcxGridDBColumn;
    cgvPrevBarcodebarcodeid: TcxGridDBColumn;
    cgvPrevOutstandingPIVendorPurchaseInvoiceId: TcxGridDBColumn;
    cgvPrevOutstandingSISalesInvoiceIdInternal: TcxGridDBColumn;
    cgvPrevOutstandingPIcurrencyid: TcxGridDBColumn;
    cgvPrevOutstandingPRcurrencyid: TcxGridDBColumn;
    cgvPrevOutstandingSIcurrencyid: TcxGridDBColumn;
    cgvPrevOutstandingSRcurrencyid: TcxGridDBColumn;
    dsWarehouse: TDataSource;
    dsVendorCategory: TDataSource;
    dsVendor: TDataSource;
    dsCustomer: TDataSource;
    dsShipping: TDataSource;
    qryPrevTransactionType: TADOQuery;
    qryPrevOutstandingPI: TADOQuery;
    qryPrevOutstandingSI: TADOQuery;
    qryPrevItemCouple: TADOQuery;
    qryPrevItemCoupleDt: TADOQuery;
    qryPrevOutstandingPR: TADOQuery;
    qryPrevOutstandingSR: TADOQuery;
    qryGetItemName: TADOQuery;
    qryGetBarcodeId: TADOQuery;
    qryItemCategory: TADOQuery;
    qryItem: TADOQuery;
    qryWarehouse: TADOQuery;
    qryVendorCategory: TADOQuery;
    qryVendor: TADOQuery;
    qryCustomer: TADOQuery;
    qryShipping: TADOQuery;
    cgvPrevVendor: TcxGridDBTableView;
    cgvPrevVendorVendorId: TcxGridDBColumn;
    cgvPrevVendorVendorName: TcxGridDBColumn;
    cgvPrevVendorAddress: TcxGridDBColumn;
    cgvPrevVendorCityId: TcxGridDBColumn;
    cgvPrevVendorCategoryId: TcxGridDBColumn;
    cgvPrevVendorDepositBalance: TcxGridDBColumn;
    cgvPrevCustomer: TcxGridDBTableView;
    cgvPrevCustomerCustomerId: TcxGridDBColumn;
    cgvPrevCustomerCustomerName: TcxGridDBColumn;
    cgvPrevCustomerAddress: TcxGridDBColumn;
    cgvPrevCustomerCityId: TcxGridDBColumn;
    cgvPrevCustomerCategoryId: TcxGridDBColumn;
    cgvPrevCustomerDepositBalance: TcxGridDBColumn;
    cgvPrevWarehouse: TcxGridDBTableView;
    cgvPrevWarehouseflaginactive: TcxGridDBColumn;
    cgvPrevWarehouseWarehouseId: TcxGridDBColumn;
    cgvPrevWarehouseWarehouseName: TcxGridDBColumn;
    cgvPrevWarehouseCityId: TcxGridDBColumn;
    cgvPrevWarehouseContactPerson: TcxGridDBColumn;
    cgvPrevShipping: TcxGridDBTableView;
    cgvPrevShippingShippingName: TcxGridDBColumn;
    cgvPrevShippingAddress: TcxGridDBColumn;
    cgvPrevShippingCityId: TcxGridDBColumn;
    cgvPrevShippingContactName: TcxGridDBColumn;
    cgvPrevVendorShipping: TcxGridDBTableView;
    cgvPrevVendorShippingShippingName: TcxGridDBColumn;
    cgvPrevVendorShippingContactPerson: TcxGridDBColumn;
    cgvPrevVendorShippingAddress: TcxGridDBColumn;
    cgvPrevVendorShippingCityName: TcxGridDBColumn;
    cgvPrevCustomerShipping: TcxGridDBTableView;
    cgvPrevCustomerShippingShippingName: TcxGridDBColumn;
    cgvPrevCustomerShippingContactPerson: TcxGridDBColumn;
    cgvPrevCustomerShippingAddress: TcxGridDBColumn;
    cgvPrevCustomerShippingCityName: TcxGridDBColumn;
    cgvPrevPurchaseCategory: TcxGridDBTableView;
    cgvPrevPurchaseCategorypurchasecategoryid: TcxGridDBColumn;
    cgvPrevPurchaseCategorypurchasecategoryname: TcxGridDBColumn;
    cgvPrevPurchaseCategoryPrefix: TcxGridDBColumn;
    qryMaterial: TADOQuery;
    dsMaterial: TDataSource;
    cgvPrevMaterial: TcxGridDBTableView;
    cgvPrevRoughSize: TcxGridDBTableView;
    cgvPrevMaterialMaterialId: TcxGridDBColumn;
    cgvPrevMaterialMaterialName: TcxGridDBColumn;
    cgvPrevRoughSizeMaterialId: TcxGridDBColumn;
    cgvPrevRoughSizeRoughSizeId: TcxGridDBColumn;
    cgvPrevRoughSizeRoughSizeName: TcxGridDBColumn;
    cgvPrevMaterialMaterialCode: TcxGridDBColumn;
    cgvPrevItemItemId: TcxGridDBColumn;
    qryCustomerCategory: TADOQuery;
    dsCustomerCategory: TDataSource;
    cgvPrevVendorCategory: TcxGridDBTableView;
    cgvPrevCustomerCategory: TcxGridDBTableView;
    cgvPrevVendorCategoryCategoryName: TcxGridDBColumn;
    cgvPrevCustomerCategoryCategoryName: TcxGridDBColumn;
    cgvPrevVendorCategoryVendorCategoryId: TcxGridDBColumn;
    cgvPrevCustomerCategoryCustomerCategoryId: TcxGridDBColumn;
    cgvPrevShippingShippingId: TcxGridDBColumn;
    cgvPrevShippingShippingCode: TcxGridDBColumn;
    dsPrevStatusProduction: TDataSource;
    qryPrevStatusProduction: TADOQuery;
    cgvPrevStatusProduction: TcxGridDBTableView;
    qryPrevItemPenolong: TADOQuery;
    dsPrevItemPenolong: TDataSource;
    cgvPrevItemPenolong: TcxGridDBTableView;
    cgvPrevItemPenolongItemId: TcxGridDBColumn;
    cgvPrevItemPenolongMaterialId: TcxGridDBColumn;
    cgvPrevItemPenolongItemCategoryId: TcxGridDBColumn;
    cgvPrevItemPenolongItemCode: TcxGridDBColumn;
    cgvPrevItemPenolongItemName: TcxGridDBColumn;
    cgvPrevItemPenolongItemProperty1: TcxGridDBColumn;
    cgvPrevItemPenolongBeratJenis: TcxGridDBColumn;
    cgvPrevVendorVendorCode: TcxGridDBColumn;
    cgvPrevCustomerCustomerCode: TcxGridDBColumn;
    qryPrevItemBOM: TADOQuery;
    dsPrevItemBOM: TDataSource;
    cgvPrevItemBOM: TcxGridDBTableView;
    cgvPrevItemBOMItemId: TcxGridDBColumn;
    cgvPrevItemBOMBillMaterialNumber: TcxGridDBColumn;
    cgvPrevItemBOMBillMaterialDate: TcxGridDBColumn;
    cgvPrevItemBOMDrawNo: TcxGridDBColumn;
    cgvPrevStatusProductionStatusProduction: TcxGridDBColumn;
    cgvPrevStatusProductionName: TcxGridDBColumn;
    cgvPrevItemBOMUnitMasure: TcxGridDBColumn;
    qryGrader: TADOQuery;
    qryKoorGrader: TADOQuery;
    qryTallyMan: TADOQuery;
    dsGrader: TDataSource;
    dsKoorGrader: TDataSource;
    dsTallyman: TDataSource;
    cgvPrevGrader: TcxGridDBTableView;
    cgvPrevGraderGraderCode: TcxGridDBColumn;
    cgvPrevGraderGraderName: TcxGridDBColumn;
    cgvPrevKoorGrader: TcxGridDBTableView;
    cgvPrevKoorGraderKoorGraderCode: TcxGridDBColumn;
    cgvPrevKoorGraderKoorGraderName: TcxGridDBColumn;
    cgvPrevTallyman: TcxGridDBTableView;
    cgvPrevTallymanTallymanCode: TcxGridDBColumn;
    cgvPrevTallymanTallymanName: TcxGridDBColumn;
    cgvPrevItemBOMItemCode: TcxGridDBColumn;
    cgvPrevItemBOMItemName: TcxGridDBColumn;
    cgvPrevItemStatusDimensi: TcxGridDBColumn;
    qryPrevStatusDimensi: TADOQuery;
    dsPrevStatusDimensi: TDataSource;
    cgvPrevStatusDimensi: TcxGridDBTableView;
    cgvPrevStatusDimensiStatusDimensi: TcxGridDBColumn;
    cgvPrevStatusDimensiName: TcxGridDBColumn;
    cgvPrevStatusDimensiDescription: TcxGridDBColumn;
    cgvPrevItemMaterialId: TcxGridDBColumn;
    cgvPrevItemWithMeasureT: TcxGridDBColumn;
    cgvPrevItemWithMeasureL: TcxGridDBColumn;
    cgvPrevItemWithMeasureP: TcxGridDBColumn;
    qryExecuteUpdatePrice: TADOQuery;
    cgvPrevItemPenolongUnitMeasure: TcxGridDBColumn;
    qryOutlet: TADOQuery;
    dsOutlet: TDataSource;
    qryProject: TADOQuery;
    dsProject: TDataSource;
    cgvPrevOutlet: TcxGridDBTableView;
    cgvPrevProject: TcxGridDBTableView;
    cgvPrevProjectProjectId: TcxGridDBColumn;
    cgvPrevProjectProjectCode: TcxGridDBColumn;
    cgvPrevProjectProjectName: TcxGridDBColumn;
    cgvPrevProjectDateStart: TcxGridDBColumn;
    cgvPrevProjectDateEnd: TcxGridDBColumn;
    cgvPrevOutletOutletId: TcxGridDBColumn;
    cgvPrevOutletOutletCode: TcxGridDBColumn;
    cgvPrevOutletCityId: TcxGridDBColumn;
    cgvPrevOutletOutletName: TcxGridDBColumn;
    cgvPrevItemFlagTally: TcxGridDBColumn;
    procedure qryRoughSizeBeforeOpen(DataSet: TDataSet);
    procedure qryCustomerNewRecord(DataSet: TDataSet);
    procedure qryVendorNewRecord(DataSet: TDataSet);
    procedure qryShippingBeforeOpen(DataSet: TDataSet);
    procedure qryCustomerBeforeOpen(DataSet: TDataSet);
    procedure qryVendorBeforeOpen(DataSet: TDataSet);
    procedure qryItemBeforeRefresh(DataSet: TDataSet);
    procedure qryItemNewRecord(DataSet: TDataSet);
    procedure qryItemBeforePost(DataSet: TDataSet);
    procedure qryItemBeforeOpen(DataSet: TDataSet);
    procedure qryPrevItemCoupleDtBeforeOpen(DataSet: TDataSet);
    procedure qryPrevItemCoupleBeforeOpen(DataSet: TDataSet);
    procedure qryOutletBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FOptionItemNameUnique: boolean;
    FOptionShowInactiveItem: boolean;
  public
    procedure LoadDataFromOption;
    procedure InitDatamodule;

    property OptionItemNameUnique: boolean read FOptionItemNameUnique write FOptionItemNameUnique;
    property OptionShowInactiveItem: boolean read FOptionShowInactiveItem write FOptionShowInactiveItem;
  end;

var
  dmInventory: TdmInventory;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TdmInventory.qryCustomerBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(dmGlobal.qryCity);
  OpenIfClose(qryCustomerCategory);
end;

procedure TdmInventory.qryCustomerNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CustomerSince').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('CreditLimit').AsCurrency := 0;
end;

procedure TdmInventory.qryItemBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(dmGlobal.qryEmployee, True);
  OpenIfClose(qryItemCategory, True);
  OpenIfClose(qryMaterial);
  OpenIfClose(qryPrevStatusProduction);
  OpenIfClose(qryPrevStatusDimensi);

  if OptionShowInactiveItem then
    qryItem.Parameters[0].Value := '%'
  else
    qryItem.Parameters[0].Value := '0';
end;

procedure TdmInventory.qryItemBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('ItemName').IsNull then
    DataSet.FieldByName('ItemName').AsVariant := DataSet.FieldByName('ItemIdExternal').AsVariant;
  if VarToStr(DataSet.FieldByName('ItemName').OldValue) <> DataSet.FieldByName('ItemName').AsString then
  begin
    if OptionItemNameUnique then
    begin
      qryGetItemName.Close;
      qryGetItemName.Parameters[0].Value := DataSet.FieldByName('ItemName').AsString;
      OpenIfClose(qryGetItemName, True);
      if not qryGetItemName.IsEmpty then
      begin
        MessageDlg(MSG_ITEM_NAME_DUPLICATE, mtInformation, [mbOk], 0);
        Abort;
      end;
    end;
  end;

//  if FOldBarcodeId <> DataSet.FieldByName('BarcodeId').AsString then
//  begin
//    if Trim(DataSet.FieldByName('BarcodeId').AsString) <> '' then
//    begin
//      qryGetBarcodeId.Close;
//      qryGetBarcodeId.Parameters[0].Value := DataSet.FieldByName('BarcodeId').AsString;
//      OpenIfClose(qryGetBarcodeId, True);
//      if not qryGetBarcodeId.IsEmpty then
//      begin
//        MessageDlg(MSG_ITEM_BARCODE_DUPLICATE, mtInformation, [mbOk], 0);
//        Abort;
//      end;
//    end
//    else
//      DataSet.FieldByName('BarcodeId').AsVariant := null;
//  end;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TdmInventory.qryItemBeforeRefresh(DataSet: TDataSet);
begin
  if OptionShowInactiveItem then
    qryItem.Parameters[0].Value := '%'
  else
    qryItem.Parameters[0].Value := '0';
end;

procedure TdmInventory.qryItemNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ItemCategoryId').AsString := qryItemCategory.FieldByName('ItemCategoryId').AsString;
  DataSet.FieldByName('T').AsInteger := 0;
  DataSet.FieldByName('L').AsInteger := 0;
  DataSet.FieldByName('P').AsInteger := 0;
  DataSet.FieldByName('D').AsInteger := 0;
  DataSet.FieldByName('TConstanta').AsFloat := 0.001; // Milimeter
  DataSet.FieldByName('LConstanta').AsFloat := 0.001; // Milimeter
  DataSet.FieldByName('PConstanta').AsFloat := 0.001; // Milimeter
  DataSet.FieldByName('DConstanta').AsFloat := 0.001; // Milimeter
  DataSet.FieldByName('BeratJenis').AsInteger := 0;
  DataSet.FieldByName('Berat').AsInteger := 0; // Kg
  DataSet.FieldByName('FlagInactive').AsInteger := 0;
  DataSet.FieldByName('FlagTally').AsInteger := 0;
  DataSet.FieldByName('StatusItem').AsInteger := 1;
  DataSet.FieldByName('StatusCostMethod').AsInteger := 2;
  DataSet.FieldByName('StatusProduction').AsInteger := 0;
  DataSet.FieldByName('StatusDimensi').AsInteger := 2; // Pengukuran berdasarkan volume
  DataSet.FieldByName('StatusPurchasePricing').AsInteger := 1;
  DataSet.FieldByName('StatusSalesPricing').AsInteger := 1;
  DataSet.FieldByName('StatusPurchaseDimensi').AsInteger := 1;
//  DataSet.FieldByName('Margin').AsFloat := 100;
//  DataSet.FieldByName('FlagPrintBarcode').AsInteger := 1;
//  DataSet.FieldByName('FlagPurchaseReturn').AsInteger := 1;
//  DataSet.FieldByName('FlagSalesReturn').AsInteger := 1;
end;

procedure TdmInventory.qryOutletBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(dmGlobal.qryCity, True);
end;

procedure TdmInventory.InitDatamodule;
begin
  TcxCurrencyEditProperties(cgvPrevItemWithMeasureT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCurrencyEditProperties(cgvPrevItemWithMeasureL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCurrencyEditProperties(cgvPrevItemWithMeasureP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
end;

procedure TdmInventory.LoadDataFromOption;
begin
  OptionItemNameUnique := dmGlobal.GetSetupValue('OPT01', True);
  OptionShowInactiveItem := dmGlobal.GetSetupValue('OPT02', True);
end;

procedure TdmInventory.qryPrevItemCoupleBeforeOpen(DataSet: TDataSet);
begin
  if OptionShowInactiveItem then
    qryPrevItemCouple.Parameters[0].Value := '%'
  else
    qryPrevItemCouple.Parameters[0].Value := '0';
end;

procedure TdmInventory.qryPrevItemCoupleDtBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(qryItemCategory, True);

  if OptionShowInactiveItem then
    qryPrevItemCoupleDt.Parameters[0].Value := '%'
  else
    qryPrevItemCoupleDt.Parameters[0].Value := '0';
end;

procedure TdmInventory.qryRoughSizeBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(qryMaterial);
end;

procedure TdmInventory.qryShippingBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(dmGlobal.qryCity);
end;

procedure TdmInventory.qryVendorBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(dmGlobal.qryCity);
  OpenIfClose(qryVendorCategory);
end;

procedure TdmInventory.qryVendorNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('VendorSince').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  DataSet.FieldByName('CreditLimit').AsCurrency := 0;
end;

end.




