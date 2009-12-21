unit frmTrayek;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxContainer, cxTextEdit;

type
  TfmTrayek = class(TFormUniMasterEx)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevShip: TcxGridDBTableView;
    cgvPrevShipShipId: TcxGridDBColumn;
    cgvPrevShipShipCrewId: TcxGridDBColumn;
    cgvPrevShipStorageLocationId: TcxGridDBColumn;
    cgvPrevShipShipCode: TcxGridDBColumn;
    cgvPrevShipShipName: TcxGridDBColumn;
    cgvPrevShipEngineName: TcxGridDBColumn;
    cgvPrevShipOrigin: TcxGridDBColumn;
    cgvPrevShipYearMade: TcxGridDBColumn;
    cgvPrevShipP: TcxGridDBColumn;
    cgvPrevShipL: TcxGridDBColumn;
    cgvPrevShipT: TcxGridDBColumn;
    cgvPrevShipGrossTon: TcxGridDBColumn;
    cgvPrevShipNettoTon: TcxGridDBColumn;
    cgvPrevRoute: TcxGridDBTableView;
    cgvPrevRouteRouteId: TcxGridDBColumn;
    cgvPrevRouteRouteCode: TcxGridDBColumn;
    cgvPrevRouteRouteName: TcxGridDBColumn;
    cgvPrevRouteDepatureCityId: TcxGridDBColumn;
    cgvPrevRouteDestinationCityId: TcxGridDBColumn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TrayekCode: TcxGridDBColumn;
    cxGrid1DBTableView1ShipId: TcxGridDBColumn;
    cxGrid1DBTableView1RouteId: TcxGridDBColumn;
    cxGrid1DBTableView1TrayekDateOpen: TcxGridDBColumn;
    cxGrid1DBTableView1TrayekDateClose: TcxGridDBColumn;
    cxGrid1DBTableView1TrayekDateGo: TcxGridDBColumn;
    Label6: TLabel;
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmTrayek: TfmTrayek;

implementation

uses dtmGlobal, dtmEkspedisi, untProcedure;
{$R *.dfm}

{ TfmTrayek }

procedure TfmTrayek.InitForm;
begin
  inherited;
  OpenIfClose(dmEkspedisi.qryDaftarMuatKapal);
  OpenIfClose(dmEkspedisi.qryRoute);
  OpenIfClose(dmEkspedisi.qryShip);
end;

procedure TfmTrayek.RefreshAll;
begin
  inherited;
  LockRefresh(dmEkspedisi.qryDaftarMuatKapal);
  LockRefresh(dmEkspedisi.qryRoute);
  LockRefresh(dmEkspedisi.qryShip);
end;

end.
