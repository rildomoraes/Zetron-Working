unit dtmManufacture;

interface

uses
  SysUtils, Classes, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxDBExtLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid;

type
  TdmManufacture = class(TDataModule)
    qryProductionUnit: TADOQuery;
    gvrManufacture: TcxGridViewRepository;
    cgvProductionUnit: TcxGridDBTableView;
    dsProductionUnit: TDataSource;
    cgvProductionUnitProductionUnitId: TcxGridDBColumn;
    cgvProductionUnitWarehouseId: TcxGridDBColumn;
    cgvProductionUnitProductionUnitCode: TcxGridDBColumn;
    cgvProductionUnitProductionUnitName: TcxGridDBColumn;
    qryEngine: TADOQuery;
    dsEngine: TDataSource;
    cgvEngine: TcxGridDBTableView;
    cgvEngineEngineId: TcxGridDBColumn;
    cgvEngineProductionUnitId: TcxGridDBColumn;
    cgvEngineEngineCode: TcxGridDBColumn;
    cgvEngineEngineName: TcxGridDBColumn;
    procedure qryProductionUnitBeforeOpen(DataSet: TDataSet);
    procedure qryEngineBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmManufacture: TdmManufacture;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory;

procedure TdmManufacture.qryEngineBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(qryProductionUnit);
end;

procedure TdmManufacture.qryProductionUnitBeforeOpen(DataSet: TDataSet);
begin
  OpenIfClose(dmInventory.qryWarehouse);
end;

end.
