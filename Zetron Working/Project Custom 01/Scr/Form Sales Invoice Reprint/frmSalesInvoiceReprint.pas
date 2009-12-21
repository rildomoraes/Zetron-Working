unit frmSalesInvoiceReprint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  //
  frmUniTransactionApprovalEx, Menus, cxLookAndFeelPainters,
  cxGraphics, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, dxDockControl, DB,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, ADODB, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxSpinEdit, cxCalc, cxCurrencyEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, cxCheckBox, cxMemo, cxPC, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Grids, DBGrids;

type
  TfmSalesInvoiceReprint = class(TFormUniTransactionApprovalEx)
    dtsIMSalesInvoiceHd: TADODataSet;
    dtsIMSalesInvoiceDt: TADODataSet;
    dsIMSalesInvoiceDt: TDataSource;
    qryGetSITotalAmount: TADOQuery;
    cgSalesInvoiceHd: TcxGrid;
    cgvSalesInvoiceHd: TcxGridDBTableView;
    cgvSalesInvoiceHdvcIdSalesInvoice: TcxGridDBColumn;
    cgvSalesInvoiceHddtDateSalesInvoice: TcxGridDBColumn;
    cgvSalesInvoiceHdvcIdCustomer: TcxGridDBColumn;
    cgvSalesInvoiceHdvcIdCustomer2: TcxGridDBColumn;
    cgvSalesInvoiceHdchFlagPrint: TcxGridDBColumn;
    cgvSalesInvoiceHdchStatusApprove: TcxGridDBColumn;
    cgSalesInvoiceHdLevel1: TcxGridLevel;
    pnlDetailTop: TPanel;
    lblSalesInvoiceDate: TLabel;
    lblIdSalesInvoice: TLabel;
    lblEmployeeName: TLabel;
    lblIdCustomer: TLabel;
    lblIdSalesOrder: TLabel;
    lblType: TLabel;
    lblInvoiceDueDay: TLabel;
    lblWarehouse: TLabel;
    lblDeliverySchedule: TLabel;
    lblSalesName: TLabel;
    dblcIdCustomer: TcxDBExtLookupComboBox;
    dbeSalesInvoiceDate: TcxDBDateEdit;
    dbeIdSalesInvoice: TcxDBTextEdit;
    dbeEmployeeName: TcxDBTextEdit;
    dbicType: TcxDBImageComboBox;
    dbeInvoiceDueDay: TcxDBSpinEdit;
    dblcIdWarehouse: TcxDBExtLookupComboBox;
    pcNotes: TcxPageControl;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsMemo: TcxTabSheet;
    dbmMemo: TcxDBMemo;
    tsDeliveryAddress: TcxTabSheet;
    dbmAddress: TcxDBMemo;
    tsNotesDeliveryOrder: TcxTabSheet;
    dbmNotesDeliveryOrder: TcxDBMemo;
    dbeDeliverySchedule: TcxDBDateEdit;
    dbeIdSalesOrder: TcxDBTextEdit;
    dblcSalesName: TcxDBExtLookupComboBox;
    dbchPendingDO: TcxDBCheckBox;
    dbeRef: TcxDBTextEdit;
    dbchFlagManual: TcxDBCheckBox;
    pnlDetailBottom: TPanel;
    lblTax: TLabel;
    lblTotal: TLabel;
    lblDisc: TLabel;
    dbeTax: TcxDBSpinEdit;
    dbeDisc: TcxDBSpinEdit;
    dbeDiscAmount: TcxDBCurrencyEdit;
    dbeTaxAmount: TcxDBCurrencyEdit;
    dbeTotalAmount: TcxDBCurrencyEdit;
    cgSalesInvoiceDt: TcxGrid;
    cgvSalesInvoiceDt: TcxGridDBBandedTableView;
    cgvSalesInvoiceDtvcIdSalesInvoice: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtinNo: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtvcIdSupplies: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtvcIdSupplies2: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtvcIdSupplies3: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtinQty: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtdcPrice: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtdcPricePrint: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtdcDiscItem: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtdcDiscItemPrice: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtdcAmount: TcxGridDBBandedColumn;
    cgSalesInvoiceDtLevel1: TcxGridLevel;
    qryGetSOInfo: TADOQuery;
    qryGetSOOutstandingQty: TADOQuery;
    procedure actPrintExecute(Sender: TObject);
    procedure dtsIMSalesInvoiceHdBeforePost(DataSet: TDataSet);
    procedure cgvSalesInvoiceHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private

  public
    { Public declarations }
  end;

var
  fmSalesInvoiceReprint: TfmSalesInvoiceReprint;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, untConstanta;

procedure TfmSalesInvoiceReprint.actPrintExecute(Sender: TObject);
begin
  // Validate
  if dtsIMSalesInvoiceHd.IsEmpty then
    Exit;
  if dtsIMSalesInvoiceHd.FieldByName('chFlagManual').AsInteger = 1 then
  begin
    MessageDlg(MSG_SI_MANUAL, mtInformation, [mbOk], 0);
    Exit;
  end;

  inherited;
end;

procedure TfmSalesInvoiceReprint.cgvSalesInvoiceHdStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) >= IntToStr(FStatusApprove + 1) then
      AStyle := dmGlobal.stYellowLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) = IntToStr(STATUS_REJECT) then
      AStyle := dmGlobal.stRedLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) = IntToStr(STATUS_DONE) then
      AStyle := dmGlobal.stGreenLight;
  end;
end;

procedure TfmSalesInvoiceReprint.dtsIMSalesInvoiceHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmSalesInvoiceReprint.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_SI);

  // Display Format
  TcxCalcEditProperties(cgvSalesInvoiceDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSalesInvoiceDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesInvoiceDtdcPricePrint.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesInvoiceDtdcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvSalesInvoiceDtdcDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesInvoiceDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeDisc.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeDiscAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTax.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeTaxAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvSalesInvoiceDt.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  // Initial
  btnApprove.Visible := False;
  bvlSpacer3.Visible := False;
  btnNotes.Visible := False;
  btnVoid.Visible := False;
  btnRevision.Visible := False;
  bvlSpacer2.Visible := False;
  btnCancel.Visible := False;
  btnPost.Visible := False;
  btnEdit.Visible := False;
  btnInsert.Visible := False;

  SetReadOnly(cgvSalesInvoiceHd);
  SetReadOnly(cgvSalesInvoiceDt);
  SetReadOnly(dbeIdSalesInvoice, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdSalesOrder, True, clWindow);
  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbeDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeSalesInvoiceDate, True, COLOR_INACTIVE);
  SetReadOnly(dblcIdCustomer);
  SetReadOnly(dblcIdWarehouse);
  SetReadOnly(dbicType);
  SetReadOnly(dbeIdSalesOrder);
  SetReadOnly(dblcSalesName);
  SetReadOnly(dbeDeliverySchedule);
  SetReadOnly(dbeInvoiceDueDay);
  SetReadOnly(dbeRef);
  SetReadOnly(dbmNotesDeliveryOrder);
  SetReadOnly(dbmAddress);
  SetReadOnly(dbmMemo);
  SetReadOnly(dbchFlagManual);
  SetReadOnly(dbchPendingDO);
  SetReadOnly(dbeTax);
  SetReadOnly(dbeDisc);

//  if (dmGlobal.OptionOnlySIEntryCanModifyData) and (FStatusApprove <> 0) then
//  begin
//    pnlHeaderControl.Visible := False;
//    pnlDetailControl.Visible := False;
//    SetReadOnly(cgvSalesInvoiceDt);
//    SetReadOnly(dbeSalesInvoiceDate, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dblcIdCustomer, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dblcIdWarehouse, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dbicType, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dbeIdSalesOrder, True, COLOR_INACTIVE);
//    SetReadOnly(dblcSalesName, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dbeDeliverySchedule, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dbeInvoiceDueDay, True, COLOR_INACTIVE);
//    SetReadOnly(dbmMemo, True, COLOR_INACTIVE);
//    SetReadOnly(dbmAddress, True, COLOR_INACTIVE);
//    SetReadOnly(dbmNotesDeliveryOrder, True, COLOR_INACTIVE);
//    SetReadOnly(dbeDisc, True, COLOR_INACTIVE);
//    SetReadOnly(dbeTax, True, COLOR_INACTIVE);
//    SetReadOnly(dbeRef, True, COLOR_INACTIVE);
//    dbchPendingDO.Properties.ReadOnly := True;
//    btnCustomer.Enabled := False;
//    btnIdSalesOrder.Enabled := False;
//  end;

  // Open all query
  OpenIfClose(dmInventory.qryCustomer, True);
  OpenIfClose(dmInventory.qryWarehouse);
  OpenIfClose(dmInventory.qrySupplies, True);
  OpenIfClose(dmInventory.qryPrevSalesman);

  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMSalesInvoiceDt);
end;

procedure TfmSalesInvoiceReprint.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  dtsIMSalesInvoiceHd.Close;
  dtsIMSalesInvoiceHd.Parameters[0].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMSalesInvoiceHd.Parameters[1].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsIMSalesInvoiceHd, True);
  cgvSalesInvoiceHd.ViewData.Expand(True);
end;

procedure TfmSalesInvoiceReprint.RefreshAll;
begin
  inherited;

  LockRefresh(dtsIMSalesInvoiceHd, True);
  LockRefresh(dtsIMSalesInvoiceDt);
  cgvSalesInvoiceHd.ViewData.Expand(False);
end;

end.
