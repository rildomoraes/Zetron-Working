unit frmCostingPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxDBExtLookupComboBox, cxCalc,
  cxDropDownEdit, cxDBEdit, cxContainer, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxCurrencyEdit;

type
  TfmCostingPrice = class(TFormUniMasterEx)
    qryCostingPrice: TADOQuery;
    cgvCostingPrice: TcxGridDBTableView;
    cgCostingPriceLevel1: TcxGridLevel;
    cgCostingPrice: TcxGrid;
    cgvCostingPriceItemId: TcxGridDBColumn;
    cgvCostingPriceCurrencyId: TcxGridDBColumn;
    cgvCostingPriceCostingPrice: TcxGridDBColumn;
    dbeItemId: TcxDBExtLookupComboBox;
    dbeCurrencyMaster: TcxDBExtLookupComboBox;
    dbeCostingPrice: TcxDBCalcEdit;
    lblItemId: TLabel;
    lblCurrencyMaster: TLabel;
    Label3: TLabel;
    lblUnitMeasure: TLabel;
    dbeUnitMeasure: TcxDBExtLookupComboBox;
    lblPriceLuas: TLabel;
    lblPriceVolume: TLabel;
    lblPriceKg: TLabel;
    lblPriceConvert: TLabel;
    lcbStatusDimensi: TcxExtLookupComboBox;
    lblEqual: TLabel;
    dbePriceM2: TcxDBCurrencyEdit;
    dbePriceM3: TcxDBCurrencyEdit;
    dbePriceKg: TcxDBCurrencyEdit;
    qryGetItemInfo: TADOQuery;
    Label1: TLabel;
    procedure dsDefaultStateChange(Sender: TObject);
    procedure qryCostingPriceBeforeOpen(DataSet: TDataSet);
    procedure qryCostingPriceBeforePost(DataSet: TDataSet);
    procedure qryCostingPriceNewRecord(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCostingPrice: TfmCostingPrice;

implementation

{$R *.dfm}

uses dtmGlobal, dtmInventory, untProcedure, untConstanta;

procedure TfmCostingPrice.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsInsert, dsEdit] then
  begin
    SetReadOnly(lcbStatusDimensi, False);
  end;
  if dsDefault.State in [dsBrowse] then
  begin
    SetReadOnly(lcbStatusDimensi,  True);
    lcbStatusDimensi.EditValue := 0;
  end;
end;

procedure TfmCostingPrice.InitForm;
begin
  inherited;

  TcxCalcEditProperties(cgvCostingPriceCostingPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeCostingPrice.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbePriceM2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbePriceM3.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbePriceKg.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  SetReadOnly(dbeUnitMeasure);
  SetReadOnly(dbePriceM2);
  SetReadOnly(dbePriceM3);
  SetReadOnly(dbePriceKg);

  OpenIfClose(qryCostingPrice, True);
end;

procedure TfmCostingPrice.qryCostingPriceBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  OpenIfClose(dmInventory.qryItem, True);
  OpenIfClose(dmGlobal.qryCurrencyMaster, True);
end;

procedure TfmCostingPrice.qryCostingPriceBeforePost(DataSet: TDataSet);
begin
  inherited;

  if DataSet.FieldByName('PriceQty').AsFloat <= 0 then
  begin
    MessageDlg(MSG_COSTING_PRICE_INVALID, mtInformation, [mbOk], 0);
    Abort;
  end;

  qryGetItemInfo.Close;
  qryGetItemInfo.Parameters[0].Value := qryCostingPrice.FieldByName('ItemId').AsInteger;
  OpenIfClose(qryGetItemInfo);

  if lcbStatusDimensi.EditValue = '0' then // Harga per pcs
    // Do Nothing
  else if lcbStatusDimensi.EditValue = '1' then // Harga per m2
    qryCostingPrice.FieldByName('PriceQty').AsFloat := qryCostingPrice.FieldByName('PriceQty').AsFloat * qryGetItemInfo.FieldByName('M2').AsFloat
  else if lcbStatusDimensi.EditValue = '2' then // Harga per m3
    qryCostingPrice.FieldByName('PriceQty').AsFloat := qryCostingPrice.FieldByName('PriceQty').AsFloat * qryGetItemInfo.FieldByName('M3').AsFloat
  else if lcbStatusDimensi.EditValue = '3' then // Harga per kg
    qryCostingPrice.FieldByName('PriceQty').AsFloat := qryCostingPrice.FieldByName('PriceQty').AsFloat * qryGetItemInfo.FieldByName('Berat').AsFloat;

  qryCostingPrice.FieldByName('PriceM2').AsFloat := 0;
  qryCostingPrice.FieldByName('PriceM3').AsFloat := 0;
  qryCostingPrice.FieldByName('PriceKg').AsFloat := 0;
  if qryGetItemInfo.FieldByName('M2').AsFloat <> 0 then
    qryCostingPrice.FieldByName('PriceM2').AsFloat := qryCostingPrice.FieldByName('PriceQty').AsFloat / qryGetItemInfo.FieldByName('M2').AsFloat;
  if qryGetItemInfo.FieldByName('M3').AsFloat <> 0 then
    qryCostingPrice.FieldByName('PriceM3').AsFloat := qryCostingPrice.FieldByName('PriceQty').AsFloat / qryGetItemInfo.FieldByName('M3').AsFloat;
  if qryGetItemInfo.FieldByName('Berat').AsFloat <> 0 then
    qryCostingPrice.FieldByName('PriceKg').AsFloat := qryCostingPrice.FieldByName('PriceQty').AsFloat / qryGetItemInfo.FieldByName('Berat').AsFloat;
end;

procedure TfmCostingPrice.qryCostingPriceNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('PriceQty').AsFloat := 0;
  DataSet.FieldByName('PriceM2').AsFloat := 0;
  DataSet.FieldByName('PriceM3').AsFloat := 0;
  DataSet.FieldByName('PriceKg').AsFloat := 0;
end;

procedure TfmCostingPrice.RefreshAll;
begin
  inherited;

  LockRefresh(qryCostingPrice, True);
end;

end.
