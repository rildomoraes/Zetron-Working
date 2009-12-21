unit frmReportCategory;

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
  cxCheckBox, cxDBEdit, cxContainer, cxTextEdit, StdCtrls, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, ActnList, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, dxDockPanel, cxButtons,
  ExtCtrls;

type
  TfmReportCategory = class(TFormUniMasterEx)
    lblCountryName: TLabel;
    dbeReportCategory: TcxDBTextEdit;
    cgCountrySetup: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayReportCategoryName: TcxGridDBColumn;
    cgvPrevDisplayReportCategoryId: TcxGridDBColumn;
    cgCountrySetupLevel1: TcxGridLevel;
    dbeFlagHide: TcxDBCheckBox;
  private
    { Private declarations }
  protected
    { Protected declarations }
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;


var
  fmReportCategory: TfmReportCategory;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal;

procedure TfmReportCategory.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryReportCategory);
end;

procedure TfmReportCategory.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryReportCategory);
end;

end.
