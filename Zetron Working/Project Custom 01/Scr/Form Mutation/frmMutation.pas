unit frmMutation;

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
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxDBLookupComboBox, cxSpinEdit, cxCalc, cxMemo,
  cxDBEdit, cxPC, cxDropDownEdit, cxCalendar, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ADODB, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxImageComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, StdCtrls, cxButtons;

type
  TfmMutation = class(TFormUniTransactionApprovalEx)
    dtsIMMutationHd: TADODataSet;
    dtsIMMutationDt: TADODataSet;
    dsIMMutationDt: TDataSource;
    spMutationValidation: TADOStoredProc;
    qryDeleteDetail: TADOQuery;
    qryGetRRStatus: TADOQuery;
    qryGetDOStatus: TADOQuery;
    cgMutationHd: TcxGrid;
    cgvMutationHd: TcxGridDBTableView;
    cgvMutationHdvcIdMutation: TcxGridDBColumn;
    cgvMutationHddtMutationDate: TcxGridDBColumn;
    cgvMutationHdvcIdWarehouseSource: TcxGridDBColumn;
    cgvMutationHdchStatusApprove: TcxGridDBColumn;
    cgMutationHdLevel1: TcxGridLevel;
    pnlDetailTop: TPanel;
    lblIdMutation: TLabel;
    lblMutationDate: TLabel;
    lblIdWarehouseSource: TLabel;
    lblIdWarehouseDestination: TLabel;
    lblIdReceivingRecord: TLabel;
    lblIdDeliveryOrder: TLabel;
    shpRRApprove: TShape;
    shpDOApprove: TShape;
    dbeIdMutation: TcxDBTextEdit;
    dbeMutationDate: TcxDBDateEdit;
    dblcIdWarehouseSource: TcxDBExtLookupComboBox;
    dblcIdWarehouseDest: TcxDBExtLookupComboBox;
    pcNotes: TcxPageControl;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsMemo: TcxTabSheet;
    dbMemo: TcxDBMemo;
    tsDeliveryAddress: TcxTabSheet;
    dbmDeliveryAddress: TcxDBMemo;
    tsNotesDeliveryOrder: TcxTabSheet;
    dbmDeliveryOrderNotes: TcxDBMemo;
    dbeIdRefRR: TcxDBTextEdit;
    dbeIdRefDO: TcxDBTextEdit;
    cgMutationDt: TcxGrid;
    cgvMutationDt: TcxGridDBTableView;
    cgvMutationDtvcIdMutation: TcxGridDBColumn;
    cgvMutationDtinNo: TcxGridDBColumn;
    cgvMutationDtvcIdSupplies: TcxGridDBColumn;
    cgvMutationDtvcIdSupplies2: TcxGridDBColumn;
    cgvMutationDtvcIdSupplies3: TcxGridDBColumn;
    cgvMutationDtinQty: TcxGridDBColumn;
    cgMutationDtLevel1: TcxGridLevel;
    gvrOtherTransaction: TcxGridViewRepository;
    cgvPrevSupplies: TcxGridDBTableView;
    cgvPrevSuppliesvcIdSupplies: TcxGridDBColumn;
    cgvPrevSuppliesvcSuppliesName: TcxGridDBColumn;
    cgvPrevSuppliesvcType: TcxGridDBColumn;
    cgvPrevSuppliesinEndQtyReady: TcxGridDBColumn;
    qryPrevSupplies: TADOQuery;
    dsPrevSupplies: TDataSource;
    procedure actApproveExecute(Sender: TObject);
    procedure actRevisionExecute(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure cgvMutationHdStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure dbeIdMutationPropertiesEditValueChanged(Sender: TObject);
    procedure dtsIMMutationHdBeforeEdit(DataSet: TDataSet);
    procedure dtsIMMutationHdBeforePost(DataSet: TDataSet);
    procedure dtsIMMutationHdNewRecord(DataSet: TDataSet);
    procedure dtsIMMutationDtBeforeDelete(DataSet: TDataSet);
    procedure dtsIMMutationDtBeforeEdit(DataSet: TDataSet);
    procedure dtsIMMutationDtBeforeInsert(DataSet: TDataSet);
    procedure dtsIMMutationDtBeforePost(DataSet: TDataSet);
    procedure dtsIMMutationDtNewRecord(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dblcIdWarehouseSourcePropertiesEditValueChanged(Sender: TObject);
    procedure cgvIdSuppliesPropertiesInitPopup(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FOldWarehouse: string;
    FOldQty: real;

    function  ValidateMutationHd(const AId: string): boolean;
    function  GetReceivingRecordStatus(const AIdReceivingRecord: string): integer;
    function  GetDeliveryOrderStatus(const AIdDeliveryOrder: string): integer;
    procedure DeleteCurrentDetail;
    procedure GetDOAndRRColorInfo;

    procedure ShowSupplies;
    procedure ShowSuppliesWithQtyReady;
  public
    { Public declarations }
  end;

var
  fmMutation: TfmMutation;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, frmNotes,
  untConstanta;

procedure TfmMutation.actApproveExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if MessageDlg(Format(ASK_APPROVE, [MT, VarToStr(dbeIdMutation.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if (dtsIMMutationHd.IsEmpty) or
    (dtsIMMutationDt.IsEmpty) then
  begin
    MessageDlg(Format(MSG_CANNOT_APPROVE_EMPTY, [MT]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if not ValidateMutationHd(VarToStr(dbeIdMutation.EditValue)) then
    Exit;
  if FStatusApprove < 2 then
  begin
    if not dmShare.CompareMTWithWHValid(VarToStr(dbeIdMutation.EditValue),
      VarToStr(dblcIdWarehouseSource.EditValue)) then
    begin
      MessageDlg(Format(MSG_MT_WH_INVALID, [VarToStr(dbeIdMutation.EditValue),
        VarToStr(dblcIdWarehouseSource.EditText)]), mtInformation, [mbOk], 0);
      Exit;
    end;
  end
  else
  begin
    //FStatusApprove >= 2
    if GetDeliveryOrderStatus(dbeIdRefDO.EditValue) <> 6 then
    begin
      MessageDlg(MSG_APPROVE_MUTATION2, mtInformation, [mbOk], 0);
      Exit;
    end;
    if GetReceivingRecordStatus(dbeIdRefRR.EditValue) <> 2 then
    begin
      MessageDlg(MSG_APPROVE_MUTATION, mtInformation, [mbOk], 0);
      Exit;
    end;
  end;

  // Process
  dsDefault.DataSet.Edit;
  dsDefault.DataSet.FieldByName('txNotes').AsString :=
    VarToStr(dbmNotes.EditValue) +
    'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
    ' - ' + NS_APPROVE + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10;
  dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove + 1;
  dsDefault.DataSet.Post;

  if (FStatusApprove + 1) >= 2 then
  begin
    spMutationValidation.Close;
    spMutationValidation.Parameters[1].Value := dbeIdMutation.EditValue;
    spMutationValidation.Parameters[2].Value := FStatusApprove + 1;
    spMutationValidation.ExecProc;
    if (spMutationValidation.Parameters[0].Value <> 0) or
      (VarIsEmpty(spMutationValidation.Parameters[0].Value)) then
    begin
      MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spMutationValidation']), mtInformation, [mbOk], 0);
      //dmGlobal.AddApplicationLog('spMutationValidation cannot be execute !', llHigh);
      dsDefault.DataSet.Edit;
      dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
      dsDefault.DataSet.Post;
    end;
  end;
end;

procedure TfmMutation.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dsDefault.DataSet.IsEmpty then
    Exit;
  if not ValidateMutationHd(VarToStr(dbeIdMutation.EditValue)) then
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

procedure TfmMutation.actRevisionExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if dtsIMMutationHd.IsEmpty then
    Exit;
  if not ValidateMutationHd(VarToStr(dbeIdMutation.EditValue)) then
    Exit;
  if MessageDlg(Format(ASK_REVISION, [MT, VarToStr(dbeIdMutation.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  // Process
  dsDefault.DataSet.Edit;
  dsDefault.DataSet.FieldByName('txNotes').AsString :=
    VarToStr(dbmNotes.EditValue) +
    'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
    ' - ' + NS_REVISION + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10;
  dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove - 1;
  dsDefault.DataSet.Post;

  btnRefresh.Click;
end;

procedure TfmMutation.actVoidExecute(Sender: TObject);
var
  S: TStringList;
begin
  //Ivan do not :inherited;

  // Validate
  if dtsIMMutationHd.IsEmpty then
    Exit;
  if not ValidateMutationHd(VarToStr(dbeIdMutation.EditValue)) then
    Exit;
  if MessageDlg(Format(ASK_REJECT, [MT, VarToStr(dbeIdMutation.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  // Process
  S := TStringList.Create;
  try
    TfmNotes.ExecuteForm(Self.Caption + ' ' + NS_REJECT, S);
    dsDefault.DataSet.Edit;
    dsDefault.DataSet.FieldByName('txNotes').AsString :=
      VarToStr(dbmNotes.EditValue) +
      'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
      ' - ' + NS_REJECT + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10 +
      S.Text + #13#10;
    dsDefault.DataSet.Post;
  finally
    S.Free;
  end;
  dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := STATUS_REJECT;
end;

procedure TfmMutation.cgvIdSuppliesPropertiesInitPopup(Sender: TObject);
begin
  ShowSuppliesWithQtyReady;
end;

procedure TfmMutation.cgvMutationHdStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) >= IntToStr(FStatusApprove + 1) then
      AStyle := dmGlobal.stYellowLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) = IntToStr(STATUS_REJECT) then
      AStyle := dmGlobal.stRedLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) = IntToStr(STATUS_DONE) then
      AStyle := dmGlobal.stGreenLight;
  end;
end;

procedure TfmMutation.dbeIdMutationPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  GetDOAndRRColorInfo;
end;

procedure TfmMutation.dblcIdWarehouseSourcePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if dtsIMMutationHd.State in [dsBrowse] then
  begin
    ShowSupplies;
  end;
end;

procedure TfmMutation.DeleteCurrentDetail;
begin
  qryDeleteDetail.Close;
  qryDeleteDetail.Parameters[0].Value := dtsIMMutationHd.FieldByName('vcIdWarehouseDest').AsString;
  qryDeleteDetail.ExecSQL;

  LockRefresh(dtsIMMutationDt);
end;

procedure TfmMutation.dsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if dtsIMMutationHd.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;

    if Field.FieldName = 'vcIdWarehouseDest' then
    begin
      dtsIMMutationHd.FieldByName('vcDeliveryOrderAddress').AsString :=
        dmInventory.GetWarehouseAddress(dtsIMMutationHd.FieldByName('vcIdWarehouseDest').AsString);
    end;
  end;
end;

procedure TfmMutation.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if TDataSource(Sender).DataSet.State in [dsInsert] then
    SetReadOnly(dbeMutationDate, False);
  if TDataSource(Sender).DataSet.State in [dsBrowse] then
    SetReadOnly(dbeMutationDate, True, COLOR_INACTIVE);
end;

procedure TfmMutation.dtsIMMutationDtBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  if not ValidateMutationHd(dtsIMMutationHd.FieldByName('vcIdMutation').AsString) then
    Abort;
end;

procedure TfmMutation.dtsIMMutationDtBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if not ValidateMutationHd(dtsIMMutationHd.FieldByName('vcIdMutation').AsString) then
    Abort;

  FOldQty := dtsIMMutationDt.FieldByName('inQty').AsFloat;
end;

procedure TfmMutation.dtsIMMutationDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if not ValidateMutationHd(dtsIMMutationHd.FieldByName('vcIdMutation').AsString) then
    Abort;
end;

procedure TfmMutation.dtsIMMutationDtBeforePost(DataSet: TDataSet);
var
  ReadyStockQty: Variant;
begin
  inherited;

  // Cek qty ready
  ReadyStockQty := dmInventory.GetReadyStockQty(dblcIdWarehouseSource.EditValue, dtsIMMutationDt.FieldByName('vcIdSupplies').AsString);
  ReadyStockQty := ReadyStockQty + FOldQty;
  if dtsIMMutationDt.FieldByName('inQty').AsFloat > ReadyStockQty then
  begin
    MessageDlg(MSG_QTY_GREATER_THAN_READYSTOCK, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmMutation.dtsIMMutationDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('inNo').AsInteger := Dataset.RecordCount + 1;
  Dataset.FieldByName('inQty').AsInteger := 0;

  FOldQty := 0;
end;

procedure TfmMutation.dtsIMMutationHdBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if not ValidateMutationHd(dtsIMMutationHd.FieldByName('vcIdMutation').AsString) then
    Abort;

  FOldWarehouse := dtsIMMutationHd.FieldByName('vcIdWarehouseDest').AsString;
end;

procedure TfmMutation.dtsIMMutationHdBeforePost(DataSet: TDataSet);
var
  NewWarehouse: string;
begin
  inherited;

  // Apabila warehouse-nya berubah, maka hapus detail
  NewWarehouse := dtsIMMutationHd.FieldByName('vcIdWarehouseDest').AsString;
  if not dtsIMMutationDt.IsEmpty then
  begin
    if FOldWarehouse <> NewWarehouse then
    begin
      if MessageDlg(ASK_SAVE_MT, mtWarning, [mbYes, mbNo], 0) = mrNo then
        Abort
      else
      begin
        DeleteCurrentDetail;
      end;
    end;
  end;

  if DataSet.FieldByName('vcIdMutation').IsNull then
    DataSet.FieldByName('vcIdMutation').AsString :=
      dmShare.GetCurrentTransNo(utMutation, DataSet.FieldByName('dtMutationDate').AsDateTime);
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmMutation.dtsIMMutationHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('dtMutationDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  Dataset.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
  Dataset.FieldByName('vcEmployeeName').Value := dmGlobal.SettingGlobal.LoginEmployeeName;
  Dataset.FieldByName('CounterPrint').AsInteger := 0;

  FOldWarehouse := '';
end;

procedure TfmMutation.GetDOAndRRColorInfo;
begin
  shpDOApprove.Brush.Color := dmGlobal.stYellowLight.Color;  //DO Entry
  shpRRApprove.Brush.Color := dmGlobal.stYellowLight.Color;  //RR Entry
  if GetDeliveryOrderStatus(VarToStr(dbeIdRefDO.EditValue)) = 2 then  //DO Approval 1
    shpDOApprove.Brush.Color := dmGlobal.stGreenLight.Color;
  if GetDeliveryOrderStatus(VarToStr(dbeIdRefDO.EditValue)) = 5 then  //DO Reject
    shpDOApprove.Brush.Color := dmGlobal.stRedLight.Color;
  if GetDeliveryOrderStatus(VarToStr(dbeIdRefDO.EditValue)) = 6 then  //DO Done
    shpDOApprove.Brush.Color := dmGlobal.stGreenLight.Color;
  if GetReceivingRecordStatus(VarToStr(dbeIdRefRR.EditValue)) = 2 then  //RR Approval 1
    shpRRApprove.Brush.Color := dmGlobal.stGreenLight.Color;
  if GetReceivingRecordStatus(VarToStr(dbeIdRefRR.EditValue)) = 5 then  //RR Reject
    shpRRApprove.Brush.Color := dmGlobal.stRedLight.Color;
  if GetReceivingRecordStatus(VarToStr(dbeIdRefRR.EditValue)) = 6 then  //RR Done
    shpRRApprove.Brush.Color := dmGlobal.stGreenLight.Color;
end;

function TfmMutation.GetDeliveryOrderStatus(
  const AIdDeliveryOrder: string): integer;
begin
  Result := 0;
  qryGetDOStatus.Close;
  qryGetDOStatus.Parameters[0].Value := AIdDeliveryOrder;
  OpenIfClose(qryGetDOStatus);
  if not qryGetDOStatus.IsEmpty then
    Result := qryGetDOStatus.FieldByName('chStatusApprove').AsInteger;
end;

function TfmMutation.GetReceivingRecordStatus(
  const AIdReceivingRecord: string): integer;
begin
  Result := 0;
  qryGetRRStatus.Close;
  qryGetRRStatus.Parameters[0].Value := AIdReceivingRecord;
  OpenIfClose(qryGetRRStatus);
  if not qryGetRRStatus.IsEmpty then
    Result := qryGetRRStatus.FieldByName('chStatusApprove').AsInteger;
end;

procedure TfmMutation.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_MT);

  // Display Format
  TcxCalcEditProperties(cgvPrevSuppliesinEndQtyReady.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvMutationDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  case FStatusApprove of
    0:
      begin
        Self.Caption := Self.Caption + ' - Entry';
        btnRevision.Enabled := False;
        btnPrint.Enabled := False;
      end;
    1:
      begin
        Self.Caption := Self.Caption + ' - Approval 1';
        btnPrint.Enabled := False;
        //pnlHeaderControl.Visible := False;
        //pnlDetailControl.Visible := False;
      end;
    2:
      begin
        Self.Caption := Self.Caption + ' - Approval 2';
        btnRevision.Enabled := False;
        btnVoid.Enabled := False;
        btnPrint.Enabled := False;
        //pnlHeaderControl.Visible := False;
        //pnlDetailControl.Visible := False;
      end;
  end;

  SetReadOnly(cgvMutationHd);
  SetReadOnly(dbeIdMutation, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdRefDO, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdRefRR, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbmDeliveryAddress, True, COLOR_INACTIVE);
  SetReadOnly(dbeMutationDate, True, COLOR_INACTIVE);

  OpenIfClose(dmInventory.qryWarehouse);

  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMMutationDt);
end;

procedure TfmMutation.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (dtsIMMutationHd.State in [dsEdit, dsInsert]) or
    (dtsIMMutationDt.State in [dsEdit, dsInsert]) then
    Abort;

  dtsIMMutationHd.Close;
  dtsIMMutationHd.Parameters[0].Value := FStatusApprove;
  dtsIMMutationHd.Parameters[1].Value := FStatusApprove + 1;
  dtsIMMutationHd.Parameters[2].Value := STATUS_REJECT;
  dtsIMMutationHd.Parameters[3].Value := STATUS_DONE;
  dtsIMMutationHd.Parameters[4].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMMutationHd.Parameters[5].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsIMMutationHd, True);
  cgvMutationHd.ViewData.Expand(True);
end;

procedure TfmMutation.RefreshAll;
begin
  inherited;

  LockRefresh(dtsIMMutationHd, True);
  LockRefresh(dtsIMMutationDt);
  cgvMutationHd.ViewData.Expand(False);
end;

procedure TfmMutation.ShowSupplies;
begin
  // Semua barang, tanpa QtyReady
  if qryPrevSupplies.Parameters[0].Value <> '%' then
  begin
    qryPrevSupplies.Close;
    qryPrevSupplies.Parameters[0].Value := '%';
    OpenIfClose(qryPrevSupplies);
  end;
end;

procedure TfmMutation.ShowSuppliesWithQtyReady;
begin
  // Barang dengan QtyReady per gudang
  if qryPrevSupplies.Parameters[0].Value <> dblcIdWarehouseSource.EditValue then
  begin
    qryPrevSupplies.Close;
    qryPrevSupplies.Parameters[0].Value := VarToStr(dblcIdWarehouseSource.EditValue);
    OpenIfClose(qryPrevSupplies);
  end;
end;

function TfmMutation.ValidateMutationHd(const AId: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(Self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select chStatusApprove from tbIMMutationHd');
    qryTemp.SQL.Add('where vcIdMutation = :vcIdMutation');
    qryTemp.Parameters[0].Value := AId;
    OpenIfClose(qryTemp);
    if qryTemp.IsEmpty then
      Exit;
    if qryTemp.FieldByName('chStatusApprove').AsInteger <> FStatusApprove then
    begin
      MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [OT, AId]), mtInformation,
        [mbOk], 0);
      Exit;
    end;
  finally
    FreeAndNil(qryTemp);
  end;
  Result := True;
end;

end.
