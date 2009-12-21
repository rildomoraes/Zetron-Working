unit frmAssemblyTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  // Auto Create
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
  cxCurrencyEdit, cxGridBandedTableView, cxGridDBBandedTableView, cxCalendar,
  cxMemo, cxPC, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ADODB;

type
  TfmAssemblyTransaction = class(TFormUniTransactionApprovalEx)
    dtsIMAssemblyTransactionHd: TADODataSet;
    dtsIMAssemblyTransactionDt: TADODataSet;
    dsIMAssemblyTransactionDt: TDataSource;
    cgIMAssemblyTransactionHd: TcxGrid;
    cgvAssemblyTransactionHd: TcxGridDBTableView;
    cgvAssemblyTransactionHdvcIdAssemblyTransaction: TcxGridDBColumn;
    cgvAssemblyTransactionHddtAssemblyTransactionDate: TcxGridDBColumn;
    cgvAssemblyTransactionHdvcIdWarehouse: TcxGridDBColumn;
    cgvAssemblyTransactionHdchAssemblyTransactionStatus: TcxGridDBColumn;
    cgvAssemblyTransactionHdchStatusApprove: TcxGridDBColumn;
    cgIMAssemblyTransactionHdLevel1: TcxGridLevel;
    pnlDetailTop: TPanel;
    lblIdJobAssembly: TLabel;
    lblWarehouse: TLabel;
    lblDate: TLabel;
    pcNotes: TcxPageControl;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsMemo: TcxTabSheet;
    dbMemo: TcxDBMemo;
    dbeIdAssemblyTransaction: TcxDBTextEdit;
    dblcIdWarehouse: TcxDBExtLookupComboBox;
    dbeDate: TcxDBDateEdit;
    cgAssemblyTransactionDt: TcxGrid;
    cgAssemblyTransactionDtLevel1: TcxGridLevel;
    Label1: TLabel;
    Label2: TLabel;
    dbeSuppliesId: TcxDBExtLookupComboBox;
    Label3: TLabel;
    dbeQty: TcxDBCalcEdit;
    dbeAssemblyTransactionType: TcxDBImageComboBox;
    qryPrevSuppliesCouple: TADOQuery;
    dsPrevSuppliesCouple: TDataSource;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvPrevSuppliesCouple: TcxGridDBTableView;
    cgvPrevSuppliesCouplevcIdSupplies: TcxGridDBColumn;
    cgvPrevSuppliesCouplevcSuppliesName: TcxGridDBColumn;
    cgvPrevSuppliesCouplevcIdSuppliesCategory: TcxGridDBColumn;
    cgvPrevSuppliesCouplevcType: TcxGridDBColumn;
    qryPrevWarehouseCouple: TADOQuery;
    dsPrevWarehouseCouple: TDataSource;
    cgvPrevWarehouseCouple: TcxGridDBTableView;
    cgvPrevWarehouseCouplevcIdWarehouse: TcxGridDBColumn;
    cgvPrevWarehouseCouplevcWarehouseName: TcxGridDBColumn;
    cgvPrevWarehouseCouplevcContactPerson: TcxGridDBColumn;
    cgvPrevWarehouseCoupleCityName: TcxGridDBColumn;
    cgvAssemblyTransactionDt: TcxGridDBTableView;
    cgvAssemblyTransactionDtinNo: TcxGridDBColumn;
    cgvAssemblyTransactionDtvcIdAssemblyTransaction: TcxGridDBColumn;
    cgvAssemblyTransactionDtinQty: TcxGridDBColumn;
    cgvAssemblyTransactionDtdcPrice: TcxGridDBColumn;
    cgvAssemblyTransactionDtdcAmount: TcxGridDBColumn;
    cgvAssemblyTransactionDtvcIdSupplies: TcxGridDBColumn;
    cgvAssemblyTransactionDtinQtyCouple: TcxGridDBColumn;
    qryGetItemDetail: TADOQuery;
    qryGetStatusItem: TADOQuery;
    qryValidateQtyReady: TADOQuery;
    qryUpdateQtyReady: TADOQuery;
    qryUpdateQtyReadyVoid: TADOQuery;
    procedure cgvAssemblyTransactionHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure actApproveExecute(Sender: TObject);
    procedure actRevisionExecute(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);

    procedure dsDefaultStateChange(Sender: TObject);
    procedure dtsIMAssemblyTransactionHdNewRecord(DataSet: TDataSet);
    procedure dtsIMAssemblyTransactionHdAfterPost(DataSet: TDataSet);
    procedure dtsIMAssemblyTransactionHdBeforeEdit(DataSet: TDataSet);
    procedure dtsIMAssemblyTransactionHdBeforePost(DataSet: TDataSet);
    procedure dtsIMAssemblyTransactionHdBeforeInsert(DataSet: TDataSet);
    procedure dtsIMAssemblyTransactionDtNewRecord(DataSet: TDataSet);
    procedure dsIMAssemblyTransactionDtDataChange(Sender: TObject; Field: TField);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FInsertState: boolean;
    FOldItemId: integer;
    FOldQty: real;
    function  ValidateAssemblyTransactionHd(const AIdAT: string): boolean;
  public
    { Public declarations }
  end;

var
  fmAssemblyTransaction: TfmAssemblyTransaction;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, untConstanta, dtmGlobal, dtmInventory, dtmShare,
  frmNotes;

procedure TfmAssemblyTransaction.actApproveExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if (dtsIMAssemblyTransactionHd.IsEmpty) or
    (dtsIMAssemblyTransactionDt.IsEmpty) then
  begin
    MessageDlg(Format(MSG_CANNOT_APPROVE_EMPTY, [AT]), mtInformation, [mbOk], 0);
    Exit;
  end;
  // Validate ReadyStock vs TransactionAssemblyDt

  if MessageDlg(Format(ASK_APPROVE, [AT, VarToStr(dbeIdAssemblyTransaction.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateAssemblyTransactionHd(VarToStr(dbeIdAssemblyTransaction.EditValue)) then
    Exit;

  // Process
  dsDefault.DataSet.Edit;
  dsDefault.DataSet.FieldByName('txNotes').AsString :=
    VarToStr(dbmNotes.EditValue) +
    'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
    ' - ' + NS_APPROVE + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName + #13#10;
  dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove + 1;
  dsDefault.DataSet.Post;

  // Next Process
  if (FStatusApprove + 1) = 1 then
  begin
    if dsDefault.DataSet.FieldByName('chAssemblyTransactionType').AsString = '0' then // transaksi Couple
    begin
      // perform ready stock qty
      qryValidateQtyReady.Close;
      qryValidateQtyReady.Parameters[0].Value := dsDefault.DataSet.FieldByName('vcIdAssemblyTransaction').AsString;
      qryValidateQtyReady.Open;
      if qryValidateQtyReady.IsEmpty then
      begin
        // Update QtyReady (minus)
        qryUpdateQtyReady.Close;
        qryUpdateQtyReady.Parameters[0].Value := dsDefault.DataSet.FieldByName('vcIdAssemblyTransaction').AsString;
        qryUpdateQtyReady.ExecSQL;
      end
      else
      begin
        MessageDlg(Format(MSG_QTYREADY_FAILED, [qryValidateQtyReady.FieldByName('vcSuppliesName').AsString]),
          mtInformation, [mbOk], 0);
        dsDefault.DataSet.Edit;
        dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
        dsDefault.DataSet.Post;
      end;
    end;
  end;
  if (FStatusApprove + 1) = 2 then
  begin
    // Update price, discount, last supplier
//    spPurchaseInvoiceValidation.Close;
//    spPurchaseInvoiceValidation.Parameters[1].Value := dbeIdPurchaseInvoice.EditValue;
//    spPurchaseInvoiceValidation.ExecProc;
//    if (spPurchaseInvoiceValidation.Parameters[0].Value <> 0) or
//      (VarIsEmpty(spPurchaseInvoiceValidation.Parameters[0].Value)) then
//    begin
//      MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spPurchaseInvoiceValidation']), mtInformation, [mbOk], 0);
//      //dmGlobal.AddApplicationLog('spPurchaseInvoiceValidation cannot be execute !', llHigh);
//      dsDefault.DataSet.Edit;
//      dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
//      dsDefault.DataSet.Post;
//    end;
  end;
end;

procedure TfmAssemblyTransaction.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dsDefault.DataSet.IsEmpty then
    Exit;
  if not ValidateAssemblyTransactionHd(VarToStr(dbeIdAssemblyTransaction.EditValue)) then
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

procedure TfmAssemblyTransaction.actRevisionExecute(Sender: TObject);
begin
  inherited;

  if dtsIMAssemblyTransactionHd.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REVISION, [AT, VarToStr(dbeIdAssemblyTransaction.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateAssemblyTransactionHd(VarToStr(dbeIdAssemblyTransaction.EditValue)) then
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

procedure TfmAssemblyTransaction.actVoidExecute(Sender: TObject);
var
  S: TStringList;
begin
  //Ivan do not :inherited;

  // Validate
  if dtsIMAssemblyTransactionHd.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REJECT, [AT, VarToStr(dbeIdAssemblyTransaction.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateAssemblyTransactionHd(VarToStr(dbeIdAssemblyTransaction.EditValue)) then
    Exit;

  if dsDefault.DataSet.FieldByName('chAssemblyTransactionType').AsString = '0' then // transaksi Couple
  begin
    if dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger > 0 then // Not entry status
    begin
      // Update QtyReady (plus)
      qryUpdateQtyReadyVoid.Close;
      qryUpdateQtyReadyVoid.Parameters[0].Value := dsDefault.DataSet.FieldByName('vcIdAssemblyTransaction').AsString;
      qryUpdateQtyReadyVoid.ExecSQL;
    end;
  end;

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

procedure TfmAssemblyTransaction.cgvAssemblyTransactionHdStylesGetContentStyle(
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

procedure TfmAssemblyTransaction.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
  begin
    SetReadOnly(dbeAssemblyTransactionType);
  end;
end;

procedure TfmAssemblyTransaction.dsIMAssemblyTransactionDtDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  if (Field = nil) then
    Exit;

  if dtsIMAssemblyTransactionDt.State in [dsInsert, dsEdit] then
  begin
    // Calculate
    if (CompareText(Field.FieldName, 'inQty') = 0) or
      (CompareText(Field.FieldName, 'dcPrice') = 0) then
    begin
      dtsIMAssemblyTransactionDt.FieldByName('inQtyCouple').AsFloat :=
        dtsIMAssemblyTransactionHd.FieldByName('inQty').AsFloat * dtsIMAssemblyTransactionDt.FieldByName('inQty').AsFloat;
      dtsIMAssemblyTransactionDt.FieldByName('dcAmount').AsCurrency :=
        dtsIMAssemblyTransactionDt.FieldByName('inQtyCouple').AsFloat * dtsIMAssemblyTransactionDt.FieldByName('dcPrice').AsCurrency;
    end;
  end;

  if CompareText(Field.FieldName, 'vcIdSupplies') = 0 then
  begin
    qryGetStatusItem.Close;
    qryGetStatusItem.Parameters[0].Value := dtsIMAssemblyTransactionDt.FieldByName('vcIdSupplies').AsInteger;
    qryGetStatusItem.Open;
    cgvAssemblyTransactionDtdcPrice.Options.Editing := qryGetStatusItem.FieldByName('chFlagService').AsString = '0';
  end;
end;

procedure TfmAssemblyTransaction.dtsIMAssemblyTransactionDtNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
end;

procedure TfmAssemblyTransaction.dtsIMAssemblyTransactionHdAfterPost(
  DataSet: TDataSet);
begin
  inherited;

  // check current status
  if dtsIMAssemblyTransactionHd.FieldByName(FIELD_STATUS_APPROVE).AsString = dmGlobal.SettingGlobal.StatusVoid then
    Exit;

  // Initialize
  dtsIMAssemblyTransactionDt.Tag := 1; // Disable event after post and after delete
  dtsIMAssemblyTransactionDt.DisableControls;

  if FInsertState then //  From insert state
  begin
    // Insert new one
    qryGetItemDetail.Close;
    qryGetItemDetail.Parameters[0].Value := DataSet.FieldByName('vcIdSupplies').AsString;
    OpenIfClose(qryGetItemDetail);
    while not qryGetItemDetail.Eof do
    begin
      //NOTE: COGS & TotalCOGS di handle oleh dsCoupleDt
      dtsIMAssemblyTransactionDt.Insert;
      dtsIMAssemblyTransactionDt.FieldByName('vcIdAssemblyTransaction').AsString := Dataset.FieldByName('vcIdAssemblyTransaction').AsString;
      dtsIMAssemblyTransactionDt.FieldByName('inNo').AsInteger := dtsIMAssemblyTransactionDt.RecordCount + 1;
      dtsIMAssemblyTransactionDt.FieldByName('vcIdSupplies').AsInteger := qryGetItemDetail.FieldByName('vcIdSupplies').AsInteger;
      dtsIMAssemblyTransactionDt.FieldByName('inQty').AsFloat := qryGetItemDetail.FieldByName('inQty').AsFloat;
      dtsIMAssemblyTransactionDt.FieldByName('inQtyCouple').AsFloat := qryGetItemDetail.FieldByName('inQty').AsFloat * Dataset.FieldByName('inQty').AsFloat;
      dtsIMAssemblyTransactionDt.FieldByName('dcPrice').AsCurrency := 0;
      dtsIMAssemblyTransactionDt.FieldByName('dcAmount').AsCurrency := 0;
      dtsIMAssemblyTransactionDt.Post;

      qryGetItemDetail.Next;
    end;
  end
  else // Edit state
  begin
    // If qty changed
    if FOldQty <> dtsIMAssemblyTransactionHd.FieldByName('inQty').AsFloat then
    begin
      // Update all QtyCouple detail
      dtsIMAssemblyTransactionDt.First;
      while not dtsIMAssemblyTransactionDt.Eof do
      begin
        dtsIMAssemblyTransactionDt.Edit;
        dtsIMAssemblyTransactionDt.FieldByName('inQtyCouple').AsFloat :=
          dtsIMAssemblyTransactionHd.FieldByName('inQty').AsFloat * dtsIMAssemblyTransactionDt.FieldByName('inQty').AsFloat;
        //NOTE: TotalCOGS yg dimasukan manual harus dihitung
        dtsIMAssemblyTransactionDt.FieldByName('dcAmount').AsCurrency :=
          dtsIMAssemblyTransactionDt.FieldByName('inQtyCouple').AsFloat * dtsIMAssemblyTransactionDt.FieldByName('dcPrice').AsCurrency;
        dtsIMAssemblyTransactionDt.Post;

        dtsIMAssemblyTransactionDt.Next;
      end;
    end;
  end;

  // Finally
  dtsIMAssemblyTransactionDt.Tag := 0; // to enable refresh after post event on coupledt
  dtsIMAssemblyTransactionDt.EnableControls;
end;

procedure TfmAssemblyTransaction.dtsIMAssemblyTransactionHdBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
  FOldItemId := dtsIMAssemblyTransactionHd.FieldByName('vcIdSupplies').AsInteger;
  FOldQty := dtsIMAssemblyTransactionHd.FieldByName('inQty').AsFloat;
end;

procedure TfmAssemblyTransaction.dtsIMAssemblyTransactionHdBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmAssemblyTransaction.dtsIMAssemblyTransactionHdBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  // Insert Id
  if DataSet.FieldByName('vcIdAssemblyTransaction').IsNull then
    DataSet.FieldByName('vcIdAssemblyTransaction').AsString :=
      dmShare.GetCurrentTransNo(utAssemblyTransaction, DataSet.FieldByName('dtAssemblyTransactionDate').AsDateTime);
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmAssemblyTransaction.dtsIMAssemblyTransactionHdNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  SetReadOnly(dbeAssemblyTransactionType, False);
  Dataset.FieldByName('StatusApprove').AsInteger := 1;
  Dataset.FieldByName('Qty').AsInteger := 1;
end;

procedure TfmAssemblyTransaction.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_COP);

  TcxCalcEditProperties(cgvAssemblyTransactionDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvAssemblyTransactionDtinQtyCouple.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvAssemblyTransactionDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvAssemblyTransactionDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeQty.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;

  case FStatusApprove of
    0:
      begin
        Self.Caption := Self.Caption + ' - Entry';
        btnRevision.Enabled := False;
        btnPrint.Enabled := False;
      end;
    1:
      begin
        Self.Caption := Self.Caption + ' - Approval';
      end;
  end;

  SetReadOnly(cgvAssemblyTransactionHd);
  SetReadOnly(dbeIdAssemblyTransaction);
  SetReadOnly(dbeAssemblyTransactionType);

  // Open all query
  OpenIfClose(qryPrevWarehouseCouple);
  OpenIfClose(qryPrevSuppliesCouple, True);
  OpenIfClose(dmInventory.qrySupplies, True);
  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMAssemblyTransactionDt);
end;

procedure TfmAssemblyTransaction.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (dtsIMAssemblyTransactionHd.State in [dsEdit, dsInsert]) or
    (dtsIMAssemblyTransactionDt.State in [dsEdit, dsInsert]) then
    Abort;

  dtsIMAssemblyTransactionHd.Close;
  dtsIMAssemblyTransactionHd.Parameters[0].Value := FStatusApprove;
  dtsIMAssemblyTransactionHd.Parameters[1].Value := FStatusApprove + 1;
  dtsIMAssemblyTransactionHd.Parameters[2].Value := STATUS_REJECT;
  dtsIMAssemblyTransactionHd.Parameters[3].Value := STATUS_DONE;
  dtsIMAssemblyTransactionHd.Parameters[4].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMAssemblyTransactionHd.Parameters[5].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsIMAssemblyTransactionHd, True);
  cgvAssemblyTransactionHd.ViewData.Expand(True);
end;

procedure TfmAssemblyTransaction.RefreshAll;
begin
  inherited;

  LockRefresh(dtsIMAssemblyTransactionHd, True);
  LockRefresh(dtsIMAssemblyTransactionDt);
  cgvAssemblyTransactionHd.ViewData.Expand(False);
end;

function TfmAssemblyTransaction.ValidateAssemblyTransactionHd(
  const AIdAT: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(Self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select chStatusApprove from tbIMAssemblyTransactionHd');
    qryTemp.SQL.Add('where vcIdAssemblyTransaction = :vcIdAssemblyTransaction');
    qryTemp.Parameters[0].Value := AIdAT;
    qryTemp.Open;
    if qryTemp.IsEmpty then
      Exit;
    if qryTemp.FieldByName('chStatusApprove').AsInteger <> FStatusApprove then
    begin
      MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [PI, AIdAT]), mtInformation,
        [mbOk], 0);
      Exit;
    end;
  finally
    FreeAndNil(qryTemp);
  end;
  Result := True;
end;

end.
