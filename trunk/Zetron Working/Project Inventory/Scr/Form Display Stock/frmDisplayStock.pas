unit frmDisplayStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCurrencyEdit, cxCalc, cxCalendar, cxImage, MemDS, DBAccess, Uni,
  cxGridCardView, cxGridDBCardView, cxDBEdit, cxDropDownEdit, cxGridLevel,
  cxGridDBTableView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, ExtCtrls, cxProgressBar, cxCheckComboBox,
  cxContainer, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxButtons,
  dxSkinsCore, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TfmDisplayStock = class(TFormUniDisplay)
    pnlLegend: TPanel;
    Image1: TImage;
    lblMinStock: TLabel;
    dsPrevStockOnHandHd: TDataSource;
    dsPrevStockOnHandValue: TDataSource;
    dsStockCard: TDataSource;
    dsPrevWarehouse: TDataSource;
    dsPrevItemCategory: TDataSource;
    dsPrevPurchasePrice: TDataSource;
    dsPrevSalePrice: TDataSource;
    dsPrevStockExpired: TDataSource;
    dsPrevItemImage: TDataSource;
    pcStockOnHand: TcxPageControl;
    tsStock: TcxTabSheet;
    cgStockOnHandHd: TcxGrid;
    cgvPrevStockOnHandHd: TcxGridDBBandedTableView;
    cgvPrevStockOnHandHdWarehouseId: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdWarehouseName: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdItemIdExternal: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdItemName: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdItemChineseName: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdQtyAwal: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdQtyMasuk: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdQtyKeluar: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdEndQty: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdValueAwal: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdValueMasuk: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdValueKeluar: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdEndValue: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdPriceAVG: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdItemCategoryName: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdType: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdUnitMeasure: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdMinStockQty: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdReorderQty: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdQty1: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdUnitMeasure1: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdPrice1: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdQty2: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdUnitMeasure2: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdPrice2: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdQty3: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdUnitMeasure3: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdPrice3: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdQty4: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdUnitMeasure4: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdPrice4: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdQty5: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdUnitMeasure5: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdPrice5: TcxGridDBBandedColumn;
    cgvPrevWarehouse: TcxGridDBTableView;
    cgvPrevWarehousewarehouseid: TcxGridDBColumn;
    cgvPrevWarehousewarehousename: TcxGridDBColumn;
    cgStockOnHandHdLevel1: TcxGridLevel;
    tsStockCard: TcxTabSheet;
    cgPrevStockCard: TcxGrid;
    cgvPrevStockCard: TcxGridBandedTableView;
    cgvPrevStockCardDate: TcxGridBandedColumn;
    cgvPrevStockCardTransactionTypeName: TcxGridBandedColumn;
    cgvPrevStockCardReferenceId: TcxGridBandedColumn;
    cgvPrevStockCardReferenceIdExternal: TcxGridBandedColumn;
    cgvPrevStockCardReferenceName: TcxGridBandedColumn;
    cgvPrevStockCardItemText: TcxGridBandedColumn;
    cgvPrevStockCardQtyIn: TcxGridBandedColumn;
    cgvPrevStockCardQtyOut: TcxGridBandedColumn;
    cgvPrevStockCardQtyBalance: TcxGridBandedColumn;
    cgvPrevStockCardValueIn: TcxGridBandedColumn;
    cgvPrevStockCardValueOut: TcxGridBandedColumn;
    cgvPrevStockCardValueBalance: TcxGridBandedColumn;
    cgvPrevStockCardValueAVG: TcxGridBandedColumn;
    cgPrevStockCardLevel1: TcxGridLevel;
    Panel1: TPanel;
    lblPeriod: TLabel;
    Label1: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    dbeItemName: TcxDBTextEdit;
    tsInfo: TcxTabSheet;
    cgStockOnHandDt: TcxGrid;
    cgvPrevStockOnHandValue: TcxGridDBTableView;
    cgvPrevStockOnHandValueWarehouseId: TcxGridDBColumn;
    cgvPrevStockOnHandValueItemId: TcxGridDBColumn;
    cgvPrevStockOnHandValueItem: TcxGridDBColumn;
    cgvPrevStockOnHandValueDate: TcxGridDBColumn;
    cgvPrevStockOnHandValueQty: TcxGridDBColumn;
    cgvPrevStockOnHandValuePrice: TcxGridDBColumn;
    cgvPrevStockOnHandValueValue: TcxGridDBColumn;
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
    cgvPrevStockExpired: TcxGridDBTableView;
    cgvPrevStockExpiredItemId: TcxGridDBColumn;
    cgvPrevStockExpiredWarehouseId: TcxGridDBColumn;
    cgvPrevStockExpiredExpiredDate: TcxGridDBColumn;
    cgvPrevStockExpiredQty: TcxGridDBColumn;
    cgvPrevItemImage: TcxGridDBCardView;
    cgvPrevItemImageitemimage: TcxGridDBCardViewRow;
    cgStockOnHandDtLevel1: TcxGridLevel;
    cgStockOnHandDtLevel2: TcxGridLevel;
    cgStockOnHandDtLevel3: TcxGridLevel;
    cgStockOnHandDtLevel4: TcxGridLevel;
    cgStockOnHandDtLevel5: TcxGridLevel;
    Panel2: TPanel;
    Label2: TLabel;
    dbeItemName2: TcxDBTextEdit;
    lcbWarehouse: TcxExtLookupComboBox;
    bvlSpacer12: TBevel;
    btnOk: TcxButton;
    lblWarehouse: TLabel;
    lblCategory: TLabel;
    ccbCategoryId: TcxCheckComboBox;
    actShow: TAction;
    bvlSpacer13: TBevel;
    Bevel1: TBevel;
    pnlProgressBar: TPanel;
    Label5: TLabel;
    pbProcess: TcxProgressBar;
    qryPrevStockOnHandHd: TUniQuery;
    qryPrevStockOnHandValue: TUniQuery;
    qryPrevStockCard: TUniQuery;
    qryPrevWarehouse: TUniQuery;
    qryPrevItemCategory: TUniQuery;
    qryPrevPurchasePrice: TUniQuery;
    qryPrevSalePrice: TUniQuery;
    qryPrevStockExpired: TUniQuery;
    qryPrevItemImage: TUniQuery;
    cgvPrevStockOnHandHdNamaRak: TcxGridDBBandedColumn;
    cgvPrevWarehouseRack: TcxGridDBTableView;
    cgvPrevWarehouseRackitemid: TcxGridDBColumn;
    cgvPrevWarehouseRackrackcode: TcxGridDBColumn;
    cgvPrevWarehouseRackrackcode_1: TcxGridDBColumn;
    cgvPrevWarehouseRackrackname: TcxGridDBColumn;
    cgvPrevWarehouseRackwarehouseid: TcxGridDBColumn;
    cgvPrevWarehouseRackracklocation1: TcxGridDBColumn;
    cgvPrevWarehouseRackracklocation2: TcxGridDBColumn;
    cgvPrevWarehouseRackracklocation3: TcxGridDBColumn;
    cgvPrevWarehouseRackracklocation4: TcxGridDBColumn;
    cgvPrevWarehouseRackracklocation5: TcxGridDBColumn;
    cgvPrevWarehouseRackracklocation6: TcxGridDBColumn;
    cgvPrevWarehouseRackracklocation7: TcxGridDBColumn;
    cgvPrevStockOnHandHdLokasi1: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdLokasi2: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdLokasi3: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdLokasi4: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdLokasi5: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdLokasi6: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdLokasi7: TcxGridDBBandedColumn;
    procedure pcStockOnHandChange(Sender: TObject);
    procedure cgvPrevStockOnHandHdStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cgStockOnHandDtActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure actShowExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    function CreateFilterByCategory: string;
    procedure MonthYearValueChange(Sender: TObject);

    procedure RefreshStockOnHandDt(AWarehouseId: string);
    procedure RefreshStockExpired(AWarehouseId: string);
    procedure RefreshPurchasePrice;
    procedure RefreshSalePrice;
    procedure RefreshItemImage;
    procedure ShowCard;
  public

  end;

var
  fmDisplayStock: TfmDisplayStock;

implementation

uses untProcedure, untConstanta, dtmGeneral, dtmGlobal, dtmShare;

{$R *.dfm}

procedure TfmDisplayStock.actShowExecute(Sender: TObject);
var
  Filter: string;
begin
  inherited;

  Filter := CreateFilterByCategory;

  qryPrevStockOnHandHd.Close;
  qryPrevStockOnHandHd.SQL.Clear;

  if VarToStr(lcbWarehouse.EditValue) = '#' then
  begin
    // Total semua gudang
    qryPrevStockOnHandHd.SQL.Add('select * from vwStockOnHandTotal()');
    qryPrevStockOnHandHd.Tag := 1;
  end
  else
  begin
    qryPrevStockOnHandHd.SQL.Add('select * from vwStockOnHand(' + QuotedStr(VarToStr(lcbWarehouse.EditValue)) + ')');
    qryPrevStockOnHandHd.Tag := 0;
  end;
  qryPrevStockOnHandHd.SQL.Add(Filter);
  OpenIfClose(qryPrevStockOnHandHd, True);
end;

procedure TfmDisplayStock.cgStockOnHandDtActiveTabChanged(
  Sender: TcxCustomGrid; ALevel: TcxGridLevel);
var
  WarehouseId: string;
begin
  inherited;
  
  // Open detail info
  if VarToStr(lcbWarehouse.EditValue) = '#' then // Total warehouse
    WarehouseId := '%'
  else
    WarehouseId := cgvPrevStockOnHandHdWarehouseId.EditValue;

  if ALevel = cgStockOnHandDtLevel1 then
    RefreshStockOnHandDt(WarehouseId);

  if ALevel = cgStockOnHandDtLevel2 then
    RefreshPurchasePrice;

  if ALevel = cgStockOnHandDtLevel3 then
    RefreshSalePrice;

  if ALevel = cgStockOnHandDtLevel4 then
    RefreshStockExpired(WarehouseId);

  if ALevel = cgStockOnHandDtLevel5 then
    RefreshItemImage;
end;

procedure TfmDisplayStock.cgvPrevStockOnHandHdStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBBandedTableView) do
  begin
    if ARecord.Values[GetColumnByFieldName('MinStockQty').Index] <> '0' then
      if ARecord.Values[GetColumnByFieldName('EndQty').Index] <=
        ARecord.Values[GetColumnByFieldName('MinStockQty').Index] then
        AStyle := dmGlobal.stRedLight;
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
      qryPrevItemCategory.RecNo := i + 1;
      ItemCategoryId := qryPrevItemCategory.FieldByName('ItemCategoryId').AsString;

      if Result = '' then
        Result := 'where (ItemCategoryId like ' + QuotedStr(ItemCategoryId) + ')'
      else
        Result := Result + 'or (ItemCategoryId like ' + QuotedStr(ItemCategoryId) + ')';

      if i = 0 then
        Exit; //Show all
    end;
  end;
end;

procedure TfmDisplayStock.InitForm;
begin
  inherited;

  if FParamValuesArray[0] = 1 then // Show Qty Only
    Caption := Caption + ' (Qty)';

  // Override IvComponent initialization
  cgvPrevWarehousewarehousename.Width := 250;
  cgvPrevWarehouse.OptionsCustomize.ColumnsQuickCustomization := False;

  GetMonthList(cbMonth, dmGlobal.SettingGlobal.ServerDateTime);
  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;
  SetReadOnly(cgvPrevStockOnHandHd);
  SetReadOnly(cgvPrevStockOnHandValue);
  SetReadOnly(cgvPrevPurchasePrice);
  SetReadOnly(cgvPrevSalePrice);
  SetReadOnly(cgvPrevStockExpired);
  SetReadOnly(cgvPrevStockCard);
  SetReadOnly(cgvPrevItemImage);
  SetReadOnly(dbeItemName, True, COLOR_INACTIVE);
  SetReadOnly(dbeItemName2, True, COLOR_INACTIVE);

  TcxCurrencyEditProperties(cgvPrevStockOnHandHdQtyAwal.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdQtyMasuk.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdQtyKeluar.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdEndQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdValueAwal.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdValueMasuk.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdValueKeluar.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdEndValue.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdPriceAVG.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdMinStockQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdReorderQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdQty1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdPrice1.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdQty2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdPrice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdQty3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdPrice3.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdQty4.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdPrice4.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdQty5.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockOnHandHdPrice5.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockCardValueIn.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockCardValueOut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockCardValueBalance.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockCardValueAVG.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockOnHandValueQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockOnHandValuePrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevStockOnHandValueValue.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevPurchasePriceprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevPurchasePricediscitem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPrevPurchasePricediscitemprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevPurchasePriceqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevSalePriceprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevSalePricediscitem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPrevSalePricediscitemprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevSalePriceqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevStockExpiredQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  OpenIfClose(dmGeneral.qryVendor, True);
  OpenIfClose(dmGeneral.qryCustomer, True);
  OpenIfClose(qryPrevWarehouse);
  OpenIfClose(qryPrevItemCategory, True);

  qryPrevItemCategory.First;
  while not qryPrevItemCategory.Eof do
  begin
    ccbCategoryId.Properties.Items.AddCheckItem(qryPrevItemCategory.FieldByName('ItemCategoryName').AsString);
    qryPrevItemCategory.Next;
  end;

  lcbWarehouse.EditValue := qryPrevWarehouse.FieldByName('WarehouseId').AsVariant;
  ccbCategoryId.States[0] := cbsChecked;

  if FParamValuesArray[0] = 1 then // Show Qty Only
  begin
    cgStockOnHandDtLevel1.Visible := False;
    cgStockOnHandDtLevel2.Visible := False;
    cgvPrevStockOnHandHd.Bands.Items[2].VisibleForCustomization := False;
    cgvPrevStockOnHandHd.Bands.Items[2].Visible := False;
    cgvPrevStockOnHandHdPriceAVG.Free;
    cgvPrevStockOnHandHdEndValue.Free;
    cgvPrevStockOnHandHdValueAwal.Free;
    cgvPrevStockOnHandHdValueMasuk.Free;
    cgvPrevStockOnHandHdValueKeluar.Free;
    cgvPrevStockCard.Bands.Items[2].VisibleForCustomization := False;
    cgvPrevStockCard.Bands.Items[2].Visible := False;
    cgvPrevStockCardValueIn.Free;
    cgvPrevStockCardValueOut.Free;
    cgvPrevStockCardValueBalance.Free;
    cgvPrevStockCardValueAVG.Free;
    cgvPrevStockCard.Bands.Items[2].VisibleForCustomization := False;
    cgvPrevStockCard.Bands.Items[2].Visible := False;
    cgStockOnHandDt.ActiveLevel := cgStockOnHandDtLevel3;
  end
  else
    cgStockOnHandDt.ActiveLevel := cgStockOnHandDtLevel1;

  if not dmShare.OptionUsingItemExpired then
    cgStockOnHandDtLevel4.Free;
end;

procedure TfmDisplayStock.MonthYearValueChange(Sender: TObject);
begin
  ShowCard;
end;

procedure TfmDisplayStock.pcStockOnHandChange(Sender: TObject);
begin
  inherited;

  if pcStockOnHand.ActivePage = tsStockCard then
    ShowCard;
  if pcStockOnHand.ActivePage = tsInfo then
    cgStockOnHandDtActiveTabChanged(cgStockOnHandDt, cgStockOnHandDt.ActiveLevel);
end;

procedure TfmDisplayStock.RefreshAll;
begin
  inherited;

  if pcStockOnHand.ActivePage = tsStock then
  begin
    LockRefresh(dmGeneral.qryVendor, True);
    LockRefresh(dmGeneral.qryCustomer, True);
    LockRefresh(qryPrevWarehouse);
    LockRefresh(qryPrevItemCategory, True);
    LockRefresh(qryPrevStockOnHandHd, True);
  end;
  if pcStockOnHand.ActivePage = tsStockCard then
    ShowCard;
  if pcStockOnHand.ActivePage = tsInfo then
    cgStockOnHandDtActiveTabChanged(cgStockOnHandDt, cgStockOnHandDt.ActiveLevel);
end;

procedure TfmDisplayStock.RefreshItemImage;
begin
  qryPrevItemImage.Close;
  if not qryPrevStockOnHandHd.Active then
    Exit;
  qryPrevItemImage.Params[0].Value := qryPrevStockOnHandHd.FieldByName('ItemId').AsVariant;;
  OpenIfClose(qryPrevItemImage, True);
end;

procedure TfmDisplayStock.RefreshPurchasePrice;
begin
  qryPrevPurchasePrice.Close;
  if not qryPrevStockOnHandHd.Active then
    Exit;
  qryPrevPurchasePrice.Params[0].Value := '%';
  qryPrevPurchasePrice.Params[1].Value := qryPrevStockOnHandHd.FieldByName('ItemId').AsVariant;
  OpenIfClose(qryPrevPurchasePrice, True);
end;

procedure TfmDisplayStock.RefreshSalePrice;
begin
  qryPrevSalePrice.Close;
  if not qryPrevStockOnHandHd.Active then
    Exit;
  qryPrevSalePrice.Params[0].Value := '%';
  qryPrevSalePrice.Params[1].Value := qryPrevStockOnHandHd.FieldByName('ItemId').AsVariant;
  OpenIfClose(qryPrevSalePrice, True);
end;

procedure TfmDisplayStock.RefreshStockExpired(AWarehouseId: string);
begin
  qryPrevStockExpired.Close;
  if not dmShare.OptionUsingItemExpired then
    Exit;
  if not qryPrevStockOnHandHd.Active then
    Exit;
  qryPrevStockExpired.Params[0].Value := AWarehouseId;
  qryPrevStockExpired.Params[1].Value := qryPrevStockOnHandHd.FieldByName('ItemId').AsVariant;
  OpenIfClose(qryPrevStockExpired, True);
end;

procedure TfmDisplayStock.RefreshStockOnHandDt(AWarehouseId: string);
begin
  // COGS
  qryPrevStockOnHandValue.Close;
  if FParamValuesArray[0] = 1 then // Show Qty Only
    Exit;

  if not qryPrevStockOnHandHd.Active then
    Exit;
  qryPrevStockOnHandValue.Params[0].Value := AWarehouseId;
  qryPrevStockOnHandValue.Params[1].Value := qryPrevStockOnHandHd.FieldByName('ItemId').AsVariant;
  OpenIfClose(qryPrevStockOnHandValue, True);
end;

procedure TfmDisplayStock.ShowCard;
var
  i: integer;
  QtyBalance, QtyDebit, QtyCredit: currency;
  ValueBalance, ValueDebit, ValueCredit: currency;
begin
  qryPrevStockCard.Close;
  if qryPrevStockOnHandHd.Tag = 0 then
  begin
    if qryPrevStockOnHandHd.IsEmpty then
      Exit;
  end
  else // Total Gudang
    Exit;

  if (qryPrevStockOnHandHd.Active) and (not qryPrevStockOnHandHd.IsEmpty) then
  begin
    qryPrevStockCard.Params[0].Value := EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1);
    qryPrevStockCard.Params[1].Value := qryPrevStockOnHandHd.FieldByName('ItemId').AsInteger;
    qryPrevStockCard.Params[2].Value := cgvPrevStockOnHandHdWarehouseId.EditValue;
    qryPrevStockCard.Params[3].Value := StrToInt(cbYear.Text);
    qryPrevStockCard.Params[4].Value := cbMonth.ItemIndex + 1;
    OpenIfClose(qryPrevStockCard, True);
  end;

  pbProcess.Properties.Max := qryPrevStockCard.RecordCount;
  cgvPrevStockCard.BeginUpdate;
  cgvPrevStockCard.DataController.RecordCount := qryPrevStockCard.RecordCount;
  QtyBalance := 0;
  ValueBalance := 0;
  pbProcess.Properties.Max := qryPrevStockCard.RecordCount;
  for i := 0 to qryPrevStockCard.RecordCount - 1 do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;
    qryPrevStockCard.RecNo := i + 1;
    with cgvPrevStockCard do
    begin
      if qryPrevStockCard.FieldByName('OrderNo').AsString = '0' then
      begin
        // Saldo Awal
        QtyDebit := qryPrevStockCard.FieldByName('Qty').AsFloat;
        QtyCredit := 0;
        ValueDebit := qryPrevStockCard.FieldByName('Amount').AsCurrency;
        ValueCredit := 0;
      end
      else
      begin
        if qryPrevStockCard.FieldByName('Qty').AsFloat >= 0 then
        begin
          QtyDebit := qryPrevStockCard.FieldByName('Qty').AsFloat;
          QtyCredit := 0;
        end
        else
        begin
          QtyDebit := 0;
          QtyCredit := Abs(qryPrevStockCard.FieldByName('Qty').AsFloat);
        end;

        if qryPrevStockCard.FieldByName('Amount').AsCurrency >= 0 then
        begin
          ValueDebit := qryPrevStockCard.FieldByName('Amount').AsCurrency;
          ValueCredit := 0;
        end
        else
        begin
          ValueDebit := 0;
          ValueCredit := Abs(qryPrevStockCard.FieldByName('Amount').AsCurrency);
        end;
      end;
      QtyBalance := QtyBalance + (QtyDebit - QtyCredit);
      ValueBalance := ValueBalance + (ValueDebit - ValueCredit);

      DataController.Values[i, cgvPrevStockCardDate.Index] := qryPrevStockCard.FieldByName('TransactionDate').AsVariant;
      DataController.Values[i, cgvPrevStockCardTransactionTypeName.Index] :=
        qryPrevStockCard.FieldByName('TransactionTypeName').AsVariant;
      DataController.Values[i, cgvPrevStockCardReferenceId.Index] :=
        qryPrevStockCard.FieldByName('ReferenceId').AsVariant;
      DataController.Values[i, cgvPrevStockCardReferenceIdExternal.Index] :=
        qryPrevStockCard.FieldByName('ReferenceIdExternal').AsVariant;
      DataController.Values[i, cgvPrevStockCardReferenceName.Index] :=
        qryPrevStockCard.FieldByName('ReferenceName').AsVariant;
      DataController.Values[i, cgvPrevStockCardItemText.Index] :=
        qryPrevStockCard.FieldByName('ItemText').AsVariant;
      if qryPrevStockCard.FieldByName('OrderNo').AsString = '0' then
      begin
        // Saldo awal
        DataController.Values[i, cgvPrevStockCardQtyIn.Index] := 0;
        DataController.Values[i, cgvPrevStockCardQtyOut.Index] := 0;
        if FParamValuesArray[0] = 0 then // Show COGS
        begin
          DataController.Values[i, cgvPrevStockCardValueIn.Index] := 0;
          DataController.Values[i, cgvPrevStockCardValueOut.Index] := 0;
        end;
      end
      else
      begin
        // Transaksi
        DataController.Values[i, cgvPrevStockCardQtyIn.Index] := QtyDebit;
        DataController.Values[i, cgvPrevStockCardQtyOut.Index] := QtyCredit;
        if FParamValuesArray[0] = 0 then // Show COGS
        begin
          DataController.Values[i, cgvPrevStockCardValueIn.Index] := ValueDebit;
          DataController.Values[i, cgvPrevStockCardValueOut.Index] := ValueCredit;
        end;
      end;
      DataController.Values[i, cgvPrevStockCardQtyBalance.Index] := QtyBalance;
      if FParamValuesArray[0] = 0 then // Show COGS
      begin
        DataController.Values[i, cgvPrevStockCardValueBalance.Index] := ValueBalance;
        if QtyBalance <> 0 then
          DataController.Values[i, cgvPrevStockCardValueAVG.Index] := ValueBalance / QtyBalance
        else
          DataController.Values[i, cgvPrevStockCardValueAVG.Index] := 0;
      end;
    end;
  end;
  pbProcess.Position := 0;
  cgvPrevStockCard.EndUpdate;
end;

end.
