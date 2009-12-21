unit frmReceivingRecord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  //Auto Create
  frmUniTransactionApprovalEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxSpinEdit, cxDBExtLookupComboBox, cxCalc, cxTextEdit, cxImageComboBox, ADODB,
  cxSplitter, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxMemo,
  cxDBEdit, cxPC, cxDropDownEdit, cxCalendar, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxContainer, cxMaskEdit, StdCtrls,
  cxButtons, ExtCtrls, cxDBLookupComboBox;

type
  TfmReceivingRecord = class(TFormUniTransactionApprovalEx)
    cgReceivingRecordHd: TcxGrid;
    cgvReceivingRecordHd: TcxGridDBTableView;
    cgvReceivingRecordHdvcIdReceivingRecord: TcxGridDBColumn;
    cgvReceivingRecordHddtReceivingRecordDate: TcxGridDBColumn;
    cgvReceivingRecordHdvcSupplierName: TcxGridDBColumn;
    cgvReceivingRecordHdchStatusApprove: TcxGridDBColumn;
    cgReceivingRecordHdLevel1: TcxGridLevel;
    pnlDetailTop: TPanel;
    lblReceivingRecordDate: TLabel;
    lblIdReceivingRecord: TLabel;
    lblSupplierDO: TLabel;
    lblIdWarehouse: TLabel;
    lblIdPurchaseOrder: TLabel;
    lblSupplierName: TLabel;
    dbeReceivingRecordDate: TcxDBDateEdit;
    dbeIdReceivingRecord: TcxDBTextEdit;
    dbeSupplierDO: TcxDBTextEdit;
    dblcIdWarehouse: TcxDBExtLookupComboBox;
    dbeIdPurchaseOrder: TcxDBTextEdit;
    dbeSupplierName: TcxDBTextEdit;
    cgReceivingRecordDt: TcxGrid;
    cgvReceivingRecordDt: TcxGridDBTableView;
    cgvReceivingRecordDtvcIdReceivingRecord: TcxGridDBColumn;
    cgvReceivingRecordDtinNo: TcxGridDBColumn;
    cgvReceivingRecordDtvcIdSupplies: TcxGridDBColumn;
    cgvReceivingRecordDtvcIdSupplies2: TcxGridDBColumn;
    cgvReceivingRecordDtvcIdSupplies3: TcxGridDBColumn;
    cgvReceivingRecordDtinQty: TcxGridDBColumn;
    cgReceivingRecordDtLevel1: TcxGridLevel;
    cgReceivingRecordNt: TcxGrid;
    cgvReceivingRecordNt: TcxGridDBTableView;
    cgvReceivingRecordNtvcIdReceivingRecord: TcxGridDBColumn;
    cgvReceivingRecordNtvcIdSupplies: TcxGridDBColumn;
    cgvReceivingRecordNtvcIdMachine: TcxGridDBColumn;
    cgReceivingRecordNtLevel1: TcxGridLevel;
    pcNotes: TcxPageControl;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsMemo: TcxTabSheet;
    dbMemo: TcxDBMemo;
    dtsIMReceivingRecordHd: TADODataSet;
    dtsIMReceivingRecordDt: TADODataSet;
    dtsIMReceivingRecordNt: TADODataSet;
    dsIMReceivingRecordDt: TDataSource;
    dsIMReceivingRecordNt: TDataSource;
    qryPrevWarehouse: TADOQuery;
    cxSplitter1: TcxSplitter;
    qryGetRRInfo: TADOQuery;
    gvrInventory: TcxGridViewRepository;
    cgvWarehouse: TcxGridDBTableView;
    cgvWarehousevcIdWarehouse: TcxGridDBColumn;
    cgvWarehousevcWarehouseName: TcxGridDBColumn;
    cgvWarehousevcContactPerson: TcxGridDBColumn;
    cgvWarehousevcAddress: TcxGridDBColumn;
    cgvWarehousevcIdCity: TcxGridDBColumn;
    dsPrevWarehouse: TDataSource;
    procedure actApproveExecute(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure actRevisionExecute(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
    procedure cgvReceivingRecordHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dtsIMReceivingRecordDtBeforeDelete(DataSet: TDataSet);
    procedure dtsIMReceivingRecordDtBeforeEdit(DataSet: TDataSet);
    procedure dtsIMReceivingRecordDtBeforeInsert(DataSet: TDataSet);
    procedure dtsIMReceivingRecordDtNewRecord(DataSet: TDataSet);
    procedure dtsIMReceivingRecordHdBeforeEdit(DataSet: TDataSet);
    procedure dtsIMReceivingRecordHdBeforePost(DataSet: TDataSet);
    procedure dtsIMReceivingRecordHdNewRecord(DataSet: TDataSet);
    procedure dtsIMReceivingRecordNtBeforeDelete(DataSet: TDataSet);
    procedure dtsIMReceivingRecordNtBeforeEdit(DataSet: TDataSet);
    procedure dtsIMReceivingRecordNtBeforeInsert(DataSet: TDataSet);
  protected
    FStatusWarehouse: string;
    FCurrentWarehouse: string;
    FCheckMutation: boolean;

    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    function ValidateReceivingRecordHd(const AIdRR: string): boolean;
    function CheckReceivingRecordReturn(const AIdRR: string): boolean;
  public
    { Public declarations }
  end;

var
  fmReceivingRecord: TfmReceivingRecord;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, frmNotes,
  untConstanta;

procedure TfmReceivingRecord.actApproveExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if (dtsIMReceivingRecordHd.IsEmpty) or
    (dtsIMReceivingRecordDt.IsEmpty) then
  begin
    MessageDlg(Format(MSG_CANNOT_APPROVE_EMPTY, [RR]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if MessageDlg(Format(ASK_APPROVE, [RR, VarToStr(dbeIdReceivingRecord.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  FCheckMutation := False;

  // Process
  dsDefault.DataSet.Edit;
  dsDefault.DataSet.FieldByName('txNotes').AsString :=
    VarToStr(dbmNotes.EditValue) +
    'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
    ' - ' + NS_APPROVE + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10;
  dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove + 1;
  dsDefault.DataSet.Post;

//  if (FStatusApprove + 1) = 2 then
//    actPrint.Execute;
end;

procedure TfmReceivingRecord.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dsDefault.DataSet.IsEmpty then
    Exit;
  if not ValidateReceivingRecordHd(VarToStr(dbeIdReceivingRecord.EditValue)) then
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

procedure TfmReceivingRecord.actRevisionExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if dtsIMReceivingRecordHd.IsEmpty then
    Exit;
  if dtsIMReceivingRecordHd.FieldByName('chFlagMutation').AsInteger = 1 then
  begin
    MessageDlg(MSG_CANNOT_EDIT_RR_MUTATION, mtInformation, [mbYes], 0);
    Exit;
  end;
  if MessageDlg(Format(ASK_REVISION, [RR, VarToStr(dbeIdReceivingRecord.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateReceivingRecordHd(VarToStr(dbeIdReceivingRecord.EditValue)) then
    Exit;

  // Process
  dtsIMReceivingRecordHd.Edit;
  dtsIMReceivingRecordHd.FieldByName('txNotes').AsString :=
    VarToStr(dbmNotes.EditValue) +
    'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
    ' - ' + NS_REVISION + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10;
  dtsIMReceivingRecordHd.FieldByName('chStatusApprove').AsInteger := FStatusApprove - 1;
  dtsIMReceivingRecordHd.Post;

  btnRefresh.Click;
end;

procedure TfmReceivingRecord.actVoidExecute(Sender: TObject);
var
  S: TStringList;
  IdPurchaseInvoice: string;
begin
  //Ivan do not :inherited;

  // Validate
  if dtsIMReceivingRecordHd.IsEmpty then
    Exit;
  IdPurchaseInvoice := dmShare.GetReceivingRecordPI(VarToStr(dbeIdReceivingRecord.EditValue));
  if IdPurchaseInvoice <> '' then
  begin
    MessageDlg(Format(MSG_CANNOT_REJECT_RR, [VarToStr(dbeIdReceivingRecord.EditValue), IdPurchaseInvoice]),
      mtInformation, [mbOk], 0);
    Exit;
  end;
  if MessageDlg(Format(ASK_REJECT, [RR, VarToStr(dbeIdReceivingRecord.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateReceivingRecordHd(VarToStr(dbeIdReceivingRecord.EditValue)) then
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
    dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := STATUS_REJECT;
    dsDefault.DataSet.Post;
  finally
    S.Free;
  end;
end;

procedure TfmReceivingRecord.cgvReceivingRecordHdStylesGetContentStyle(
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

function TfmReceivingRecord.CheckReceivingRecordReturn(
  const AIdRR: string): boolean;
begin
  Result := True;
  if (Copy(AIdRR, 3, 2) = 'SR') then
  begin
    MessageDlg(Format(MSG_CANNOT_EDIT_AUTO_RR, [AIdRR]), mtInformation, [mbOk], 0);
    Result := False;
  end;
end;

procedure TfmReceivingRecord.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  // Setting button enabled
  if TDataSource(Sender).DataSet.State in [dsInsert] then
    SetReadOnly(dbeReceivingRecordDate, False);
  if TDataSource(Sender).DataSet.State in [dsBrowse] then
  begin
    SetReadOnly(dblcIdWarehouse, True, COLOR_INACTIVE);
    SetReadOnly(dbeReceivingRecordDate, True, COLOR_INACTIVE);
  end;
end;

procedure TfmReceivingRecord.dtsIMReceivingRecordDtBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if not dtsIMReceivingRecordHd.IsEmpty then
  begin
    if not ValidateReceivingRecordHd(dtsIMReceivingRecordHd.FieldByName('vcIdReceivingRecord').AsString) then
      Abort;
    if not CheckReceivingRecordReturn(dtsIMReceivingRecordHd.FieldByName('vcIdReceivingRecord').AsString) then
      Abort;
  end;
end;

procedure TfmReceivingRecord.dtsIMReceivingRecordDtBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if not dtsIMReceivingRecordHd.IsEmpty then
  begin
    if not ValidateReceivingRecordHd(dtsIMReceivingRecordHd.FieldByName('vcIdReceivingRecord').AsString) then
      Abort;
    if dtsIMReceivingRecordHd.State in [dsInsert, dsEdit] then
      dtsIMReceivingRecordHd.Post;
    if dtsIMReceivingRecordHd.FieldByName('chFlagMutation').AsInteger = 1 then
    begin
      MessageDlg(MSG_CANNOT_EDIT_RR_MUTATION, mtInformation, [mbYes], 0);
      Abort;
    end;
    if not CheckReceivingRecordReturn(dtsIMReceivingRecordHd.FieldByName('vcIdReceivingRecord').AsString) then
      Abort;
  end;
end;

procedure TfmReceivingRecord.dtsIMReceivingRecordDtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if dtsIMReceivingRecordHd.IsEmpty then
    Abort;
  if not ValidateReceivingRecordHd(dtsIMReceivingRecordHd.FieldByName('vcIdReceivingRecord').AsString) then
    Abort;
  if dtsIMReceivingRecordHd.State in [dsInsert, dsEdit] then
    dtsIMReceivingRecordHd.Post;
  if dtsIMReceivingRecordHd.FieldByName('chFlagMutation').AsInteger = 1 then
    Abort;
  if not CheckReceivingRecordReturn(dtsIMReceivingRecordHd.FieldByName('vcIdReceivingRecord').AsString) then
    Abort;
end;

procedure TfmReceivingRecord.dtsIMReceivingRecordDtNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('inNo').AsInteger := Dataset.RecordCount + 1;
end;

procedure TfmReceivingRecord.dtsIMReceivingRecordHdBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if not dtsIMReceivingRecordHd.IsEmpty then
  begin
    if not ValidateReceivingRecordHd(dtsIMReceivingRecordHd.FieldByName('vcIdReceivingRecord').AsString) then
      Abort;
  end;
end;

procedure TfmReceivingRecord.dtsIMReceivingRecordHdBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if DataSet.FieldByName('vcIdReceivingRecord').IsNull then
    DataSet.FieldByName('vcIdReceivingRecord').AsString :=
      dmShare.GetCurrentTransNo(utReceivingRecord,
        DataSet.FieldByName('dtReceivingRecordDate').AsDateTime,
        DataSet.FieldByName('vcIdWarehouse').AsString);
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmReceivingRecord.dtsIMReceivingRecordHdNewRecord(
  DataSet: TDataSet);
begin
  inherited;

    DataSet.FieldByName('dtReceivingRecordDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
    Dataset.FieldByName('vcEmployeeName').Value := dmGlobal.SettingGlobal.LoginEmployeeName;
    if (FCurrentWarehouse = '%') then
      SetReadOnly(dblcIdWarehouse, False) // lookup, boleh pilih gudang
    else
      Dataset.FieldByName('vcIdWarehouse').AsString := FCurrentWarehouse; // sudah ditentukan
    Dataset.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
    Dataset.FieldByName('CounterPrint').AsInteger := 0;
    Dataset.FieldByName('chFlagMutation').AsInteger := 0;
end;

procedure TfmReceivingRecord.dtsIMReceivingRecordNtBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if not dtsIMReceivingRecordHd.IsEmpty then
  begin
    if not ValidateReceivingRecordHd(dtsIMReceivingRecordHd.FieldByName('vcIdReceivingRecord').AsString) then
      Abort;
  end;
end;

procedure TfmReceivingRecord.dtsIMReceivingRecordNtBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if not dtsIMReceivingRecordHd.IsEmpty then
  begin
    if not ValidateReceivingRecordHd(dtsIMReceivingRecordHd.FieldByName('vcIdReceivingRecord').AsString) then
      Abort;
    if dtsIMReceivingRecordDt.State in [dsInsert, dsEdit] then
      dtsIMReceivingRecordDt.Post;
  end;
end;

procedure TfmReceivingRecord.dtsIMReceivingRecordNtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if dtsIMReceivingRecordHd.IsEmpty then
    Abort;
  if not ValidateReceivingRecordHd(dtsIMReceivingRecordHd.FieldByName('vcIdReceivingRecord').AsString) then
    Abort;
  if dtsIMReceivingRecordDt.State in [dsInsert, dsEdit] then
    dtsIMReceivingRecordDt.Post;
end;

procedure TfmReceivingRecord.InitForm;
begin
  inherited;

  FCheckMutation := True;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_RR);

  FStatusWarehouse := FParamArrayValues[0];
  FCurrentWarehouse := FParamArrayValues[1];

  if FStatusWarehouse = '0' then
    Self.Caption := Self.Caption + ' Gudang Fisik'
  else if FStatusWarehouse = '1' then
    Self.Caption := Self.Caption + ' Gudang Toko'
  else if FStatusWarehouse = '2' then
    Self.Caption := Self.Caption + ' Gudang Virtual';

  // Initial
  case FStatusApprove of
    0 :
      begin
        Self.Caption := Self.Caption + ' - Entry';
        btnRevision.Enabled := False;
        btnPrint.Enabled := False;
      end;
    1 :
      begin
        Self.Caption := Self.Caption + ' - Approval 1';
        btnRevision.Enabled := False;
        btnPrint.Enabled := False;
      end;
    2 :
      begin
        // Read only & can reject only
        Self.Caption := Self.Caption + ' - Approval 2';
        btnApprove.Enabled := False;
        btnRevision.Enabled := False;
        btnNotes.Enabled := False;
        dsDefault.AutoEdit := False;
        btnInsert.Visible := False;
        btnEdit.Visible := False;
        btnPost.Visible := False;
        btnCancel.Visible := False;
        SetReadOnly(cgvReceivingRecordDt);
        SetReadOnly(cgvReceivingRecordNt);
        SetReadOnly(dbeSupplierName, True, COLOR_INACTIVE);
        SetReadOnly(dbeSupplierDO, True, COLOR_INACTIVE);
        SetReadOnly(dbeIdPurchaseOrder, True, COLOR_INACTIVE);
      end;
  end;
  //SetShapeColorWithStyle(shpApproved, dmGlobal.stYellowLight);
  //SetShapeColorWithStyle(shpReject, dmGlobal.stRedLight);
  //SetShapeColorWithStyle(shpDone, dmGlobal.stGreenLight);
  SetReadOnly(dbeIdReceivingRecord, True, COLOR_INACTIVE);
  SetReadOnly(dbeReceivingRecordDate, True, COLOR_INACTIVE);
  SetReadOnly(dblcIdWarehouse, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);

  if (dmInventory.OptionOnlyRREntryCanModifyData) and (FStatusApprove <> 0) then
  begin
    dsDefault.AutoEdit := False;
    btnInsert.Enabled := False;
    btnEdit.Enabled := False;
    SetReadOnly(cgvReceivingRecordDt);
    SetReadOnly(cgvReceivingRecordNt);
    SetReadOnly(dbeSupplierName, True, COLOR_INACTIVE);
    SetReadOnly(dbeSupplierDO, True, COLOR_INACTIVE);
    SetReadOnly(dbeIdPurchaseOrder, True, COLOR_INACTIVE);
    SetReadOnly(dbMemo, True, COLOR_INACTIVE);
    SetReadOnly(cgvReceivingRecordDt);
    SetReadOnly(cgvReceivingRecordNt);
  end;

  // Display Format
  TcxCalcEditProperties(cgvReceivingRecordDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  // Query
  qryPrevWarehouse.Close;
  qryPrevWarehouse.Parameters[0].Value := FStatusWarehouse;
  qryPrevWarehouse.Parameters[1].Value := FCurrentWarehouse;
  OpenIfClose(qryPrevWarehouse);
  OpenIfClose(dmInventory.qrySupplies, True);

  MonthYearValueChange(nil); // -> Trigger qryPurchaseInvoiceHd
  OpenIfClose(dtsIMReceivingRecordDt);
  OpenIfClose(dtsIMReceivingRecordNt);
end;

procedure TfmReceivingRecord.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (dtsIMReceivingRecordHd.State in [dsEdit, dsInsert]) or
    (dtsIMReceivingRecordDt.State in [dsEdit, dsInsert]) or
    (dtsIMReceivingRecordNt.State in [dsEdit, dsInsert]) then
    Abort;

  dtsIMReceivingRecordHd.Close;
  dtsIMReceivingRecordHd.Parameters[0].Value := FStatusApprove;
  dtsIMReceivingRecordHd.Parameters[1].Value := FStatusApprove + 1;
  dtsIMReceivingRecordHd.Parameters[2].Value := STATUS_REJECT;
  dtsIMReceivingRecordHd.Parameters[3].Value := STATUS_DONE;
  dtsIMReceivingRecordHd.Parameters[4].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMReceivingRecordHd.Parameters[5].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMReceivingRecordHd.Parameters[6].Value := FStatusWarehouse; //warehouse
  dtsIMReceivingRecordHd.Parameters[7].Value := FCurrentWarehouse;
  OpenIfClose(dtsIMReceivingRecordHd, True);
  cgvReceivingRecordHd.ViewData.Expand(False);
end;

procedure TfmReceivingRecord.RefreshAll;
begin
  inherited;

//  LockRefresh(qryPrevWarehouse);
//  LockRefresh(dmInventory.qrySupplies, True);
  LockRefresh(dtsIMReceivingRecordHd, True);
  LockRefresh(dtsIMReceivingRecordDt);
  LockRefresh(dtsIMReceivingRecordNt);
  cgvReceivingRecordHd.ViewData.Expand(False);
end;

function TfmReceivingRecord.ValidateReceivingRecordHd(const AIdRR: string): boolean;
begin
  Result := False;
  qryGetRRInfo.Close;
  qryGetRRInfo.Parameters[0].Value := AIdRR;
  OpenIfClose(qryGetRRInfo, False);
  if qryGetRRInfo.IsEmpty then
    Exit;
  if qryGetRRInfo.FieldByName('chStatusApprove').AsInteger <> FStatusApprove then
  begin
    MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [RR, AIdRR]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if FCheckMutation then
  begin
    if qryGetRRInfo.FieldByName('chFlagMutation').AsInteger = 1 then
    begin
      MessageDlg(Format(MSG_CANNOT_EDIT_TRANS_MUTATION, [RR, AIdRR]), mtInformation, [mbOk], 0);
      Exit;
    end;
  end;
  FCheckMutation := True;
  Result := True;
end;

end.
