unit frmCosting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmUniDBPrintableEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, dxDockControl,
  DB, untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxGraphics, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxDBExtLookupComboBox, cxCalc, cxSpinEdit, ADODB, cxCheckBox,
  cxDBEdit, cxImageComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxDropDownEdit, cxCalendar, cxContainer, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxSplitter, cxGridBandedTableView,
  cxGridDBBandedTableView, cxCurrencyEdit;

type
  TfmCosting = class(TFormUniDBPrintableEx)
    cgCosting: TcxGrid;
    cgCostingEstimate: TcxGrid;
    cgCostingEstimateLevel1: TcxGridLevel;
    cgCostingItem: TcxGrid;
    cgCostingItemLevel1: TcxGridLevel;
    cgCostingLevel1: TcxGridLevel;
    cgvCosting: TcxGridDBTableView;
    cgvCostingCostingCode: TcxGridDBColumn;
    cgvCostingCostingDate: TcxGridDBColumn;
    cgvCostingEstimate: TcxGridDBTableView;
    cgvCostingEstimateCostingCode: TcxGridDBColumn;
    cgvCostingEstimateCurrencyId: TcxGridDBColumn;
    cgvCostingEstimateEstimatePercent: TcxGridDBColumn;
    cgvCostingEstimateNo: TcxGridDBColumn;
    cgvCostingEstimateValueAdded: TcxGridDBColumn;
    cgvCostingItem: TcxGridDBBandedTableView;
    cgvCostingItemCostingCode: TcxGridDBBandedColumn;
    cgvCostingItemCostingPrice: TcxGridDBBandedColumn;
    cgvCostingItemAmountRendemen: TcxGridDBBandedColumn;
    cgvCostingItemCurrencyIdCosting: TcxGridDBBandedColumn;
    cgvCostingItemCurrencyIdPurchase: TcxGridDBBandedColumn;
    cgvCostingItemCurrencyIdStock: TcxGridDBBandedColumn;
    cgvCostingItemFlagItemBOM: TcxGridDBBandedColumn;
    cgvCostingItemItemId: TcxGridDBBandedColumn;
    cgvCostingItemPurchasePrice: TcxGridDBBandedColumn;
    cgvCostingItemQty: TcxGridDBBandedColumn;
    cgvCostingItemStockPrice: TcxGridDBBandedColumn;
    cgvCostingKurs: TcxGridDBTableView;
    cgvCostingKursCostingCode: TcxGridDBColumn;
    cgvCostingKursCurrencyId: TcxGridDBColumn;
    cgvCostingKursKurs: TcxGridDBColumn;
    chkFlagClose: TcxDBCheckBox;
    cxSplitter1: TcxSplitter;
    dbeCounterPrint: TcxDBTextEdit;
    dbePurchaseOrderDate: TcxDBDateEdit;
    dbePurchaseOrderId: TcxDBTextEdit;
    dblcEmployeeId: TcxDBExtLookupComboBox;
    dblcStatusApprove: TcxDBImageComboBox;
    dblcVendorId: TcxDBExtLookupComboBox;
    dsCostingEstimate: TDataSource;
    dsCostingItem: TDataSource;
    dsCostingKurs: TDataSource;
    lblCostingCode: TLabel;
    lblCounterPrint: TLabel;
    lblEmployeeId: TLabel;
    lblItemId: TLabel;
    lblStatusApprove: TLabel;
    lblVendorPurchaseOrderId: TLabel;
    pnlCustom: TPanel;
    pnlTop: TPanel;
    qryCostingHd: TADODataSet;
    spInsertingCostingItem: TADOStoredProc;
    cgvCostingItemStatusDimensi: TcxGridDBBandedColumn;
    cgvCostingItemRendemen: TcxGridDBBandedColumn;
    cgvCostingItemPriceRendemen: TcxGridDBBandedColumn;
    cgvCostingItemPrice: TcxGridDBBandedColumn;
    cgvCostingItemStatusDimensi2: TcxGridDBBandedColumn;
    cgvCostingItemUnitMeasureCosting: TcxGridDBBandedColumn;
    cgvCostingItemUnitMeasurePurchase: TcxGridDBBandedColumn;
    cgvCostingItemUnitMeasureStock: TcxGridDBBandedColumn;
    cgCostingEstimateLevel2: TcxGridLevel;
    qryCostingItem: TADOQuery;
    qryCostingKurs: TADOQuery;
    qryCostingEstimate: TADOQuery;
    Label1: TLabel;
    procedure cgvCostingItemStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure qryCostingHdAfterPost(DataSet: TDataSet);
    procedure qryCostingHdNewRecord(DataSet: TDataSet);
    procedure cgvCostingItemNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure qryCostingItemBeforeDelete(DataSet: TDataSet);
    procedure dsCostingItemStateChange(Sender: TObject);
    procedure qryCostingEstimateNewRecord(DataSet: TDataSet);
    procedure qryCostingHdBeforePost(DataSet: TDataSet);
    procedure dsCostingItemDataChange(Sender: TObject; Field: TField);
    procedure qryCostingItemNewRecord(DataSet: TDataSet);
    procedure cgvCostingItemItemId2PropertiesInitPopup(Sender: TObject);
    procedure qryCostingItemBeforeInsert(DataSet: TDataSet);
    procedure qryCostingKursBeforeInsert(DataSet: TDataSet);
    procedure qryCostingEstimateBeforeInsert(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    FInsertState: boolean;

    procedure InsertTableCostingItem;
  public
    { Public declarations }
  end;

var
  fmCosting: TfmCosting;

implementation

{$R *.dfm}

uses dtmGlobal, dtmInventory, untProcedure, untConstanta;

procedure TfmCosting.cgvCostingItemItemId2PropertiesInitPopup(Sender: TObject);
begin
  inherited;

  Abort;
end;

procedure TfmCosting.cgvCostingItemNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;

  if AButtonIndex = 13 then
  begin
    InsertTableCostingItem;
    ADone := True;
  end;
end;

procedure TfmCosting.cgvCostingItemStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBBandedTableView) do
  begin
    if ARecord.IsData then
    begin
      if VarToStr(ARecord.Values[GetColumnByFieldName('FlagItemBOM').Index]) = '1' then
        AStyle := dmGlobal.stYellowLight;
    end;
  end;
end;

procedure TfmCosting.dsCostingItemDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if (Field = nil) then
    Exit;

  if qryCostingItem.State in [dsInsert, dsEdit] then
  begin
    // Calculate Detail
    if (CompareText(Field.FieldName, 'Qty') = 0) or
      (CompareText(Field.FieldName, 'Rendemen') = 0) or
      (CompareText(Field.FieldName, 'Price') = 0) then
    begin
      qryCostingItem.FieldByName('PriceRendemen').AsCurrency :=
        ((qryCostingItem.FieldByName('Price').AsCurrency * 100) /
        qryCostingItem.FieldByName('Rendemen').AsFloat);

      qryCostingItem.FieldByName('AmountRendemen').AsCurrency :=
        (qryCostingItem.FieldByName('Qty').AsFloat *
        qryCostingItem.FieldByName('PriceRendemen').AsCurrency);
    end;
  end;
end;

procedure TfmCosting.dsCostingItemStateChange(Sender: TObject);
begin
  inherited;

  if dsCostingItem.State in [dsBrowse] then
  begin
    cgvCostingItemItemId.Properties.ReadOnly := False;
    cgvCostingItemQty.Properties.ReadOnly := False;
  end;
end;

procedure TfmCosting.InitForm;
begin
  inherited;

  DefaultPrimaryKeyField := 'CostingCode';
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_COSTING);

  TcxCalcEditProperties(cgvCostingItemCostingPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvCostingItemPurchasePrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvCostingItemStockPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvCostingItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvCostingItemRendemen.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvCostingItemPriceRendemen.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvCostingItemAmountRendemen.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvCostingKursKurs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvCostingEstimateEstimatePercent.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvCostingEstimateValueAdded.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  SetReadOnly(dbeCounterPrint, True, COLOR_INACTIVE);
  SetReadOnly(dblcEmployeeId, True, COLOR_INACTIVE);

  OpenIfClose(dmGlobal.qryEmployee);
  OpenIfClose(dmGlobal.qryCurrencyMaster);
  OpenIfClose(dmInventory.qryItem, True);
  OpenIfClose(dmInventory.qryPrevItemBOM);
  OpenIfClose(qryCostingHd, True);
  OpenIfClose(qryCostingItem);
  OpenIfClose(qryCostingKurs);
  OpenIfClose(qryCostingEstimate);
end;

procedure TfmCosting.InsertTableCostingItem;
begin
  spInsertingCostingItem.Close;
  spInsertingCostingItem.Parameters[1].Value := qryCostingHd.FieldByName('CostingId').AsVariant;
  spInsertingCostingItem.ExecProc;
  if (spInsertingCostingItem.Parameters[0].Value <> 0) or
    (VarIsEmpty(spInsertingCostingItem.Parameters[0].Value)) then
    MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spInsertingCostingItem']), mtInformation, [mbOk], 0)
  else
    LockRefresh(qryCostingItem);
end;

procedure TfmCosting.qryCostingEstimateBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmCosting.qryCostingEstimateNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
end;

procedure TfmCosting.qryCostingHdAfterPost(DataSet: TDataSet);
begin
  inherited;

  if not FInsertState then
    Exit;

  InsertTableCostingItem;
end;

procedure TfmCosting.qryCostingHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmCosting.qryCostingHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmCosting.qryCostingItemBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  if qryCostingItem.FieldByName('FlagItemBOM').AsString = '1' then
  begin
    MessageDlg(MSG_ITEM_COSTING_FROM_BOM, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmCosting.qryCostingItemBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmCosting.qryCostingItemNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('FlagItemBOM').AsString := '0';
  Dataset.FieldByName('Qty').AsInteger := 0;
  Dataset.FieldByName('Rendemen').AsInteger := 100;
  Dataset.FieldByName('CurrencyIdCosting').AsString := 'IDR';
  Dataset.FieldByName('CostingPrice').AsInteger := 0;
  Dataset.FieldByName('CostingPriceAmount').AsInteger := 0;
  Dataset.FieldByName('CurrencyIdPurchase').AsString := 'IDR';
  Dataset.FieldByName('PurchasePrice').AsInteger := 0;
  Dataset.FieldByName('PurchasePriceAmount').AsInteger := 0;
  Dataset.FieldByName('CurrencyIdStock').AsString := 'IDR';
  Dataset.FieldByName('StockPrice').AsInteger := 0;
  Dataset.FieldByName('StockPriceAmount').AsInteger := 0;
end;

procedure TfmCosting.qryCostingKursBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmCosting.RefreshAll;
begin
  inherited;

  LockRefresh(qryCostingHd, True);
  LockRefresh(qryCostingItem);
  LockRefresh(qryCostingKurs);
  LockRefresh(qryCostingEstimate);
end;

end.
