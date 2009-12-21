unit frmDisplayItemStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCalc, cxCalendar, cxContainer, cxTextEdit, cxDBEdit, StdCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, MemDS, DBAccess, Uni, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, ExtCtrls;

type
  TfmDisplayItemStock = class(TFormUniDisplay)
    dsPrevItem: TDataSource;
    dsPrevStockOnHandValue: TDataSource;
    dsStockOnHand: TDataSource;
    cgStokOnHand: TcxGrid;
    cgvStockOnHand: TcxGridDBTableView;
    cgvStockOnHandwarehouseid: TcxGridDBColumn;
    cgvStockOnHandwarehousename: TcxGridDBColumn;
    cgvStockOnHandendqty: TcxGridDBColumn;
    cgvStockOnHandValue: TcxGridDBTableView;
    cgvStockOnHandValueWarehouseId: TcxGridDBColumn;
    cgvStockOnHandValueItemId: TcxGridDBColumn;
    cgvStockOnHandValueItem: TcxGridDBColumn;
    cgvStockOnHandValueDate: TcxGridDBColumn;
    cgvStockOnHandValueQty: TcxGridDBColumn;
    cgStokOnHandLevel1: TcxGridLevel;
    cgStokOnHandLevel2: TcxGridLevel;
    pnlCustom: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbeItemIdExternal: TcxDBTextEdit;
    dbeItemName: TcxDBTextEdit;
    qryPrevItem: TUniQuery;
    qryPrevStockOnHand: TUniQuery;
    qryPrevStockOnHandValue: TUniQuery;
  private
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmDisplayItemStock: TfmDisplayItemStock;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmShare, dtmInventory, frmUni;

procedure TfmDisplayItemStock.InitForm;
begin
  inherited;

  SetReadOnly(cgvStockOnHand);
  SetReadOnly(cgvStockOnHandValue);
  SetReadOnly(dbeItemIdExternal, True, COLOR_INACTIVE);
  SetReadOnly(dbeItemName, True, COLOR_INACTIVE);

  TcxCalcEditProperties(cgvStockOnHandendqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvStockOnHandValueQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  qryPrevItem.Close;
  qryPrevItem.Params[0].Value := FParamValuesArray[0];
  OpenIfClose(qryPrevItem, True);

  qryPrevStockOnHand.Close;
  qryPrevStockOnHand.Params[0].Value := FParamValuesArray[0];
  OpenIfClose(qryPrevStockOnHand, True);

  qryPrevStockOnHandValue.Close;
  qryPrevStockOnHandValue.Params[0].Value := FParamValuesArray[0];
  OpenIfClose(qryPrevStockOnHandValue, True);
end;

procedure TfmDisplayItemStock.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevItem, True);
  LockRefresh(qryPrevStockOnHand, True);
  LockRefresh(qryPrevStockOnHandValue);
end;

end.
