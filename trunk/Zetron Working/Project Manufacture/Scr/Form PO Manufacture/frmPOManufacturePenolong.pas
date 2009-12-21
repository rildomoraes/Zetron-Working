unit frmPOManufacturePenolong;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  // Auto Create
  frmPOManufacture, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxDockControlPainter,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, cxGridLevel, cxGridDBTableView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMemo, cxDBEdit, cxCheckBox, cxCalc,
  cxDropDownEdit, cxCalendar, dxDockPanel, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxImageComboBox, cxContainer, cxTextEdit, cxMaskEdit,
  StdCtrls, cxButtons, ExtCtrls, ADODB, cxPC, cxCurrencyEdit, Grids, DBGrids,
  cxMRUEdit;

type
  TfmPOManufacturePenolong = class(TfmPOManufacture)
    cgPurchaseOrderDt: TcxGrid;
    cgvPurchaseOrderItem: TcxGridDBTableView;
    cgvPurchaseOrderItemItemId: TcxGridDBColumn;
    cgvPurchaseOrderItemPrice: TcxGridDBColumn;
    cgvPurchaseOrderItemQty: TcxGridDBColumn;
    cgPurchaseOrderDtLevel1: TcxGridLevel;
    cgvPurchaseOrderItemAmount: TcxGridDBColumn;
    cgvPurchaseOrderItemNo: TcxGridDBColumn;
    cgvPurchaseOrderItemEmployeeId: TcxGridDBColumn;
    cgvPurchaseOrderItemDescription: TcxGridDBColumn;
    cgvPurchaseOrderItemItemTax: TcxGridDBColumn;
    cgvPurchaseOrderItemItemTaxPrice: TcxGridDBColumn;
    cgvPurchaseOrderItemPricePrint: TcxGridDBColumn;
    cgvPurchaseOrderItemStatusDimensiPrice: TcxGridDBColumn;
    qryGetPurchasePrice: TADOQuery;
    qryGetPurchasePriceList: TADOQuery;
    procedure dsDefaultDtDataChange(Sender: TObject; Field: TField);
    procedure qryPurchaseOrderHdNewRecord(DataSet: TDataSet);
    procedure qryPurchaseOrderHdBeforePost(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPOManufacturePenolong: TfmPOManufacturePenolong;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory;

procedure TfmPOManufacturePenolong.dsDefaultDtDataChange(Sender: TObject;
  Field: TField);
var
  QtySat: real;
begin
  inherited;

  if (Field = nil) then
    Exit;

  if qryPurchaseOrderDt.State in [dsInsert, dsEdit] then
  begin
    // Calculate
    if (CompareText(Field.FieldName, 'ItemId') = 0) or
      (CompareText(Field.FieldName, 'PricePrint') = 0) or
      (CompareText(Field.FieldName, 'StatusDimensiPrice') = 0) then
    begin
      if dmInventory.qryItem.Locate('ItemId', qryPurchaseOrderDt.FieldByName('ItemId').AsString, [loCaseInsensitive]) then
      begin
        if not(qryPurchaseOrderDt.FieldByName('StatusDimensiPrice').IsNull) then
        begin
          case qryPurchaseOrderDt.FieldByName('StatusDimensiPrice').AsString[1] of
            '0': QtySat := 1;
            '1': QtySat := dmInventory.qryItem.FieldByName('m2').AsFloat;
            '2': QtySat := dmInventory.qryItem.FieldByName('m3').AsFloat;
            '3': QtySat := dmInventory.qryItem.FieldByName('berat').AsFloat;
          end;
        end;
        if qryPurchaseOrderDt.FieldByName('StatusDimensiPrice').AsString = '01' then
        begin
          qryGetPurchasePrice.Close;
          qryGetPurchasePrice.Parameters[0].Value := qryPurchaseOrderHd.FieldByName('VendorId').AsString;
          qryGetPurchasePrice.Parameters[1].Value := Field.Value;
          OpenIfClose(qryGetPurchasePrice);
          if not qryGetPurchasePrice.IsEmpty then
            qryPurchaseOrderDt.FieldByName('PricePrint').AsCurrency:=qryGetPurchasePrice.fieldbyname('price').ascurrency;
        end
        else
        begin
          qryGetPurchasePriceList.Close;
          qryGetPurchasePriceList.Parameters[0].Value := Field.Value;
          OpenIfClose(qryGetPurchasePriceList);
          if not qryGetPurchasePriceList.IsEmpty then
          begin
            qryPurchaseOrderDt.FieldByName('PricePrint').AsCurrency := qryGetPurchasePriceList.FieldByName('price1').AsCurrency;
          end;
        end;
        qryPurchaseOrderDt.FieldByName('Price').AsFloat := QtySat * qryPurchaseOrderDt.FieldByName('PricePrint').AsCurrency;
      end;
    end;
  end;
end;

procedure TfmPOManufacturePenolong.InitForm;
begin
  inherited;

  if FMenuFlag = 0 then
  begin
    // Non Tax
    //cgvPurchaseOrderItemItemTax.Free;
    dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_PO_ITEM);
  end
  else
  begin
    // With Tax
    Self.Caption := Self.Caption + ' (Tax)';
    dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_PO_ITEM_TAX);
  end;

  TcxCalcEditProperties(cgvPurchaseOrderItemItemTax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPurchaseOrderItemQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPurchaseOrderItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseOrderItemPricePrint.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseOrderItemAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseOrderItemItemTaxPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmInventory.qryPrevItemPenolong, True);
  OpenIfClose(dminventory.qryItem, True);
  OpenIfClose(dminventory.qryPrevStatusDimensi, True);

  MonthYearValueChange(nil); // -> Trigger qrySalesInvoiceHd
  OpenIfClose(qryPurchaseOrderDt);
end;

procedure TfmPOManufacturePenolong.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryPurchaseOrderHd.State in [dsEdit, dsInsert]) or
    (qryPurchaseOrderDt.State in [dsEdit, dsInsert]) then
    Abort;

  qryPurchaseOrderHd.Close;
  qryPurchaseOrderHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  qryPurchaseOrderHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  qryPurchaseOrderHd.Parameters[2].Value := 0; // Bahan Penolong
  qryPurchaseOrderHd.Parameters[3].Value := FParamArrayValues[0]; // 0 = Non Pajak, 1 = Pajak
  OpenIfClose(qryPurchaseOrderHd, True, True);
end;

procedure TfmPOManufacturePenolong.qryPurchaseOrderHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('FlagAT').asInteger := FMenuFlag;
end;

procedure TfmPOManufacturePenolong.qryPurchaseOrderHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('StatusPurchaseOrder').AsInteger := 0; // PO Bahan Penolong
end;

procedure TfmPOManufacturePenolong.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryPrevItemPenolong, True);
end;

end.
