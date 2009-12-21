unit frmPurchaseOrderItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniDBNavigatorEx, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxCalc, cxCurrencyEdit, cxCalendar, MemDS, DBAccess,
  Uni, dxmdaset, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxMemo,
  cxDBEdit, cxDropDownEdit, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxContainer, cxProgressBar, StdCtrls, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxButtons, ExtCtrls, dxSkinsCore, dxSkinsdxDockControlPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter;

type
  TfmPurchaseOrderItem = class(TFormUniDBNavigatorEx)
    btnProcess: TcxButton;
    pnlProgressBar: TPanel;
    Label5: TLabel;
    pbProcess: TcxProgressBar;
    actPost: TAction;
    mdPrevPurchaseOrderDt: TdxMemData;
    dsPrevPurchaseOrderDt: TDataSource;
    pnlTop: TPanel;
    lblVendor: TLabel;
    lblPurchaseOrderId: TLabel;
    lblOutlet: TLabel;
    lblVendorPurchaseOrderId: TLabel;
    lblProject: TLabel;
    Label1: TLabel;
    dblcVendorId: TcxDBExtLookupComboBox;
    dblcVendorId2: TcxDBExtLookupComboBox;
    dbePurchaseOrderDate: TcxDBDateEdit;
    dbePurchaseOrderId: TcxDBTextEdit;
    dblcOutletId: TcxDBExtLookupComboBox;
    dbeVendorPurchaseOrderId: TcxDBTextEdit;
    dblcProjectId: TcxDBExtLookupComboBox;
    dbeAddress: TcxDBMemo;
    dbeCityName: TcxDBTextEdit;
    dbeProvinceName: TcxDBTextEdit;
    dbeCountryName: TcxDBTextEdit;
    cgPrevPurchaseOrderDt: TcxGrid;
    cgvPrevPurchaseOrderDt: TcxGridDBTableView;
    cgvPrevPurchaseOrderDtpurchaseorderid: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtno: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtitemid1: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtitemid2: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtitemid3: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtitemid4: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtitemtext: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtqty: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtqtyoutstanding: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtprice: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtdiscitem: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtdiscitemprice: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtdiscitem2: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtdiscitemprice2: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtvoucheritem: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtamount: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtemployeeid: TcxGridDBColumn;
    cgvPrevPurchaseOrderDtqtyinvoice: TcxGridDBColumn;
    cgPrevPurchaseOrderDtLevel1: TcxGridLevel;
    cgExplorer: TcxGrid;
    cgvPrevPurchaseOrderHd: TcxGridDBTableView;
    cgvPrevPurchaseOrderHdpurchaseorderid: TcxGridDBColumn;
    cgvPrevPurchaseOrderHdpurchaseorderdate: TcxGridDBColumn;
    cgvPrevPurchaseOrderHdvendorpurchaseorderid: TcxGridDBColumn;
    cgvPrevPurchaseOrderHdoutletname: TcxGridDBColumn;
    cgvPrevPurchaseOrderHdprojectname: TcxGridDBColumn;
    cgvPrevPurchaseOrderHdtotalamount: TcxGridDBColumn;
    cgvPrevPurchaseOrderHdemployeename: TcxGridDBColumn;
    cgExplorerLevel1: TcxGridLevel;
    qryPrevPurchaseOrderHd: TUniQuery;
    qryPrevPurchaseOrderDt: TUniQuery;
    procedure mdPrevPurchaseOrderDtBeforePost(DataSet: TDataSet);
    procedure dbePurchaseOrderIdPropertiesEditValueChanged(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    FVendorId: string;
    FQueryInvoiceDt: TUniQuery;
  public
    class function ExecuteForm(const AVendorId: string; AQueryInvoiceDt: TUniQuery): TModalResult;
  end;

var
  fmPurchaseOrderItem: TfmPurchaseOrderItem;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmGeneral,
  dtmInventory;

procedure TfmPurchaseOrderItem.actPostExecute(Sender: TObject);
begin
  inherited;

  //Process
  if mdPrevPurchaseOrderDt.State in [dsEdit, dsInsert] then
    mdPrevPurchaseOrderDt.Post;
  if mdPrevPurchaseOrderDt.IsEmpty then
    Exit;

  pbProcess.Properties.Max := mdPrevPurchaseOrderDt.RecordCount;
  mdPrevPurchaseOrderDt.DisableControls;
  mdPrevPurchaseOrderDt.First;
  while not mdPrevPurchaseOrderDt.Eof do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;

    if mdPrevPurchaseOrderDt.FieldByName('QtyInvoice').AsFloat <> 0 then
    begin
      // Save in detail
      FQueryInvoiceDt.Insert;
      FQueryInvoiceDt.FieldByName('PurchaseOrderId').AsVariant := mdPrevPurchaseOrderDt.FieldByName('PurchaseOrderId').AsVariant;
      FQueryInvoiceDt.FieldByName('PurchaseOrderNo').AsVariant := mdPrevPurchaseOrderDt.FieldByName('No').AsVariant;
      FQueryInvoiceDt.FieldByName('ItemId').AsVariant := mdPrevPurchaseOrderDt.FieldByName('ItemId').AsVariant;
      FQueryInvoiceDt.FieldByName('ItemText').AsVariant := mdPrevPurchaseOrderDt.FieldByName('ItemText').AsVariant;
      FQueryInvoiceDt.FieldByName('Qty').AsVariant := mdPrevPurchaseOrderDt.FieldByName('QtyInvoice').AsVariant;
      FQueryInvoiceDt.FieldByName('Price').AsVariant := mdPrevPurchaseOrderDt.FieldByName('Price').AsVariant;
      FQueryInvoiceDt.FieldByName('DiscItem').AsVariant := mdPrevPurchaseOrderDt.FieldByName('DiscItem').AsVariant;
      FQueryInvoiceDt.FieldByName('DiscItem2').AsVariant := mdPrevPurchaseOrderDt.FieldByName('DiscItem2').AsVariant;
      FQueryInvoiceDt.FieldByName('VoucherItem').AsVariant := mdPrevPurchaseOrderDt.FieldByName('VoucherItem').AsVariant;
      FQueryInvoiceDt.Post;

      //finally set QtyInvoice to 0
      mdPrevPurchaseOrderDt.Edit;
      mdPrevPurchaseOrderDt.FieldByName('QtyInvoice').AsFloat := 0;
      mdPrevPurchaseOrderDt.Post;
    end;

    mdPrevPurchaseOrderDt.Next;
  end;
  mdPrevPurchaseOrderDt.EnableControls;
  pbProcess.Position := 0;

  ModalResult := mrOk;
end;

procedure TfmPurchaseOrderItem.dbePurchaseOrderIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  qryPrevPurchaseOrderDt.Close;
  mdPrevPurchaseOrderDt.Close;
  if not qryPrevPurchaseOrderHd.Active then
    Exit;

  qryPrevPurchaseOrderDt.Params[0].Value := cgvPrevPurchaseOrderHdpurchaseorderid.EditValue;
  OpenIfClose(qryPrevPurchaseOrderDt);
  mdPrevPurchaseOrderDt.CreateFieldsFromDataSet(qryPrevPurchaseOrderDt);
  mdPrevPurchaseOrderDt.LoadFromDataSet(qryPrevPurchaseOrderDt);
end;

class function TfmPurchaseOrderItem.ExecuteForm(const AVendorId: string;
  AQueryInvoiceDt: TUniQuery): TModalResult;
var
  fmPurchaseOrderItem: TfmPurchaseOrderItem;
begin
  // NOT MDI
  fmPurchaseOrderItem := TfmPurchaseOrderItem.Create(Application);
  with fmPurchaseOrderItem do
  begin
    try
      FVendorId := AVendorId;
      FQueryInvoiceDt := AQueryInvoiceDt;
      InitForm;
      Result := ShowModal;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmPurchaseOrderItem.InitForm;
begin
  inherited;

  SetReadOnly(dblcVendorId, True, COLOR_INACTIVE);
  SetReadOnly(dblcVendorId2, True, COLOR_INACTIVE);
  SetReadOnly(dbeAddress, True, COLOR_INACTIVE);
  SetReadOnly(dbeCityName, True, COLOR_INACTIVE);
  SetReadOnly(dbeProvinceName, True, COLOR_INACTIVE);
  SetReadOnly(dbeCountryName, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchaseOrderDate, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchaseOrderId, True, COLOR_INACTIVE);
  SetReadOnly(dblcOutletId, True, COLOR_INACTIVE);
  SetReadOnly(dbeVendorPurchaseOrderId, True, COLOR_INACTIVE);
  SetReadOnly(dblcProjectId, True, COLOR_INACTIVE);

  OpenIfClose(dmGeneral.qryVendor, True);
  OpenIfClose(dmInventory.qryItem, True);
  qryPrevPurchaseOrderHd.Close;
  qryPrevPurchaseOrderHd.Params[0].Value := FVendorId;
  OpenIfClose(qryPrevPurchaseOrderHd);

  TcxCurrencyEditProperties(cgvPrevPurchaseOrderDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevPurchaseOrderDtqtyoutstanding.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevPurchaseOrderDtqtyinvoice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevPurchaseOrderDtPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevPurchaseOrderDtDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPrevPurchaseOrderDtDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevPurchaseOrderDtDiscItem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPrevPurchaseOrderDtDiscItemPrice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevPurchaseOrderDtAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevPurchaseOrderDtvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
end;

procedure TfmPurchaseOrderItem.mdPrevPurchaseOrderDtBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if mdPrevPurchaseOrderDt.FieldByName('qtyoutstanding').AsFloat <
    mdPrevPurchaseOrderDt.FieldByName('QtyInvoice').AsFloat then
  begin
    MessageDlg(MSG_QTY_LARGER_THAN_OUTSTANDING_QTY, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmPurchaseOrderItem.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevPurchaseOrderHd, True);
  qryPrevPurchaseOrderDt.Close;
  mdPrevPurchaseOrderDt.Close;
  if VarToStr(cgvPrevPurchaseOrderHdpurchaseorderid.EditValue) <> '' then
  begin
    qryPrevPurchaseOrderDt.Params[0].Value := cgvPrevPurchaseOrderHdpurchaseorderid.EditValue;
    OpenIfClose(qryPrevPurchaseOrderDt, False, False);
    mdPrevPurchaseOrderDt.CreateFieldsFromDataSet(qryPrevPurchaseOrderDt);
    mdPrevPurchaseOrderDt.LoadFromDataSet(qryPrevPurchaseOrderDt);
  end;
end;

end.
