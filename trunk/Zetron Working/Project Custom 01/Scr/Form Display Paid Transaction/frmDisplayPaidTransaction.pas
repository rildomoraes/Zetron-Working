unit frmDisplayPaidTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  //
  frmUniDisplayPeriod, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCalc,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ADODB, cxPC, cxSplitter;

type
  TfmDisplayPaidTransaction = class(TFormUniDisplayPeriod)
    pcDisplayPaidTransaction: TcxPageControl;
    tsPI: TcxTabSheet;
    tsSI: TcxTabSheet;
    dtsPrevPIHd: TADODataSet;
    dsPrevPIHd: TDataSource;
    dtsPrevPIDt: TADODataSet;
    dsPrevPIDt: TDataSource;
    dtsPrevSIHd: TADODataSet;
    dsPrevSIHd: TDataSource;
    dtsPrevSIDt: TADODataSet;
    dsPrevSIDt: TDataSource;
    cgPIHd: TcxGrid;
    cgvPrevPIHd: TcxGridDBTableView;
    cgvPrevPIHdvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPrevPIHddtPurchaseInvoiceDate: TcxGridDBColumn;
    cgvPrevPIHdinInvoiceDueDay: TcxGridDBColumn;
    cgvPrevPIHdvcSupplierName: TcxGridDBColumn;
    cgvPrevPIHdvcIdReceivingRecord: TcxGridDBColumn;
    cgvPrevPIHdvcIdPurchaseOrder: TcxGridDBColumn;
    cgvPrevPIHddcAmount: TcxGridDBColumn;
    cgvPrevPIHddcDisc: TcxGridDBColumn;
    cgvPrevPIHddcDiscAmount: TcxGridDBColumn;
    cgvPrevPIHddcTax: TcxGridDBColumn;
    cgvPrevPIHddcTaxAmount: TcxGridDBColumn;
    cgvPrevPIHddcTotalAmount: TcxGridDBColumn;
    cgvPrevPIHdtxNotes: TcxGridDBColumn;
    cgvPrevPIHdtxMemo: TcxGridDBColumn;
    cgvPrevPIHdvcEmployeeName: TcxGridDBColumn;
    cgvPrevPIDt: TcxGridDBTableView;
    cgvPrevPIDtvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPrevPIDtinNo: TcxGridDBColumn;
    cgvPrevPIDtvcIdSupplies: TcxGridDBColumn;
    cgvPrevPIDtvcSuppliesName: TcxGridDBColumn;
    cgvPrevPIDtinQty: TcxGridDBColumn;
    cgvPrevPIDtdcPrice: TcxGridDBColumn;
    cgvPrevPIDtdcDiscItem: TcxGridDBColumn;
    cgvPrevPIDtdcDiscItemPrice: TcxGridDBColumn;
    cgvPrevPIDtdcDiscAmount: TcxGridDBColumn;
    cgvPrevPIDtdcTaxAmount: TcxGridDBColumn;
    cgvPrevPIDtdcAmount: TcxGridDBColumn;
    cgvPrevSIHd: TcxGridDBTableView;
    cgvPrevSIHdvcIdSalesInvoice: TcxGridDBColumn;
    cgvPrevSIHddtSalesInvoiceDate: TcxGridDBColumn;
    cgvPrevSIHdvcCustomerName: TcxGridDBColumn;
    cgvPrevSIHdvcIdSalesOrder: TcxGridDBColumn;
    cgvPrevSIHdvcIdDeliveryOrder: TcxGridDBColumn;
    cgvPrevSIHddtDeliveryScheduleDate: TcxGridDBColumn;
    cgvPrevSIHdinInvoiceDueDay: TcxGridDBColumn;
    cgvPrevSIHddcAmount: TcxGridDBColumn;
    cgvPrevSIHddcDisc: TcxGridDBColumn;
    cgvPrevSIHddcDiscAmount: TcxGridDBColumn;
    cgvPrevSIHddcTax: TcxGridDBColumn;
    cgvPrevSIHddcTaxAmount: TcxGridDBColumn;
    cgvPrevSIHddcTotalAmount: TcxGridDBColumn;
    cgvPrevSIHdSalesName: TcxGridDBColumn;
    cgvPrevSIHdtxNotes: TcxGridDBColumn;
    cgvPrevSIHdtxMemo: TcxGridDBColumn;
    cgvPrevSIHdvcDeliveryOrderAddress: TcxGridDBColumn;
    cgvPrevSIHdvcDeliveryOrderNotes: TcxGridDBColumn;
    cgvPrevSIHdvcEmployeeName: TcxGridDBColumn;
    cgvPrevSIDt: TcxGridDBTableView;
    cgvPrevSIDtvcIdSalesInvoice: TcxGridDBColumn;
    cgvPrevSIDtinNo: TcxGridDBColumn;
    cgvPrevSIDtvcIdSupplies: TcxGridDBColumn;
    cgvPrevSIDtvcSuppliesName: TcxGridDBColumn;
    cgvPrevSIDtinQty: TcxGridDBColumn;
    cgvPrevSIDtdcPrice: TcxGridDBColumn;
    cgvPrevSIDtdcPricePrint: TcxGridDBColumn;
    cgvPrevSIDtdcDiscItem: TcxGridDBColumn;
    cgvPrevSIDtdcDiscItemPrice: TcxGridDBColumn;
    cgvPrevSIDtdcDiscAmount: TcxGridDBColumn;
    cgvPrevSIDtdcTaxAmount: TcxGridDBColumn;
    cgvPrevSIDtdcAmount: TcxGridDBColumn;
    cgPIHdLevel1: TcxGridLevel;
    cgPIDtLevel1: TcxGridLevel;
    cgPIDt: TcxGrid;
    cgSIHdLevel1: TcxGridLevel;
    cgSIHd: TcxGrid;
    cgSIDtLevel1: TcxGridLevel;
    cgSIDt: TcxGrid;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDisplayPaidTransaction: TfmDisplayPaidTransaction;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, untConstanta;

procedure TfmDisplayPaidTransaction.InitForm;
begin
  inherited;

  TcxCalcEditProperties(cgvPrevPIHddcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevPIHddcDisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevPIHddcDiscAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevPIHddcTax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevPIHddcTaxAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevPIHddcTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevPIDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevPIDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevPIDtdcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevPIDtdcDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevPIDtdcDiscAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevPIDtdcTaxAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevPIDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  TcxCalcEditProperties(cgvPrevSIHddcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSIHddcDisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevSIHddcDiscAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSIHddcTax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevSIHddcTaxAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSIHddcTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSIDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPrevSIDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSIDtdcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevSIDtdcDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSIDtdcDiscAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSIDtdcTaxAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSIDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  SetReadOnly(cgvPrevPIHd);
  SetReadOnly(cgvPrevPIDt);
  SetReadOnly(cgvPrevSIHd);
  SetReadOnly(cgvPrevSIDt);

  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsPrevPIDt, True);
  OpenIfClose(dtsPrevSIDt, True);
end;

procedure TfmDisplayPaidTransaction.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  // Purchase Invoice
  dtsPrevPIHd.Close;
  dtsPrevPIHd.Parameters[0].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsPrevPIHd.Parameters[1].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsPrevPIHd, True);

  // Sales Invoice
  dtsPrevSIHd.Close;
  dtsPrevSIHd.Parameters[0].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsPrevSIHd.Parameters[1].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsPrevSIHd, True);
end;

procedure TfmDisplayPaidTransaction.RefreshAll;
begin
  inherited;

  LockRefresh(dtsPrevPIHd, True);
  LockRefresh(dtsPrevPIDt, True);
  LockRefresh(dtsPrevSIHd, True);
  LockRefresh(dtsPrevSIDt, True);
end;

end.
