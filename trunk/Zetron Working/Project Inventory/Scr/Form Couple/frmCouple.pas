unit frmCouple;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxSpinEdit, cxDBExtLookupComboBox, cxCalc, cxCurrencyEdit, cxCalendar,
  cxImageComboBox, MemDS, DBAccess, Uni, cxMemo, cxDBEdit, cxPC, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, ExtCtrls, cxProgressBar,
  dxDockControl, untIvPositionDevExpress, untIvPositionStandard, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit,
  cxMaskEdit, StdCtrls, cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinsdxDockControlPainter,
  dxSkinscxPCPainter;

type
  TfmCouple = class(TFormUniTransactionEx)
    dsCoupleDt: TDataSource;
    dsTransactionDt: TDataSource;
    pnTop: TPanel;
    lblPurchaseInvoiceId: TLabel;
    lblWarehouseSource: TLabel;
    lblItemId: TLabel;
    lblItem: TLabel;
    lblQuantityProcess: TLabel;
    lblTotalCOGS: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    dbeCoupleDate: TcxDBDateEdit;
    dbeCoupleId: TcxDBTextEdit;
    dblcbWarehouseId: TcxDBExtLookupComboBox;
    dblcItemId: TcxDBExtLookupComboBox;
    dblcItemName: TcxDBExtLookupComboBox;
    edtCOGS: TcxCurrencyEdit;
    dbeTotalCOGS: TcxDBCurrencyEdit;
    btnCalcCOGS: TcxButton;
    dblcProject: TcxDBExtLookupComboBox;
    cgCoupleDt: TcxGrid;
    cgvCoupleDt: TcxGridDBTableView;
    cgvCoupleDtcoupleid: TcxGridDBColumn;
    cgvCoupleDtno: TcxGridDBColumn;
    cgvCoupleDtItemIdExternal: TcxGridDBColumn;
    cgvCoupleDtItemName: TcxGridDBColumn;
    cgvCoupleDtItemType: TcxGridDBColumn;
    cgvCoupleDtItemDesc: TcxGridDBColumn;
    cgvCoupleDtqty: TcxGridDBColumn;
    cgvCoupleDtqtycouple: TcxGridDBColumn;
    cgvCoupleDtcogs: TcxGridDBColumn;
    cgvCoupleDttotalcogs: TcxGridDBColumn;
    cgvTransactionDt: TcxGridDBTableView;
    cgvTransactionDtitemidexternal: TcxGridDBColumn;
    cgvTransactionDtitemname: TcxGridDBColumn;
    cgvTransactionDtitemnamechinese: TcxGridDBColumn;
    cgvTransactionDttype: TcxGridDBColumn;
    cgvTransactionDtdatecogs: TcxGridDBColumn;
    cgvTransactionDtqty: TcxGridDBColumn;
    cgvTransactionDtcogs: TcxGridDBColumn;
    cgvTransactionDttotalcogs: TcxGridDBColumn;
    cgCoupleDtLevel1: TcxGridLevel;
    cgCoupleDtLevel2: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    tsExternalMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsInternalMemo: TcxTabSheet;
    dbmInternalMemo: TcxDBMemo;
    cgExplorer: TcxGrid;
    cgvExplorer: TcxGridDBTableView;
    cgvExplorerstatusapprove: TcxGridDBColumn;
    cgvExplorercoupleid: TcxGridDBColumn;
    cgvExplorercoupledate: TcxGridDBColumn;
    cgvExplorerwarehouseid: TcxGridDBColumn;
    cgvExploreritemid: TcxGridDBColumn;
    cgvExplorerprojectid: TcxGridDBColumn;
    cgExplorerLevel1: TcxGridLevel;
    pnlProgressBar: TPanel;
    Label6: TLabel;
    pbProcess: TcxProgressBar;
    dbeQty: TcxDBCalcEdit;
    qryCoupleHd: TUniQuery;
    qryCoupleDt: TUniQuery;
    qryTransactionDt: TUniQuery;
    qryGetStatusItem: TUniQuery;
    qryGetItemDetail: TUniQuery;
    qryDeleteDetail: TUniQuery;
    qryInsertDetail: TUniQuery;
    qryUpdateCOGSCoupleHd: TUniQuery;
    Label1: TLabel;
    lblAutoCreate: TLabel;
    Image1: TImage;
    lblFixed: TLabel;
    lblCashRegisterTransactionId: TLabel;
    dbeCashRegisterTransactionId: TcxDBTextEdit;
    procedure qryCoupleHdBeforeInsert(DataSet: TDataSet);
    procedure qryCoupleHdAfterCancel(DataSet: TDataSet);
    procedure qryCoupleHdNewRecord(DataSet: TDataSet);
    procedure qryCoupleHdBeforePost(DataSet: TDataSet);
    procedure qryCoupleHdBeforeEdit(DataSet: TDataSet);
    procedure qryCoupleHdAfterPost(DataSet: TDataSet);
    procedure qryCoupleDtNewRecord(DataSet: TDataSet);
    procedure qryCoupleDtAfterPost(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsCoupleDtDataChange(Sender: TObject; Field: TField);
    procedure dbeTotalCOGSPropertiesEditValueChanged(Sender: TObject);
    procedure cgvTransactionDtStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cgvCoupleDtFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure btnCalcCOGSClick(Sender: TObject);
    procedure qryCoupleDtBeforeInsert(DataSet: TDataSet);
    procedure dbeCoupleIdPropertiesEditValueChanged(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FFromEditState: boolean;
    FOldItemId: integer;
    FOldQty: real;
    FInsertState: boolean;
    procedure RecalculateTotalCOGS;
  public

  end;

var
  fmCouple: TfmCouple;

implementation

{$R *.dfm}

uses
  untConstanta, untConstantaPOS, untProcedure, dtmGlobal, dtmGeneral,
  dtmShare, dtmInventory;

procedure TfmCouple.btnCalcCOGSClick(Sender: TObject);
begin
  inherited;

  RecalculateTotalCOGS;
end;

procedure TfmCouple.cgvCoupleDtFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;

  qryGetStatusItem.Close;
  qryGetStatusItem.Params[0].Value := qryCoupleDt.FieldByName('ItemId').AsInteger;
  qryGetStatusItem.Open;
  cgvCoupleDtcogs.Options.Editing := (qryGetStatusItem.FieldByName('StatusItem').AsString = '0')
    or (qryGetStatusItem.FieldByName('StatusItem').AsString = '2');
end;

procedure TfmCouple.cgvTransactionDtStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
    if ARecord.Values[GetColumnByFieldName('Qty').Index] < '0' then
      AStyle := dmGlobal.stRedLight;
end;

procedure TfmCouple.dbeCoupleIdPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  lblAutoCreate.Visible := qryCoupleHd.FieldByName('FlagAutomatic').AsString = '1';
end;

procedure TfmCouple.dbeTotalCOGSPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if qryCoupleHd.FieldByName('Qty').AsFloat <> 0 then
    edtCOGS.EditValue :=
      qryCoupleHd.FieldByName('TotalCOGS').AsCurrency / qryCoupleHd.FieldByName('Qty').AsFloat
  else
    edtCOGS.EditValue := 0;
end;

procedure TfmCouple.dsCoupleDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if (Field = nil) then
    Exit;

  if qryCoupleDt.State in [dsInsert, dsEdit] then
  begin
    // Calculate
    if (CompareText(Field.FieldName, 'Qty') = 0) or
      (CompareText(Field.FieldName, 'COGS') = 0) then
    begin
      qryCoupleDt.FieldByName('QtyCouple').AsFloat :=
        qryCoupleDt.FieldByName('Qty').AsFloat * qryCoupleHd.FieldByName('Qty').AsFloat;
      qryCoupleDt.FieldByName('TotalCOGS').AsCurrency :=
        qryCoupleDt.FieldByName('QtyCouple').AsFloat * qryCoupleDt.FieldByName('COGS').AsCurrency;
    end;
  end;

  if CompareText(Field.FieldName, 'ItemId') = 0 then
  begin
    qryGetStatusItem.Close;
    qryGetStatusItem.Params[0].Value := qryCoupleDt.FieldByName('ItemId').AsInteger;
    qryGetStatusItem.Open;
    cgvCoupleDtcogs.Options.Editing := (qryGetStatusItem.FieldByName('StatusItem').AsString = '0')
      or (qryGetStatusItem.FieldByName('StatusItem').AsString = '2');
  end;
end;

procedure TfmCouple.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qryCoupleHd.State in [dsBrowse] then
  begin
    SetReadOnly(dbeCoupleDate, True, COLOR_INACTIVE);
    SetReadOnly(dblcbWarehouseId, True, COLOR_INACTIVE);
    SetReadOnly(dblcItemId, True, COLOR_INACTIVE);
    SetReadOnly(dblcItemName, True, COLOR_INACTIVE);
  end;
end;

procedure TfmCouple.InitForm;
begin
  inherited;

  dbeQty.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  dbeTotalCOGS.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtCOGS.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvCoupleDtqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvCoupleDtqtycouple.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvCoupleDtcogs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvCoupleDttotalcogs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvTransactionDtqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvTransactionDtcogs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvTransactionDttotalcogs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  SetReadOnly(dbeCoupleDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeCoupleId, True, COLOR_INACTIVE);
  SetReadOnly(dbeCashRegisterTransactionId);
  SetReadOnly(edtCOGS, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotalCOGS, True, COLOR_INACTIVE);
  SetReadOnly(cgvTransactionDt);

  OpenIfClose(dmGeneral.qryWarehouse);
  OpenIfClose(dmGeneral.qryProject);
  OpenIfClose(dmInventory.qryPrevItemCouple, True);
  OpenIfClose(dmInventory.qryItem, True);

  MonthYearValueChange(nil); // -> Trigger qryCoupleHd
  OpenIfClose(qryCoupleDt);
  OpenIfClose(qryTransactionDt);
end;

procedure TfmCouple.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if qryCoupleHd.State in [dsEdit, dsInsert] then
    Abort;

  qryCoupleHd.DisableControls;
  qryCoupleHd.Close;
  qryCoupleHd.Params[0].Value := StrToInt(cbYear.Text);
  qryCoupleHd.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryCoupleHd, True, True);
  qryCoupleHd.EnableControls;
end;

procedure TfmCouple.qryCoupleDtAfterPost(DataSet: TDataSet);
begin
  inherited;

  // Apply COGS to header & Refresh
  // Call spUpdateCOGSCoupleHd
  if qryCoupleDt.Tag = 0 then
    RecalculateTotalCOGS;
end;

procedure TfmCouple.qryCoupleDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;
end;

procedure TfmCouple.qryCoupleDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
end;

procedure TfmCouple.qryCoupleHdAfterCancel(DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmCouple.qryCoupleHdAfterPost(DataSet: TDataSet);
begin
  inherited;

  // check current status
  if qryCoupleHd.FieldByName(FIELD_STATUS_APPROVE).AsString = dmGlobal.SettingGlobal.StatusVoid then
    Exit;

  // Initialize
  qryCoupleDt.Tag := 1; // Disable event after post and after delete
  qryCoupleDt.DisableControls;

  if (not FFromEditState) then //  From insert state
  begin
    // delete all detail if exist
    while not qryCoupleDt.IsEmpty do
      qryCoupleDt.Delete;

    // Insert new one
    qryGetItemDetail.Close;
    qryGetItemDetail.Params[0].Value := VarToStr(dblcItemId.EditValue);
    OpenIfClose(qryGetItemDetail);
    pbProcess.Properties.Max := qryGetItemDetail.RecordCount;
    while not qryGetItemDetail.Eof do
    begin
      pbProcess.Position := pbProcess.Position + 1;
      pbProcess.Refresh;

      //NOTE: COGS & TotalCOGS di handle oleh dsCoupleDt
      qryCoupleDt.Insert;
      qryCoupleDt.FieldByName('CoupleId').AsString := qryCoupleHd.FieldByName('CoupleId').AsString;
      qryCoupleDt.FieldByName('No').AsInteger := qryCoupleDt.RecordCount + 1;
      qryCoupleDt.FieldByName('ItemId').AsInteger := qryGetItemDetail.FieldByName('ItemDt').AsInteger; // ItemDt
      qryCoupleDt.FieldByName('Qty').AsFloat := qryGetItemDetail.FieldByName('Qty').AsFloat;
      qryCoupleDt.FieldByName('QtyCouple').AsFloat :=
        qryGetItemDetail.FieldByName('Qty').AsFloat * qryCoupleHd.FieldByName('Qty').AsFloat;
      qryCoupleDt.FieldByName('COGS').AsCurrency := 0;
      qryCoupleDt.FieldByName('TotalCOGS').AsCurrency := 0;
      qryCoupleDt.Post;

      qryGetItemDetail.Next;
    end;
    pbProcess.Position := 0;
  end
  else // Edit state
  begin
    // If qty changed
    if FOldQty <> qryCoupleHd.FieldByName('Qty').AsFloat then
    begin
      // Update all QtyCouple detail
      qryCoupleDt.First;
      pbProcess.Properties.Max := qryCoupleDt.RecordCount;
      while not qryCoupleDt.Eof do
      begin
        pbProcess.Position := pbProcess.Position + 1;
        pbProcess.Refresh;

        qryCoupleDt.Edit;
        qryCoupleDt.FieldByName('QtyCouple').AsFloat :=
          qryCoupleDt.FieldByName('Qty').AsFloat * qryCoupleHd.FieldByName('Qty').AsFloat;
        //NOTE: TotalCOGS yg dimasukan manual harus dihitung
        qryCoupleDt.FieldByName('TotalCOGS').AsCurrency :=
          qryCoupleDt.FieldByName('QtyCouple').AsFloat * qryCoupleDt.FieldByName('COGS').AsCurrency;
        qryCoupleDt.Post;

        qryCoupleDt.Next;
      end;
      pbProcess.Position := 0;
    end;
  end;

  // Finally
  RecalculateTotalCOGS;
  qryCoupleDt.Tag := 0; // to enable refresh after post event on coupledt
  qryCoupleDt.EnableControls;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('CoupleHd', dmShare.OptionCO.Prefix,
      DataSet.FieldByName('CoupleDate').AsDateTime, dmShare.OptionCO.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmCouple.qryCoupleHdBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName('FlagAutomatic').AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_AUTO_CREATE, mtInformation, [mbOk], 0);
    Abort;
  end;

  FFromEditState := True;
  FOldItemId := qryCoupleHd.FieldByName('ItemId').AsInteger;
  FOldQty := qryCoupleHd.FieldByName('Qty').AsFloat;
end;

procedure TfmCouple.qryCoupleHdBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmCouple.qryCoupleHdBeforePost(DataSet: TDataSet);
begin
  inherited;

  // Insert Id
  if FInsertState then
    DataSet.FieldByName('CoupleId').AsString :=
     dmGlobal.GetLastTransactionId('CoupleHd', dmShare.OptionCO.Prefix, dmShare.OptionCO.Length,
        DataSet.FieldByName('CoupleDate').AsDateTime, dmShare.OptionCO.RunYear);

  // Last Employee modified
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmCouple.qryCoupleHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('StatusApprove').AsInteger := 1;
  Dataset.FieldByName('Qty').AsInteger := 1;

  SetReadOnly(dblcbWarehouseId, False);
  SetReadOnly(dbeCoupleDate, False);
  SetReadOnly(dblcItemId, False);
  SetReadOnly(dblcItemName, False);

  FFromEditState := False;
end;

procedure TfmCouple.RecalculateTotalCOGS;
begin
  qryUpdateCOGSCoupleHd.Close;
  qryUpdateCOGSCoupleHd.Params[0].Value := qryCoupleHd.FieldByName('CoupleId').AsString;
  qryUpdateCOGSCoupleHd.Execute;
  LockRefresh(qryCoupleHd, True);
  LockRefresh(qryCoupleDt);
end;

procedure TfmCouple.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryWarehouse);
  LockRefresh(dmGeneral.qryProject);
  LockRefresh(dmInventory.qryItem, True);
  LockRefresh(dmInventory.qryPrevItemCouple, True);
  LockRefresh(qryCoupleHd, True);
  LockRefresh(qryCoupleDt);
  OpenIfClose(qryTransactionDt);
end;

end.

