unit frmShift;

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
  cxMaskEdit, cxSpinEdit, cxTimeEdit, cxDBEdit, cxContainer, cxTextEdit,
  StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxButtons, ExtCtrls;

type
  TfmShift = class(TFormUniMasterEx)
    lblCategoryId: TLabel;
    dbeShiftCode: TcxDBTextEdit;
    lblCategoryName: TLabel;
    dbeShiftName: TcxDBTextEdit;
    lblEngineGroup: TLabel;
    dbeStartTime: TcxDBTimeEdit;
    dbeEndTime: TcxDBTimeEdit;
    Label1: TLabel;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgPrevDisplayLevel1: TcxGridLevel;
    cgvPrevDisplayshiftcode: TcxGridDBColumn;
    cgvPrevDisplayshiftname: TcxGridDBColumn;
    cgvPrevDisplaystarttime: TcxGridDBColumn;
    cgvPrevDisplayendtime: TcxGridDBColumn;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmShift: TfmShift;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal, dtmInventory;

procedure TfmShift.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryShift);
end;

procedure TfmShift.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryShift);
end;

end.
