unit frmDisplayStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGraphics, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCalc, cxCurrencyEdit, cxCalendar, cxGridCardView,
  cxGridDBCardView, cxSplitter, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, ExtCtrls, ADODB,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, cxCheckBox;

type
  TfmDisplayStock = class(TFormUniDisplay)
    dtsPrevStockOnHandHd: TADODataSet;
    dtsPrevStockOnHandDt: TADODataSet;
    dtsPrevPurchasePrice: TADODataSet;
    dtsPrevSalePrice: TADODataSet;
    dsPrevStockOnHandHd: TDataSource;
    dsPrevStockOnHandDt: TDataSource;
    dsPrevPurchasePrice: TDataSource;
    dsPrevSalePrice: TDataSource;
    pnlHeader: TPanel;
    shpMinStock: TShape;
    lblMinStock: TLabel;
    pnlDetail: TPanel;
    cgStockOnHandHd: TcxGrid;
    cgvPrevStockOnHandHd: TcxGridDBTableView;
    cgvPrevStockOnHandHdvcIdWarehouse: TcxGridDBColumn;
    cgvPrevStockOnHandHdvcWarehouseName: TcxGridDBColumn;
    cgvPrevStockOnHandHdvcIdSupplies: TcxGridDBColumn;
    cgvPrevStockOnHandHdvcSuppliesName: TcxGridDBColumn;
    cgvPrevStockOnHandHdvcIdSuppliesCategory: TcxGridDBColumn;
    cgvPrevStockOnHandHdvcMerk: TcxGridDBColumn;
    cgvPrevStockOnHandHdvcType: TcxGridDBColumn;
    cgvPrevStockOnHandHdinMinStock: TcxGridDBColumn;
    cgvPrevStockOnHandHdinEndQty: TcxGridDBColumn;
    cgvPrevStockOnHandHdinEndQtyReady: TcxGridDBColumn;
    cgvPrevStockOnHandHddcEndValue: TcxGridDBColumn;
    cgvPrevStockOnHandHddcPrice: TcxGridDBColumn;
    cgvPrevStockOnHandHddcPrice1: TcxGridDBColumn;
    cgvPrevStockOnHandHddcPrice2: TcxGridDBColumn;
    cgvPrevStockOnHandHddcPrice3: TcxGridDBColumn;
    cgvPrevWarehouse: TcxGridDBTableView;
    cgvPrevWarehousevcIdWarehouse: TcxGridDBColumn;
    cgvPrevWarehousevcWarehouseName: TcxGridDBColumn;
    cgvPrevWarehousevcContactPerson: TcxGridDBColumn;
    cgStockOnHandHdLevel1: TcxGridLevel;
    splDetailBottom: TcxSplitter;
    cgStockOnHandDt: TcxGrid;
    cgvPrevStockOnHandDt: TcxGridDBTableView;
    cgvPrevStockOnHandDtvcIdSupplies: TcxGridDBColumn;
    cgvPrevStockOnHandDtvcSuppliesName: TcxGridDBColumn;
    cgvPrevStockOnHandDtvcIdWarehouse: TcxGridDBColumn;
    cgvPrevStockOnHandDtdtDate: TcxGridDBColumn;
    cgvPrevStockOnHandDtdcPrice: TcxGridDBColumn;
    cgvPrevStockOnHandDtinQty: TcxGridDBColumn;
    cgvPrevPurchasePrice: TcxGridDBTableView;
    cgvPrevPurchasePricevcSupplierName: TcxGridDBColumn;
    cgvPrevPurchasePricevcCityName: TcxGridDBColumn;
    cgvPrevPurchasePricedcPrice: TcxGridDBColumn;
    cgvPrevPurchasePricedcDiscItem: TcxGridDBColumn;
    cgvPrevPurchasePricedcDiscItemPrice: TcxGridDBColumn;
    cgvPrevPurchasePricevcLastPurchaseInvoice: TcxGridDBColumn;
    cgvPrevPurchasePricedtPurchaseInvoiceDate: TcxGridDBColumn;
    cgvPrevPurchasePriceinQty: TcxGridDBColumn;
    cgvPrevSalePrice: TcxGridDBTableView;
    cgvPrevSalePricevcCustomerName: TcxGridDBColumn;
    cgvPrevSalePricevcCityName: TcxGridDBColumn;
    cgvPrevSalePricedcPrice: TcxGridDBColumn;
    cgvPrevSalePricedcDiscItem: TcxGridDBColumn;
    cgvPrevSalePricedcDiscItemPrice: TcxGridDBColumn;
    cgvPrevSalePricevcLastSalesInvoice: TcxGridDBColumn;
    cgvPrevSalePricedtSalesInvoiceDate: TcxGridDBColumn;
    cgvPrevSalePriceinQty: TcxGridDBColumn;
    cgStockOnHandDtLevel1: TcxGridLevel;
    cgStockOnHandDtLevel2: TcxGridLevel;
    cgStockOnHandDtLevel3: TcxGridLevel;
    dtsPrevStockOnHandHdTotal: TADODataSet;
    dsPrevStockOnHandHdTotal: TDataSource;
    dsPrevWarehouse: TDataSource;
    gvrDisplayStock: TcxGridViewRepository;
    lblWarehouse: TLabel;
    lcbIdWarehouse: TcxExtLookupComboBox;
    dtsPrevWarehouse: TADOQuery;
    chkHideEmptyStock: TcxCheckBox;
    procedure cgvPrevStockOnHandHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure lcbIdWarehousePropertiesEditValueChanged(Sender: TObject);
    procedure chkHideEmptyStockPropertiesChange(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    FShowNetPrice: boolean;
    procedure ShowData;
  public
    { Public declarations }
  end;

var
  fmDisplayStock: TfmDisplayStock;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, untConstanta;

procedure TfmDisplayStock.cgvPrevStockOnHandHdStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  //Color Supplies if reach min stock
  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.Values[GetColumnByFieldName('inEndQty').Index] <=
       ARecord.Values[GetColumnByFieldName('inMinStock').Index] then
      AStyle := dmGlobal.stRedLight;
  end;
end;

procedure TfmDisplayStock.chkHideEmptyStockPropertiesChange(Sender: TObject);
begin
  inherited;

  ShowData;
end;

procedure TfmDisplayStock.InitForm;
begin
  inherited;

  TcxCalcEditProperties(cgvPrevStockOnHandHdinMinStock.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevStockOnHandHdinEndQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevStockOnHandHdinEndQtyReady.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevStockOnHandHddcEndValue.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevStockOnHandHddcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevStockOnHandHddcPrice1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevStockOnHandHddcPrice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevStockOnHandHddcPrice3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  TcxCalcEditProperties(cgvPrevStockOnHandDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevStockOnHandDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  TcxCalcEditProperties(cgvPrevPurchasePriceinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevPurchasePricedcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevPurchasePricedcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevPurchasePricedcDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  TcxCalcEditProperties(cgvPrevSalePriceinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevSalePricedcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSalePricedcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevSalePricedcDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  FShowNetPrice := FParamArrayValues[0] = 1;
  if not FShowNetPrice then
  begin
    Self.Caption := Self.Caption + ' - Quantity';
    cgvPrevStockOnHandHddcEndValue.Free;
    cgvPrevStockOnHandHddcPrice.Free;
    cgStockOnHandDtLevel1.Visible := False;
    cgStockOnHandDtLevel2.Visible := False;
  end
  else
    Self.Caption := Self.Caption + ' - Value';

  shpMinStock.Brush.Color := dmGlobal.stRedLight.Color;
  SetReadOnly(cgvPrevPurchasePrice);
  SetReadOnly(cgvPrevSalePrice);
  SetReadOnly(cgvPrevStockOnHandDt);
  SetReadOnly(cgvPrevStockOnHandHd);

  OpenIfClose(dtsPrevWarehouse);

  lcbIdWarehouse.EditValue := dtsPrevWarehouse.FieldByName('vcIdWarehouse').AsString;
end;

procedure TfmDisplayStock.lcbIdWarehousePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  ShowData;
end;

procedure TfmDisplayStock.RefreshAll;
begin
  inherited;

  if lcbIdWarehouse.EditValue <> '#' then
    LockRefresh(dtsPrevStockOnHandHd, True)
  else
    LockRefresh(dtsPrevStockOnHandHdTotal, True);
  LockRefresh(dtsPrevStockOnHandDt);
  LockRefresh(dtsPrevPurchasePrice);
  LockRefresh(dtsPrevSalePrice);
end;

procedure TfmDisplayStock.ShowData;
begin
  if lcbIdWarehouse.EditValue <> '#' then
  begin
    // All warehouse
    dtsPrevStockOnHandHd.Close;
    dtsPrevStockOnHandHd.Parameters[0].Value := VarToStr(lcbIdWarehouse.EditValue);
    dtsPrevStockOnHandHd.Parameters[1].Value := chkHideEmptyStock.Checked;
    OpenIfClose(dtsPrevStockOnHandHd, True);
    cgvPrevStockOnHandHd.DataController.DataSource := dsPrevStockOnHandHd;
    dtsPrevStockOnHandDt.DataSource := dsPrevStockOnHandHd;
    dtsPrevPurchasePrice.DataSource := dsPrevStockOnHandHd;
    dtsPrevSalePrice.DataSource := dsPrevStockOnHandHd;
  end
  else
  begin
    // Total warehouse
    OpenIfClose(dtsPrevStockOnHandHdTotal, True);
    cgvPrevStockOnHandHd.DataController.DataSource := dsPrevStockOnHandHdTotal;
    dtsPrevStockOnHandDt.DataSource := dsPrevStockOnHandHdTotal;
    dtsPrevPurchasePrice.DataSource := dsPrevStockOnHandHdTotal;
    dtsPrevSalePrice.DataSource := dsPrevStockOnHandHdTotal;
  end;

  OpenIfClose(dtsPrevStockOnHandDt);
  if FShowNetPrice then
    OpenIfClose(dtsPrevPurchasePrice);
  OpenIfClose(dtsPrevSalePrice);
end;

end.
