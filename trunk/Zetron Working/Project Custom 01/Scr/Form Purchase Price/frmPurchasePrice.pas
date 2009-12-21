unit frmPurchasePrice;

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
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, DB,
  ADODB, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, StdCtrls, cxButtons, ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxDBExtLookupComboBox, cxCurrencyEdit, cxDBEdit, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid;

type
  TfmPurchasePrice = class(TFormUniMasterEx)
    qryPurchasePrice: TADODataSet;
    cgMasterSetup: TcxGrid;
    cgvPurchasePrice: TcxGridDBTableView;
    cgvPurchasePricevcIdSupplies: TcxGridDBColumn;
    cgvPurchasePricevcIdSupplies2: TcxGridDBColumn;
    cgvPurchasePricevcIdSupplies3: TcxGridDBColumn;
    cgvPurchasePricevcIdSupplier: TcxGridDBColumn;
    cgvPurchasePricedcPrice: TcxGridDBColumn;
    cgvPurchasePricedcDiscItem: TcxGridDBColumn;
    cgMasterSetupLevel1: TcxGridLevel;
    lblIdSupplies: TLabel;
    dblcIdSupplies: TcxDBExtLookupComboBox;
    lblSuppliesName: TLabel;
    blSuppliesName: TcxDBExtLookupComboBox;
    lblSuppliesType: TLabel;
    blSuppliesType: TcxDBExtLookupComboBox;
    lblIdSupplier: TLabel;
    dblcIdSupplier: TcxDBExtLookupComboBox;
    lblPurchasePrice: TLabel;
    dbePrice: TcxDBCurrencyEdit;
    lblPurchaseDisc: TLabel;
    dbeDiscItem: TcxDBCurrencyEdit;
    lblPercent: TLabel;
    lblEmployeeName: TLabel;
    dbeEmployeeName: TcxDBTextEdit;
    procedure qryPurchasePriceBeforePost(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPurchasePrice: TfmPurchasePrice;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory;

procedure TfmPurchasePrice.InitForm;
begin
  inherited;

  OpenIfClose(dmInventory.qrySupplier, True);
  OpenIfClose(dmInventory.qrySupplies, True);
  OpenIfClose(qryPurchasePrice);

  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
end;

procedure TfmPurchasePrice.qryPurchasePriceBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmPurchasePrice.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qrySupplier);
  LockRefresh(dmInventory.qrySupplies);
  LockRefresh(qryPurchasePrice);
end;

end.
