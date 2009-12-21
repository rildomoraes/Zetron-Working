unit frmPOManufactureBalok;

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
  StdCtrls, cxButtons, ExtCtrls, cxMRUEdit, cxButtonEdit;

type
  TfmPOManufactureBalok = class(TfmPOManufacture)
    cgPurchaseOrderDt: TcxGrid;
    cgvPurchaseOrderDt: TcxGridDBTableView;
    cgPurchaseOrderDtLevel1: TcxGridLevel;
    cgPurchaseOrderDtLevel2: TcxGridLevel;
    cgPurchaseOrderDtLevel3: TcxGridLevel;
    dsPurchaseOrderGroupQty: TDataSource;
    dsPurchaseOrderSpec: TDataSource;
    cgvPurchaseOrderGroupQty: TcxGridDBTableView;
    cgvPurchaseOrderSpec: TcxGridDBBandedTableView;
    cgvPurchaseOrderSpecSpecId: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecPurchaseOrderId: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecSpecCode: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecTCut: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecTMaxCut: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecLCut: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecLMaxCut: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecPCut: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecPMaxCut: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecTInv: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecTMaxInv: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecTInterval: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecLInv: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecLMaxInv: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecLInterval: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecPInv: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecPMaxInv: TcxGridDBBandedColumn;
    cgvPurchaseOrderSpecPInterval: TcxGridDBBandedColumn;
    cgvPurchaseOrderGroupQtyGroupQtyId: TcxGridDBColumn;
    cgvPurchaseOrderGroupQtyPurchaseOrderId: TcxGridDBColumn;
    cgvPurchaseOrderGroupQtyGroupQtyCode: TcxGridDBColumn;
    cgvPurchaseOrderGroupQtyGroupQty: TcxGridDBColumn;
    cgvPurchaseOrderDtNo: TcxGridDBColumn;
    cgvPurchaseOrderDtPurchaseOrderId: TcxGridDBColumn;
    cgvPurchaseOrderDtEmployeeId: TcxGridDBColumn;
    cgvPurchaseOrderDtItemId: TcxGridDBColumn;
    cgvPurchaseOrderDtPrice: TcxGridDBColumn;
    cgvPurchaseOrderDtDescription: TcxGridDBColumn;
    cgvPurchaseOrderDtGroupQtyId: TcxGridDBColumn;
    cgvPurchaseOrderDtSpecId: TcxGridDBColumn;
    Label1: TLabel;
    dblcJenisKayu: TcxDBExtLookupComboBox;
    qryPurchaseOrderGroupQty: TADOQuery;
    qryPurchaseOrderSpec: TADOQuery;
    cgvPrevPOSpec: TcxGridDBTableView;
    cgvPrevPOSpecSpecId: TcxGridDBColumn;
    cgvPrevPOSpecPurchaseOrderId: TcxGridDBColumn;
    cgvPrevPOSpecSpecCode: TcxGridDBColumn;
    cgvPrevPOSpecTCut: TcxGridDBColumn;
    cgvPrevPOSpecLCut: TcxGridDBColumn;
    cgvPrevPOSpecPCut: TcxGridDBColumn;
    cgvPrevPOSpecTInv: TcxGridDBColumn;
    cgvPrevPOSpecLInv: TcxGridDBColumn;
    cgvPrevPOSpecPInv: TcxGridDBColumn;
    cgvPrevPOGroupQty: TcxGridDBTableView;
    cgvPrevPOGroupQtyGroupQtyId: TcxGridDBColumn;
    cgvPrevPOGroupQtyPurchaseOrderId: TcxGridDBColumn;
    cgvPrevPOGroupQtyGroupQtyCode: TcxGridDBColumn;
    cgvPrevPOGroupQtyGroupQty: TcxGridDBColumn;
    procedure qryPurchaseOrderDtBeforePost(DataSet: TDataSet);
    procedure dblcMaterialPropertiesEditValueChanged(Sender: TObject);
    procedure qryPurchaseOrderSpecAfterPost(DataSet: TDataSet);
    procedure qryPurchaseOrderSpecNewRecord(DataSet: TDataSet);
    procedure qryPurchaseOrderHdNewRecord(DataSet: TDataSet);
    procedure qryPurchaseOrderGroupQtyNewRecord(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    { Private declarations }
    FTCut:Real;
    FTMaxCut:Real;
    FLCut:Real;
    FLMaxCut:Real;
    FPCut:Real;
    FPMaxCut:Real;
    FTInv:Real;
    FTMaxInv:Real;
    FLInv:Real;
    FLMaxInv:Real;
    FPInv:Real;
    FPMaxInv:Real;
  public
    { Public declarations }
  end;

var
  fmPOManufactureBalok: TfmPOManufactureBalok;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmInventory, dtmTimber;

procedure TfmPOManufactureBalok.dblcMaterialPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
{  dmInventory.qryItemMaterial.close;
  dmInventory.qryItemMaterial.Parameters[0].Value:=dblcmaterial.EditValue;
  OpenIfClose(dmInventory.qryItemMaterial);}
end;

procedure TfmPOManufactureBalok.InitForm;
begin
  inherited;

  // Init Print
  DefaultPrimaryKeyField := 'PurchaseOrderCode';
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_PO_BALOK);

  SetReadOnly(cgvPrevPOGroupQty);
  SetReadOnly(cgvPrevPOSpec);

  TcxCalcEditProperties(cgvPurchaseOrderSpecTCut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderSpecTMaxCut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderSpecLCut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderSpecLMaxCut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderSpecPCut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderSpecPMaxCut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderSpecTInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderSpecTMaxInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderSpecTInterval.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderSpecLInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderSpecLMaxInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderSpecLInterval.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderSpecPInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderSpecPMaxInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderSpecPInterval.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPurchaseOrderGroupQtyGroupQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPurchaseOrderDtPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  TcxCalcEditProperties(cgvPrevPOSpecTCut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPrevPOSpecLCut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPrevPOSpecPCut.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPrevPOSpecTInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPrevPOSpecLInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPrevPOSpecPInv.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatPLT;
  TcxCalcEditProperties(cgvPrevPOGroupQtyGroupQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  OpenIfClose(dmTimber.qryPrevItemBalok, True);
  OpenIfClose(dmInventory.qryMaterial);

  MonthYearValueChange(nil); // -> Trigger qrySalesInvoiceHd
  OpenIfClose(qryPurchaseOrderDt);
  OpenIfClose(qryPurchaseOrderGroupQty);
  OpenIfClose(qryPurchaseOrderSpec);
end;

procedure TfmPOManufactureBalok.qryPurchaseOrderDtBeforePost(DataSet: TDataSet);
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

procedure TfmPOManufactureBalok.qryPurchaseOrderGroupQtyNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('GroupQty').AsInteger := 0;
end;

procedure TfmPOManufactureBalok.qryPurchaseOrderHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('StatusPurchaseOrder').AsInteger := 1; // PO Balok
end;

procedure TfmPOManufactureBalok.qryPurchaseOrderSpecAfterPost(
  DataSet: TDataSet);
begin
  inherited;

  FTCut:=DataSet.FieldByName('TCut').asfloat;
  FTMaxCut:=DataSet.FieldByName('TMaxCut').asfloat;
  FLCut:=DataSet.FieldByName('LCut').asfloat;
  FLMaxCut:=DataSet.FieldByName('LMaxCut').asfloat;
  FPCut:=DataSet.FieldByName('PCut').asfloat;
  FPMaxCut:=DataSet.FieldByName('PMaxCut').asfloat;
  FTInv:=DataSet.FieldByName('TInv').asfloat;
  FTMaxInv:=DataSet.FieldByName('TMaxInv').asfloat;
  FLInv:=DataSet.FieldByName('LInv').asfloat;
  FLMaxInv:=DataSet.FieldByName('LMaxInv').asfloat;
  FPInv:=DataSet.FieldByName('PInv').asfloat;
  FPMaxInv:=DataSet.FieldByName('PMaxInv').asfloat;
end;

procedure TfmPOManufactureBalok.qryPurchaseOrderSpecNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  if Dataset.Eof then
  begin
    DataSet.FieldByName('TCut').asfloat:=1;
    DataSet.FieldByName('TMaxCut').asfloat:=1;
    DataSet.FieldByName('LCut').asfloat:=1;
    DataSet.FieldByName('LMaxCut').asfloat:=1;
    DataSet.FieldByName('PCut').asfloat:=1;
    DataSet.FieldByName('PMaxCut').asfloat:=1;
    DataSet.FieldByName('TInv').asfloat:=1;
    DataSet.FieldByName('TMaxInv').asfloat:=1;
    DataSet.FieldByName('LInv').asfloat:=1;
    DataSet.FieldByName('LMaxInv').asfloat:=1;
    DataSet.FieldByName('PInv').asfloat:=1;
    DataSet.FieldByName('PMaxInv').asfloat:=1;
  end
  else
  begin
    DataSet.FieldByName('TCut').asfloat:=FTCut;
    DataSet.FieldByName('TMaxCut').asfloat:=FTMaxCut;
    DataSet.FieldByName('LCut').asfloat:=FLCut;
    DataSet.FieldByName('LMaxCut').asfloat:=FLMaxCut;
    DataSet.FieldByName('PCut').asfloat:=FPCut;
    DataSet.FieldByName('PMaxCut').asfloat:=FPMaxCut;
    DataSet.FieldByName('TInv').asfloat:=FTInv;
    DataSet.FieldByName('TMaxInv').asfloat:=FTMaxInv;
    DataSet.FieldByName('LInv').asfloat:=FLInv;
    DataSet.FieldByName('LMaxInv').asfloat:=FLMaxInv;
    DataSet.FieldByName('PInv').asfloat:=FPInv;
    DataSet.FieldByName('PMaxInv').asfloat:=FPMaxInv;
  end;
end;

procedure TfmPOManufactureBalok.RefreshAll;
begin
  inherited;

  LockRefresh(dmTimber.qryPrevItemBalok, True);
end;

end.
