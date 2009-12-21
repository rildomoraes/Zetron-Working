unit frmTarifType;

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
  cxGridTableView, cxGridDBTableView, cxGrid, cxImageComboBox, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxContainer, cxTextEdit, ADODB, cxCurrencyEdit,
  cxDBExtLookupComboBox;

type
  TfmTarifType = class(TFormUniMasterEx)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TarifTypeId: TcxGridDBColumn;
    cxGrid1DBTableView1TarifTypeCode: TcxGridDBColumn;
    cxGrid1DBTableView1TarifTypeName: TcxGridDBColumn;
    cxGrid1DBTableView1StatusDimensi: TcxGridDBColumn;
    pnlHeader: TPanel;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dbeTarifTypeCode: TcxDBTextEdit;
    dbeTarifTypeName: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnlDetail: TPanel;
    cgTariffItem: TcxGrid;
    cgvTariffItem: TcxGridDBTableView;
    cgTariffItemLevel1: TcxGridLevel;
    qryTariffItem: TADOQuery;
    dsTariffItem: TDataSource;
    cgvTariffItemTarifTypeId: TcxGridDBColumn;
    cgvTariffItemRouteId: TcxGridDBColumn;
    cgvTariffItemPrice: TcxGridDBColumn;
    cgvTariffItemPriceFra: TcxGridDBColumn;
    cgvPrevRoute: TcxGridDBTableView;
    cgvPrevRouteRouteId: TcxGridDBColumn;
    cgvPrevRouteRouteCode: TcxGridDBColumn;
    cgvPrevRouteRouteName: TcxGridDBColumn;
    cgvPrevRouteDepatureCityId: TcxGridDBColumn;
    cgvPrevRouteDestinationCityId: TcxGridDBColumn;
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmTarifType: TfmTarifType;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure;

{ TFormUniMasterEx1 }

procedure TfmTarifType.InitForm;
begin
  inherited;
  SetReadOnly(dbeTarifTypeCode);
  OpenIfClose(dmEkspedisi.qryTarifType);
  OpenIfClose(qryTariffItem);
  OpenIfClose(dmEkspedisi.qryRoute);
end;

procedure TfmTarifType.RefreshAll;
begin
  inherited;
  LockRefresh(dmEkspedisi.qryTarifType);
  LockRefresh(qryTariffItem);
  LockRefresh(dmEkspedisi.qryRoute);
end;

end.
