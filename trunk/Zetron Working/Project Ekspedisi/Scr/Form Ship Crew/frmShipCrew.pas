unit frmShipCrew;

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
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxImageComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit, Mask, DBCtrls, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxImage;

type
  TfmShipCrew = class(TFormUniMasterEx)
    cgShipCrew: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cgShipCrewShipCrewId: TcxGridDBColumn;
    cgShipCrewShipCrewCode: TcxGridDBColumn;
    cgShipCrewShipCrewName: TcxGridDBColumn;
    cgShipCrewStorageLocationId: TcxGridDBColumn;
    cgShipCrewPositionId: TcxGridDBColumn;
    Panel1: TPanel;
    Label1: TLabel;
    dbeCrewCode: TcxDBTextEdit;
    Label2: TLabel;
    dbeCrewName: TcxDBTextEdit;
    Panel2: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    PPosisi: TPanel;
    LPosisi: TLabel;
    LWaktu: TLabel;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxImage1: TcxImage;
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmShipCrew: TfmShipCrew;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure, untConstanta;

{ TfmShipCrew }

procedure TfmShipCrew.InitForm;
begin
  inherited;
  SetReadOnly(dbeCrewCode,True,COLOR_INACTIVE);
  OpenIfClose(dmEkspedisi.qryShipCrew);
  OpenIfClose(dmEkspedisi.qryStorageLocation);
  OpenIfClose(dmEkspedisi.qryPositionCrew);
end;

procedure TfmShipCrew.RefreshAll;
begin
  inherited;
  LockRefresh(dmEkspedisi.qryStorageLocation);
  LockRefresh(dmEkspedisi.qryShipCrew);
  LockRefresh(dmEkspedisi.qryPositionCrew);
end;

end.
