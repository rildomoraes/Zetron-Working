unit frmCity;

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
  TfmCity = class(TFormUniMasterEx)
    lblProvinceId: TLabel;
    dblcProvinceId: TcxDBExtLookupComboBox;
    lblCityId: TLabel;
    dbeCityId: TcxDBTextEdit;
    lblCityName: TLabel;
    dbeCityName: TcxDBTextEdit;
    lblCityExt: TLabel;
    dbeCityExt: TcxDBTextEdit;
    cgMasterSetup: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayCountryId: TcxGridDBColumn;
    cgvPrevDisplayProvinceId: TcxGridDBColumn;
    cgvPrevDisplayCityId: TcxGridDBColumn;
    cgvPrevDisplayCityName: TcxGridDBColumn;
    cgvPrevDisplayCityExt: TcxGridDBColumn;
    cgMasterSetupLevel1: TcxGridLevel;
    Label9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  protected
    procedure RefreshAll; override;
    procedure InitForm; override;
  public
    { Public declarations }
  end;

var
  fmCity: TfmCity;

implementation

{$R *.dfm}

uses untProcedure, dtmGlobal;

procedure TfmCity.InitForm;
begin
  inherited;

  OpenIfClose(dmGlobal.qryProvince);
  OpenIfClose(dmGlobal.qryCity);
end;

procedure TfmCity.RefreshAll;
begin
  inherited;

  LockRefresh(dmGlobal.qryProvince);
  LockRefresh(dmGlobal.qryCity);
end;

end.


