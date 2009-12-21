unit frmDeliveryOrderReprint;

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
  cxDBLookupComboBox, cxSpinEdit, cxCalc, cxMemo, cxPC, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TfmDeliveryOrderReprint = class(TFormUniTransactionApprovalEx)
    dtsIMDeliveryOrderHd: TADODataSet;
    dtsIMDeliveryOrderDt: TADODataSet;
    dtsIMDeliveryOrderNt: TADODataSet;
    dsIMDeliveryOrderDt: TDataSource;
    dsIMDeliveryOrderNt: TDataSource;
    cgDeliveryOrderHd: TcxGrid;
    cgvDeliveryOrderHd: TcxGridDBTableView;
    cgvDeliveryOrderHdvcIdDeliveryOrder: TcxGridDBColumn;
    cgvDeliveryOrderHddtDeliveryOrderDate: TcxGridDBColumn;
    cgvDeliveryOrderHdvcCustomerName: TcxGridDBColumn;
    cgvDeliveryOrderHdchStatusApprove: TcxGridDBColumn;
    cgvDeliveryOrderHdchFlagPending: TcxGridDBColumn;
    cgvDeliveryOrderHdchFlagManual: TcxGridDBColumn;
    cgvDeliveryOrderHdvcIdSalesOrder: TcxGridDBColumn;
    cgvDeliveryOrderHdvcIdSalesInvoice: TcxGridDBColumn;
    cgvDeliveryOrderHdinCounterPrint: TcxGridDBColumn;
    cgDeliveryOrderHdLevel1: TcxGridLevel;
    pnlHeaderTop: TPanel;
    shpApproved: TShape;
    lblApproved: TLabel;
    lblReject: TLabel;
    shpReject: TShape;
    lblDone: TLabel;
    shpDone: TShape;
    shpPending: TShape;
    lblPending: TLabel;
    shpManual: TShape;
    Label2: TLabel;
    pnlDetailTop: TPanel;
    dbeDeliveryOrderDate: TcxDBDateEdit;
    dbeIdDeliveryOrder: TcxDBTextEdit;
    dbeEmployeeName: TcxDBTextEdit;
    dbeCustomerSO: TcxDBTextEdit;
    dblcIdWarehouse: TcxDBExtLookupComboBox;
    dbeCustomerSI: TcxDBTextEdit;
    dbeCustomerName: TcxDBTextEdit;
    pcNotes: TcxPageControl;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsMemo: TcxTabSheet;
    dbmMemo: TcxDBMemo;
    tsDeliveryAddress: TcxTabSheet;
    dbmAddress: TcxDBMemo;
    dbeActualDeliveryDate: TcxDBDateEdit;
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
    cgDeliveryOrderNt: TcxGrid;
    cgvDeliveryOrderNt: TcxGridDBTableView;
    cgvDeliveryOrderNtvcIdReceivingRecord: TcxGridDBColumn;
    cgvDeliveryOrderNtvcIdSupplies: TcxGridDBColumn;
    cgvDeliveryOrderNtvcIdMachine: TcxGridDBColumn;
    cgvDeliveryOrderNtdtSystemStamp: TcxGridDBColumn;
    cgDeliveryOrderNtLevel1: TcxGridLevel;
    lblIdDeliveryOrder: TLabel;
    lblDeliveryOrderDate: TLabel;
    lblIdWarehouse: TLabel;
    lblCustomerName: TLabel;
    lblCustomerSO: TLabel;
    lblCustomerSI: TLabel;
    lblActualDeliveryDate: TLabel;
    lblEmployeeName: TLabel;
    procedure actPrintExecute(Sender: TObject);
    procedure cgvDeliveryOrderHdStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FStatusWarehouse: string;
    FCurrentWarehouse: string;
  public
    { Public declarations }
  end;

var
  fmDeliveryOrderReprint: TfmDeliveryOrderReprint;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, untConstanta;

{ TfmDeliveryOrderReprint }

procedure TfmDeliveryOrderReprint.actPrintExecute(Sender: TObject);
begin
  // Validate
  if dtsIMDeliveryOrderHd.IsEmpty then
    Exit;
  if dtsIMDeliveryOrderHd.FieldByName('chFlagManual').AsInteger = 1 then
  begin
    MessageDlg(MSG_DO_MANUAL, mtInformation, [mbOk], 0);
    Exit;
  end;
  if dtsIMDeliveryOrderHd.FieldByName('chFlagPending').AsInteger = 1 then
  begin
    MessageDlg(MSG_PENDING_DO, mtInformation, [mbOk], 0);
    Exit;
  end;

  inherited;
end;

procedure TfmDeliveryOrderReprint.cgvDeliveryOrderHdStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if VarToStr(ARecord.Values[GetColumnByFieldName('chFlagPending').Index]) = '1' then
      AStyle := dmGlobal.stSilverLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) >= '1' then
      AStyle := dmGlobal.stYellowLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) = IntToStr(STATUS_REJECT) then
      AStyle := dmGlobal.stRedLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) >= IntToStr(STATUS_DONE) then
      AStyle := dmGlobal.stGreenLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chFlagManual').Index]) = '1' then
      AStyle := dmGlobal.stPurpleLight;
  end;
end;

procedure TfmDeliveryOrderReprint.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_DO);

  FStatusWarehouse := FParamArrayValues[0];
  FCurrentWarehouse := FParamArrayValues[1];

  TcxCalcEditProperties(cgvDeliveryOrderDtinQty.Properties).DisplayFormat := '0;(0)';

  // Initial
  btnInsert.Visible := False;
  btnEdit.Visible := False;
  btnPost.Visible := False;
  btnCancel.Visible := False;
  btnApprove.Visible := False;
  btnRevision.Visible := False;
  btnVoid.Visible := False;
  btnNotes.Visible := False;
  bvlSpacer2.Visible := False;
  bvlSpacer3.Visible := False;

  shpPending.Brush.Color := dmGlobal.stSilverLight.Color;
  shpApproved.Brush.Color := dmGlobal.stYellowLight.Color;
  shpReject.Brush.Color := dmGlobal.stRedLight.Color;
  shpDone.Brush.Color := dmGlobal.stGreenLight.Color;
  shpManual.Brush.Color := dmGlobal.stPurpleLight.Color;

  SetReadOnly(cgvDeliveryOrderHd);
  SetReadOnly(cgvDeliveryOrderDt);
  SetReadOnly(cgvDeliveryOrderNt);
  SetReadOnly(dbeIdDeliveryOrder, True, COLOR_INACTIVE);
  SetReadOnly(dbeDeliveryOrderDate, True, COLOR_INACTIVE);
  SetReadOnly(dblcIdWarehouse, True, COLOR_INACTIVE);
  SetReadOnly(dbeCustomerSI, True, COLOR_INACTIVE);
  SetReadOnly(dbeCustomerSO, True, COLOR_INACTIVE);
  SetReadOnly(dbeCustomerName, True, COLOR_INACTIVE);
  SetReadOnly(dbeActualDeliveryDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbmMemo, True, COLOR_INACTIVE);
  SetReadOnly(dbmAddress, True, COLOR_INACTIVE);

  // Open all query
  // Open all query
  OpenIfClose(dmInventory.qryWarehouse);
  OpenIfClose(dmInventory.qrySupplies, True);

  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMDeliveryOrderDt);
  OpenIfClose(dtsIMDeliveryOrderNt);
end;

procedure TfmDeliveryOrderReprint.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  dtsIMDeliveryOrderHd.Close;
  dtsIMDeliveryOrderHd.Parameters[0].Value := FStatusApprove;
  dtsIMDeliveryOrderHd.Parameters[1].Value := FStatusApprove + 1;
  dtsIMDeliveryOrderHd.Parameters[2].Value := STATUS_REJECT;
  dtsIMDeliveryOrderHd.Parameters[3].Value := STATUS_DONE;
  dtsIMDeliveryOrderHd.Parameters[4].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMDeliveryOrderHd.Parameters[5].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMDeliveryOrderHd.Parameters[6].Value := FStatusWarehouse; //warehouse
  dtsIMDeliveryOrderHd.Parameters[7].Value := FCurrentWarehouse;
  OpenIfClose(dtsIMDeliveryOrderHd, True);
  cgvDeliveryOrderHd.ViewData.Expand(True);
end;

procedure TfmDeliveryOrderReprint.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qryWarehouse);
  LockRefresh(dmInventory.qrySupplies);
  LockRefresh(dtsIMDeliveryOrderHd, True);
  LockRefresh(dtsIMDeliveryOrderDt);
  LockRefresh(dtsIMDeliveryOrderNt);
  cgvDeliveryOrderHd.ViewData.Expand(True);
end;

end.
