unit frmItemCategory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, dxDockPanel, cxButtons, ExtCtrls;

type
  TfmItemCategory = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayItemCategoryId: TcxGridDBColumn;
    cgvPrevDisplayItemCategoryName: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblItemCategoryId: TLabel;
    dbeItemCategoryId: TcxDBTextEdit;
    lblItemCategoryName: TLabel;
    dbeItemCategoryName: TcxDBTextEdit;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmItemCategory: TfmItemCategory;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory;

procedure TfmItemCategory.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryItemCategory, True);
end;

procedure TfmItemCategory.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryItemCategory, True);
end;

end.
