unit frmRoughSize;

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
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  DBActns, ActnList, dxDockPanel, cxButtons, ExtCtrls, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxDBExtLookupComboBox, cxLookupEdit, cxDBLookupEdit,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxSkinscxPCPainter;

type
  TfmRoughSize = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayRoughSizeId: TcxGridDBColumn;
    cgvPrevDisplayRoughSizeName: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblCode: TLabel;
    Label1: TLabel;
    dbeMin_T: TcxDBCalcEdit;
    dbeMax_T: TcxDBCalcEdit;
    Label2: TLabel;
    dbeMin_P: TcxDBCalcEdit;
    Label3: TLabel;
    dbeMax_P: TcxDBCalcEdit;
    Label4: TLabel;
    cgvPrevDisplayMaterialCategoryId: TcxGridDBColumn;
    Label5: TLabel;
    dblcMaterialCategoryId: TcxDBExtLookupComboBox;
    dbeRoughSizeName: TcxDBTextEdit;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmRoughSize: TfmRoughSize;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory, dtmTimber;

procedure TfmRoughSize.InitForm;
begin
  inherited;

  OpenIfClose(dmTimber.qryRoughSize, True);
end;

procedure TfmRoughSize.RefreshAll;
begin
  inherited;

  LockRefresh(dmTimber.qryRoughSize, True);
end;

end.
