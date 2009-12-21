unit frmStockOnHand;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCalc, cxCalendar, cxCurrencyEdit,
  Menus, cxLookAndFeelPainters, cxCheckBox, cxSplitter, cxPC, ADODB,
  ActnList, untIvPositionDevExpress, untIvPositionStandard, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, StdCtrls, ExtCtrls, cxButtons, cxGridCardView,
  cxGridDBCardView, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxDBLookupComboBox, cxGridBandedTableView, cxGridDBBandedTableView;

type
  TfmStockOnHand = class(TForm)
    aclHeader: TActionList;
    actClose: TAction;
    actRefresh: TAction;
    btnClose: TcxButton;
    btnRefresh: TcxButton;
    cgStockOnHandHd: TcxGrid;
    cgStockOnHandHdLevel1: TcxGridLevel;
    dsPrevStockOnHandDt: TDataSource;
    dsPrevStockOnHandHd: TDataSource;
    dtsPrevStockOnHandDt: TADODataSet;
    dtsPrevStockOnHandHd: TADODataSet;
    IvPositionDevExpress1: TIvPositionDevExpress;
    IvPositionStandard1: TIvPositionStandard;
    lblMinStock: TLabel;
    lblWarehouse: TLabel;
    pnlButton: TPanel;
    shpMinStock: TShape;
    cgvPrevStockOnHandDt: TcxGridDBTableView;
    cgvPrevStockOnHandDtItemId: TcxGridDBColumn;
    cgvPrevStockOnHandDtItem: TcxGridDBColumn;
    cgvPrevStockOnHandDtWarehouseId: TcxGridDBColumn;
    cgvPrevStockOnHandDtDate: TcxGridDBColumn;
    cgvPrevStockOnHandDtPrice: TcxGridDBColumn;
    cgvPrevStockOnHandDtQty: TcxGridDBColumn;
    cgStockOnHandDt: TcxGrid;
    cgStockOnHandDtLevel1: TcxGridLevel;
    cgStockOnHandDtLevel2: TcxGridLevel;
    cgStockOnHandDtLevel3: TcxGridLevel;
    cgvPrevStockOnHandHd: TcxGridDBBandedTableView;
    cgvPrevPurchasePrice: TcxGridDBTableView;
    cgvPrevPurchasePriceDiscItem: TcxGridDBColumn;
    cgvPrevPurchasePriceDiscItemPrice: TcxGridDBColumn;
    cgvPrevPurchasePricePrice: TcxGridDBColumn;
    cgvPrevPurchasePricePurchaseInvoiceDate: TcxGridDBColumn;
    cgvPrevPurchasePriceQty: TcxGridDBColumn;
    cgvPrevPurchasePriceLastPI: TcxGridDBColumn;
    cgvPrevPurchasePriceVendorName: TcxGridDBColumn;
    cgvPrevSalePrice: TcxGridDBTableView;
    cgvPrevSalePriceDiscItem: TcxGridDBColumn;
    cgvPrevSalePriceDiscItemPrice: TcxGridDBColumn;
    cgvPrevSalePricePrice: TcxGridDBColumn;
    cgvPrevSalePriceSalesInvoiceDate: TcxGridDBColumn;
    cgvPrevSalePriceQty: TcxGridDBColumn;
    cgvPrevSalePriceCustomerName: TcxGridDBColumn;
    cgvPrevSalePriceLastSI: TcxGridDBColumn;
    cgvPrevStockOnHandHdEndQty: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdItemCategoryName: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdItemId: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdItemName: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdMinStockQty: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdReorderQty: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdType: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdUnitMeasure: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdWarehouseName: TcxGridDBBandedColumn;
    cgvPrevStockOnHandHdWarehouseId: TcxGridDBBandedColumn;
    pcStockOnHand: TcxPageControl;
    dsPrevCustomer: TDataSource;
    dsPrevPurchasePrice: TDataSource;
    dsPrevSalePrice: TDataSource;
    dsPrevStockOnHandHdTotal: TDataSource;
    dsPrevVendor: TDataSource;
    dsPrevWarehouse: TDataSource;
    dtsPrevCustomer: TADODataSet;
    dtsPrevPurchasePrice: TADODataSet;
    dtsPrevSalePrice: TADODataSet;
    dtsPrevStockOnHandHdTotal: TADODataSet;
    dtsPrevVendor: TADODataSet;
    dtsPrevWarehouse: TADODataSet;
    lblCustomer: TLabel;
    lblVendor: TLabel;
    lcbCustomerId: TcxLookupComboBox;
    lcbVendorId: TcxLookupComboBox;
    lcbWarehouseId: TcxLookupComboBox;
    shpToolbarBackground: TShape;
    tsStock: TcxTabSheet;
    tsStockCard: TcxTabSheet;
    btnWarehouse: TcxButton;
    btnVendor: TcxButton;
    btnCustomer: TcxButton;
    pmUpdate: TPopupMenu;
    UpdateWarehouse1: TMenuItem;
    UpdateItem1: TMenuItem;
    pmVendor: TPopupMenu;
    pmCustomer: TPopupMenu;
    UpdateVendor1: TMenuItem;
    UpdateCustomer1: TMenuItem;
    cgStockOnHandDtLevel4: TcxGridLevel;
    cgvPrevStockExpired: TcxGridDBTableView;
    dtsPrevStockExpired: TADODataSet;
    dsPrevStockExpired: TDataSource;
    cgvPrevStockExpiredItemId: TcxGridDBColumn;
    cgvPrevStockExpiredWarehouseId: TcxGridDBColumn;
    cgvPrevStockExpiredExpiredDate: TcxGridDBColumn;
    cgvPrevStockExpiredQty: TcxGridDBColumn;
    lblPeriod: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    cgvPrevStockCard: TcxGridDBTableView;
    cgPrevStockCardLevel1: TcxGridLevel;
    cgPrevStockCard: TcxGrid;
    qryPrevStockCard: TADOQuery;
    dsStockCard: TDataSource;
    cgvPrevStockCardTransactionDate: TcxGridDBColumn;
    cgvPrevStockCardMemo: TcxGridDBColumn;
    cgvPrevStockCardQty: TcxGridDBColumn;
    cgvPrevStockCardAmount: TcxGridDBColumn;
    cgvPrevStockCardOrderNo: TcxGridDBColumn;
    procedure actCloseExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure cgvPrevStockOnHandHdFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure OnEditValueChanged(Sender: TObject);
    procedure btnWarehouseClick(Sender: TObject);
    procedure btnVendorClick(Sender: TObject);
    procedure btnCustomerClick(Sender: TObject);
    procedure UpdateWarehouse1Click(Sender: TObject);
    procedure UpdateItem1Click(Sender: TObject);
    procedure cgvPrevStockOnHandHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure UpdateVendor1Click(Sender: TObject);
    procedure UpdateCustomer1Click(Sender: TObject);
    procedure pcStockOnHandChange(Sender: TObject);
    procedure MonthYearValueChange(Sender: TObject);
  private
    { Private declarations }
    FShowPurchasePrice: boolean;
    procedure InitForm;
    procedure DeinitForm;
    procedure RefreshAll;
  public
    { Public declarations }
    class procedure ExecuteForm(AShowPurchasePrice: boolean = False);
  end;

implementation

uses
  untProcedure, untConstanta, dtmGlobal, dtmShare, frmWarehouse, frmVendor,
  frmCustomer, frmItem;

{$R *.dfm}

procedure TfmStockOnHand.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmStockOnHand.actRefreshExecute(Sender: TObject);
begin
  RefreshAll;
end;

procedure TfmStockOnHand.btnCustomerClick(Sender: TObject);
begin
  TfmCustomer.ExecuteForm;
  LockRefresh(Application, dtsPrevCustomer, 'CustomerId');
end;

procedure TfmStockOnHand.btnVendorClick(Sender: TObject);
begin
  TfmVendor.ExecuteForm;
  LockRefresh(Application, dtsPrevVendor, 'VendorId');
end;

procedure TfmStockOnHand.btnWarehouseClick(Sender: TObject);
begin
  TfmWarehouse.ExecuteForm;
  LockRefresh(Application, dtsPrevWarehouse);
end;

procedure TfmStockOnHand.cgvPrevStockOnHandHdFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  WarehouseId: string;
begin
  // Open detail info
  WarehouseId := lcbWarehouseId.EditValue;
  if lcbWarehouseId.EditValue = '%' then  //All
    WarehouseId := cgvPrevStockOnHandHdWarehouseId.EditValue;
  if lcbWarehouseId.EditValue = '#' then  //Total
    WarehouseId := '%';

  dtsPrevStockOnHandDt.Close;
  if FShowPurchasePrice then
  begin
    dtsPrevStockOnHandDt.Parameters[0].Value := WarehouseId;
    dtsPrevStockOnHandDt.Parameters[1].Value := dtsPrevStockOnHandHd.FieldByName('ItemId').AsString;
    dtsPrevStockOnHandDt.Open;
  end;

  dtsPrevStockExpired.Close;
  dtsPrevStockExpired.Parameters[0].Value := WarehouseId;
  dtsPrevStockExpired.Parameters[1].Value := dtsPrevStockOnHandHd.FieldByName('ItemId').AsString;
  dtsPrevStockExpired.Open;

  dtsPrevPurchasePrice.Close;
  dtsPrevPurchasePrice.Parameters[0].Value := lcbVendorId.EditValue;
  dtsPrevPurchasePrice.Parameters[1].Value := cgvPrevStockOnHandHdItemId.EditValue;
  OpenIfClose(Application, dtsPrevPurchasePrice);

  dtsPrevSalePrice.Close;
  dtsPrevSalePrice.Parameters[0].Value := lcbCustomerId.EditValue;
  dtsPrevSalePrice.Parameters[1].Value := cgvPrevStockOnHandHdItemId.EditValue;
  OpenIfClose(Application, dtsPrevSalePrice);
end;

procedure TfmStockOnHand.cgvPrevStockOnHandHdStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  with (Sender as TcxGridDBBandedTableView) do
  begin
    if ARecord.Values[GetColumnByFieldName('EndQty').Index] <=
       ARecord.Values[GetColumnByFieldName('MinStockQty').Index] then
      AStyle := dmGlobal.stRedLight;
  end;
end;

procedure TfmStockOnHand.DeinitForm;
begin
//
end;

class procedure TfmStockOnHand.ExecuteForm(AShowPurchasePrice: boolean = False);
var
  fmStockOnHand: TfmStockOnHand;
begin
  fmStockOnHand := TfmStockOnHand.Create(Application);
  with fmStockOnHand do
  begin
    try
      // Initial
      FShowPurchasePrice := AShowPurchasePrice;
      InitForm;
      ShowModal;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmStockOnHand.InitForm;
begin
  dmGlobal.InitFormComponent(Self);

  OpenIfClose(Application, dtsPrevWarehouse);
  OpenIfClose(Application, dtsPrevVendor);
  OpenIfClose(Application, dtsPrevCustomer);

  lcbVendorId.EditValue := '%';
  lcbCustomerId.EditValue := '%';
  lcbWarehouseId.Properties.OnEditValueChanged := OnEditValueChanged;
  lcbVendorId.Properties.OnEditValueChanged := OnEditValueChanged;
  lcbCustomerId.Properties.OnEditValueChanged := OnEditValueChanged;
  lcbWarehouseId.EditValue := '%'; // <- this trigger OnChange

  cgStockOnHandDtLevel1.Visible := FShowPurchasePrice;
  cgStockOnHandDtLevel2.Visible := FShowPurchasePrice;

  GetMonthList(cbMonth, dmGlobal.propServerDateTime);
  GetYearList(cbYear, dmGlobal.propServerDateTime);
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;
  SetReadOnly(cgvPrevStockOnHandHd);
  SetReadOnly(cgvPrevStockOnHandDt);
  SetReadOnly(cgvPrevStockExpired);
  SetReadOnly(cgvPrevSalePrice);
  SetReadOnly(cgvPrevPurchasePrice);
  SetReadOnly(cgvPrevStockCard);
  SetShapeColorWithStyle(shpMinStock, dmGlobal.stRedLight);

  if not dmShare.OptionStockIsDecimal then
  begin
    TcxCalcEditProperties(cgvPrevStockOnHandHdEndQty.Properties).DisplayFormat := NON_DECIMAL_FORMAT;
    TcxCalcEditProperties(cgvPrevStockOnHandHdMinStockQty.Properties).DisplayFormat := NON_DECIMAL_FORMAT;
    TcxCalcEditProperties(cgvPrevStockOnHandHdReorderQty.Properties).DisplayFormat := NON_DECIMAL_FORMAT;

    TcxCalcEditProperties(cgvPrevStockOnHandDtQty.Properties).DisplayFormat := NON_DECIMAL_FORMAT;
    TcxCalcEditProperties(cgvPrevStockExpiredQty.Properties).DisplayFormat := NON_DECIMAL_FORMAT;
    TcxCalcEditProperties(cgvPrevPurchasePriceQty.Properties).DisplayFormat := NON_DECIMAL_FORMAT;
    TcxCalcEditProperties(cgvPrevSalePriceQty.Properties).DisplayFormat := NON_DECIMAL_FORMAT;

    TcxCalcEditProperties(cgvPrevStockCardQty.Properties).DisplayFormat := NON_DECIMAL_FORMAT;
    cgvPrevStockCard.DataController.Summary.FooterSummaryItems.Items[0].Format := NON_DECIMAL_FORMAT;
  end;
end;


procedure TfmStockOnHand.OnEditValueChanged(Sender: TObject);
begin
  // Open header info
  if lcbWarehouseId.EditValue <> '#' then
  begin
    cgvPrevStockOnHandHd.DataController.DataSource := dsPrevStockOnHandHd;
    dtsPrevStockOnHandHd.DisableControls;
    dtsPrevStockOnHandHd.Close;
    dtsPrevStockOnHandHd.Parameters[0].Value := lcbWarehouseId.EditValue;
//    dtsPrevStockOnHandHd.Parameters[1].Value := chkHideEmptyStock.Checked;
    OpenIfClose(Application, dtsPrevStockOnHandHd);
    dtsPrevStockOnHandHd.EnableControls;
  end
  else
  begin
    cgvPrevStockOnHandHd.DataController.DataSource := dsPrevStockOnHandHdTotal;
    dtsPrevStockOnHandHdTotal.DisableControls;
    dtsPrevStockOnHandHdTotal.Close;
//    dtsPrevStockOnHandHdTotal.Parameters[0].Value := chkHideEmptyStock.Checked;
    OpenIfClose(Application, dtsPrevStockOnHandHdTotal);
    dtsPrevStockOnHandHdTotal.EnableControls;
  end;
end;

procedure TfmStockOnHand.RefreshAll;
begin
  if pcStockOnHand.ActivePageIndex = tsStock.PageIndex then
  begin
    LockRefresh(Application, dtsPrevWarehouse);
    LockRefresh(Application, dtsPrevVendor);
    LockRefresh(Application, dtsPrevCustomer);
    LockRefresh(Application, dtsPrevStockOnHandHd, 'WarehouseId;ItemId');
    LockRefreshIfOpen(Application, dtsPrevStockOnHandDt);
  end
  else
    LockRefresh(Application, qryPrevStockCard);
end;

procedure TfmStockOnHand.UpdateCustomer1Click(Sender: TObject);
begin
  btnCustomer.Click;
end;

procedure TfmStockOnHand.UpdateItem1Click(Sender: TObject);
begin
  TfmItem.ExecuteForm;
  LockRefresh(Application, dtsPrevStockOnHandHd, 'WarehouseId;ItemId');
end;

procedure TfmStockOnHand.UpdateVendor1Click(Sender: TObject);
begin
  btnVendor.Click;
end;

procedure TfmStockOnHand.UpdateWarehouse1Click(Sender: TObject);
begin
  btnWarehouse.Click;
end;

procedure TfmStockOnHand.pcStockOnHandChange(Sender: TObject);
begin
  if pcStockOnHand.ActivePageIndex = tsStockCard.PageIndex then
  begin
    MonthYearValueChange(nil); // -> Trigger dtsSalesInvoiceHd
  end;
end;

procedure TfmStockOnHand.MonthYearValueChange(Sender: TObject);
var
  CurrentDate: TDateTime;
  CurrentPeriod: string;
begin
  qryPrevStockCard.Close;
  if lcbWarehouseId.EditValue <> '#' then
  begin
    if VarToStr(cgvPrevStockOnHandHdItemId.EditValue) = '' then
      Exit;

    CurrentDate := EncodeDate(cbYear.EditValue, (cbMonth.ItemIndex + 1), 1);
    CurrentPeriod := FormatDateTime('YYYYMM', CurrentDate);
    qryPrevStockCard.Parameters[0].Value := CurrentDate;
    qryPrevStockCard.Parameters[1].Value := cgvPrevStockOnHandHdItemId.EditValue;
    qryPrevStockCard.Parameters[2].Value := cgvPrevStockOnHandHdWarehouseId.EditValue;
    qryPrevStockCard.Parameters[3].Value := CurrentDate;
    qryPrevStockCard.Parameters[4].Value := cgvPrevStockOnHandHdItemId.EditValue;
    qryPrevStockCard.Parameters[5].Value := cgvPrevStockOnHandHdWarehouseId.EditValue;
    qryPrevStockCard.Parameters[6].Value := CurrentDate;
    qryPrevStockCard.Parameters[7].Value := cgvPrevStockOnHandHdWarehouseId.EditValue;
    qryPrevStockCard.Parameters[8].Value := cgvPrevStockOnHandHdItemId.EditValue;
    qryPrevStockCard.Parameters[9].Value := CurrentPeriod;
    qryPrevStockCard.Open;
  end;
end;

end.



