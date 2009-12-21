unit frmTallyMan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, StdCtrls, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, dxDockControl, DB, untIvPositionDevExpress,
  untIvPositionStandard, DBActns, ActnList, dxDockPanel, cxButtons, ExtCtrls,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfmTallyman = class(TFormUniMasterEx)
    lblCityId: TLabel;
    dbeTallyManId: TcxDBTextEdit;
    dbeTallyManName: TcxDBTextEdit;
    lblCityName: TLabel;
    cgMasterSetup: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgMasterSetupLevel1: TcxGridLevel;
    cgvPrevDisplayTallymanCode: TcxGridDBColumn;
    cgvPrevDisplayTallymanName: TcxGridDBColumn;
  private
    { Private declarations }
  protected
    procedure RefreshAll; override;
    procedure InitForm; override;
  public
    { Public declarations }
  end;

var
  fmTallyman: TfmTallyman;

implementation

{$R *.dfm}
uses untProcedure, dtmGlobal, dtmInventory;

{ TFormUniMasterEx1 }

procedure TfmTallyman.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryTallyMan);
end;

procedure TfmTallyman.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryTallyMan);
end;

end.
