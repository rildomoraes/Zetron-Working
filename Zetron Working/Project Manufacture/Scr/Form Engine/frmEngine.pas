unit frmEngine;

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
  DBActns, ActnList, dxDockPanel, cxButtons, ExtCtrls, cxCalc, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TfmEngine = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayEngineId: TcxGridDBColumn;
    cgvPrevDisplayEngineName: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblCode: TLabel;
    dbeEngineName: TcxDBTextEdit;
    dbeEngineCode: TcxDBTextEdit;
    Label2: TLabel;
    cgvPrevDisplayEngineCode: TcxGridDBColumn;
    Label1: TLabel;
    dbeProductionUnitId: TcxDBExtLookupComboBox;
    cgvPrevDisplayProductionUnitId: TcxGridDBColumn;
    Label3: TLabel;
    dbeKapasitas: TcxDBCalcEdit;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmEngine: TfmEngine;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmManufacture;

procedure TfmEngine.InitForm;
begin
  inherited;

  OpenIfClose(dmManufacture.qryEngine, True);
end;

procedure TfmEngine.RefreshAll;
begin
  inherited;

  LockRefresh(dmManufacture.qryEngine, True);
end;

end.
