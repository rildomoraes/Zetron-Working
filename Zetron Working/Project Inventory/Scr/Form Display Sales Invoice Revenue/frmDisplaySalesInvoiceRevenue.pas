unit frmDisplaySalesInvoiceRevenue;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplayPeriod, Menus, cxLookAndFeelPainters, cxGraphics, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCurrencyEdit, cxCalc, cxImageComboBox, cxCalendar, cxGridChartView,
  cxGridDBChartView, cxPC, cxSplitter, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, MemDS, DBAccess, Uni,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls;

type
  TfmDisplaySalesInvoiceRevenue = class(TFormUniDisplayPeriod)
    dsDisplay: TDataSource;
    dsDisplayDtSimple: TDataSource;
    dsDisplayDtGroup: TDataSource;
    dsDisplayDt: TDataSource;
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplaysalesinvoicedate: TcxGridDBColumn;
    cgvDisplaySalesinvoiceid: TcxGridDBColumn;
    cgvDisplaysalesinvoiceidinternal: TcxGridDBColumn;
    cgvDisplayCustomername: TcxGridDBColumn;
    cgvDisplayCityName: TcxGridDBColumn;
    cgvDisplayProvinceName: TcxGridDBColumn;
    cgvDisplayCountryName: TcxGridDBColumn;
    cgvDisplaywarehousename: TcxGridDBColumn;
    cgvDisplayoutletname: TcxGridDBColumn;
    cgvDisplayprojectname: TcxGridDBColumn;
    cgvDisplaySalesman: TcxGridDBColumn;
    cgvDisplayAmount: TcxGridDBColumn;
    cgvDisplayDisc: TcxGridDBColumn;
    cgvDisplayDiscAmount: TcxGridDBColumn;
    cgvDisplayDisc2: TcxGridDBColumn;
    cgvDisplayDiscAmount2: TcxGridDBColumn;
    cgvDisplaytax: TcxGridDBColumn;
    cgvDisplaytaxamount: TcxGridDBColumn;
    cgvDisplayvoucher: TcxGridDBColumn;
    cgvDisplayvoucheramount: TcxGridDBColumn;
    cgvDisplayTotalAmount: TcxGridDBColumn;
    cgvDisplayOutstandingTotalAmount: TcxGridDBColumn;
    cgvDisplaymargin: TcxGridDBColumn;
    cgvDisplaypercent: TcxGridDBColumn;
    cgvDisplaytotalmargin: TcxGridDBColumn;
    cgvDisplaytotalpercent: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    pcDetail: TcxPageControl;
    tsSimple: TcxTabSheet;
    cgDisplaySimple: TcxGrid;
    cgvDisplaySimpleData: TcxGridDBTableView;
    cgvDisplaySimpleDataitemidexternal: TcxGridDBColumn;
    cgvDisplaySimpleDataitemname: TcxGridDBColumn;
    cgvDisplaySimpleDatatype: TcxGridDBColumn;
    cgvDisplaySimpleDataitemnamechinese: TcxGridDBColumn;
    cgvDisplaySimpleDataqty: TcxGridDBColumn;
    cgvDisplaySimpleDataqtyreturn: TcxGridDBColumn;
    cgvDisplaySimpleDatacogs: TcxGridDBColumn;
    cgvDisplaySimpleDatatotalcogs: TcxGridDBColumn;
    cgvDisplaySimpleDatasaleprice: TcxGridDBColumn;
    cgvDisplaySimpleDatatotalsales: TcxGridDBColumn;
    cgvDisplaySimpleDatamargin: TcxGridDBColumn;
    cgvDisplaySimpleDatapercent: TcxGridDBColumn;
    cgvDisplaySimpleDatatotalmargin: TcxGridDBColumn;
    cgvDisplaySimpleDatapercenttotal: TcxGridDBColumn;
    cgvDisplaySimpleChart: TcxGridDBChartView;
    cxGridDBChartSeries1: TcxGridDBChartSeries;
    cxGridDBChartSeries2: TcxGridDBChartSeries;
    cxGridDBChartSeries3: TcxGridDBChartSeries;
    cgvDisplaySimpleChart2: TcxGridDBChartView;
    cgvDisplaySimpleChart2Series1: TcxGridDBChartSeries;
    cgvDisplaySimpleChart2Series2: TcxGridDBChartSeries;
    cgvDisplaySimpleChart2Series3: TcxGridDBChartSeries;
    cgDisplaySimpleLevel1: TcxGridLevel;
    cgDisplaySimpleLevel2: TcxGridLevel;
    cgDisplaySimpleLevel3: TcxGridLevel;
    tsGroup: TcxTabSheet;
    cgDisplayGroup: TcxGrid;
    cgvDisplayGroupData: TcxGridDBTableView;
    cgvDisplayGroupDataItemIdExternal: TcxGridDBColumn;
    cgvDisplayGroupDataitemname: TcxGridDBColumn;
    cgvDisplayGroupDatastatusitem: TcxGridDBColumn;
    cgvDisplayGroupDatatype: TcxGridDBColumn;
    cgvDisplayGroupDataitemnamechinese: TcxGridDBColumn;
    cgvDisplayGroupDataqty: TcxGridDBColumn;
    cgvDisplayGroupDataqtyreturn: TcxGridDBColumn;
    cgvDisplayGroupDatacogs: TcxGridDBColumn;
    cgvDisplayGroupDatatotalcogs: TcxGridDBColumn;
    cgvDisplayGroupDatasaleprice: TcxGridDBColumn;
    cgvDisplayGroupDatatotalsales: TcxGridDBColumn;
    cgvDisplayGroupDatamargin: TcxGridDBColumn;
    cgvDisplayGroupDatapercent: TcxGridDBColumn;
    cgvDisplayGroupDatatotalmargin: TcxGridDBColumn;
    cgvDisplayGroupDatatotalpercent: TcxGridDBColumn;
    cgvDisplayGroupChart: TcxGridDBChartView;
    cgvDisplayGroupChartSeries3: TcxGridDBChartSeries;
    cgvDisplayGroupChartSeries2: TcxGridDBChartSeries;
    cgvDisplayGroupChartSeries1: TcxGridDBChartSeries;
    cgDisplayGroupLevel2: TcxGridLevel;
    cgDisplayGroupLevel3: TcxGridLevel;
    tsDetail: TcxTabSheet;
    cgDisplayDetail: TcxGrid;
    cgvDisplayDetail: TcxGridDBTableView;
    cgvDisplayDetailitemidexternal: TcxGridDBColumn;
    cgvDisplayDetailitemname: TcxGridDBColumn;
    cgvDisplayDetailtype: TcxGridDBColumn;
    cgvDisplayDetailitemnamechinese: TcxGridDBColumn;
    cgvDisplayDetaildatecogs: TcxGridDBColumn;
    cgvDisplayDetailqty: TcxGridDBColumn;
    cgvDisplayDetailqtyreturn: TcxGridDBColumn;
    cgvDisplayDetailcogs: TcxGridDBColumn;
    cgvDisplayDetailtotalcogs: TcxGridDBColumn;
    cgvDisplayDetailsaleprice: TcxGridDBColumn;
    cgvDisplayDetailtotalsales: TcxGridDBColumn;
    cgvDisplayDetailmargin: TcxGridDBColumn;
    cgvDisplayDetailpercent: TcxGridDBColumn;
    cgvDisplayDetailtotalmargin: TcxGridDBColumn;
    cgvDisplayDetailtotalpercent: TcxGridDBColumn;
    cgvDisplayDetailstatusitem: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qryDisplay: TUniQuery;
    qryDisplayDtSimple: TUniQuery;
    qryDisplayDtGroup: TUniQuery;
    qryDisplayDt: TUniQuery;
    procedure pcDetailChange(Sender: TObject);
    procedure cgvDisplayFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cgvDisplayDetailStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    procedure ShowDetail;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmDisplaySalesInvoiceRevenue: TfmDisplaySalesInvoiceRevenue;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmShare;

procedure TfmDisplaySalesInvoiceRevenue.cgvDisplayDetailStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
    if ARecord.Values[GetColumnByFieldName('Qty').Index] < '0' then
      AStyle := dmGlobal.stRedLight;
end;

procedure TfmDisplaySalesInvoiceRevenue.cgvDisplayFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;

  ShowDetail;
end;

procedure TfmDisplaySalesInvoiceRevenue.InitForm;
begin
  inherited;

  SetReadOnly(cgvDisplay);
  SetReadOnly(cgvDisplaySimpleData);
  SetReadOnly(cgvDisplayGroupData);
  SetReadOnly(cgvDisplayDetail);

  TcxCurrencyEditProperties(cgvDisplayAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplayDiscAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDisc2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplayDiscAmount2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaytax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplaytaxamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayvoucheramount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayOutstandingTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaymargin.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaypercent.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplaytotalmargin.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaytotalpercent.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplaySimpleDataqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvDisplaySimpleDataqtyreturn.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvDisplaySimpleDatacogs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaySimpleDatatotalcogs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaySimpleDatasaleprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaySimpleDatatotalsales.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaySimpleDatamargin.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaySimpleDatapercent.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplaySimpleDatatotalmargin.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaySimpleDatapercenttotal.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplayGroupDataqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvDisplayGroupDataqtyreturn.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvDisplayGroupDatacogs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayGroupDatatotalcogs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayGroupDatasaleprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayGroupDatatotalsales.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayGroupDatamargin.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayGroupDatapercent.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplayGroupDatatotalmargin.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayGroupDatatotalpercent.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplayDetailqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvDisplayDetailqtyreturn.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvDisplayDetailcogs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDetailtotalcogs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDetailsaleprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDetailtotalsales.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDetailmargin.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDetailpercent.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplayDetailtotalmargin.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDetailtotalpercent.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;

  MonthYearValueChange(nil); // -> Trigger qryDisplay
end;

procedure TfmDisplaySalesInvoiceRevenue.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qryDisplay.Close;
  qryDisplay.Params[0].Value := StrToInt(cbYear.Text);
  qryDisplay.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryDisplay, True);
end;

procedure TfmDisplaySalesInvoiceRevenue.pcDetailChange(Sender: TObject);
begin
  inherited;

  ShowDetail;
end;

procedure TfmDisplaySalesInvoiceRevenue.RefreshAll;
begin
  inherited;

  LockRefresh(qryDisplay, True);
end;

procedure TfmDisplaySalesInvoiceRevenue.ShowDetail;
begin
  qryDisplayDtSimple.Close;
  qryDisplayDtGroup.Close;
  qryDisplayDt.Close;

  if pcDetail.ActivePage = tsSimple then
  begin
    qryDisplayDtSimple.Params[0].Value := VarToStr(cgvDisplaySalesinvoiceid.EditValue);
    OpenIfClose(qryDisplayDtSimple, True);
  end;
  if pcDetail.ActivePage = tsGroup then
  begin
    qryDisplayDtGroup.Params[0].Value := VarToStr(cgvDisplaySalesinvoiceid.EditValue);
    OpenIfClose(qryDisplayDtGroup, True);
  end;
  if pcDetail.ActivePage = tsDetail then
  begin
    qryDisplayDt.Params[0].Value := VarToStr(cgvDisplaySalesinvoiceid.EditValue);
    OpenIfClose(qryDisplayDt, True);
  end;
end;

end.
