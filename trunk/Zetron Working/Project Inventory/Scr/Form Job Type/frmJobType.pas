unit frmJobType;

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
  TfmJobType = class(TFormUniMasterEx)
    lblCategoryId: TLabel;
    dbeJobId: TcxDBTextEdit;
    lblCategoryName: TLabel;
    dbeJobName: TcxDBTextEdit;
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
  fmJobType: TfmJobType;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory;

procedure TfmJobType.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryJobType);
end;

procedure TfmJobType.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryJobType, True);
end;

end.
