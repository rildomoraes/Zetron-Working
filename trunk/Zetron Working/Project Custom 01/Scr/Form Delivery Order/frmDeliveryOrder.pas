unit frmDeliveryOrder;

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
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxSpinEdit, cxCalc,
  cxCheckBox, cxMemo, cxPC, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ADODB;

type
  TfmDeliveryOrder = class(TFormUniTransactionApprovalEx)
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
    cgvDeliveryOrderHdvcIdSalesOrder: TcxGridDBColumn;
    cgvDeliveryOrderHdvcIdSalesInvoice: TcxGridDBColumn;
    cgvDeliveryOrderHdchStatusApprove: TcxGridDBColumn;
    cgvDeliveryOrderHdchFlagPending: TcxGridDBColumn;
    cgvDeliveryOrderHdinCounterPrint: TcxGridDBColumn;
    cgDeliveryOrderHdLevel1: TcxGridLevel;
    pnlDetailTop: TPanel;
    lblDeliveryOrderDate: TLabel;
    lblIdDeliveryOrder: TLabel;
    lblEmployeeName: TLabel;
    lblCustomerSO: TLabel;
    lblIdWarehouse: TLabel;
    lblCustomerSI: TLabel;
    lblCustomerName: TLabel;
    lblActualDeliveryDate: TLabel;
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
    dbchFlagMutasi: TcxDBCheckBox;
    dbchFlagManual: TcxDBCheckBox;
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
    pnlHeaderTop: TPanel;
    shpApproved: TShape;
    lblApproved: TLabel;
    lblReject: TLabel;
    shpReject: TShape;
    lblDone: TLabel;
    shpDone: TShape;
    shpPending: TShape;
    lblPending: TLabel;
    procedure dtsIMDeliveryOrderNtBeforeDelete(DataSet: TDataSet);
    procedure dtsIMDeliveryOrderNtBeforeEdit(DataSet: TDataSet);
    procedure dtsIMDeliveryOrderHdBeforeEdit(DataSet: TDataSet);
    procedure cgvDeliveryOrderHdStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure actPrintExecute(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure actApproveExecute(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FStatusWarehouse: string;
    FCurrentWarehouse: string;
    FCanApprove: boolean;
    FReadOnly: boolean;
    FCheckMutation: boolean;

    function ValidateDeliveryOrderHd(const AIdDO: string): boolean;
  public
    { Public declarations }
  end;

var
  fmDeliveryOrder: TfmDeliveryOrder;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, frmNotes,
  untConstanta;

{ TfmDeliveryOrder }

procedure TfmDeliveryOrder.actApproveExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if (dtsIMDeliveryOrderHd.IsEmpty) or
    (dtsIMDeliveryOrderDt.IsEmpty) then
  begin
    MessageDlg(Format(MSG_CANNOT_APPROVE_EMPTY, [DR]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if MessageDlg(Format(ASK_APPROVE, [DR, VarToStr(dbeIdDeliveryOrder.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if dtsIMDeliveryOrderHd.FieldByName('chFlagPending').AsInteger = 1 then
  begin
    MessageDlg(MSG_PENDING_DO, mtInformation, [mbOk], 0);
    Exit;
  end;
  if dtsIMDeliveryOrderHd.FieldByName('dtActualDeliveryDate').IsNull then
  begin
    MessageDlg(MSG_INVALID_ACTUAL_DELIVERY_DATE, mtInformation, [mbOk], 0);
    Exit;
  end;

  FCheckMutation := False;

  // Process
  dsDefault.DataSet.Edit;
  dsDefault.DataSet.FieldByName('txNotes').AsString :=
    VarToStr(dbmNotes.EditValue) +
    'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
    ' - ' + NS_APPROVE + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10;
  dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove + 1;
  // Next Process
  if (FStatusApprove + 1) = 1 then
    dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := STATUS_DONE;
  dsDefault.DataSet.Post;  
end;

procedure TfmDeliveryOrder.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dtsIMDeliveryOrderHd.IsEmpty then
    Exit;
  if not ValidateDeliveryOrderHd(VarToStr(dbeIdDeliveryOrder.EditValue)) then
    Exit;

  // Process
  S := TStringList.Create;
  try
    TfmNotes.ExecuteForm(Self.Caption + ' ' + NS_NOTES, S);
    if Trim(S.Text) <> '' then
    begin
      dsDefault.DataSet.Edit;
      dsDefault.DataSet.FieldByName('txNotes').AsString :=
        VarToStr(dbmNotes.EditValue) +
        'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
        ' - ' + NS_NOTES + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10 +
        S.Text + #13#10;
      dsDefault.DataSet.Post;
    end;
  finally
    S.Free;
  end;
end;

procedure TfmDeliveryOrder.actPrintExecute(Sender: TObject);
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
  if not PERMIT_REPRINT_DELIVERY_ORDER then
  begin
    if dmShare.GetPrintCounter(utDeliveryOrder, dbeIdDeliveryOrder.EditValue) <> 0 then
    begin
      MessageDlg(MSG_CANNOT_REPRINT, mtInformation, [mbOk], 0);
      Exit;
    end;
  end;

  inherited;
end;

procedure TfmDeliveryOrder.cgvDeliveryOrderHdStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if VarToStr(ARecord.Values[GetColumnByFieldName('chFlagPending').Index]) = '1' then
      AStyle := dmGlobal.stSilverLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) >= IntToStr(FStatusApprove + 1) then
      AStyle := dmGlobal.stYellowLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) = IntToStr(STATUS_REJECT) then
      AStyle := dmGlobal.stRedLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) >= IntToStr(STATUS_DONE) then
      AStyle := dmGlobal.stGreenLight;
  end;
end;

procedure TfmDeliveryOrder.dtsIMDeliveryOrderHdBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if dtsIMDeliveryOrderHd.IsEmpty then
    Abort;
  if not ValidateDeliveryOrderHd(dtsIMDeliveryOrderHd.FieldByName('vcIdDeliveryOrder').AsString) then
    Abort;
end;

procedure TfmDeliveryOrder.dtsIMDeliveryOrderNtBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  if not ValidateDeliveryOrderHd(dtsIMDeliveryOrderHd.FieldByName('vcIdDeliveryOrder').AsString) then
    Abort;
end;

procedure TfmDeliveryOrder.dtsIMDeliveryOrderNtBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if not ValidateDeliveryOrderHd(dtsIMDeliveryOrderHd.FieldByName('vcIdDeliveryOrder').AsString) then
    Abort;
end;

procedure TfmDeliveryOrder.InitForm;
begin
  inherited;

  FCheckMutation := True;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_DO);

  FStatusWarehouse := FParamArrayValues[0];
  FCurrentWarehouse := FParamArrayValues[1];
  FCanApprove := FParamArrayValues[2] = '1';
  FReadOnly := FParamArrayValues[3] = '1';

  TcxCalcEditProperties(cgvDeliveryOrderDtinQty.Properties).DisplayFormat := '0;(0)';

  // Initial
  btnInsert.Visible := False; // Always
  btnVoid.Enabled := False; // Always

  if FStatusWarehouse = '0' then
    Self.Caption := Self.Caption + ' Gudang Fisik'
  else if FStatusWarehouse = '1' then
    Self.Caption := Self.Caption + ' Gudang Toko'
  else if FStatusWarehouse = '2' then
    Self.Caption := Self.Caption + ' Gudang Virtual';

  case FStatusApprove of
    0 :
      begin
        if not FCanApprove then
          Self.Caption := Self.Caption + ' - Entry (Print)'
        else
          Self.Caption := Self.Caption + ' - Entry';
        btnApprove.Enabled := FCanApprove;
      end;
    1 :
      begin
        Self.Caption := Self.Caption + ' - Approval';
      end;
  end;

  if FReadOnly then
  begin
    dsDefault.AutoEdit := False;
    dsIMDeliveryOrderDt.AutoEdit := False;
    dsIMDeliveryOrderNt.AutoEdit := False;
    btnEdit.Visible := False;
    btnPost.Visible := False;
    btnCancel.Visible := False;
    btnPrint.Enabled := False;
    btnApprove.Enabled := False;
    btnRevision.Enabled := False;
    btnNotes.Enabled := False;
    SetReadOnly(cgvDeliveryOrderNt);
    cgvDeliveryOrderNt.NewItemRow.Visible := False;
    cgvDeliveryOrderNt.OptionsView.Navigator := False;
  end;

  shpPending.Brush.Color := dmGlobal.stSilverLight.Color;
  shpApproved.Brush.Color := dmGlobal.stYellowLight.Color;
  shpReject.Brush.Color := dmGlobal.stRedLight.Color;
  shpDone.Brush.Color := dmGlobal.stGreenLight.Color;

  SetReadOnly(cgvDeliveryOrderHd);
  SetReadOnly(cgvDeliveryOrderDt);
  SetReadOnly(dbeIdDeliveryOrder, True, COLOR_INACTIVE);
  SetReadOnly(dbeDeliveryOrderDate, True, COLOR_INACTIVE);
  SetReadOnly(dblcIdWarehouse, True, COLOR_INACTIVE);
  SetReadOnly(dbeCustomerSI, True, COLOR_INACTIVE);
  SetReadOnly(dbeCustomerSO, True, COLOR_INACTIVE);
  SetReadOnly(dbeCustomerName, True, COLOR_INACTIVE);
  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbmAddress, True, COLOR_INACTIVE);
  SetReadOnly(dbchFlagMutasi);
  SetReadOnly(dbchFlagManual);

//  if (dmGlobal.OptionOnlyDOEntryCanModifyData) and (FStatusApprove <> 0) then
//  begin
//    pnlHeaderControl.Visible := False;
//    pnlDetailBodyRightControl.Visible := False;
//    SetReadOnly(cgvDeliveryOrderDt);
//    SetReadOnly(cgvDeliveryOrderNt);
//    SetReadOnly(dbeActualDeliveryDate, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dbmMemo, True, COLOR_INACTIVE);
//  end;

  // Open all query
  OpenIfClose(dmInventory.qryWarehouse);
  OpenIfClose(dmInventory.qrySupplies, True);

  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMDeliveryOrderDt);
  OpenIfClose(dtsIMDeliveryOrderNt);
end;

procedure TfmDeliveryOrder.MonthYearValueChange(Sender: TObject);
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

procedure TfmDeliveryOrder.RefreshAll;
begin
  inherited;

//  LockRefresh(dmInventory.qryWarehouse);
//  LockRefresh(dmInventory.qrySupplies, True);
  LockRefresh(dtsIMDeliveryOrderHd, True);
  LockRefresh(dtsIMDeliveryOrderDt);
  LockRefresh(dtsIMDeliveryOrderNt);
  cgvDeliveryOrderHd.ViewData.Expand(True);
end;

function TfmDeliveryOrder.ValidateDeliveryOrderHd(const AIdDO: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(Self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select chStatusApprove, chFlagMutasi from tbIMDeliveryOrderHd');
    qryTemp.SQL.Add('where vcIdDeliveryOrder = :vcIdDeliveryOrder');
    qryTemp.Parameters[0].Value := AIdDO;
    qryTemp.Open;
    if qryTemp.IsEmpty then
      Exit;
    if qryTemp.FieldByName('chStatusApprove').AsInteger <> FStatusApprove then
    begin
      MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [DR, AIdDO]), mtInformation, [mbOk], 0);
      Exit;
    end;
    if FCheckMutation then
    begin
      if qryTemp.FieldByName('chFlagMutasi').AsInteger = 1 then
      begin
        MessageDlg(Format(MSG_CANNOT_EDIT_TRANS_MUTATION, [DR, AIdDO]), mtInformation, [mbOk], 0);
        Exit;
      end;
    end;
    FCheckMutation := True;
  finally
    FreeAndNil(qryTemp);
  end;
  Result := True;
end;

end.
