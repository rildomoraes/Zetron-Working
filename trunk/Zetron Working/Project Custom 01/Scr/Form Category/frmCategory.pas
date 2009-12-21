unit frmCategory;

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
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxTextEdit, cxDBEdit,
  StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, DBActns, ActnList, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmCategory = class(TFormUniMasterEx)
    cgCategorySetup: TcxGrid;
    cgvCategory: TcxGridDBTableView;
    cgvCategoryvcIdCategory: TcxGridDBColumn;
    cgvCategoryvcCategoryName: TcxGridDBColumn;
    cgCategorySetupLevel1: TcxGridLevel;
    lblIdCategory: TLabel;
    lblCategoryName: TLabel;
    dbeIdCategory: TcxDBTextEdit;
    dbeCategoryName: TcxDBTextEdit;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCategory: TfmCategory;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory;

procedure TfmCategory.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryCategory);
end;

procedure TfmCategory.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryCategory);
end;

end.
