unit frmDisplaySalesPayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplayPeriod, Menus, cxLookAndFeelPainters, cxGraphics, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, cxCurrencyEdit, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  MemDS, DBAccess, Uni, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, cxContainer, cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons,
  ExtCtrls;

type
  TfmDisplaySalesPayment = class(TFormUniDisplayPeriod)
    dsDisplay: TDataSource;
    dsDisplayDt: TDataSource;
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplaystatusapprove: TcxGridDBColumn;
    cgvDisplaysalespaymentdate: TcxGridDBColumn;
    cgvDisplaysalespaymentid: TcxGridDBColumn;
    cgvDisplaycustomername: TcxGridDBColumn;
    cgvDisplayTotalAmount: TcxGridDBColumn;
    cgvDisplayDt: TcxGridDBTableView;
    cgvDisplayDtSalespaymentid: TcxGridDBColumn;
    cgvDisplayDtno: TcxGridDBColumn;
    cgvDisplayDtSalesinvoiceid: TcxGridDBColumn;
    cgvDisplayDttotalamount: TcxGridDBColumn;
    cgvDisplayDtpaymenttypename: TcxGridDBColumn;
    cgvDisplayDtgironumber: TcxGridDBColumn;
    cgvDisplayDtamount: TcxGridDBColumn;
    cgvDisplayDtreferenceid: TcxGridDBColumn;
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
  fmDisplaySalesPayment: TfmDisplaySalesPayment;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmShare;

procedure TfmDisplaySalesPayment.InitForm;
begin
  inherited;

  // Default Filter
  cgvDisplay.DataController.Filter.Active := True;
  cgvDisplay.DataController.Filter.AddItem(cgvDisplay.DataController.Filter.Root,
    cgvDisplaystatusapprove, foEqual, '1', 'Posting');

  SetReadOnly(cgvDisplay);
  SetReadOnly(cgvDisplayDt);

  TcxCurrencyEditProperties(cgvDisplayTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDttotalamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayDtamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  MonthYearValueChange(nil); // -> Trigger qryDisplay
end;

procedure TfmDisplaySalesPayment.MonthYearValueChange(Sender: TObject);
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

procedure TfmDisplaySalesPayment.RefreshAll;
begin
  inherited;

  LockRefresh(qryDisplay, True);
end;

end.
