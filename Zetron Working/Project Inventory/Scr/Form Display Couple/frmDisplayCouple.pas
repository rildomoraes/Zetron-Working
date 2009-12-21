unit frmDisplayCouple;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniDisplayPeriod, Menus, cxLookAndFeelPainters, cxGraphics, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, cxCalendar, cxCalc, cxCurrencyEdit, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ExtCtrls, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, MemDS, DBAccess, Uni, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxContainer, cxMaskEdit, cxDropDownEdit,
  StdCtrls, cxButtons;

type
  TfmDisplayCouple = class(TFormUniDisplayPeriod)
    dsDisplay: TDataSource;
    dsDisplayDt: TDataSource;
    dsTransactionDt: TDataSource;
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplaystatusapprove: TcxGridDBColumn;
    cgvDisplaycoupleid: TcxGridDBColumn;
    cgvDisplaycoupledate: TcxGridDBColumn;
    cgvDisplaywarehousename: TcxGridDBColumn;
    cgvDisplayItemId: TcxGridDBColumn;
    cgvDisplayItemName: TcxGridDBColumn;
    cgvDisplaytype: TcxGridDBColumn;
    cgvDisplayitemnamechinese: TcxGridDBColumn;
    cgvDisplayqty: TcxGridDBColumn;
    cgvDisplaycogs: TcxGridDBColumn;
    cgvDisplaytotalcogs: TcxGridDBColumn;
    cgvDisplayemployeename: TcxGridDBColumn;
    cgvDisplayDt: TcxGridDBTableView;
    cgvDisplayDtcoupleid: TcxGridDBColumn;
    cgvDisplayDtno: TcxGridDBColumn;
    cgvDisplayDtitemidexternal: TcxGridDBColumn;
    cgvDisplayDtitemname: TcxGridDBColumn;
    cgvDisplayDttype: TcxGridDBColumn;
    cgvDisplayDtitemnamechinese: TcxGridDBColumn;
    cgvDisplayDtqty: TcxGridDBColumn;
    cgvDisplayDtqtycouple: TcxGridDBColumn;
    cgvTransactionDt: TcxGridDBTableView;
    cgvTransactionDtitemidexternal: TcxGridDBColumn;
    cgvTransactionDtitemname: TcxGridDBColumn;
    cgvTransactionDttype: TcxGridDBColumn;
    cgvTransactionDtitemnamechinese: TcxGridDBColumn;
    cgvTransactionDtdatecogs: TcxGridDBColumn;
    cgvTransactionDtqty: TcxGridDBColumn;
    cgvTransactionDtcogs: TcxGridDBColumn;
    cgvTransactionDttotalcogs: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    cgDisplayLevel2: TcxGridLevel;
    cgDisplayLevel3: TcxGridLevel;
    lblInfo: TLabel;
    imgInfo: TImage;
    qryDisplay: TUniQuery;
    qryDisplayDt: TUniQuery;
    qryTransactionDt: TUniQuery;
    procedure cgvTransactionDtStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
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
  fmDisplayCouple: TfmDisplayCouple;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal, dtmShare;


procedure TfmDisplayCouple.cgvTransactionDtStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
    if ARecord.Values[GetColumnByFieldName('Qty').Index] < '0' then
      AStyle := dmGlobal.stRedLight;
end;

procedure TfmDisplayCouple.InitForm;
begin
  inherited;

  // Default Filter
  cgvDisplay.DataController.Filter.Active := True;
  cgvDisplay.DataController.Filter.AddItem(cgvDisplay.DataController.Filter.Root,
    cgvDisplaystatusapprove, foEqual, '1', 'Posting');

  SetReadOnly(cgvDisplay);
  SetReadOnly(cgvDisplayDt);
  SetReadOnly(cgvTransactionDt);

  TcxCalcEditProperties(cgvDisplayqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvDisplaycogs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplaytotalcogs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvDisplayDtqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvDisplayDtqtycouple.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  MonthYearValueChange(nil); // -> Trigger qryDisplay
end;

procedure TfmDisplayCouple.MonthYearValueChange(Sender: TObject);
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

  qryTransactionDt.Close;
  qryTransactionDt.Params[0].Value := StrToInt(cbYear.Text);
  qryTransactionDt.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryTransactionDt);
end;

procedure TfmDisplayCouple.RefreshAll;
begin
  inherited;

  LockRefresh(qryDisplay, True);
  LockRefresh(qryTransactionDt);
end;

end.
