unit frmCategory;

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
  TfmCategory = class(TFormUniMasterEx)
    lblCategoryId: TLabel;
    dbeCategoryId: TcxDBTextEdit;
    lblCategoryName: TLabel;
    dbeCategoryName: TcxDBTextEdit;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    CategoryId: TcxGridDBColumn;
    CategoryName: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmCategory: TfmCategory;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmGeneral;

procedure TfmCategory.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryCategory);
end;

procedure TfmCategory.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryCategory, True);
end;

end.
