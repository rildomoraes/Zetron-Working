unit frmPOManufactureLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  //
  frmPOManufacture, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxImageComboBox, cxDBExtLookupComboBox, cxCalc,
  dxSkinsdxDockControlPainter, cxGridBandedTableView, cxGridDBBandedTableView,
  cxDBEdit, cxGrid, ADODB, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, DBActns, ActnList, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxMemo, cxPC, cxCurrencyEdit, cxDropDownEdit, cxCalendar, dxDockPanel,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit, cxMaskEdit,
  StdCtrls, cxButtons, ExtCtrls, cxMRUEdit, cxSpinEdit, cxButtonEdit;

type
  TfmPOManufactureLog = class(TfmPOManufacture)
    cgPurchaseOrderDt: TcxGrid;
    cgvPurchaseOrderDt: TcxGridDBTableView;
    cgPurchaseOrderDtLevel1: TcxGridLevel;
    cgPurchaseOrderDtLevel2: TcxGridLevel;
    cgPurchaseOrderDtLevel3: TcxGridLevel;
    dsPurchaseOrderGroupQty: TDataSource;
    dsPurchaseOrderSpec: TDataSource;
    cgPurchaseOrderGroupQty: TcxGridDBTableView;
    cgPurchaseOrderSpec: TcxGridDBTableView;
    cgPurchaseOrderSpecSpecId: TcxGridDBColumn;
    cgPurchaseOrderSpecPurchaseOrderId: TcxGridDBColumn;
    cgPurchaseOrderSpecSpecCode: TcxGridDBColumn;
    cgPurchaseOrderSpecDAvgInv: TcxGridDBColumn;
    cgPurchaseOrderGroupQtyGroupQtyId: TcxGridDBColumn;
    cgPurchaseOrderGroupQtyPurchaseOrderId: TcxGridDBColumn;
    cgPurchaseOrderGroupQtyGroupQtyCode: TcxGridDBColumn;
    cgPurchaseOrderGroupQtyGroupQty: TcxGridDBColumn;
    cgvPurchaseOrderDtNo: TcxGridDBColumn;
    cgvPurchaseOrderDtPurchaseOrderId: TcxGridDBColumn;
    cgvPurchaseOrderDtEmployeeId: TcxGridDBColumn;
    cgvPurchaseOrderDtItemId: TcxGridDBColumn;
    cgvPurchaseOrderDtPrice: TcxGridDBColumn;
    cgvPurchaseOrderDtDescription: TcxGridDBColumn;
    cgvPurchaseOrderDtGroupQtyId: TcxGridDBColumn;
    cgvPurchaseOrderDtSpecId: TcxGridDBColumn;
    cgPurchaseOrderSpecDAvgInvMax: TcxGridDBColumn;
    cgPurchaseOrderSpecPInv: TcxGridDBColumn;
    cgPurchaseOrderSpecPInterval: TcxGridDBColumn;
    cgPurchaseOrderSpecPMaxInv: TcxGridDBColumn;
    dblcJenisKayu: TcxDBExtLookupComboBox;
    Label1: TLabel;
    Label5: TLabel;
    dbeStatusLogCalculate: TcxDBImageComboBox;
    cgvPrevOrderSpec: TcxGridDBTableView;
    cgvPrevGroupQty: TcxGridDBTableView;
    cgvPrevGroupQtyGroupQtyId: TcxGridDBColumn;
    cgvPrevGroupQtyGroupQtyCode: TcxGridDBColumn;
    cgvPrevGroupQtyGroupQty: TcxGridDBColumn;
    cgvPrevOrderSpecSpecId: TcxGridDBColumn;
    cgvPrevOrderSpecSpecCode: TcxGridDBColumn;
    qryPurchaseOrderGroupQty: TADOQuery;
    qryPurchaseOrderSpec: TADOQuery;
    procedure qryPurchaseOrderHdNewRecord(DataSet: TDataSet);
    procedure qryPurchaseOrderSpecBeforeInsert(DataSet: TDataSet);
    procedure qryPurchaseOrderGroupQtyBeforeInsert(DataSet: TDataSet);
    procedure qryPurchaseOrderDtBeforePost(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPOManufactureLog: TfmPOManufactureLog;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory, dtmTimber;

procedure TfmPOManufactureLog.InitForm;
begin
  inherited;

  // Init Print
  DefaultPrimaryKeyField := 'PurchaseOrderCode';
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_PO_LOG);

  TcxCalcEditProperties(cgPurchaseOrderSpecDAvgInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgPurchaseOrderSpecDAvgInvMax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgPurchaseOrderSpecPInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgPurchaseOrderSpecPMaxInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgPurchaseOrderSpecPInterval.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgPurchaseOrderGroupQtyGroupQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatVolume;
  TcxCalcEditProperties(cgvPurchaseOrderDtPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmInventory.qryMaterial);
  OpenIfClose(dmTimber.qryPrevItemLog, True);

  MonthYearValueChange(nil); // -> Trigger qrySalesInvoiceHd
  OpenIfClose(qryPurchaseOrderDt);
  OpenIfClose(qryPurchaseOrderGroupQty);
  OpenIfClose(qryPurchaseOrderSpec);
end;

procedure TfmPOManufactureLog.qryPurchaseOrderDtBeforePost(DataSet: TDataSet);
begin
  inherited;

  // Checking
  if (DataSet.FieldByName('GroupQtyId').IsNull) then
  begin
    MessageDlg(MSG_PO_GROUPQTY_NULL, mtInformation, [mbOk], 0);
    Abort;
  end;
  if (DataSet.FieldByName('SpecId').IsNull) then
  begin
    MessageDlg(MSG_PO_SPEC_NULL, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmPOManufactureLog.qryPurchaseOrderGroupQtyBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmPOManufactureLog.qryPurchaseOrderHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('StatusPurchaseOrder').AsInteger := 2; // PO Log
end;

procedure TfmPOManufactureLog.qryPurchaseOrderSpecBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert
  if DataSet.DataSource <> nil then
    if DataSet.DataSource.State in [dsInsert, dsEdit] then
      DataSet.DataSource.DataSet.Post;
end;

procedure TfmPOManufactureLog.RefreshAll;
begin
  inherited;

  LockRefresh(qryPurchaseOrderGroupQty);
  LockRefresh(qryPurchaseOrderSpec);
end;

end.
