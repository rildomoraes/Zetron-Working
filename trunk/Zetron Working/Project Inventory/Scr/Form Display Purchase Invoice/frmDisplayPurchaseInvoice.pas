unit frmDisplayPurchaseInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplayPeriod, Menus, cxLookAndFeelPainters, cxGraphics, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, cxCalendar, cxCurrencyEdit, cxCalc, cxCheckBox, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, MemDS, DBAccess, Uni, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxContainer, cxMaskEdit, cxDropDownEdit,
  StdCtrls, cxButtons, ExtCtrls;

type
  TfmDisplayPurchaseInvoice = class(TFormUniDisplayPeriod)
    dsDisplay: TDataSource;
    dsDisplayDt: TDataSource;
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplaystatusapprove: TcxGridDBColumn;
    cgvDisplaypurchaseinvoiceid: TcxGridDBColumn;
    cgvDisplayvendorpurchaseinvoiceid: TcxGridDBColumn;
    cgvDisplaypurchaseinvoicedate: TcxGridDBColumn;
    cgvDisplaypurchaseinvoiceduedate: TcxGridDBColumn;
    cgvDisplayvendorname: TcxGridDBColumn;
    cgvDisplaywarehousename: TcxGridDBColumn;
    cgvDisplayoutletname: TcxGridDBColumn;
    cgvDisplayTotal: TcxGridDBColumn;
    cgvDisplaydisc: TcxGridDBColumn;
    cgvDisplaydiscamount: TcxGridDBColumn;
    cgvDisplayDisc2: TcxGridDBColumn;
    cgvDisplaydiscamount2: TcxGridDBColumn;
    cgvDisplayvoucher: TcxGridDBColumn;
    cgvDisplayvoucheramount: TcxGridDBColumn;
    cgvDisplaytax: TcxGridDBColumn;
    cgvDisplaytaxamount: TcxGridDBColumn;
    cgvDisplayTotalAmount: TcxGridDBColumn;
    cgvDisplayoutstandingtotalamount: TcxGridDBColumn;
    cgvDisplayflagkonsinyasi: TcxGridDBColumn;
    cgvDisplayDt: TcxGridDBTableView;
    cgvDisplayDtpurchaseinvoiceid: TcxGridDBColumn;
    cgvDisplayDtno: TcxGridDBColumn;
    cgvDisplayDtItemIdExternal: TcxGridDBColumn;
    cgvDisplayDtitemname: TcxGridDBColumn;
    cgvDisplayDtitemtext: TcxGridDBColumn;
    cgvDisplayDttype: TcxGridDBColumn;
    cgvDisplayDtitemnamechinese: TcxGridDBColumn;
    cgvDisplayDtexpireddate: TcxGridDBColumn;
    cgvDisplayDtqty: TcxGridDBColumn;
    cgvDisplayDtqtyreturnleft: TcxGridDBColumn;
    cgvDisplayDtprice: TcxGridDBColumn;
    cgvDisplayDtdiscitem: TcxGridDBColumn;
    cgvDisplayDtdiscitemprice: TcxGridDBColumn;
    cgvDisplayDtdiscitem2: TcxGridDBColumn;
    cgvDisplayDtdiscitemprice2: TcxGridDBColumn;
    cgvDisplayDtamount: TcxGridDBColumn;
    cgvDisplayDtemployeename: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    cgDisplayLevel2: TcxGridLevel;
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
  fmDisplayPurchaseInvoice: TfmDisplayPurchaseInvoice;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmShare;

procedure TfmDisplayPurchaseInvoice.InitForm;
begin
  inherited;

  // Default Filter
  cgvDisplay.DataController.Filter.Active := True;
  cgvDisplay.DataController.Filter.AddItem(cgvDisplay.DataController.Filter.Root,
    cgvDisplaystatusapprove, foEqual, '1', 'Posting');

  SetReadOnly(cgvDisplay);
  SetReadOnly(cgvDisplayDt);

  TcxCurrencyEditProperties(cgvDisplayTotal.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvDisplaydisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplaydiscamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDisc2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplaydiscamount2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayvoucheramount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaytax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplaytaxamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayoutstandingtotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvDisplayDtqtyreturnleft.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvDisplayDtprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtdiscitem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplayDtdiscitemprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtdiscitem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCurrencyEditProperties(cgvDisplayDtdiscitemprice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  MonthYearValueChange(nil); // -> Trigger qryDisplay
end;

procedure TfmDisplayPurchaseInvoice.MonthYearValueChange(Sender: TObject);
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

procedure TfmDisplayPurchaseInvoice.RefreshAll;
begin
  inherited;

  LockRefresh(qryDisplay, True);
end;

end.
