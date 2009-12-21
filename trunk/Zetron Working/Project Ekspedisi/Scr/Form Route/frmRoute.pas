unit frmRoute;

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
  cxGridTableView, cxGridDBTableView, cxGrid, Mask, DBCtrls,
  cxDBExtLookupComboBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxContainer, cxTextEdit, cxDBEdit;

type
  TfmRoute = class(TFormUniMasterEx)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1RouteId: TcxGridDBColumn;
    cxGrid1DBTableView1RouteCode: TcxGridDBColumn;
    cxGrid1DBTableView1RouteName: TcxGridDBColumn;
    cxGrid1DBTableView1DepatureCityId: TcxGridDBColumn;
    cxGrid1DBTableView1DestinationCityId: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbeRouteCode: TcxDBTextEdit;
    dbeRouteName: TcxDBTextEdit;
    dbeDepatureCityId: TcxDBExtLookupComboBox;
    dbeDestinationCityId: TcxDBExtLookupComboBox;
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmRoute: TfmRoute;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure, untConstanta;

{ TFormUniMasterEx1 }

procedure TfmRoute.InitForm;
begin
  inherited;
  setreadonly(dbeRouteCode, True, COLOR_INACTIVE);
  OpenIfClose(dmEkspedisi.qryRoute);
  OpenIfClose(dmGlobal.qryCity);
end;

procedure TfmRoute.RefreshAll;
begin
  inherited;
  LockRefresh(dmEkspedisi.qryRoute);
end;

end.
