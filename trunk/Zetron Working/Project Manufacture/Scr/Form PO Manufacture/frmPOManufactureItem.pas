unit frmPOManufactureItem;

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
  cxMRUEdit, cxButtonEdit;

type
  TfmPOManufactureItem = class(TfmPOManufacture)
    cgPurchaseOrderDt: TcxGrid;
    cgvPurchaseOrderItemItemId: TcxGridDBBandedColumn;
    cgvPurchaseOrderItemPrice: TcxGridDBBandedColumn;
    cgvPurchaseOrderItemQty: TcxGridDBBandedColumn;
    cgPurchaseOrderDtLevel1: TcxGridLevel;
    cgvPurchaseOrderItemAmount: TcxGridDBBandedColumn;
    cgvPurchaseOrderItemNo: TcxGridDBBandedColumn;
    cgvPurchaseOrderItemEmployeeId: TcxGridDBBandedColumn;
    cgvPurchaseOrderItemDescription: TcxGridDBBandedColumn;
    cgvPurchaseOrderItemItemTax: TcxGridDBBandedColumn;
    cgvPurchaseOrderItemItemTaxPrice: TcxGridDBBandedColumn;
    cgvPurchaseOrderItemPricePrint: TcxGridDBBandedColumn;
    cgvPurchaseOrderItemStatusDimensiPrice: TcxGridDBBandedColumn;
    cgvPurchaseOrderItemUnitMeasure: TcxGridDBBandedColumn;
    cgvPurchaseOrderItem: TcxGridDBBandedTableView;
    cgvPurchaseOrderItemQtyPrint: TcxGridDBBandedColumn;
    cgvPurchaseOrderItemPurchaseOrderId: TcxGridDBBandedColumn;
    qryGenerateCounter: TADOQuery;
    qrySetCounter: TADOQuery;
    procedure qryPurchaseOrderHdNewRecord(DataSet: TDataSet);
    procedure qryPurchaseOrderHdBeforePost(DataSet: TDataSet);
    procedure qryPurchaseOrderHdAfterPost(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPOManufactureItem: TfmPOManufactureItem;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory;

procedure TfmPOManufactureItem.InitForm;
begin
  case FParamArrayValues[1] of
    0 : Self.Caption := Self.Caption + ' (Tax & Non Tax)';
    1 : Self.Caption := Self.Caption + ' (Non Tax)';
  end;

  inherited;

  DefaultPrimaryKeyField := 'PurchaseOrderCode';
  case FParamArrayValues[1] of
    0 : dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_PO_ITEM);
    1 : dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_PO_ITEM_N);
    2 : dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_PO_ITEM_T);
  end;

  TcxCalcEditProperties(cgvPurchaseOrderItemItemTax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPurchaseOrderItemQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPurchaseOrderItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseOrderItemPricePrint.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseOrderItemAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseOrderItemItemTaxPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  //TcxCalcEditProperties(cgvPurchaseOrderItemQtyPrint.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvPurchaseOrderItem.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmInventory.qryPrevStatusDimensi, True);
  case FParamArrayValues[0] of
    0 :
      begin
        // All Item
        OpenIfClose(dmInventory.qryItem, True);
        TcxExtLookupComboBoxProperties(cgvPurchaseOrderItemItemId.Properties).View := dmInventory.cgvPrevItem;
        TcxExtLookupComboBoxProperties(cgvPurchaseOrderItemItemId.Properties).ListFieldItem := dmInventory.cgvPrevItemItemName;
        TcxExtLookupComboBoxProperties(cgvPurchaseOrderItemUnitMeasure.Properties).View := dmInventory.cgvPrevItem;
        TcxExtLookupComboBoxProperties(cgvPurchaseOrderItemUnitMeasure.Properties).ListFieldItem := dmInventory.cgvPrevItemUnitMeasure;
      end;
    1 :
      begin
        // Barang Penolong Only
        OpenIfClose(dmInventory.qryPrevItemPenolong, True);
        TcxExtLookupComboBoxProperties(cgvPurchaseOrderItemItemId.Properties).View := dmInventory.cgvPrevItemPenolong;
        TcxExtLookupComboBoxProperties(cgvPurchaseOrderItemItemId.Properties).ListFieldItem := dmInventory.cgvPrevItemPenolongItemName;
        TcxExtLookupComboBoxProperties(cgvPurchaseOrderItemUnitMeasure.Properties).View := dmInventory.cgvPrevItemPenolong;
        TcxExtLookupComboBoxProperties(cgvPurchaseOrderItemUnitMeasure.Properties).ListFieldItem := dmInventory.cgvPrevItemPenolongUnitMeasure;
      end;
  else
    begin
      MessageDlg('Invalid FParamArrayValues[0] values', mtInformation, [mbOk], 0);
      Close;
    end;
  end;

  MonthYearValueChange(nil); // -> Trigger qrySalesInvoiceHd
  OpenIfClose(qryPurchaseOrderDt);
end;

procedure TfmPOManufactureItem.qryPurchaseOrderHdAfterPost(DataSet: TDataSet);
begin
  inherited;
{  case dataset.fieldbyname('flagat').asinteger of
    0 :begin
         qrySetCounter.Parameters[0].Value:='PO';
         qrySetCounter.Parameters[1].Value:=dbePurchaseOrderDate.date;
         qrySetCounter.Parameters[2].Value:='';
       end;
    1 :begin
         qrySetCounter.Parameters[0].Value:='POTAX';
         qrySetCounter.Parameters[1].Value:=dbePurchaseOrderDate.date;
         qrySetCounter.Parameters[2].Value:='';
       end;
  end;
  qrySetCounter.ExecSQL;}
end;

procedure TfmPOManufactureItem.qryPurchaseOrderHdBeforePost(DataSet: TDataSet);
begin
  inherited;
{  case dataset.fieldbyname('flagat').asinteger of
    0 :begin
         qryGenerateCounter.Parameters[0].Value:='PO';
         qryGenerateCounter.Parameters[1].Value:=dbePurchaseOrderDate.date;
         qryGenerateCounter.Parameters[2].Value:='';
       end;
    1 :begin
         qryGenerateCounter.Parameters[0].Value:='POTAX';
         qryGenerateCounter.Parameters[1].Value:=dbePurchaseOrderDate.date;
         qryGenerateCounter.Parameters[2].Value:='';
       end;
  end;
  qryGenerateCounter.ExecSQL;
  qryGenerateCounter.Open;
  DataSet.FieldByName('PurchaseOrderCode').AsVariant := qryGenerateCounter.FieldByName('GenCounter').Text;}
end;

procedure TfmPOManufactureItem.qryPurchaseOrderHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('StatusPurchaseOrder').AsInteger := 0; // PO Barang
end;

procedure TfmPOManufactureItem.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryPrevItemPenolong, True);
end;

end.
