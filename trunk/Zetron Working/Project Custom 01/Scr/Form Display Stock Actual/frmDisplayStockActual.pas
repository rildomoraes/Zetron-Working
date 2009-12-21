unit frmDisplayStockActual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCalc, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxGridLevel, cxGrid, cxControls, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, StdCtrls, ExtCtrls, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, ADODB,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, cxCheckBox;

type
  TfmDisplayStockActual = class(TFormUniDisplay)
    dtsPrevStockOnHandHd: TADODataSet;
    dsPrevStockOnHandHd: TDataSource;
    dsPrevWarehouse: TDataSource;
    gvrDisplayStock: TcxGridViewRepository;
    cgvPrevWarehouse: TcxGridDBTableView;
    cgvPrevWarehousevcIdWarehouse: TcxGridDBColumn;
    cgvPrevWarehousevcWarehouseName: TcxGridDBColumn;
    cgvPrevWarehousevcContactPerson: TcxGridDBColumn;
    pnlHeader: TPanel;
    shpMinStock: TShape;
    lblMinStock: TLabel;
    lblWarehouse: TLabel;
    lcbIdWarehouse: TcxExtLookupComboBox;
    cgStockOnHandHd: TcxGrid;
    cgvPrevStockOnHandHd: TcxGridDBTableView;
    cgvPrevStockOnHandHdvcIdWarehouse: TcxGridDBColumn;
    cgvPrevStockOnHandHdvcWarehouseName: TcxGridDBColumn;
    cgvPrevStockOnHandHdvcIdSupplies: TcxGridDBColumn;
    cgvPrevStockOnHandHdvcSuppliesName: TcxGridDBColumn;
    cgvPrevStockOnHandHdvcIdSuppliesCategory: TcxGridDBColumn;
    cgvPrevStockOnHandHdvcMerk: TcxGridDBColumn;
    cgvPrevStockOnHandHdvcType: TcxGridDBColumn;
    cgvPrevStockOnHandHdvcIdUnitOfMeasure: TcxGridDBColumn;
    cgvPrevStockOnHandHdinMinStock: TcxGridDBColumn;
    cgvPrevStockOnHandHdinEndQty: TcxGridDBColumn;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cgvPrevWarehouseinOrder: TcxGridDBColumn;
    cgvPrevSupplier: TcxGridDBTableView;
    cgvPrevSuppliervcIdSupplier: TcxGridDBColumn;
    cgvPrevSuppliervcSupplierName: TcxGridDBColumn;
    cgvPrevSuppliervcAddress: TcxGridDBColumn;
    cgvPrevSuppliervcCityName: TcxGridDBColumn;
    cgvPrevSupplierinOrder: TcxGridDBColumn;
    cgvPrevCustomer: TcxGridDBTableView;
    cgvPrevCustomervcIdCustomer: TcxGridDBColumn;
    cgvPrevCustomervcCustomerName: TcxGridDBColumn;
    cgvPrevCustomervcAddress: TcxGridDBColumn;
    cgvPrevCustomervcCityName: TcxGridDBColumn;
    cgvPrevCustomerinOrder: TcxGridDBColumn;
    cgStockOnHandHdLevel1: TcxGridLevel;
    dtsPrevWarehouse: TADOQuery;
    chkHideEmptyStock: TcxCheckBox;
    procedure cgvPrevStockOnHandHdStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure lcbIdWarehousePropertiesEditValueChanged(Sender: TObject);
    procedure chkHideEmptyStockPropertiesChange(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    procedure ShowData;
  public
    { Public declarations }
  end;

var
  fmDisplayStockActual: TfmDisplayStockActual;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, untConstanta;

procedure TfmDisplayStockActual.cgvPrevStockOnHandHdStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  //Color Supplies if reach min stock
  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.Values[GetColumnByFieldName('inEndQty').Index] <=
       ARecord.Values[GetColumnByFieldName('inMinStock').Index] then
      AStyle := dmGlobal.stRedLight;
  end;
end;

procedure TfmDisplayStockActual.chkHideEmptyStockPropertiesChange(
  Sender: TObject);
begin
  inherited;

  ShowData;
end;

procedure TfmDisplayStockActual.InitForm;
begin
  inherited;

  TcxCalcEditProperties(cgvPrevStockOnHandHdinMinStock.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevStockOnHandHdinEndQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  shpMinStock.Brush.Color := dmGlobal.stRedLight.Color;
  SetReadOnly(cgvPrevStockOnHandHd);

  OpenIfClose(dtsPrevWarehouse);
end;

procedure TfmDisplayStockActual.lcbIdWarehousePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  ShowData;
end;

procedure TfmDisplayStockActual.RefreshAll;
begin
  inherited;

  LockRefresh(dtsPrevStockOnHandHd, True);
end;

procedure TfmDisplayStockActual.ShowData;
begin
  dtsPrevStockOnHandHd.Close;
  dtsPrevStockOnHandHd.Parameters[0].Value := VarToStr(lcbIdWarehouse.EditValue);
  dtsPrevStockOnHandHd.Parameters[1].Value := chkHideEmptyStock.Checked;
  OpenIfClose(dtsPrevStockOnHandHd, True);
end;

end.
