unit frmWarehouse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxNavigator,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxTextEdit, cxDBExtLookupComboBox, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMemo, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxContainer, cxCheckBox,
  StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxButtons, ExtCtrls;

type
  TfmWarehouse = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayWarehouseId: TcxGridDBColumn;
    cgvPrevDisplayWarehouseName: TcxGridDBColumn;
    cgvPrevDisplayContactPerson: TcxGridDBColumn;
    cgvPrevDisplayAddress: TcxGridDBColumn;
    cgvPrevDisplayCityId: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    pnlHeader: TPanel;
    dbchkInactive: TcxDBCheckBox;
    dbeAddress: TcxDBTextEdit;
    dbeContactPerson: TcxDBTextEdit;
    dbeWarehouseId: TcxDBTextEdit;
    dbeWarehouseName: TcxDBTextEdit;
    dblcCityId: TcxDBExtLookupComboBox;
    dbmNotes: TcxDBMemo;
    lblAddress: TLabel;
    lblContactPerson: TLabel;
    lblIdCity: TLabel;
    lblIdWarehouse: TLabel;
    lblWarehouseName: TLabel;
    pnlDetail: TPanel;
    cgWarehouseRack: TcxGrid;
    cgvWarehouseRack: TcxGridDBTableView;
    cgWarehouseRackLevel1: TcxGridLevel;
    cgvWarehouseRackrackcode: TcxGridDBColumn;
    cgvWarehouseRackrackname: TcxGridDBColumn;
    cgvWarehouseRackwarehouseid: TcxGridDBColumn;
    cgvWarehouseRackracklocation1: TcxGridDBColumn;
    cgvWarehouseRackracklocation2: TcxGridDBColumn;
    cgvWarehouseRackracklocation3: TcxGridDBColumn;
    cgvWarehouseRackracklocation4: TcxGridDBColumn;
    cgvWarehouseRackracklocation5: TcxGridDBColumn;
    cgvWarehouseRackracklocation6: TcxGridDBColumn;
    cgvWarehouseRackracklocation7: TcxGridDBColumn;
    qryWarehouseRack: TUniQuery;
    dsPrevWarehouseRack: TDataSource;
    procedure dsDefaultStateChange(Sender: TObject);
    procedure cgvNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure qryWarehouseRackBeforeInsert(DataSet: TDataSet);
    procedure qryWarehouseRackNewRecord(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmWarehouse: TfmWarehouse;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmGeneral;

procedure TfmWarehouse.cgvNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
var
  TableView: TcxGridDBTableView;
begin
  if Sender is TcxNavigatorControlButtons then
  begin
    if TcxNavigatorControlButtons(Sender).Navigator.GetNavigatorOwner is TcxGridDBTableView then
    begin
      TableView := TcxGridDBTableView(TcxNavigatorControlButtons(Sender).Navigator.GetNavigatorOwner);

      if AButtonIndex = NAVIGATOR_BUTTON_REFRESH then
      begin
        LockRefresh(TableView.DataController.DataSource.DataSet);
        ADone := True;
      end;
    end;
  end;
end;

procedure TfmWarehouse.dsDefaultStateChange(Sender: TObject);
begin
  inherited;
  if dmGeneral.qryWarehouse.State in [dsBrowse] then
  begin
    SetReadOnly(dbeWarehouseId, False);
  end;
end;

procedure TfmWarehouse.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryCity);
  OpenIfClose(dmGeneral.qryWarehouse);
  OpenIfClose(qryWarehouseRack);
end;

procedure TfmWarehouse.qryWarehouseRackBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmWarehouse.qryWarehouseRackNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('WarehouseID').AsString := dmGeneral.qryWarehouse.FieldByName('WarehouseID').AsString;
end;

procedure TfmWarehouse.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryCity);
  LockRefresh(dmGeneral.qryWarehouse, True);
  LockRefresh(qryWarehouseRack);
end;

end.

