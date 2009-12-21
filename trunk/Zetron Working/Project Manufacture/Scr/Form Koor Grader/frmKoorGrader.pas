unit frmKoorGrader;

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
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl, DB,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TfmKoorGrader = class(TFormUniMasterEx)
    lblCityId: TLabel;
    dbeKoorGraderCode: TcxDBTextEdit;
    dbeKoorGraderName: TcxDBTextEdit;
    lblCityName: TLabel;
    cgMasterSetup: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgMasterSetupLevel1: TcxGridLevel;
    cgvPrevDisplayKoorGraderCode: TcxGridDBColumn;
    cgvPrevDisplayKoorGraderName: TcxGridDBColumn;
  private
    { Private declarations }
  protected
    procedure RefreshAll; override;
    procedure InitForm; override;
  public
    { Public declarations }
  end;

var
  fmKoorGrader: TfmKoorGrader;

implementation

{$R *.dfm}
uses untProcedure, dtmGlobal, dtmInventory;

{ TfmKoorGrader }

procedure TfmKoorGrader.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryKoorGrader);
end;

procedure TfmKoorGrader.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryKoorGrader);
end;

end.
