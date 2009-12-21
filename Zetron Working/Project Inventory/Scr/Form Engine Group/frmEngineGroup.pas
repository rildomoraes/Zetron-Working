unit frmEngineGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
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
  TfmEngineGroup = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    CategoryId: TcxGridDBColumn;
    CategoryName: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblCategoryId: TLabel;
    dbeJobId: TcxDBTextEdit;
    lblCategoryName: TLabel;
    dbeJobName: TcxDBTextEdit;
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmEngineGroup: TfmEngineGroup;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory;

{ TfmEngineGroup }

procedure TfmEngineGroup.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryEngineGroup);
end;

procedure TfmEngineGroup.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryEngineGroup, True);
end;

end.
