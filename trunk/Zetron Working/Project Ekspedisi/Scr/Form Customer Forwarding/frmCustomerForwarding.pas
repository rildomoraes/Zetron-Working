unit frmCustomerForwarding;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxCalc, cxDBEdit, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCurrencyEdit, cxDBExtLookupComboBox,
  ADODB;

type
  TfmCustomerForwarding = class(TFormUniMasterEx)
    cgvPrevCustomer: TcxGridDBTableView;
    cgPrevCustomerLevel1: TcxGridLevel;
    cgPrevCustomer: TcxGrid;
    cgvPrevCustomerCustomerId: TcxGridDBColumn;
    cgvPrevCustomerCustomerCode: TcxGridDBColumn;
    cgvPrevCustomerCustomerName: TcxGridDBColumn;
    cgvPrevCustomerTarifKonosemen: TcxGridDBColumn;
    Panel1: TPanel;
    Label1: TLabel;
    dbeCustomerCode: TcxDBTextEdit;
    Label3: TLabel;
    dbeCustomerName: TcxDBTextEdit;
    dbePriceFra: TcxDBCurrencyEdit;
    Label2: TLabel;
    Panel2: TPanel;
    cgvMerk: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsMerk: TDataSource;
    cgvMerkMerekCode: TcxGridDBColumn;
    cgvMerkMerekName: TcxGridDBColumn;
    cgvMerkRouteId: TcxGridDBColumn;
    qryMerk: TADODataSet;
    Label9: TLabel;
    Label4: TLabel;
    procedure qryMerkBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmCustomerForwarding: TfmCustomerForwarding;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure;

{ TfmCustomerForwarding }

procedure TfmCustomerForwarding.InitForm;
begin
  inherited;
  OpenIfClose(dmEkspedisi.qryCustomerForwarding);
  OpenIfClose(qryMerk);
  OpenIfClose(dmEkspedisi.qryRoute);
end;

procedure TfmCustomerForwarding.qryMerkBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.DataSource<>nil then
   if DataSet.DataSource.State in [dsInsert,dsEdit] then
     DataSet.DataSource.DataSet.Post;
end;

procedure TfmCustomerForwarding.RefreshAll;
begin
  inherited;
  LockRefresh(dmEkspedisi.qryCustomerForwarding);
  LockRefresh(qryMerk);
  LockRefresh(dmEkspedisi.qryRoute);
end;

end.
