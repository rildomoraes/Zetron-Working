unit frmShipRoute;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDBExtLookupComboBox, ADODB,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBEdit;

type
  TfmShipRoute = class(TFormUniMasterEx)
    cgvDisplay: TcxGridDBTableView;
    cgDisplayLevel1: TcxGridLevel;
    cgDisplay: TcxGrid;
    cgvDisplayShipId: TcxGridDBColumn;
    cgvDisplayRouteId: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    dbeRouteID: TcxDBExtLookupComboBox;
    dbeShipId: TcxDBExtLookupComboBox;
    Label9: TLabel;
    Label3: TLabel;
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmShipRoute: TfmShipRoute;

implementation

{$R *.dfm}
uses dtmGlobal, dtmEkspedisi, untProcedure;

{ TfmShipRoute }

procedure TfmShipRoute.InitForm;
begin
  inherited;
  OpenIfClose(dmEkspedisi.qryShip);
  OpenIfClose(dmEkspedisi.qryRoute);
  OpenIfClose(dmEkspedisi.qryShipRoute);
end;

procedure TfmShipRoute.RefreshAll;
begin
  inherited;
  LockRefresh(dmEkspedisi.qryShip);
  LockRefresh(dmEkspedisi.qryRoute);
  LockRefresh(dmEkspedisi.qryShipRoute);
end;

end.
