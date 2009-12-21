unit frmDisplayOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplay, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxDBExtLookupComboBox, cxCalc, cxCurrencyEdit, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, StdCtrls, cxSplitter, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxPC, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, MemDS, DBAccess, Uni, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, ExtCtrls;

type
  TfmDisplayOrder = class(TFormUniDisplay)
    dsPrevItemOrderBalancePO: TDataSource;
    dsPrevPODt: TDataSource;
    dsPrevPIDt: TDataSource;
    dsPrevItemOrderBalanceSO: TDataSource;
    dsPrevSODt: TDataSource;
    dsPrevSIDt: TDataSource;
    pcOrder: TcxPageControl;
    tsPurchaseOrder: TcxTabSheet;
    cgPO: TcxGrid;
    cgvPO: TcxGridDBTableView;
    cgvPOitemitemcategoryname: TcxGridDBColumn;
    cgvPOitemidexternal: TcxGridDBColumn;
    cgvPOitemname: TcxGridDBColumn;
    cgvPOitemnamechinese: TcxGridDBColumn;
    cgvPOtype: TcxGridDBColumn;
    cgvPOpoopeningqty: TcxGridDBColumn;
    cgvPOpoqtyplus: TcxGridDBColumn;
    cgvPOpoqtyminus: TcxGridDBColumn;
    cgvPOOutstandingPO: TcxGridDBColumn;
    cgPOLevel1: TcxGridLevel;
    tsPurchaseOrderDt: TcxTabSheet;
    cgPODtPO: TcxGrid;
    cgvPODtPO: TcxGridDBTableView;
    cgvPODtPOpurchaseorderdate: TcxGridDBColumn;
    cgvPODtPOpurchaseorderid: TcxGridDBColumn;
    cgvPODtPOvendorname: TcxGridDBColumn;
    cgvPODtPOvendorpurchaseorderid: TcxGridDBColumn;
    cgvPODtPOqty: TcxGridDBColumn;
    cgvPODtPOprice: TcxGridDBColumn;
    cgvPODtPOqtyoutstanding: TcxGridDBColumn;
    cgPODtPOLevel1: TcxGridLevel;
    cgPODtPI: TcxGrid;
    cgvPODtPI: TcxGridDBTableView;
    cgvPODtPIpurchaseinvoicedate: TcxGridDBColumn;
    cgvPODtPIpurchaseinvoiceid: TcxGridDBColumn;
    cgvPODtPIvendorpurchaseinvoiceid: TcxGridDBColumn;
    cgvPODtPIpurchaseorderid: TcxGridDBColumn;
    cgvPODtPIvendorpurchaseorderid: TcxGridDBColumn;
    cgvPODtPIqty: TcxGridDBColumn;
    cgPODtPILevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    tsSalesOrder: TcxTabSheet;
    cgSO: TcxGrid;
    cgvSO: TcxGridDBTableView;
    cgvSOitemitemcategoryname: TcxGridDBColumn;
    cgvSOitemidexternal: TcxGridDBColumn;
    cgvSOitemname: TcxGridDBColumn;
    cgvSOitemnamechinese: TcxGridDBColumn;
    cgvSOtype: TcxGridDBColumn;
    cgvSOsoopeningqty: TcxGridDBColumn;
    cgvSOsoqtyplus: TcxGridDBColumn;
    cgvSOsoqtyminus: TcxGridDBColumn;
    cgvSOOutstandingSO: TcxGridDBColumn;
    cgSOLevel1: TcxGridLevel;
    tsSalesOrderDt: TcxTabSheet;
    cgSODtSO: TcxGrid;
    cgvSODtSO: TcxGridDBTableView;
    cgvSODtSOsalesorderdate: TcxGridDBColumn;
    cgvSODtSOsalesorderid: TcxGridDBColumn;
    cgvSODtSOcustomername: TcxGridDBColumn;
    cgvSODtSOcustomersalesorderid: TcxGridDBColumn;
    cgvSODtSOqty: TcxGridDBColumn;
    cgvSODtSOprice: TcxGridDBColumn;
    cgvSODtSOqtyoutstanding: TcxGridDBColumn;
    cgSODtSOLevel1: TcxGridLevel;
    cgSODtSI: TcxGrid;
    cgvSODtSI: TcxGridDBTableView;
    cgvSODtSIsalesinvoicedate: TcxGridDBColumn;
    cgvSODtSIsalesinvoiceid: TcxGridDBColumn;
    cgvSODtSIsalesinvoiceidinternal: TcxGridDBColumn;
    cgvSODtSIsalesorderid: TcxGridDBColumn;
    cgvSODtSIcustomersalesorderid: TcxGridDBColumn;
    cgvSODtSIqty: TcxGridDBColumn;
    cgSODtSILevel1: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    pnlCustom: TPanel;
    Label1: TLabel;
    cbYear: TcxComboBox;
    qryPrevItemOrderBalancePO: TUniQuery;
    qryPrevPODt: TUniQuery;
    qryPrevPIDt: TUniQuery;
    qryPrevItemOrderBalanceSO: TUniQuery;
    qryPrevSODt: TUniQuery;
    qryPrevSIDt: TUniQuery;
    procedure pcOrderChange(Sender: TObject);
  private
    procedure YearValueChange(Sender: TObject);
    procedure ShowGridData;
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmDisplayOrder: TfmDisplayOrder;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmShare;

procedure TfmDisplayOrder.InitForm;
begin
  inherited;

  SetReadOnly(cgvPO);
  SetReadOnly(cgvPODtPO);
  SetReadOnly(cgvPODtPI);
  SetReadOnly(cgvSO);
  SetReadOnly(cgvSODtSO);
  SetReadOnly(cgvSODtSI);

  TcxCalcEditProperties(cgvPOpoopeningqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPOpoqtyplus.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPOpoqtyminus.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPOOutstandingPO.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPODtPOqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvPODtPOprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPODtPOqtyoutstanding.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPODtPIqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSOsoopeningqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSOsoqtyplus.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSOsoqtyminus.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvSOOutstandingSO.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSODtSOqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvSODtSOprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSODtSOqtyoutstanding.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSODtSIqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
  cbYear.Properties.OnChange := YearValueChange;
  YearValueChange(nil); // -> Trigger dtsPrevItemOrderBalance
end;

procedure TfmDisplayOrder.pcOrderChange(Sender: TObject);
begin
  inherited;

  ShowGridData;
end;

procedure TfmDisplayOrder.RefreshAll;
begin
  inherited;

  ShowGridData;
end;

procedure TfmDisplayOrder.ShowGridData;
begin
  if pcOrder.ActivePageIndex = tsPurchaseOrder.PageIndex then
  begin
    qryPrevItemOrderBalancePO.Close;
    qryPrevItemOrderBalancePO.Params[0].Value := cbYear.Text;
    OpenIfClose(qryPrevItemOrderBalancePO, True);
  end;
  if pcOrder.ActivePageIndex = tsPurchaseOrderDt.PageIndex then
  begin
    qryPrevPODt.Close;
    qryPrevPIDt.Close;
    if not qryPrevItemOrderBalancePO.IsEmpty then
    begin
      qryPrevPODt.Params[0].Value := cbYear.Text;
      qryPrevPODt.Params[1].Value := qryPrevItemOrderBalancePO.FieldByName('ItemId').AsVariant;
      OpenIfClose(qryPrevPODt, True);
      qryPrevPIDt.Params[0].Value := cbYear.Text;
      qryPrevPIDt.Params[1].Value := qryPrevItemOrderBalancePO.FieldByName('ItemId').AsVariant;
      OpenIfClose(qryPrevPIDt, True);
    end;
  end;
  if pcOrder.ActivePageIndex = tsSalesOrder.PageIndex then
  begin
    qryPrevItemOrderBalanceSO.Close;
    qryPrevItemOrderBalanceSO.Params[0].Value := cbYear.Text;
    OpenIfClose(qryPrevItemOrderBalanceSO, True);
  end;
  if pcOrder.ActivePageIndex = tsSalesOrderDt.PageIndex then
  begin
    qryPrevSODt.Close;
    qryPrevSIDt.Close;
    if not qryPrevItemOrderBalanceSO.IsEmpty then
    begin
      qryPrevSODt.Params[0].Value := cbYear.Text;
      qryPrevSODt.Params[1].Value := qryPrevItemOrderBalanceSO.FieldByName('ItemId').AsVariant;
      OpenIfClose(qryPrevSODt, True);
      qryPrevSIDt.Params[0].Value := cbYear.Text;
      qryPrevSIDt.Params[1].Value := qryPrevItemOrderBalanceSO.FieldByName('ItemId').AsVariant;
      OpenIfClose(qryPrevSIDt, True);
    end;
  end;
end;

procedure TfmDisplayOrder.YearValueChange(Sender: TObject);
begin
  ShowGridData;
end;

end.

