unit frmSalePrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniMasterEx, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, cxCurrencyEdit,
  cxDBEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, StdCtrls, ADODB, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxButtons, ExtCtrls;

type
  TfmSalePrice = class(TFormUniMasterEx)
    cgMasterSetup: TcxGrid;
    cgvSalePrice: TcxGridDBTableView;
    cgvSalePricevcIdSupplies: TcxGridDBColumn;
    cgvSalePricevcIdSupplies2: TcxGridDBColumn;
    cgvSalePricevcIdSupplies3: TcxGridDBColumn;
    cgvSalePricevcIdCustomer: TcxGridDBColumn;
    cgvSalePricedcSalePrice: TcxGridDBColumn;
    cgvSalePricedcSaleDisc: TcxGridDBColumn;
    cgMasterSetupLevel1: TcxGridLevel;
    qrySalePrice: TADODataSet;
    lblIdSupplies: TLabel;
    lblSuppliesName: TLabel;
    lblSuppliesType: TLabel;
    lblIdCustomer: TLabel;
    dblcIdSupplies: TcxDBExtLookupComboBox;
    dblcSuppliesName: TcxDBExtLookupComboBox;
    dblcSuppliesType: TcxDBExtLookupComboBox;
    dblcIdCustomer: TcxDBExtLookupComboBox;
    lblSalePrice: TLabel;
    lblSaleDisc: TLabel;
    lblEmployeeName: TLabel;
    dbePrice: TcxDBCurrencyEdit;
    dbeSaleDisc: TcxDBCurrencyEdit;
    dbeEmployeeName: TcxDBTextEdit;
    Label1: TLabel;
    procedure qrySalePriceBeforePost(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSalePrice: TfmSalePrice;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory;

procedure TfmSalePrice.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qryCustomer, True);
  OpenIfClose(dmInventory.qrySupplies, True);
  OpenIfClose(qrySalePrice);

  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
end;

procedure TfmSalePrice.qrySalePriceBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmSalePrice.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryCustomer);
  LockRefresh(dmInventory.qrySupplies);
  LockRefresh(qrySalePrice);
end;

end.
