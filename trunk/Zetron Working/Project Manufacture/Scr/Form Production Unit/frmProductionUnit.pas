unit frmProductionUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  DBActns, ActnList, dxDockPanel, cxButtons, ExtCtrls, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TfmProductionUnit = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayProductionUnitId: TcxGridDBColumn;
    cgvPrevDisplayProductionUnitName: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblCode: TLabel;
    dbeProductionUnitName: TcxDBTextEdit;
    dbeProductionUnitCode: TcxDBTextEdit;
    Label2: TLabel;
    cgvPrevDisplayProductionUnitCode: TcxGridDBColumn;
    Label1: TLabel;
    dbeWarehouseId: TcxDBExtLookupComboBox;
    cgvPrevDisplayWarehouseId: TcxGridDBColumn;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmProductionUnit: TfmProductionUnit;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmManufacture, dtmInventory;

procedure TfmProductionUnit.InitForm;
begin
  inherited;

  OpenIfClose(dmManufacture.qryProductionUnit, True);
end;

procedure TfmProductionUnit.RefreshAll;
begin
  inherited;

  LockRefresh(dmManufacture.qryProductionUnit, True);
end;

end.
