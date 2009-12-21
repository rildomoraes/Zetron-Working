unit frmDisplayItemPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCalc, cxCurrencyEdit, cxCalendar, cxContainer, cxTextEdit,
  cxDBEdit, StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, untIvPositionDevExpress, MemDS, DBAccess, Uni,
  untIvPositionStandard, ActnList, cxButtons, ExtCtrls;

type
  TfmDisplayItemPrice = class(TFormUniDisplay)
    dsPrevItem: TDataSource;
    dsStockOnHand: TDataSource;
    dsPrevStockOnHandValue: TDataSource;
    dsPrevPurchasePrice: TDataSource;
    dsPrevSalePrice: TDataSource;
    cgSalePrice: TcxGrid;
    cgvPrevSalePrice: TcxGridDBTableView;
    cgvPrevSalePricecustomerid: TcxGridDBColumn;
    cgvPrevSalePricecustomername: TcxGridDBColumn;
    cgvPrevSalePriceprice: TcxGridDBColumn;
    cgvPrevSalePricediscitem: TcxGridDBColumn;
    cgvPrevSalePricediscitemprice: TcxGridDBColumn;
    cgvPrevSalePricelastsi: TcxGridDBColumn;
    cgvPrevSalePricesalesinvoiceidinternal: TcxGridDBColumn;
    cgvPrevSalePricesalesinvoicedate: TcxGridDBColumn;
    cgvPrevSalePriceqty: TcxGridDBColumn;
    cgvPrevSalePriceItemText: TcxGridDBColumn;
    cgSalePriceLevel1: TcxGridLevel;
    cgPurchasePrice: TcxGrid;
    cgvPrevPurchasePrice: TcxGridDBTableView;
    cgvPrevPurchasePricevendorid: TcxGridDBColumn;
    cgvPrevPurchasePricevendorname: TcxGridDBColumn;
    cgvPrevPurchasePriceprice: TcxGridDBColumn;
    cgvPrevPurchasePricediscitem: TcxGridDBColumn;
    cgvPrevPurchasePricediscitemprice: TcxGridDBColumn;
    cgvPrevPurchasePricelastpi: TcxGridDBColumn;
    cgvPrevPurchasePricevendorpurchaseinvoiceid: TcxGridDBColumn;
    cgvPrevPurchasePricepurchaseinvoicedate: TcxGridDBColumn;
    cgvPrevPurchasePriceqty: TcxGridDBColumn;
    cgvPrevPurchasePriceItemText: TcxGridDBColumn;
    cgPurchasePriceLevel1: TcxGridLevel;
    cgStokOnHand: TcxGrid;
    cgvStockOnHand: TcxGridDBTableView;
    cgvStockOnHandwarehouseid: TcxGridDBColumn;
    cgvStockOnHandwarehousename: TcxGridDBColumn;
    cgvStockOnHandendqty: TcxGridDBColumn;
    cgvStockOnHandPriceAVG: TcxGridDBColumn;
    cgvStockOnHandendvalue: TcxGridDBColumn;
    cgvStockOnHandValue: TcxGridDBTableView;
    cgvStockOnHandValueWarehouseId: TcxGridDBColumn;
    cgvStockOnHandValueItemId: TcxGridDBColumn;
    cgvStockOnHandValueItem: TcxGridDBColumn;
    cgvStockOnHandValueDate: TcxGridDBColumn;
    cgvStockOnHandValueQty: TcxGridDBColumn;
    cgvStockOnHandValuePrice: TcxGridDBColumn;
    cgvStockOnHandValueValue: TcxGridDBColumn;
    cgStokOnHandLevel1: TcxGridLevel;
    cgStokOnHandLevel2: TcxGridLevel;
    pnlCustom: TPanel;
    Label1: TLabel;
    dbeItemIdExternal: TcxDBTextEdit;
    dbeItemName: TcxDBTextEdit;
    Label2: TLabel;
    qryPrevItem: TUniQuery;
    qryPrevStockOnHand: TUniQuery;
    qryPrevStockOnHandValue: TUniQuery;
    qryPrevPurchasePrice: TUniQuery;
    qryPrevSalePrice: TUniQuery;
  private
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
  end;

var
  fmDisplayItemPrice: TfmDisplayItemPrice;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmShare, dtmInventory;

procedure TfmDisplayItemPrice.InitForm;
begin
  inherited;

  SetReadOnly(cgvStockOnHand);
  SetReadOnly(cgvStockOnHandValue);
  SetReadOnly(cgvPrevPurchasePrice);
  SetReadOnly(cgvPrevSalePrice);
  SetReadOnly(dbeItemIdExternal, True, COLOR_INACTIVE);
  SetReadOnly(dbeItemName, True, COLOR_INACTIVE);

  TcxCalcEditProperties(cgvStockOnHandendqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvStockOnHandendvalue.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvStockOnHandPriceAVG.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvStockOnHandValueQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvStockOnHandValuePrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvStockOnHandValueValue.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevPurchasePriceprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevPurchasePricediscitem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPrevPurchasePricediscitemprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevPurchasePriceqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevSalePricediscitem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPrevSalePricediscitemprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSalePriceqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  qryPrevItem.Close;
  qryPrevItem.Params[0].Value := FParamValuesArray[0];
  OpenIfClose(qryPrevItem, True);

  qryPrevStockOnHand.Close;
  qryPrevStockOnHand.Params[0].Value := FParamValuesArray[0];
  OpenIfClose(qryPrevStockOnHand, True);

  qryPrevStockOnHandValue.Close;
  qryPrevStockOnHandValue.Params[0].Value := FParamValuesArray[0];
  OpenIfClose(qryPrevStockOnHandValue, True);

  qryPrevPurchasePrice.Close;
  qryPrevPurchasePrice.Params[0].Value := '%';
  qryPrevPurchasePrice.Params[1].Value := FParamValuesArray[0];
  OpenIfClose(qryPrevPurchasePrice, True);

  qryPrevSalePrice.Close;
  qryPrevSalePrice.Params[0].Value := '%';
  qryPrevSalePrice.Params[1].Value := FParamValuesArray[0];
  OpenIfClose(qryPrevSalePrice, True);
end;

procedure TfmDisplayItemPrice.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevItem, True);
  LockRefresh(qryPrevStockOnHand, True);
  LockRefresh(qryPrevStockOnHandValue);
  LockRefresh(qryPrevPurchasePrice);
  LockRefresh(qryPrevSalePrice);
end;

end.
