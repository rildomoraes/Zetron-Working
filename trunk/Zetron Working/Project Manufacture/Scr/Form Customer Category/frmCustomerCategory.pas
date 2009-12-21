unit frmCustomerCategory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
   dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, 
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxContainer, cxTextEdit, cxDBEdit, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, DBActns,
  ActnList, dxDockPanel, cxButtons, ExtCtrls, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxSkinscxPCPainter, dxSkinDarkRoom, dxSkinFoggy,
  dxSkinSeven, dxSkinSharp, dxSkinSpringTime, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, ADODB;

type
  TfmCustomerCategory = class(TFormUniMasterEx)
    lblCategoryName: TLabel;
    dbeCategoryName: TcxDBTextEdit;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    CategoryName: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    qryCustomerCategory: TADOQuery;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmCustomerCategory: TfmCustomerCategory;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal;

procedure TfmCustomerCategory.InitForm;
begin
  inherited;

  OpenIfClose(dsDefault.DataSet);
end;

procedure TfmCustomerCategory.RefreshAll;
begin
  inherited;

  LockRefresh(dsDefault.DataSet);
end;

end.
