unit frmDisplayPurchaseOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplayPeriod, Menus, cxLookAndFeelPainters, cxGraphics, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, cxCalendar, cxCurrencyEdit, cxCalc, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  MemDS, DBAccess, Uni, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, StdCtrls,
  cxButtons, ExtCtrls;

type
  TfmDisplayPurchaseOrder = class(TFormUniDisplayPeriod)
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplaystatusapprove: TcxGridDBColumn;
    cgvDisplaypurchaseOrderid: TcxGridDBColumn;
    cgvDisplaypurchaseOrderdate: TcxGridDBColumn;
    cgvDisplayvendorpurchaseOrderid: TcxGridDBColumn;
    cgvDisplayvendorname: TcxGridDBColumn;
    cgvDisplayTotal: TcxGridDBColumn;
    cgvDisplaydisc: TcxGridDBColumn;
    cgvDisplaydiscamount: TcxGridDBColumn;
    cgvDisplayDisc2: TcxGridDBColumn;
    cgvDisplayDiscAmount2: TcxGridDBColumn;
    cgvDisplaytax: TcxGridDBColumn;
    cgvDisplaytaxamount: TcxGridDBColumn;
    cgvDisplayTotalAmount: TcxGridDBColumn;
    cgvDisplayDt: TcxGridDBTableView;
    cgvDisplayDtpurchaseOrderid: TcxGridDBColumn;
    cgvDisplayDtno: TcxGridDBColumn;
    cgvDisplayDtitemidexternal: TcxGridDBColumn;
    cgvDisplayDtitemname: TcxGridDBColumn;
    cgvDisplayDtitemnamechinese: TcxGridDBColumn;
    cgvDisplayDtitemtext: TcxGridDBColumn;
    cgvDisplayDtitemtype: TcxGridDBColumn;
    cgvDisplayDtqty: TcxGridDBColumn;
    cgvDisplayDtqtyoutstanding: TcxGridDBColumn;
    cgvDisplayDtprice: TcxGridDBColumn;
    cgvDisplayDtdiscitem: TcxGridDBColumn;
    cgvDisplayDtdiscitemprice: TcxGridDBColumn;
    cgvDisplayDtdiscitem2: TcxGridDBColumn;
    cgvDisplayDtdiscitemprice2: TcxGridDBColumn;
    cgvDisplayDtamount: TcxGridDBColumn;
    cgvDisplayDtemployeename: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    cgDisplayLevel2: TcxGridLevel;
    dsDisplayDt: TDataSource;
    dsDisplay: TDataSource;
    qryDisplay: TUniQuery;
    qryDisplayDt: TUniQuery;
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmDisplayPurchaseOrder: TfmDisplayPurchaseOrder;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal;

procedure TfmDisplayPurchaseOrder.InitForm;
begin
  inherited;

  // Default Filter
  cgvDisplay.DataController.Filter.Active := True;
  cgvDisplay.DataController.Filter.AddItem(cgvDisplay.DataController.Filter.Root,
    cgvDisplaystatusapprove, foEqual, '1', 'Posting');

  SetReadOnly(cgvDisplay);
  SetReadOnly(cgvDisplayDt);

  TcxCurrencyEditProperties(cgvDisplayTotal.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaydisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplaydiscamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDisc2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplaydiscamount2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaytax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplaytaxamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvDisplayDtprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtdiscitem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplayDtdiscitemprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtdiscitem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplayDtdiscitemprice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  MonthYearValueChange(nil); // -> Trigger qryDisplay
end;

procedure TfmDisplayPurchaseOrder.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  qryDisplay.Close;
  qryDisplay.Params[0].Value := StrToInt(cbYear.Text);
  qryDisplay.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryDisplay, True);

  qryDisplayDt.Close;
  qryDisplayDt.Params[0].Value := StrToInt(cbYear.Text);
  qryDisplayDt.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryDisplayDt);
end;

procedure TfmDisplayPurchaseOrder.RefreshAll;
begin
  inherited;

  LockRefresh(qryDisplay, True);
end;

end.
