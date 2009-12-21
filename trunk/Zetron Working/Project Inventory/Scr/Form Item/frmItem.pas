unit frmItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxCalc, cxImageComboBox, cxCheckBox, MemDS, DBAccess,
  Uni, DBActns, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBEdit,
  cxMemo, cxDropDownEdit, cxSpinEdit, cxLookupEdit, cxDBLookupEdit, cxMaskEdit,
  cxContainer, cxTextEdit, StdCtrls, cxPC, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, dxDockPanel, cxButtons, ExtCtrls, dxSkinsCore,
  dxSkinsdxDockControlPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmItem = class(TFormUniMasterEx)
    dsItemMinStock: TDataSource;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayItemIdExternal: TcxGridDBColumn;
    cgvPrevDisplayItemName: TcxGridDBColumn;
    cgvPrevDisplayItemCategoryId: TcxGridDBColumn;
    cgvPrevDisplayItemNameChinese: TcxGridDBColumn;
    cgvPrevDisplayType: TcxGridDBColumn;
    cgvPrevDisplayUnitMeasure: TcxGridDBColumn;
    cgvPrevDisplayStatusSource: TcxGridDBColumn;
    cgvPrevDisplayStatusItem: TcxGridDBColumn;
    cgvPrevDisplayStatusCostMethod: TcxGridDBColumn;
    cgvPrevDisplayMinStockQty: TcxGridDBColumn;
    cgvPrevDisplayReorderQty: TcxGridDBColumn;
    cgvPrevDisplayFlagPrintBarcode: TcxGridDBColumn;
    cgvPrevDisplayFlagPrintPrice: TcxGridDBColumn;
    cgvPrevDisplayFlagInactive: TcxGridDBColumn;
    cgvPrevDisplayFlagProcessOpname: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    pcItem: TcxPageControl;
    tsOptions: TcxTabSheet;
    tsGeneral: TcxTabSheet;
    lblBarcodeId: TLabel;
    dbeBarcodeId: TcxDBTextEdit;
    lblBarcodeName: TLabel;
    dbeBarcodeName: TcxDBTextEdit;
    lblType: TLabel;
    dbeType: TcxDBTextEdit;
    lblDescription1: TLabel;
    dbeItemNameChinese: TcxDBTextEdit;
    lblUnitOfMeasure: TLabel;
    dbeUnitMeasure: TcxDBTextEdit;
    lblRegister: TLabel;
    dbeRegister: TcxDBTextEdit;
    lblItemSource: TLabel;
    dblcStatusSource: TcxDBImageComboBox;
    lblEmployeeName: TLabel;
    dbeEmployeeId: TcxDBExtLookupComboBox;
    dbchFlagSalesReturn: TcxDBCheckBox;
    dbchFlagPurchaseReturn: TcxDBCheckBox;
    tsMinStock: TcxTabSheet;
    cgMinStockWarehouse: TcxGrid;
    cgvMinStock: TcxGridDBTableView;
    cgvMinStockItemId: TcxGridDBColumn;
    cgvMinStockWarehouseId: TcxGridDBColumn;
    cgvMinStockMinStockQty: TcxGridDBColumn;
    cgvMinStockEmployeeName: TcxGridDBColumn;
    cgMinStockWarehouseLevel1: TcxGridLevel;
    actPriceEdit: TDataSetEdit;
    actPricePost: TDataSetPost;
    actPriceCancel: TDataSetCancel;
    actCopyItem: TAction;
    btnCopy: TcxButton;
    tsStockInfo: TcxTabSheet;
    lblStatusItem: TLabel;
    lblCostMethod: TLabel;
    lblMargin: TLabel;
    lblMarginPercent: TLabel;
    lblMinStockOverAll: TLabel;
    lblReorderQty: TLabel;
    Label1: TLabel;
    dblcStatusItem: TcxDBImageComboBox;
    dblcbStatusCostMethod: TcxDBImageComboBox;
    dbeMargin: TcxDBSpinEdit;
    dbeMinStock: TcxDBCalcEdit;
    dbeReorderQty: TcxDBCalcEdit;
    dbmMemo: TcxDBMemo;
    Label4: TLabel;
    qryGetItemIdExternal: TUniQuery;
    qryItemMinStock: TUniQuery;
    Panel1: TPanel;
    lblSuppliesCategory: TLabel;
    lblIdSupplies: TLabel;
    lblSuppliesName: TLabel;
    lblNameLength: TLabel;
    dblcItemCategoryId: TcxDBExtLookupComboBox;
    dbeItemIdExternal: TcxDBTextEdit;
    dbeItemId: TcxDBTextEdit;
    btnGetId: TcxButton;
    dbchkInactive: TcxDBCheckBox;
    dbeItemName: TcxDBTextEdit;
    procedure actCopyItemExecute(Sender: TObject);
    procedure btnGetIdClick(Sender: TObject);
    procedure dbeItemIdExternalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbeItemNamePropertiesEditValueChanged(Sender: TObject);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure qryItemMinStockBeforeEdit(DataSet: TDataSet);
    procedure qryItemMinStockBeforePost(DataSet: TDataSet);
    procedure qryItemMinStockNewRecord(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    function GetCurrentItemIdExternal(AItemCategoryId: variant): string;
  public

  end;

var
  fmItem: TfmItem;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal, dtmInventory,
  dtmGeneral, dtmShare, frmCopyItem;

procedure TfmItem.actCopyItemExecute(Sender: TObject);
begin
  inherited;

  TfmCopyItem.ExecuteForm();
end;

procedure TfmItem.btnGetIdClick(Sender: TObject);
begin
  inherited;

  if dmInventory.qryItem.State in [dsInsert, dsEdit] then
    dmInventory.qryItem.FieldByName('ItemIdExternal').AsString :=
      GetCurrentItemIdExternal(dmInventory.qryItem.FieldByName('ItemCategoryId').AsString);
end;

procedure TfmItem.dbeItemIdExternalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = VK_F3 then
  begin
    btnGetIdClick(sender);
  end;
end;

procedure TfmItem.dbeItemNamePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  lblNameLength.Caption := IntToStr(Length(dbeItemName.EditingText)) + ' Digit';
end;

procedure TfmItem.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
  begin
    SetReadOnly(dblcStatusItem, True, COLOR_INACTIVE);
    SetReadOnly(dblcbStatusCostMethod, True, COLOR_INACTIVE);
  end;
  if dsDefault.State in [dsInsert] then
  begin
    SetReadOnly(dblcStatusItem, False);
    SetReadOnly(dblcbStatusCostMethod, False);
  end;
end;

function TfmItem.GetCurrentItemIdExternal(
  AItemCategoryId: variant): string;
begin
  qryGetItemIdExternal.Close;
  qryGetItemIdExternal.Params[0].Value := VarToStr(AItemCategoryId);
  OpenIfClose(qryGetItemIdExternal);
  Result := qryGetItemIdExternal.Fields[0].AsString;
end;

procedure TfmItem.InitForm;
begin
  inherited;

  SetReadOnly(dbeEmployeeId, True, COLOR_INACTIVE);

  dbeMargin.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeMinStock.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbeReorderQty.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvMinStockMinStockQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  OpenIfClose(dmInventory.qryItemCategory, True);
  OpenIfClose(dmInventory.qryItem, True);
  OpenIfClose(dmGeneral.qryWarehouse);
  OpenIfClose(dmGlobal.qryEmployee);
  OpenIfClose(dmInventory.qryItem, True);
  OpenIfClose(qryItemMinStock);
end;

procedure TfmItem.qryItemMinStockBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;

  if dmInventory.qryItem.IsEmpty then
    Abort;
end;

procedure TfmItem.qryItemMinStockBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmItem.qryItemMinStockNewRecord(DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;
end;

procedure TfmItem.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryItem, True);
  LockRefresh(qryItemMinStock);
  LockRefresh(dmGeneral.qryWarehouseRack);
end;

end.


