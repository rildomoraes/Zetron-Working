unit frmEngineGroupJob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBEdit,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxButtons, ExtCtrls;

type
  TfmEngineGroupJob = class(TFormUniMasterEx)
    lblCategoryId: TLabel;
    lblGroupEngine: TLabel;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgPrevDisplayLevel1: TcxGridLevel;
    dbeEngineGroup: TcxDBExtLookupComboBox;
    lblJobType: TLabel;
    dbeEngineGroupJobCode: TcxDBTextEdit;
    dbeJobTypeCode: TcxDBExtLookupComboBox;
    cgvPrevDisplayEngineGroupJobCode: TcxGridDBColumn;
    cgvPrevDisplayenginegroupcode: TcxGridDBColumn;
    cgvPrevDisplayjobcode: TcxGridDBColumn;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmEngineGroupJob: TfmEngineGroupJob;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory;

procedure TfmEngineGroupJob.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryEngineGroup);
  OpenIfClose(dmInventory.qryJobType);
  OpenIfClose(dmInventory.qryEngineGroupJob);
end;

procedure TfmEngineGroupJob.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryEngineGroupJob, True);
end;

end.
