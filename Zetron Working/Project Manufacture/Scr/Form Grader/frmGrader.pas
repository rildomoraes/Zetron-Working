unit frmGrader;

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
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer, cxTextEdit,
  cxDBEdit;

type
  TfmGrader = class(TFormUniMasterEx)
    lblCityId: TLabel;
    dbeGraderCode: TcxDBTextEdit;
    dbeGraderName: TcxDBTextEdit;
    lblCityName: TLabel;
    cgMasterSetup: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgMasterSetupLevel1: TcxGridLevel;
    cgvPrevDisplayGraderCode: TcxGridDBColumn;
    cgvPrevDisplayGraderName: TcxGridDBColumn;
  private
    { Private declarations }
  protected
    procedure RefreshAll; override;
    procedure InitForm; override;
  public
    { Public declarations }
  end;

var
  fmGrader: TfmGrader;

implementation

{$R *.dfm}
uses untProcedure, dtmGlobal, dtmInventory;

{ TfmGrader }

procedure TfmGrader.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryGrader);
end;

procedure TfmGrader.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryGrader);
end;

end.
