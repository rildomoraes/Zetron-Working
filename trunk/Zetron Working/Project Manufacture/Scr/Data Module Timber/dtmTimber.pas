unit dtmTimber;

interface

uses
  Classes, ADODB, DB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxDBExtLookupComboBox, cxImageComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid;

type
  TLogCalculation = (lcRumus, lcTabel);

  TdmTimber = class(TDataModule)
    cgvPrevItemBalok: TcxGridDBTableView;
    cgvPrevItemBalokItemCategoryId: TcxGridDBColumn;
    cgvPrevItemBalokItemCode: TcxGridDBColumn;
    cgvPrevItemBalokItemId: TcxGridDBColumn;
    cgvPrevItemBalokItemName: TcxGridDBColumn;
    cgvPrevItemBalokItemProperty1: TcxGridDBColumn;
    cgvPrevItemBalokMaterialId: TcxGridDBColumn;
    cgvPrevItemLog: TcxGridDBTableView;
    cgvPrevItemLogItemCategoryId: TcxGridDBColumn;
    cgvPrevItemLogItemCode: TcxGridDBColumn;
    cgvPrevItemLogItemId: TcxGridDBColumn;
    cgvPrevItemLogItemName: TcxGridDBColumn;
    cgvPrevItemLogItemProperty1: TcxGridDBColumn;
    cgvPrevItemLogMaterialId: TcxGridDBColumn;
    cgvPeriodePembelian: TcxGridDBTableView;
    dsPrevItemBalok: TDataSource;
    dsPrevItemLog: TDataSource;
    dsPrevPO: TDataSource;
    dsPrevRoughSize: TDataSource;
    dsPurchaseInvoice: TDataSource;
    gvrInventory: TcxGridViewRepository;
    qryPrevItemBalok: TADOQuery;
    qryPrevItemLog: TADOQuery;
    qryPrevPO: TADOQuery;
    qryPurchaseInvoice: TADOQuery;
    qryRoughSize: TADOQuery;
    cgvPeriodePembelianPurchaseInvoiceId: TcxGridDBColumn;
    cgvPeriodePembelianVendorId: TcxGridDBColumn;
    cgvPeriodePembelianEmployeeId: TcxGridDBColumn;
    cgvPeriodePembelianPurchaseInvoiceCode: TcxGridDBColumn;
    cgvPeriodePembelianPurchaseInvoiceDate: TcxGridDBColumn;
    cgvPeriodePembelianSupplierInvoiceNo: TcxGridDBColumn;
    cgvPeriodePembelianCounterPrint: TcxGridDBColumn;
    cgvPeriodePembelianInternalMemo: TcxGridDBColumn;
    cgvPeriodePembelianLastModified: TcxGridDBColumn;
    cgvPeriodePembelianStatementMemo: TcxGridDBColumn;
    cgvPeriodePembelianStatusApprove: TcxGridDBColumn;
    qryTableLogHd: TADOQuery;
    dsPrevTableLogHd: TDataSource;
    cgvPrevTableLogHd: TcxGridDBTableView;
    cgvPrevTableLogHdTableLogId: TcxGridDBColumn;
    cgvPrevTableLogHdTableLogName: TcxGridDBColumn;
    qryGetLogM3: TADOQuery;
    procedure qryPrevItemLogBeforeOpen(DataSet: TDataSet);
    procedure qryPrevItemBalokBeforeOpen(DataSet: TDataSet);
    procedure qryRoughSizeBeforeOpen(DataSet: TDataSet);
  private

  public
    function GetLogM3(AUsingTable, AMaterialId: integer;
      ADiameter_M, APanjang_M: Double): Double;
  end;

var
  dmTimber: TdmTimber;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal, dtmInventory, Variants;

function TdmTimber.GetLogM3(AUsingTable, AMaterialId: integer;
  ADiameter_M, APanjang_M: Double): Double;
begin
  if AUsingTable = 0 then
  begin
    Result := Sqr(ADiameter_M) * APanjang_M * 0.7854;
  end
  else
  begin
    OpenIfClose(qryGetLogM3, True);
    if qryGetLogM3.Locate('MaterialId;D_Meter;P_Meter',
      VarArrayOf([AMaterialId, ADiameter_M, APanjang_M]), [loCaseInsensitive]) then
      Result := qryGetLogM3.FieldByName('M3').AsFloat
    else
      Result := 0;
  end;
end;

procedure TdmTimber.qryPrevItemBalokBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(dmInventory.qryItemCategory);
  OpenIfClose(dmInventory.qryMaterial);
end;

procedure TdmTimber.qryPrevItemLogBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(dmInventory.qryItemCategory);
  OpenIfClose(dmInventory.qryMaterial);
end;

procedure TdmTimber.qryRoughSizeBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(dmInventory.qryMaterial);
end;

end.

