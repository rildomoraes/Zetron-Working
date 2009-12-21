unit frmDeliveryOrderPendingAndReject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  //
  frmUniPosition, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBLookupComboBox,
  cxDBExtLookupComboBox, cxCurrencyEdit, cxImageComboBox, cxSpinEdit, cxCalc,
  ExtCtrls, cxMemo, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDropDownEdit,
  cxCalendar, cxPC, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, ADODB,
  cxContainer, cxTextEdit, cxMaskEdit, StdCtrls, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxButtons, cxCheckBox;

type
  TfmDeliveryOrderPendingAndReject = class(TFormUniPosition)
    pnlCustom: TPanel;
    lblPeriod: TLabel;
    cbMonth: TcxComboBox;
    cbYear: TcxComboBox;
    dtsIMDeliveryOrderHd: TADODataSet;
    dsIMDeliveryOrderHd: TDataSource;
    dtsIMDeliveryOrderDt: TADODataSet;
    dsIMDeliveryOrderDt: TDataSource;
    cgDeliveryOrderHd: TcxGrid;
    cgvDeliveryOrderHd: TcxGridDBTableView;
    cgvDeliveryOrderHdchStatusApprove: TcxGridDBColumn;
    cgvDeliveryOrderHdvcIdDeliveryOrder: TcxGridDBColumn;
    cgvDeliveryOrderHddtDeliveryOrderDate: TcxGridDBColumn;
    cgvDeliveryOrderHdvcIdWarehouse: TcxGridDBColumn;
    cgvDeliveryOrderHdvcIdSalesInvoice: TcxGridDBColumn;
    cgvDeliveryOrderHdvcCustomerName: TcxGridDBColumn;
    cgvDeliveryOrderHdvcCategoryName: TcxGridDBColumn;
    cgvDeliveryOrderHdvcAddress: TcxGridDBColumn;
    cgvDeliveryOrderHddcTotalAmount: TcxGridDBColumn;
    cgvDeliveryOrderHddcOutstandingTotalAmount: TcxGridDBColumn;
    cgvDeliveryOrderHdchFlagPending: TcxGridDBColumn;
    cgvDeliveryOrderHdvcSalesName: TcxGridDBColumn;
    cgvDeliveryOrderHdinCounterPrint: TcxGridDBColumn;
    cgDeliveryOrderHdLevel1: TcxGridLevel;
    pnlDetail: TPanel;
    cgDeliveryOrderDt: TcxGrid;
    cgvDeliveryOrderDt: TcxGridDBTableView;
    cgvDeliveryOrderDtvcIdDeliveryOrder: TcxGridDBColumn;
    cgvDeliveryOrderDtinNo: TcxGridDBColumn;
    cgvDeliveryOrderDtvcIdSupplies: TcxGridDBColumn;
    cgvDeliveryOrderDtvcIdSupplies2: TcxGridDBColumn;
    cgvDeliveryOrderDtvcIdSupplies3: TcxGridDBColumn;
    cgvDeliveryOrderDtinQty: TcxGridDBColumn;
    cgvDeliveryOrderDtdtSystemStamp: TcxGridDBColumn;
    cgDeliveryOrderDtLevel1: TcxGridLevel;
    pcNotes: TcxPageControl;
    tsInfo: TcxTabSheet;
    lblIdWarehouse: TLabel;
    lblIdDeliveryOrder: TLabel;
    lblDeliveryOrderDate: TLabel;
    lblCustomerName: TLabel;
    lblCustomerSO: TLabel;
    lblCustomerSI: TLabel;
    lblActualDeliveryDate: TLabel;
    lblEmployeeName: TLabel;
    lblInvoiceOutstanding: TLabel;
    Bevel1: TBevel;
    lblInvoiceAmount: TLabel;
    dbeEmployeeName: TcxDBTextEdit;
    dbeActualDeliveryDate: TcxDBDateEdit;
    dbeCustomerSI: TcxDBTextEdit;
    dbeCustomerSO: TcxDBTextEdit;
    dbeCustomerName: TcxDBTextEdit;
    dblcIdWarehouse: TcxDBExtLookupComboBox;
    dbeDeliveryOrderDate: TcxDBDateEdit;
    dbeIdDeliveryOrder: TcxDBTextEdit;
    dbeOutstandingTotalAmount: TcxDBCurrencyEdit;
    dbeTotalAmount: TcxDBCurrencyEdit;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsMemo: TcxTabSheet;
    dbmMemo: TcxDBMemo;
    tsDeliveryAddress: TcxTabSheet;
    dbmAddress: TcxDBMemo;
    shpPending: TShape;
    lblPending: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    btnPending: TcxButton;
    btnRelease: TcxButton;
    actPending: TAction;
    actRelease: TAction;
    shpReject: TShape;
    lblReject: TLabel;
    btnReject: TcxButton;
    btnUnReject: TcxButton;
    actReject: TAction;
    actUnReject: TAction;
    btnRefresh: TcxButton;
    actRefresh: TAction;
    cgvDeliveryOrderHdchFlagMutasi: TcxGridDBColumn;
    procedure actRefreshExecute(Sender: TObject);
    procedure actUnRejectExecute(Sender: TObject);
    procedure actRejectExecute(Sender: TObject);
    procedure cgvDeliveryOrderHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure actReleaseExecute(Sender: TObject);
    procedure actPendingExecute(Sender: TObject);
  protected
    procedure InitForm; override;
  private
    FStatusWarehouse: string;
    FCurrentWarehouse: string;
    FCanPending: boolean;
    FCanReject: boolean;

    procedure RefreshAll;
    procedure MonthYearValueChange(Sender: TObject);
  public
    { Public declarations }
  end;

var
  fmDeliveryOrderPendingAndReject: TfmDeliveryOrderPendingAndReject;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, untConstanta,
  frmUni;

procedure TfmDeliveryOrderPendingAndReject.actPendingExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if dtsIMDeliveryOrderHd.IsEmpty then
    Exit;
  if dtsIMDeliveryOrderHd.FieldByName('chFlagPending').AsInteger = 1 then
    Exit;

  // Process
  dtsIMDeliveryOrderHd.Edit;
  dtsIMDeliveryOrderHd.FieldByName('txNotes').AsString :=
    VarToStr(dbmNotes.EditValue) +
    'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
    ' - Pending DO by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10;
  dtsIMDeliveryOrderHd.FieldByName('chFlagPending').AsInteger := 1;
  dtsIMDeliveryOrderHd.Post;
end;

procedure TfmDeliveryOrderPendingAndReject.actRefreshExecute(Sender: TObject);
begin
  inherited;

  RefreshAll;
end;

procedure TfmDeliveryOrderPendingAndReject.actRejectExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if dtsIMDeliveryOrderHd.IsEmpty then
    Exit;
  if dtsIMDeliveryOrderHd.FieldByName('chStatusApprove').AsInteger = 5 then
    Exit;
  if dtsIMDeliveryOrderHd.FieldByName('chFlagMutasi').AsInteger = 1 then
  begin
    MessageDlg('DO dari transaksi mutasi tidak dapat di reject !', mtInformation, [mbOK], 0);
    Exit;
  end;

  // Process
  dtsIMDeliveryOrderHd.Edit;
  dtsIMDeliveryOrderHd.FieldByName('txNotes').AsString :=
    VarToStr(dbmNotes.EditValue) +
    'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
    ' - Reject DO by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10;
  dtsIMDeliveryOrderHd.FieldByName('chStatusApprove').AsInteger := 5;
  dtsIMDeliveryOrderHd.Post;
end;

procedure TfmDeliveryOrderPendingAndReject.actReleaseExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if dtsIMDeliveryOrderHd.IsEmpty then
    Exit;
  if dtsIMDeliveryOrderHd.FieldByName('chFlagPending').AsInteger = 0 then
    Exit;

  // Process
  dtsIMDeliveryOrderHd.Edit;
  dtsIMDeliveryOrderHd.FieldByName('txNotes').AsString :=
    VarToStr(dbmNotes.EditValue) +
    'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
    ' - Release DO by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10;
  dtsIMDeliveryOrderHd.FieldByName('chFlagPending').AsInteger := 0;
  dtsIMDeliveryOrderHd.Post;
end;

procedure TfmDeliveryOrderPendingAndReject.actUnRejectExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if dtsIMDeliveryOrderHd.IsEmpty then
    Exit;
  if dtsIMDeliveryOrderHd.FieldByName('chStatusApprove').AsInteger <> 5 then
    Exit;

  // Process
  dtsIMDeliveryOrderHd.Edit;
  dtsIMDeliveryOrderHd.FieldByName('txNotes').AsString :=
    VarToStr(dbmNotes.EditValue) +
    'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
    ' - UnReject DO by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10;
  dtsIMDeliveryOrderHd.FieldByName('chStatusApprove').AsInteger := 0;
  dtsIMDeliveryOrderHd.Post;
end;

procedure TfmDeliveryOrderPendingAndReject.cgvDeliveryOrderHdStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if VarToStr(ARecord.Values[GetColumnByFieldName('chFlagPending').Index]) = '1' then
      AStyle := dmGlobal.stSilverLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) = '5' then
      AStyle := dmGlobal.stRedLight;
  end;
end;

procedure TfmDeliveryOrderPendingAndReject.InitForm;
begin
  inherited;

  FStatusWarehouse := FParamArrayValues[0];
  FCurrentWarehouse := FParamArrayValues[1];
  FCanPending := FParamArrayValues[2] = '1';
  FCanReject := FParamArrayValues[3] = '1';

  GetYearList(cbYear, dmGlobal.SettingGlobal.ServerDateTime);
  GetMonthList(cbMonth, dmGlobal.SettingGlobal.ServerDateTime);
  cbYear.Properties.OnEditValueChanged := MonthYearValueChange;
  cbMonth.Properties.OnEditValueChanged := MonthYearValueChange;

  // Initial
  if FCanPending then
    Self.Caption := Self.Caption + ' Pending'
  else
  begin
    btnPending.Enabled := False;
    btnRelease.Enabled := False;
  end;

  if FCanReject then
  begin
    if not FCanPending then
      Self.Caption := Self.Caption + ' Reject'
    else
      Self.Caption := Self.Caption + ' & Reject';
  end
  else
  begin
    btnReject.Enabled := False;
    btnUnReject.Enabled := False;
  end;

  shpPending.Brush.Color := dmGlobal.stSilverLight.Color;
  shpReject.Brush.Color := dmGlobal.stRedLight.Color;

  TcxCalcEditProperties(cgvDeliveryOrderHddcTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvDeliveryOrderHddcOutstandingTotalAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvDeliveryOrderDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbeTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeOutstandingTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  SetReadOnly(cgvDeliveryOrderHd);
  SetReadOnly(cgvDeliveryOrderDt);
  SetReadOnly(dbeIdDeliveryOrder, True, COLOR_INACTIVE);
  SetReadOnly(dbeDeliveryOrderDate, True, COLOR_INACTIVE);
  SetReadOnly(dblcIdWarehouse, True, COLOR_INACTIVE);
  SetReadOnly(dbeActualDeliveryDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeCustomerSI, True, COLOR_INACTIVE);
  SetReadOnly(dbeCustomerSO, True, COLOR_INACTIVE);
  SetReadOnly(dbeCustomerName, True, COLOR_INACTIVE);
  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeOutstandingTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbmMemo, True, COLOR_INACTIVE);
  SetReadOnly(dbmAddress, True, COLOR_INACTIVE);

  // Open all query
  OpenIfClose(dmInventory.qryWarehouse);
  OpenIfClose(dmInventory.qrySupplies, True);

  MonthYearValueChange(nil); // -> Trigger dsDefault
  dtsIMDeliveryOrderDt.Open;
end;

procedure TfmDeliveryOrderPendingAndReject.MonthYearValueChange(
  Sender: TObject);
begin
  dtsIMDeliveryOrderHd.Close;
  dtsIMDeliveryOrderHd.Parameters[0].Value := FStatusApprove;
  dtsIMDeliveryOrderHd.Parameters[1].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMDeliveryOrderHd.Parameters[2].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMDeliveryOrderHd.Parameters[3].Value := FStatusWarehouse; //warehouse
  dtsIMDeliveryOrderHd.Parameters[4].Value := FCurrentWarehouse;
  OpenIfClose(dtsIMDeliveryOrderHd, True);
  cgvDeliveryOrderHd.ViewData.Expand(True);
end;

procedure TfmDeliveryOrderPendingAndReject.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryWarehouse);
  LockRefresh(dmInventory.qrySupplies);
  LockRefresh(dtsIMDeliveryOrderHd, True);
  LockRefresh(dtsIMDeliveryOrderDt);
end;

end.
