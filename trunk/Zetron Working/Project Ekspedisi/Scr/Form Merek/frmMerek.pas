unit frmMerek;

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
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxDBLookupComboBox, ADODB;

type
  TfmMerek = class(TFormUniMasterEx)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1MerekCode: TcxGridDBColumn;
    cxGrid1DBTableView1MerekName: TcxGridDBColumn;
    cxGrid1DBTableView1RouteId: TcxGridDBColumn;
    cxGrid1DBTableView1CustomerId: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    dbeMerekCode: TcxDBTextEdit;
    dbeMerekName: TcxDBTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbeRouteId: TcxDBExtLookupComboBox;
    dbeCustomerId: TcxDBExtLookupComboBox;
    cxGridViewRepository1: TcxGridViewRepository;
    qryPrevRouteId: TADOQuery;
    qryPrevCustomer: TADOQuery;
    dsPrevCustomer: TDataSource;
    dsPrevRoute: TDataSource;
    cgvPrevRoute: TcxGridDBTableView;
    cgvPrevRouteRouteId: TcxGridDBColumn;
    cgvPrevRouteRouteCode: TcxGridDBColumn;
    cgvPrevRouteRouteName: TcxGridDBColumn;
    cgvPrevRouteDepatureCityId: TcxGridDBColumn;
    cgvPrevRouteDestinationCityId: TcxGridDBColumn;
    cgvPrevCustomer: TcxGridDBTableView;
    cgvPrevCustomerCustomerId: TcxGridDBColumn;
    cgvPrevCustomerCustomerCode: TcxGridDBColumn;
    cgvPrevCustomerCustomerName: TcxGridDBColumn;
    cgvPrevCustomerTarifKonosemen: TcxGridDBColumn;
  private
    { Private declarations }
    hasil:string;
    action:string;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmMerek: TfmMerek;

implementation

{$R *.dfm}
 uses dtmGlobal, dtmEkspedisi, untProcedure;
{ TfmMerek }

procedure TfmMerek.InitForm;
begin
  inherited;
  OpenIfClose(dmEkspedisi.qryMerek);
  OpenIfClose(qryPrevRouteId);
  OpenIfClose(qryPrevCustomer);
end;

procedure TfmMerek.RefreshAll;
begin
  inherited;
  LockRefresh(dmEkspedisi.qryMerek);
  LockRefresh(qryPrevRouteId);
  LockRefresh(qryPrevCustomer);
end;

end.
