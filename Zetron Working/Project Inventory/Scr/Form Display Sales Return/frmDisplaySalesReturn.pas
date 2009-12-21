unit frmDisplaySalesReturn;

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
  TfmDisplaySalesReturn = class(TFormUniDisplayPeriod)
    dsDisplay: TDataSource;
    dsDisplayDt: TDataSource;
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplaystatusapprove: TcxGridDBColumn;
    cgvDisplaySalesinvoiceid: TcxGridDBColumn;
    cgvDisplaysalesreturnidinternal: TcxGridDBColumn;
    cgvDisplaySalesinvoicedate: TcxGridDBColumn;
    cgvDisplayCustomername: TcxGridDBColumn;
    cgvDisplaywarehousename: TcxGridDBColumn;
    cgvDisplayTotal: TcxGridDBColumn;
    cgvDisplaydisc: TcxGridDBColumn;
    cgvDisplaydiscamount: TcxGridDBColumn;
    cgvDisplaydisc2: TcxGridDBColumn;
    cgvDisplaydiscamount2: TcxGridDBColumn;
    cgvDisplaytax: TcxGridDBColumn;
    cgvDisplaytaxamount: TcxGridDBColumn;
    cgvDisplayTotalAmount: TcxGridDBColumn;
    cgvDisplayoutstandingtotalamount: TcxGridDBColumn;
    cgvDisplayDt: TcxGridDBTableView;
    cgvDisplayDtSalesreturnid: TcxGridDBColumn;
    cgvDisplayDtSalesinvoiceid: TcxGridDBColumn;
    cgvDisplayDtNoSI: TcxGridDBColumn;
    cgvDisplayDtItemIdExternal: TcxGridDBColumn;
    cgvDisplayDtitemname: TcxGridDBColumn;
    cgvDisplayDttype: TcxGridDBColumn;
    cgvDisplayDtitemnamechinese: TcxGridDBColumn;
    cgvDisplayDtexpireddate: TcxGridDBColumn;
    cgvDisplayDtqty: TcxGridDBColumn;
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
  fmDisplaySalesReturn: TfmDisplaySalesReturn;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmShare;

procedure TfmDisplaySalesReturn.InitForm;
begin
  inherited;

  // Default Filter
  cgvDisplay.DataController.Filter.Active := True;
  cgvDisplay.DataController.Filter.AddItem(cgvDisplay.DataController.Filter.Root,
    cgvDisplaystatusapprove, foEqual, '1', 'Posting');

  SetReadOnly(cgvDisplay);
  SetReadOnly(cgvDisplayDt);

  TcxCurrencyEditProperties(cgvDisplayTotal.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaydisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaydiscamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDisc2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaydiscamount2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaytax.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaytaxamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayoutstandingtotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtdiscitem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtdiscitemprice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtdiscitem2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtdiscitemprice2.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  MonthYearValueChange(nil); // -> Trigger qryDisplay
end;

procedure TfmDisplaySalesReturn.MonthYearValueChange(Sender: TObject);
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

procedure TfmDisplaySalesReturn.RefreshAll;
begin
  inherited;

  LockRefresh(qryDisplay, True);
end;

end.
