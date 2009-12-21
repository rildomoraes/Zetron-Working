unit frmDisplayStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  // Auto Create
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCurrencyEdit, cxCalc, cxCalendar,
  cxImage, cxDBExtLookupComboBox, cxGrid, ADODB, ExtCtrls, cxGridCardView,
  cxGridDBCardView, cxGridDBTableView, cxDBEdit, cxDropDownEdit,
  cxCheckComboBox, cxContainer, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxPC, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxButtons,
  untIvSQLStorage, cxSplitter, Grids, DBGrids;

type
  TfmDisplayStock = class(TFormUniDisplay)
    pcStockOnHand: TcxPageControl;
    tsStock: TcxTabSheet;
    cgStockBalance: TcxGrid;
    cgvPrevStockBalance: TcxGridDBBandedTableView;
    cgvPrevStockBalanceWarehouseId: TcxGridDBBandedColumn;
    cgvPrevStockBalanceWarehouseName: TcxGridDBBandedColumn;
    cgvPrevStockBalanceItemCode: TcxGridDBBandedColumn;
    cgvPrevStockBalanceItemName: TcxGridDBBandedColumn;
    cgvPrevStockBalanceQtyOpening: TcxGridDBBandedColumn;
    cgvPrevStockBalanceQtyIn: TcxGridDBBandedColumn;
    cgvPrevStockBalanceQtyOut: TcxGridDBBandedColumn;
    cgvPrevStockBalanceQtyBalance: TcxGridDBBandedColumn;
    cgvPrevStockBalanceValueOpening: TcxGridDBBandedColumn;
    cgvPrevStockBalanceValueIn: TcxGridDBBandedColumn;
    cgvPrevStockBalanceValueOut: TcxGridDBBandedColumn;
    cgvPrevStockBalanceValueBalance: TcxGridDBBandedColumn;
    cgvPrevStockBalancePriceAVG: TcxGridDBBandedColumn;
    cgvPrevStockBalanceItemCategoryName: TcxGridDBBandedColumn;
    cgvPrevStockBalanceUnitMeasure: TcxGridDBBandedColumn;
    cgvPrevStockBalanceMinStockQty: TcxGridDBBandedColumn;
    cgStockBalance1: TcxGridLevel;
    tsStockCard: TcxTabSheet;
    cgPrevStockCard: TcxGrid;
    cgvPrevStockCard2: TcxGridBandedTableView;
    cgvPrevStockCard2Date: TcxGridBandedColumn;
    cgvPrevStockCard2TransactionTypeName: TcxGridBandedColumn;
    cgvPrevStockCard2ReferenceId: TcxGridBandedColumn;
    cgvPrevStockCard2ReferenceIdExternal: TcxGridBandedColumn;
    cgvPrevStockCard2ReferenceName: TcxGridBandedColumn;
    cgvPrevStockCard2ItemText: TcxGridBandedColumn;
    cgvPrevStockCard2QtyIn: TcxGridBandedColumn;
    cgvPrevStockCard2QtyOut: TcxGridBandedColumn;
    cgvPrevStockCard2QtyBalance: TcxGridBandedColumn;
    cgvPrevStockCard2ValueIn: TcxGridBandedColumn;
    cgvPrevStockCard2ValueOut: TcxGridBandedColumn;
    cgvPrevStockCard2ValueBalance: TcxGridBandedColumn;
    cgvPrevStockCard2ValueAVG: TcxGridBandedColumn;
    cgPrevStockCardLevel1: TcxGridLevel;
    Panel1: TPanel;
    lblPeriod: TLabel;
    Label2: TLabel;
    cbMonthStockCard: TcxComboBox;
    cbYearStockCard: TcxComboBox;
    dbeItemName: TcxDBTextEdit;
    tsInfoItem: TcxTabSheet;
    Panel2: TPanel;
    Label3: TLabel;
    dbeItemName2: TcxDBTextEdit;
    pnlLegend: TPanel;
    Image1: TImage;
    lblMinStock: TLabel;
    actShow: TAction;
    qryPrevStockBalance: TADOQuery;
    dsPrevStockBalance: TDataSource;
    pnlCustom: TPanel;
    lblWarehouse: TLabel;
    lblCategory: TLabel;
    Label1: TLabel;
    lcbWarehouse: TcxExtLookupComboBox;
    ccbCategoryId: TcxCheckComboBox;
    btnShow: TcxButton;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    dsPrevWarehouseStock: TDataSource;
    qryPrevWarehouseStock: TADOQuery;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevWarehouseStock: TcxGridDBTableView;
    cgvPrevWarehouseStockWarehouseId: TcxGridDBColumn;
    cgvPrevWarehouseStockCityId: TcxGridDBColumn;
    cgvPrevWarehouseStockWarehouseCode: TcxGridDBColumn;
    cgvPrevWarehouseStockWarehouseName: TcxGridDBColumn;
    cgvPrevWarehouseStockOrderNo: TcxGridDBColumn;
    qryPrevItemCategoryStock: TADOQuery;
    dsPrevItemCategoryStock: TDataSource;
    cgvPrevItemCategory: TcxGridDBTableView;
    cgvPrevItemCategoryItemCategoryId: TcxGridDBColumn;
    cgvPrevItemCategoryItemCategoryCode: TcxGridDBColumn;
    cgvPrevItemCategoryItemCategoryName: TcxGridDBColumn;
    qryPrevStockCard: TADOQuery;
    dsPrevStockCard: TDataSource;
    cgvPrevStockBalanceItemId: TcxGridDBBandedColumn;
    cgvPrevStockCard: TcxGridDBBandedTableView;
    cgvPrevStockCardTransactionDate: TcxGridDBBandedColumn;
    cgvPrevStockCardTransactionTypeName: TcxGridDBBandedColumn;
    cgvPrevStockCardQtyIn: TcxGridDBBandedColumn;
    cgvPrevStockCardQtyBalance: TcxGridDBBandedColumn;
    cgvPrevStockCardQtyOut: TcxGridDBBandedColumn;
    cgvPrevStockCardValueIn: TcxGridDBBandedColumn;
    cgvPrevStockCardValueOut: TcxGridDBBandedColumn;
    cgvPrevStockCardValueBalance: TcxGridDBBandedColumn;
    cgvPrevStockCardReferenceCode: TcxGridDBBandedColumn;
    dsPrevTallySheet: TDataSource;
    cgvPrevStockBalanceQtyPOOpening: TcxGridDBBandedColumn;
    cgvPrevStockBalanceQtyPOIn: TcxGridDBBandedColumn;
    cgvPrevStockBalanceQtyPOOut: TcxGridDBBandedColumn;
    cgvPrevStockBalanceQtyPOBalance: TcxGridDBBandedColumn;
    qryPrevStockBalanceTotal: TADOQuery;
    sqlPrevStockBalance: TIvSQLStorage;
    sqlPrevStockBalanceTotal: TIvSQLStorage;
    qryPrevTallySheet: TADOQuery;
    dsPrevPurchasePrice: TDataSource;
    qryPrevPurchasePrice: TADOQuery;
    dsPrevStockExpired: TDataSource;
    dsPrevSalePrice: TDataSource;
    dsPrevItemImage: TDataSource;
    qryPrevStockExpired: TADOQuery;
    qryPrevSalePrice: TADOQuery;
    qryPrevItemImage: TADOQuery;
    dsPrevStockOnHandValue: TDataSource;
    qryPrevStockOnHandValue: TADOQuery;
    pcInfoBarang: TcxPageControl;
    tsTallySheet: TcxTabSheet;
    cgPrevTallySheet: TcxGrid;
    cgPrevTallySheetLevel1: TcxGridLevel;
    tsStockOnHandValue: TcxTabSheet;
    cgPrevSOHValue: TcxGrid;
    cgvPrevSOHValue: TcxGridDBTableView;
    cgvPrevSOHValueWarehouseId: TcxGridDBColumn;
    cgvPrevSOHValueItemId: TcxGridDBColumn;
    cgvPrevSOHValueCOGSDate: TcxGridDBColumn;
    cgvPrevSOHValueCOGSQty: TcxGridDBColumn;
    cgvPrevSOHValueCOGSValue: TcxGridDBColumn;
    cgvPrevSOHValueTotalCOGS: TcxGridDBColumn;
    cgPrevSOHValueLevel1: TcxGridLevel;
    tsPurchasePrice: TcxTabSheet;
    cgPrevPurchasePrice: TcxGrid;
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
    cgPrevPurchasePriceLevel1: TcxGridLevel;
    tsSalePrice: TcxTabSheet;
    cgPrevSalePrice: TcxGrid;
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
    cgPrevSalePriceLevel1: TcxGridLevel;
    tsExpired: TcxTabSheet;
    cgPrevStockExpired: TcxGrid;
    cgvPrevStockExpired: TcxGridDBTableView;
    cgvPrevStockExpiredItemId: TcxGridDBColumn;
    cgvPrevStockExpiredWarehouseId: TcxGridDBColumn;
    cgvPrevStockExpiredExpiredDate: TcxGridDBColumn;
    cgvPrevStockExpiredQty: TcxGridDBColumn;
    cgPrevStockExpiredLevel1: TcxGridLevel;
    tsImage: TcxTabSheet;
    cgPrevItemImage: TcxGrid;
    cgvPrevItemImage: TcxGridDBCardView;
    cgvPrevItemImageitemimage: TcxGridDBCardViewRow;
    cgPrevItemImageLevel1: TcxGridLevel;
    cgPrevPurchasePriceLevel2: TcxGridLevel;
    cgPrevSalePriceLevel2: TcxGridLevel;
    qryPrevPurchasePriceList: TADOQuery;
    dsPrevPurchasePriceList: TDataSource;
    cgvPrevStockBalanceQtySOOpening: TcxGridDBBandedColumn;
    cgvPrevStockBalanceQtySOIn: TcxGridDBBandedColumn;
    cgvPrevStockBalanceQtySOOut: TcxGridDBBandedColumn;
    cgvPrevStockBalanceQtySOBalance: TcxGridDBBandedColumn;
    cgvPrevStockBalancePurchasePriceListPrice1: TcxGridDBBandedColumn;
    cgvPrevStockBalancePurchasePriceListQty1: TcxGridDBBandedColumn;
    cgvPrevStockBalancePurchasePriceListMinQty1: TcxGridDBBandedColumn;
    cgvPrevStockBalancePurchasePriceListEffectiveDate: TcxGridDBBandedColumn;
    cgvPrevStockBalanceSalePriceListPrice1: TcxGridDBBandedColumn;
    cgvPrevStockBalanceSalePriceListQty1: TcxGridDBBandedColumn;
    cgvPrevStockBalanceSalePriceListMinQty1: TcxGridDBBandedColumn;
    cgvPrevStockBalanceSalePriceListEffectiveDate: TcxGridDBBandedColumn;
    cgvPrevTallySheet: TcxGridDBTableView;
    cgvPrevTallySheetTallySheetId: TcxGridDBColumn;
    cgvPrevTallySheetTallySheetCode: TcxGridDBColumn;
    cgvPrevTallySheetTotalQty: TcxGridDBColumn;
    cgvPrevTallySheetTotalLuas: TcxGridDBColumn;
    cgvPrevTallySheetTotalVolume: TcxGridDBColumn;
    cgvPrevTallySheetTotalBerat: TcxGridDBColumn;
    cgvPrevTallySheetLastTransaction: TcxGridDBColumn;
    cgvPrevTallySheetPurchaseInvoiceId: TcxGridDBColumn;
    cgvPrevTallySheetWarehouseId: TcxGridDBColumn;
    cgvPrevTallySheetItemId: TcxGridDBColumn;
    cgvPrevTallySheetLastRef: TcxGridDBColumn;
    cgvPrevTallySheetTallymanId: TcxGridDBColumn;
    cgvPrevTallySheetTallySheetDate: TcxGridDBColumn;
    cgvPrevTallySheetDt: TcxGridDBTableView;
    cgPrevTallySheetDtLevel1: TcxGridLevel;
    cgPrevTallySheetDt: TcxGrid;
    cxSplitter1: TcxSplitter;
    qryPrevTallySheetDt: TADOQuery;
    dsPrevTallySheetDt: TDataSource;
    cgvPrevTallySheetDtTallySheetId: TcxGridDBColumn;
    cgvPrevTallySheetDtNo: TcxGridDBColumn;
    cgvPrevTallySheetDtT: TcxGridDBColumn;
    cgvPrevTallySheetDtL: TcxGridDBColumn;
    cgvPrevTallySheetDtP: TcxGridDBColumn;
    cgvPrevTallySheetDtBerat: TcxGridDBColumn;
    cgvPrevTallySheetDtD1: TcxGridDBColumn;
    cgvPrevTallySheetDtD2: TcxGridDBColumn;
    cgvPrevTallySheetDtDRata: TcxGridDBColumn;
    cgvPrevTallySheetDtM3: TcxGridDBColumn;
    cgvPrevTallySheetDtLuas: TcxGridDBColumn;
    cgvPrevTallySheetDtQty: TcxGridDBColumn;
    dbeWarehouseName2: TcxDBTextEdit;
    dbeWarehouseName: TcxDBTextEdit;
    pnlClosingDate: TPanel;
    lblClosingDate: TLabel;
    qryGetClosingDate: TADOQuery;
    edtNewClosingDate: TcxDateEdit;
    procedure actShowExecute(Sender: TObject);
    procedure pcStockOnHandChange(Sender: TObject);
    procedure pcInfoBarangChange(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    function CreateFilterByCategory: string;

    procedure ShowStockCard(Sender: TObject);
    procedure RefreshTallySheet(AWarehouseId: string);
    procedure RefreshStockOnHandValue(AWarehouseId: string);
    procedure RefreshStockExpired(AWarehouseId: string);
    procedure RefreshPurchasePrice;
    procedure RefreshSalePrice;
    procedure RefreshItemImage;
  public
    { Public declarations }
  end;

var
  fmDisplayStock: TfmDisplayStock;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory;

procedure TfmDisplayStock.actShowExecute(Sender: TObject);
var
  Filter: string;
begin
  inherited;

  Filter := CreateFilterByCategory;

  qryPrevStockBalance.Close;
  qryPrevStockBalance.SQL.Clear;
  if VarToStr(lcbWarehouse.EditValue) = '#' then
  begin
    // Total semua gudang
    dsPrevStockBalance.DataSet := qryPrevStockBalanceTotal;
    qryPrevStockBalanceTotal.Close;
    sqlPrevStockBalanceTotal.ReInjectSQL;
    qryPrevStockBalanceTotal.SQL.Add('having ' + Filter);
    qryPrevStockBalanceTotal.SQL.Add('order by a.ItemName');
    qryPrevStockBalanceTotal.Parameters[0].Value := IntToStr(cbYear.EditValue);
    qryPrevStockBalanceTotal.Parameters[1].Value := IntToStr(cbMonth.ItemIndex + 1);
    OpenIfClose(qryPrevStockBalanceTotal, True);
  end
  else
  begin
    // Semua gudang
    dsPrevStockBalance.DataSet := qryPrevStockBalance;
    qryPrevStockBalance.Close;
    sqlPrevStockBalance.ReInjectSQL;
    qryPrevStockBalance.SQL.Add('and ' + Filter);
    qryPrevStockBalance.SQL.Add('order by a.WarehouseName, a.ItemName');
    qryPrevStockBalance.Parameters[0].Value := IntToStr(cbYear.EditValue);
    qryPrevStockBalance.Parameters[1].Value := IntToStr(cbMonth.ItemIndex + 1);
    qryPrevStockBalance.Parameters[2].Value := VarToStr(lcbWarehouse.EditValue);
    OpenIfClose(qryPrevStockBalance, True);
  end;

end;

function TfmDisplayStock.CreateFilterByCategory: string;
var
  ItemCategoryId: string;
  i: integer;
begin
  for i := 0 to ccbCategoryId.Properties.Items.Count - 1 do
  begin
    if ccbCategoryId.States[i] = cbsChecked then
    begin
      qryPrevItemCategoryStock.RecNo := i + 1;
      ItemCategoryId := qryPrevItemCategoryStock.FieldByName('ItemCategoryId').AsString;

      if Result = '' then
        Result := '(ItemCategoryId like ' + QuotedStr(ItemCategoryId)
      else
        Result := Result + ' or ItemCategoryId like ' + QuotedStr(ItemCategoryId);

      if i = 0 then // Show all
      begin
        Result := Result + ')';
        Exit;
      end;
    end;
  end;
  if Result <> '' then
    Result := Result + ')';
end;

procedure TfmDisplayStock.InitForm;
begin
  inherited;

  SetReadOnly(cgvPrevStockBalance);
  SetReadOnly(cgvPrevStockCard);
  SetReadOnly(cgvPrevTallySheet);
  SetReadOnly(cgvPrevTallySheetDt);
  SetReadOnly(cgvPrevSOHValue);
  SetReadOnly(cgvPrevPurchasePrice);
  SetReadOnly(cgvPrevSalePrice);
  SetReadOnly(cgvPrevStockExpired);
  SetReadOnly(cgvPrevItemImage);
  SetReadOnly(dbeItemName);
  SetReadOnly(dbeItemName2);
  SetReadOnly(dbeWarehouseName);
  SetReadOnly(dbeWarehouseName2);
  SetReadOnly(edtNewClosingDate);

  TcxCurrencyEditProperties(cgvPrevStockBalanceQtyOpening.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalanceQtyIn.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalanceQtyOut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalanceQtyBalance.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalanceValueOpening.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockBalanceValueIn.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockBalanceValueOut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockBalanceValueBalance.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockBalanceQtyPOOpening.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalanceQtyPOIn.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalanceQtyPOOut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalanceQtyPOBalance.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalanceQtySOOpening.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalanceQtySOIn.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalanceQtySOOut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalanceQtySOBalance.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalancePriceAVG.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockBalanceMinStockQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalancePurchasePriceListPrice1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockBalancePurchasePriceListQty1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalancePurchasePriceListMinQty1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalanceSalePriceListPrice1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockBalanceSalePriceListQty1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockBalanceSalePriceListMinQty1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  TcxCurrencyEditProperties(cgvPrevStockCardQtyIn.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockCardQtyOut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockCardQtyBalance.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockCardValueIn.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockCardValueOut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockCardValueBalance.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  //TcxCurrencyEditProperties(cgvPrevStockCardValueAVG.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  TcxCurrencyEditProperties(cgvPrevTallySheetTotalQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevTallySheetTotalVolume.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCurrencyEditProperties(cgvPrevTallySheetTotalLuas.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatLuas;
  TcxCurrencyEditProperties(cgvPrevTallySheetTotalBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  cgvPrevTallySheet.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvPrevTallySheet.DataController.Summary.FooterSummaryItems[2].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvPrevTallySheet.DataController.Summary.FooterSummaryItems[3].Format := dmGlobal.SettingGlobal.DisplayFormatLuas;
  cgvPrevTallySheet.DataController.Summary.FooterSummaryItems[4].Format := dmGlobal.SettingGlobal.DisplayFormatBerat;

  TcxCurrencyEditProperties(cgvPrevTallySheetDtT.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCurrencyEditProperties(cgvPrevTallySheetDtL.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCurrencyEditProperties(cgvPrevTallySheetDtP.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCurrencyEditProperties(cgvPrevTallySheetDtBerat.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatBerat;
  TcxCurrencyEditProperties(cgvPrevTallySheetDtD1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCurrencyEditProperties(cgvPrevTallySheetDtD2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCurrencyEditProperties(cgvPrevTallySheetDtDRata.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCurrencyEditProperties(cgvPrevTallySheetDtM3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCurrencyEditProperties(cgvPrevTallySheetDtLuas.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatLuas;
  TcxCurrencyEditProperties(cgvPrevTallySheetDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvPrevTallySheetDt.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatQty;
  cgvPrevTallySheetDt.DataController.Summary.FooterSummaryItems[2].Format := dmGlobal.SettingGlobal.DisplayFormatVolume;
  cgvPrevTallySheetDt.DataController.Summary.FooterSummaryItems[3].Format := dmGlobal.SettingGlobal.DisplayFormatLuas;
  cgvPrevTallySheetDt.DataController.Summary.FooterSummaryItems[4].Format := dmGlobal.SettingGlobal.DisplayFormatBerat;

  TcxCurrencyEditProperties(cgvPrevSOHValueCOGSQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevSOHValueCOGSValue.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevSOHValueTotalCOGS.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  TcxCurrencyEditProperties(cgvPrevPurchasePriceprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevPurchasePricediscitem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPrevPurchasePricediscitemprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevPurchasePriceqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  TcxCurrencyEditProperties(cgvPrevSalePriceprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevSalePricediscitem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPrevSalePricediscitemprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevSalePriceqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockExpiredQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  if FParamArrayValues[0] = 1 then // Show Qty Only
  begin
    tsStockOnHandValue.Visible := False;
    tsPurchasePrice.Visible := False;
    cgvPrevStockBalance.Bands.Items[2].VisibleForCustomization := False;
    cgvPrevStockBalance.Bands.Items[2].Visible := False;
    cgvPrevStockBalancePriceAVG.Free;
    cgvPrevStockBalanceValueBalance.Free;
    cgvPrevStockBalanceValueOpening.Free;
    cgvPrevStockBalanceValueIn.Free;
    cgvPrevStockBalanceValueOut.Free;
    cgvPrevStockCard.Bands.Items[2].VisibleForCustomization := False;
    cgvPrevStockCard.Bands.Items[2].Visible := False;
    cgvPrevStockCardValueIn.Free;
    cgvPrevStockCardValueOut.Free;
    cgvPrevStockCardValueBalance.Free;
//    cgvPrevStockCardValueAVG.Free;
    cgvPrevStockCard.Bands.Items[2].VisibleForCustomization := False;
    cgvPrevStockCard.Bands.Items[2].Visible := False;
  end
  else

  GetMonthList(cbMonth, dmGlobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
  GetMonthList(cbMonthStockCard, dmGlobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYearStockCard, dmGlobal.SettingGlobal.ServerDateTime);

  cgvPrevWarehouseStock.OptionsCustomize.ColumnsQuickCustomization := False;
  cbMonthStockCard.Properties.OnEditValueChanged := ShowStockCard;
  cbYearStockCard.Properties.OnEditValueChanged := ShowStockCard;

  // Open all query
  OpenIfClose(dmInventory.qryVendor, True);
  OpenIfClose(dmInventory.qryCustomer, True);
  OpenIfClose(qryPrevItemCategoryStock, True);
  OpenIfClose(qryPrevWarehouseStock);
  OpenIfClose(dmInventory.qryTallyMan);
  qryPrevItemCategoryStock.First;
  while not qryPrevItemCategoryStock.Eof do
  begin
    ccbCategoryId.Properties.Items.AddCheckItem(qryPrevItemCategoryStock.FieldByName('ItemCategoryName').AsString);
    qryPrevItemCategoryStock.Next;
  end;

  lcbWarehouse.EditValue := qryPrevWarehouseStock.FieldByName('WarehouseId').AsVariant;
  ccbCategoryId.States[0] := cbsChecked;

  OpenIfClose(qryGetClosingDate);
  edtNewClosingDate.EditValue := qryGetClosingDate.Fields[0].AsDateTime;
end;

procedure TfmDisplayStock.pcInfoBarangChange(Sender: TObject);
var
  WarehouseId: string;
begin
  inherited;

  // Open detail info
  if VarToStr(lcbWarehouse.EditValue) = '#' then // Total warehouse
    WarehouseId := '%'
  else
    WarehouseId := cgvPrevStockBalanceWarehouseId.EditValue;

  if pcInfoBarang.ActivePage = tsTallySheet then
    RefreshTallySheet(WarehouseId)
  else if pcInfoBarang.ActivePage = tsStockOnHandValue then
    RefreshStockOnHandValue(WarehouseId)
  else if pcInfoBarang.ActivePage = tsPurchasePrice then
    RefreshPurchasePrice
  else if pcInfoBarang.ActivePage = tsSalePrice then
    RefreshSalePrice
  else if pcInfoBarang.ActivePage = tsExpired then
    RefreshStockExpired(WarehouseId)
  else if pcInfoBarang.ActivePage = tsImage then
    RefreshItemImage;
end;

procedure TfmDisplayStock.pcStockOnHandChange(Sender: TObject);
begin
  inherited;

  if pcStockOnHand.ActivePage = tsStockCard then
  begin
    ShowStockCard(nil);
  end;
  if pcStockOnHand.ActivePage = tsInfoItem then
  begin
    pcInfoBarangChange(nil);
  end;
end;

procedure TfmDisplayStock.RefreshAll;
begin
  inherited;

  if pcStockOnHand.ActivePage = tsStock then
  begin
    LockRefresh(dmInventory.qryVendor, True);
    LockRefresh(dmInventory.qryCustomer, True);
    LockRefresh(qryPrevWarehouseStock);
    LockRefresh(dmInventory.qryItemCategory, True);
    LockRefresh(qryPrevStockBalance, True);
  end;
  if pcStockOnHand.ActivePage = tsStockCard then
    ShowStockCard(nil);
  if pcStockOnHand.ActivePage = tsInfoItem then
  begin
    LockRefresh(dmInventory.qryTallyMan);
    pcInfoBarangChange(nil);
  end;
end;

procedure TfmDisplayStock.RefreshItemImage;
begin
  qryPrevItemImage.Close;
  if dsPrevStockBalance.DataSet.Active then
  begin
    qryPrevItemImage.Parameters[0].Value := cgvPrevStockBalanceItemId.EditValue;
    OpenIfClose(qryPrevItemImage, True);
  end;
end;

procedure TfmDisplayStock.RefreshPurchasePrice;
begin
  qryPrevPurchasePrice.Close;
  if dsPrevStockBalance.DataSet.Active then
  begin
    qryPrevPurchasePrice.Parameters[0].Value := cgvPrevStockBalanceItemId.EditValue;
    OpenIfClose(qryPrevPurchasePrice, True);
  end;
end;

procedure TfmDisplayStock.RefreshSalePrice;
begin
//  qryPrevSalePrice.Close;
//  if dsPrevStockBalance.DataSet.Active then
//  begin
//    qryPrevSalePrice.Parameters[0].Value := cgvPrevStockBalanceItemId.EditValue;
//    OpenIfClose(qryPrevSalePrice, True);
//  end;
end;

procedure TfmDisplayStock.RefreshStockExpired(AWarehouseId: string);
begin
//  qryPrevStockExpired.Close;
//  if not dmShare.OptionUsingItemExpired then
//    Exit;
//  if not qryPrevStockOnHandHd.Active then
//    Exit;
//  qryPrevStockExpired.Params[0].Value := AWarehouseId;
//  qryPrevStockExpired.Params[1].Value := qryPrevStockOnHandHd.FieldByName('ItemId').AsVariant;
//  OpenIfClose(qryPrevStockExpired, True);

end;

procedure TfmDisplayStock.RefreshStockOnHandValue(AWarehouseId: string);
begin
  // FIFO, LIFO or AVERAGE
  qryPrevStockOnHandValue.Close;
  qryPrevStockOnHandValue.Parameters[0].Value := AWarehouseId;
  qryPrevStockOnHandValue.Parameters[1].Value := VarToStr(cgvPrevStockBalanceItemId.EditValue);
  OpenIfClose(qryPrevStockOnHandValue, True);
end;

procedure TfmDisplayStock.RefreshTallySheet(AWarehouseId: string);
begin
  qryPrevTallySheet.Close;
  qryPrevTallySheet.Parameters[0].Value := EndOfAMonth(StrToInt(cbYear.Text), cbMonth.ItemIndex + 1);
  qryPrevTallySheet.Parameters[1].Value := AWarehouseId;
  qryPrevTallySheet.Parameters[2].Value := VarToStr(cgvPrevStockBalanceItemId.EditValue);
  OpenIfClose(qryPrevTallySheet, True);
  OpenIfClose(qryPrevTallySheetDt, True);
end;

procedure TfmDisplayStock.ShowStockCard(Sender: TObject);
begin
  qryPrevStockCard.Close;
  qryPrevStockCard.Parameters[0].Value := VarToStr(cgvPrevStockBalanceWarehouseId.EditValue);
  qryPrevStockCard.Parameters[1].Value := VarToStr(cgvPrevStockBalanceItemId.EditValue);
  qryPrevStockCard.Parameters[2].Value := StrToInt(cbYearStockCard.Text);
  qryPrevStockCard.Parameters[3].Value := cbMonthStockCard.ItemIndex + 1;
  OpenIfClose(qryPrevStockCard, True);
end;

end.
