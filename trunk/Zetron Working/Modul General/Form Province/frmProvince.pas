unit frmProvince;

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
  cxDBLookupEdit, StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, ActnList,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, dxDockPanel,
  cxButtons, ExtCtrls;

type
  TfmProvince = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayCountryId: TcxGridDBColumn;
    cgvPrevDisplayProvinceId: TcxGridDBColumn;
    cgvPrevDisplayProvinceName: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblCountryId: TLabel;
    dblcCountryId: TcxDBExtLookupComboBox;
    lblProvinceId: TLabel;
    dbeProvinceId: TcxDBTextEdit;
    lblProvinceName: TLabel;
    dbeProvinceName: TcxDBTextEdit;
    Label9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmProvince: TfmProvince;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmProvince.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryCountry);
  OpenIfClose(dmGlobal.qryProvince);
end;

procedure TfmProvince.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryCountry);
  LockRefresh(dmGlobal.qryProvince);
end;

end.
