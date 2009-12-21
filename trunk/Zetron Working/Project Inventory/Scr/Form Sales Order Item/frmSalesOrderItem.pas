unit frmSalesOrderItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniDBNavigatorEx, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxCalc, cxCurrencyEdit, cxSpinEdit, cxCalendar, MemDS,
  DBAccess, Uni, dxmdaset, cxGridLevel, cxGridCustomTableView, cxGridTableView,
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
  TfmSalesOrderItem = class(TFormUniDBNavigatorEx)
    mdPrevSalesOrderDt: TdxMemData;
    dsPrevSalesOrderDt: TDataSource;
    cgExplorer: TcxGrid;
    cgvPrevSalesOrderHd: TcxGridDBTableView;
    cgvPrevSalesOrderHdSalesorderid: TcxGridDBColumn;
    cgvPrevSalesOrderHdSalesorderdate: TcxGridDBColumn;
    cgvPrevSalesOrderHdCustomerSalesorderid: TcxGridDBColumn;
    cgvPrevSalesOrderHdoutletname: TcxGridDBColumn;
    cgvPrevSalesOrderHdprojectname: TcxGridDBColumn;
    cgvPrevSalesOrderHdtotalamount: TcxGridDBColumn;
    cgvPrevSalesOrderHdemployeename: TcxGridDBColumn;
    cgExplorerLevel1: TcxGridLevel;
    pnlTop: TPanel;
    lblCustomer: TLabel;
    lblSalesOrderId: TLabel;
    lblOutlet: TLabel;
    lblTanggal: TLabel;
    lblProject: TLabel;
    Label1: TLabel;
    dblcCustomerId: TcxDBExtLookupComboBox;
    dblcCustomerId2: TcxDBExtLookupComboBox;
    dbeSalesOrderDate: TcxDBDateEdit;
    dbeSalesOrderId: TcxDBTextEdit;
    dblcOutletId: TcxDBExtLookupComboBox;
    dbeCustomerSalesOrderId: TcxDBTextEdit;
    dblcProjectId: TcxDBExtLookupComboBox;
    cgPrevSalesOrderDt: TcxGrid;
    cgvPrevSalesOrderDt: TcxGridDBTableView;
    cgvPrevSalesOrderDtSalesorderid: TcxGridDBColumn;
    cgvPrevSalesOrderDtno: TcxGridDBColumn;
    cgvPrevSalesOrderDtitemid1: TcxGridDBColumn;
    cgvPrevSalesOrderDtitemid2: TcxGridDBColumn;
    cgvPrevSalesOrderDtitemid3: TcxGridDBColumn;
    cgvPrevSalesOrderDtitemid4: TcxGridDBColumn;
    cgvPrevSalesOrderDtitemtext: TcxGridDBColumn;
    cgvPrevSalesOrderDtqty: TcxGridDBColumn;
    cgvPrevSalesOrderDtqtyoutstanding: TcxGridDBColumn;
    cgvPrevSalesOrderDtprice: TcxGridDBColumn;
    cgvPrevSalesOrderDtdiscitem: TcxGridDBColumn;
    cgvPrevSalesOrderDtdiscitemprice: TcxGridDBColumn;
    cgvPrevSalesOrderDtdiscitem2: TcxGridDBColumn;
    cgvPrevSalesOrderDtdiscitemprice2: TcxGridDBColumn;
    cgvPrevSalesOrderDtvoucheritem: TcxGridDBColumn;
    cgvPrevSalesOrderDtamount: TcxGridDBColumn;
    cgvPrevSalesOrderDtemployeeid: TcxGridDBColumn;
    cgvPrevSalesOrderDtqtyinvoice: TcxGridDBColumn;
    cgPrevSalesOrderDtLevel1: TcxGridLevel;
    pnlProgressBar: TPanel;
    Label5: TLabel;
    pbProcess: TcxProgressBar;
    dbeAddress: TcxDBMemo;
    dbeCityName: TcxDBTextEdit;
    dbeProvinceName: TcxDBTextEdit;
    dbeCountryName: TcxDBTextEdit;
    btnProcess: TcxButton;
    actPost: TAction;
    qryPrevSalesOrderHd: TUniQuery;
    qryPrevSalesOrderDt: TUniQuery;
    procedure actPostExecute(Sender: TObject);
    procedure mdPrevSalesOrderDtBeforePost(DataSet: TDataSet);
    procedure dbeSalesOrderIdPropertiesEditValueChanged(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  private
    FCustomerId: string;
    FQueryInvoiceDt: TUniQuery;
  public
    class function ExecuteForm(const ACustomerId: string; AQueryInvoiceDt: TUniQuery): TModalResult;
  end;

var
  fmSalesOrderItem: TfmSalesOrderItem;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmGeneral,
  dtmInventory;

procedure TfmSalesOrderItem.actPostExecute(Sender: TObject);
begin
  inherited;

  //Process
  if mdPrevSalesOrderDt.State in [dsEdit, dsInsert] then
    mdPrevSalesOrderDt.Post;
  if mdPrevSalesOrderDt.IsEmpty then
    Exit;

  pbProcess.Properties.Max := mdPrevSalesOrderDt.RecordCount;
  mdPrevSalesOrderDt.DisableControls;
  mdPrevSalesOrderDt.First;
  while not mdPrevSalesOrderDt.Eof do
  begin
    pbProcess.Position := pbProcess.Position + 1;
    pbProcess.Refresh;

    if mdPrevSalesOrderDt.FieldByName('QtyInvoice').AsFloat <> 0 then
    begin
      // Save in detail
      FQueryInvoiceDt.Insert;
      FQueryInvoiceDt.FieldByName('SalesOrderId').AsVariant := mdPrevSalesOrderDt.FieldByName('SalesOrderId').AsVariant;
      FQueryInvoiceDt.FieldByName('SalesOrderNo').AsVariant := mdPrevSalesOrderDt.FieldByName('No').AsVariant;
      FQueryInvoiceDt.FieldByName('ItemId').AsVariant := mdPrevSalesOrderDt.FieldByName('ItemId').AsVariant;
      FQueryInvoiceDt.FieldByName('ItemText').AsVariant := mdPrevSalesOrderDt.FieldByName('ItemText').AsVariant;
      FQueryInvoiceDt.FieldByName('Qty').AsVariant := mdPrevSalesOrderDt.FieldByName('QtyInvoice').AsVariant;
      FQueryInvoiceDt.FieldByName('Price').AsVariant := mdPrevSalesOrderDt.FieldByName('Price').AsVariant;
      FQueryInvoiceDt.FieldByName('DiscItem').AsVariant := mdPrevSalesOrderDt.FieldByName('DiscItem').AsVariant;
      FQueryInvoiceDt.FieldByName('DiscItem2').AsVariant := mdPrevSalesOrderDt.FieldByName('DiscItem2').AsVariant;
      FQueryInvoiceDt.FieldByName('VoucherItem').AsVariant := mdPrevSalesOrderDt.FieldByName('VoucherItem').AsVariant;
      FQueryInvoiceDt.Post;

      //finally set QtyInvoice to 0
      mdPrevSalesOrderDt.Edit;
      mdPrevSalesOrderDt.FieldByName('QtyInvoice').AsFloat := 0;
      mdPrevSalesOrderDt.Post;
    end;

    mdPrevSalesOrderDt.Next;
  end;
  mdPrevSalesOrderDt.EnableControls;
  pbProcess.Position := 0;

  ModalResult := mrOk;
end;

procedure TfmSalesOrderItem.dbeSalesOrderIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  qryPrevSalesOrderDt.Close;
  mdPrevSalesOrderDt.Close;
  if VarToStr(cgvPrevSalesOrderHdSalesorderid.EditValue) <> '' then
  begin
    qryPrevSalesOrderDt.Params[0].Value := dbeSalesOrderId.EditValue;
    OpenIfClose(qryPrevSalesOrderDt);
    mdPrevSalesOrderDt.CreateFieldsFromDataSet(qryPrevSalesOrderDt);
    mdPrevSalesOrderDt.LoadFromDataSet(qryPrevSalesOrderDt);
  end;
end;

class function TfmSalesOrderItem.ExecuteForm(const ACustomerId: string;
  AQueryInvoiceDt: TUniQuery): TModalResult;
var
  fmSalesOrderItem: TfmSalesOrderItem;
begin
  // NOT MDI !
  fmSalesOrderItem := TfmSalesOrderItem.Create(Application);
  with fmSalesOrderItem do
  begin
    try
      FCustomerId := ACustomerId;
      FQueryInvoiceDt := AQueryInvoiceDt;
      InitForm;
      Result := ShowModal;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmSalesOrderItem.InitForm;
begin
  inherited;

  SetReadOnly(dblcCustomerId, True, COLOR_INACTIVE);
  SetReadOnly(dblcCustomerId2, True, COLOR_INACTIVE);
  SetReadOnly(dbeAddress, True, COLOR_INACTIVE);
  SetReadOnly(dbeCityName, True, COLOR_INACTIVE);
  SetReadOnly(dbeProvinceName, True, COLOR_INACTIVE);
  SetReadOnly(dbeCountryName, True, COLOR_INACTIVE);
  SetReadOnly(dbeSalesOrderDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeSalesOrderId, True, COLOR_INACTIVE);
  SetReadOnly(dblcOutletId, True, COLOR_INACTIVE);
  SetReadOnly(dbeCustomerSalesOrderId, True, COLOR_INACTIVE);
  SetReadOnly(dblcProjectId, True, COLOR_INACTIVE);

  OpenIfClose(dmGeneral.qryCustomer, True);
  OpenIfClose(dmInventory.qryItem, True);
  qryPrevSalesOrderHd.Close;
  qryPrevSalesOrderHd.Params[0].Value := FCustomerId;
  OpenIfClose(qryPrevSalesOrderHd);

  TcxCurrencyEditProperties(cgvPrevSalesOrderDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevSalesOrderDtqtyoutstanding.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevSalesOrderDtqtyinvoice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPrevSalesOrderDtPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevSalesOrderDtDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPrevSalesOrderDtDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevSalesOrderDtDiscItem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvPrevSalesOrderDtDiscItemPrice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevSalesOrderDtAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvPrevSalesOrderDtvoucheritem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
end;

procedure TfmSalesOrderItem.mdPrevSalesOrderDtBeforePost(DataSet: TDataSet);
begin
  inherited;

  if mdPrevSalesOrderDt.FieldByName('qtyoutstanding').AsFloat <
    mdPrevSalesOrderDt.FieldByName('QtyInvoice').AsFloat then
  begin
    MessageDlg(MSG_QTY_LARGER_THAN_OUTSTANDING_QTY, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmSalesOrderItem.RefreshAll;
begin
  inherited;

  LockRefresh(qryPrevSalesOrderHd, True);
  qryPrevSalesOrderDt.Close;
  mdPrevSalesOrderDt.Close;
  if VarToStr(cgvPrevSalesOrderHdSalesorderid.EditValue) <> '' then
  begin
    qryPrevSalesOrderDt.Params[0].Value := cgvPrevSalesOrderHdSalesorderid.EditValue;
    OpenIfClose(qryPrevSalesOrderDt, False, False);
    mdPrevSalesOrderDt.CreateFieldsFromDataSet(qryPrevSalesOrderDt);
    mdPrevSalesOrderDt.LoadFromDataSet(qryPrevSalesOrderDt);
  end;
end;

end.
