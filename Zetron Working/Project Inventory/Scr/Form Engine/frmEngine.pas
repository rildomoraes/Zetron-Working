unit frmEngine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxCalc, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit, cxDBEdit, StdCtrls,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxButtons, ExtCtrls;

type
  TfmEngine = class(TFormUniMasterEx)
    lblCategoryId: TLabel;
    dbeEngineCode: TcxDBTextEdit;
    lblCategoryName: TLabel;
    dbeEngineName: TcxDBTextEdit;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    CategoryId: TcxGridDBColumn;
    CategoryName: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    pnlTop: TPanel;
    cgvEngineJob: TcxGridDBTableView;
    cgEngineJobLevel1: TcxGridLevel;
    cgEngineJob: TcxGrid;
    qryEngineJob: TUniQuery;
    dsEngineJob: TDataSource;
    cgvEngineJobenginecode: TcxGridDBColumn;
    cgvEngineJobjobcode: TcxGridDBColumn;
    dbeEngineGroup: TcxDBExtLookupComboBox;
    lblEngineGroup: TLabel;
    cgvPrevDisplayenginegroupcode: TcxGridDBColumn;
    cgvEngineJobdefaultcogs: TcxGridDBColumn;
    procedure qryEngineJobNewRecord(DataSet: TDataSet);
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

uses untProcedure, dtmGlobal, dtmInventory;

procedure TfmEngine.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryJobType);
  OpenIfClose(dmInventory.qryEngineGroup);
  OpenIfClose(dmInventory.qryEngine);
  OpenIfClose(qryEngineJob);
end;

procedure TfmEngine.qryEngineJobNewRecord(DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;
end;

procedure TfmEngine.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryEngine, True);
  LockRefresh(qryEngineJob);
end;

end.
