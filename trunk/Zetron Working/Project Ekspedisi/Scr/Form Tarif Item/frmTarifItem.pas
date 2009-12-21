unit frmTarifItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, DB, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDBExtLookupComboBox, ADODB,
  cxDropDownEdit, cxCalc, cxDBEdit, cxContainer, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxImageComboBox, cxCurrencyEdit;

type
  TfmTarifItem = class(TFormUniMasterEx)
    cgvPrevTarifItem: TcxGridDBTableView;
    cgPrevTarifItemLevel1: TcxGridLevel;
    cgPrevTarifItem: TcxGrid;
    qryPrevTarifType: TADOQuery;
    qryPrevRoute: TADOQuery;
    cxGridViewRepository1: TcxGridViewRepository;
    dsPrevTarifType: TDataSource;
    dsPrevRoute: TDataSource;
    cgvPrevTarifType: TcxGridDBTableView;
    cgvPrevTarifTypeTarifTypeId: TcxGridDBColumn;
    cgvPrevTarifTypeTarifTypeCode: TcxGridDBColumn;
    cgvPrevTarifTypeTarifTypeName: TcxGridDBColumn;
    cgvPrevTarifTypeStatusDimensi: TcxGridDBColumn;
    cgvPrevRoute: TcxGridDBTableView;
    cgvPrevRouteRouteId: TcxGridDBColumn;
    cgvPrevRouteRouteCode: TcxGridDBColumn;
    cgvPrevRouteRouteName: TcxGridDBColumn;
    cgvPrevRouteDepatureCityId: TcxGridDBColumn;
    cgvPrevRouteDestinationCityId: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbeTarifType: TcxDBExtLookupComboBox;
    dbeRoute: TcxDBExtLookupComboBox;
    Label4: TLabel;
    cgvPrevTarifItemTarifTypeId: TcxGridDBColumn;
    cgvPrevTarifItemRouteId: TcxGridDBColumn;
    cgvPrevTarifItemPrice: TcxGridDBColumn;
    cgvPrevTarifItemPriceFra: TcxGridDBColumn;
    dbePriceFra: TcxDBCurrencyEdit;
    dbePrice: TcxDBCurrencyEdit;
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmTarifItem: TfmTarifItem;

implementation

{$R *.dfm}
uses dtmGlobal, dtmEkspedisi, untProcedure;

{ TfmTarifItem }

procedure TfmTarifItem.InitForm;
begin
  inherited;

  OpenIfClose(dmEkspedisi.qryTarifItem);
  OpenIfClose(qryPrevTarifType);
  OpenIfClose(qryPrevRoute);
end;

procedure TfmTarifItem.RefreshAll;
begin
  inherited;

  LockRefresh(dmEkspedisi.qryTarifItem);
  LockRefresh(qryPrevTarifType);
  LockRefresh(qryPrevRoute);

end;

end.
