unit frmOtherTransaction;

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
  cxDBExtLookupComboBox, cxDBLookupComboBox, cxSpinEdit, cxCalc, cxCurrencyEdit,
  cxMemo, cxDBEdit, cxPC, cxDropDownEdit, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ADODB, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxImageComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, ExtCtrls;

type
  TfmOtherTransaction = class(TFormUniTransactionApprovalEx)
    dtsIMOtherTransactionHd: TADODataSet;
    dtsIMOtherTransactionDt: TADODataSet;
    spOtherTransactionValidation: TADOStoredProc;
    dsIMOtherTransactionDt: TDataSource;
    qrySetDetailPrice: TADOQuery;
    qryGetTransactionTypeStatus: TADOQuery;
    cgOtherTransactionHd: TcxGrid;
    cgvOtherTransactionHd: TcxGridDBTableView;
    cgvOtherTransactionHdvcIdOtherTransaction: TcxGridDBColumn;
    cgvOtherTransactionHddtOtherTransactionDate: TcxGridDBColumn;
    cgvOtherTransactionHdvcIdWarehouseSource: TcxGridDBColumn;
    cgvOtherTransactionHdchStatusApprove: TcxGridDBColumn;
    cgOtherTransactionHdLevel1: TcxGridLevel;
    pnlDetailTop: TPanel;
    lblIdOtherTransaction: TLabel;
    lblOtherTransactionDate: TLabel;
    lblTransactionType: TLabel;
    lblIdWarehouseSource: TLabel;
    lblIdWarehouseDestination: TLabel;
    dbeIdOtherTransaction: TcxDBTextEdit;
    dbeOtherTransactionDate: TcxDBDateEdit;
    dblcIdWarehouseSource: TcxDBExtLookupComboBox;
    dblcIdWarehouseDest: TcxDBExtLookupComboBox;
    pcNotes: TcxPageControl;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsMemo: TcxTabSheet;
    dbMemo: TcxDBMemo;
    dblcIdTransactionType: TcxDBExtLookupComboBox;
    cgOtherTransactionDt: TcxGrid;
    cgvOtherTransactionDt: TcxGridDBTableView;
    cgvOtherTransactionDtvcIdOtherTransaction: TcxGridDBColumn;
    cgvOtherTransactionDtinNo: TcxGridDBColumn;
    cgvOtherTransactionDtvcIdSupplies: TcxGridDBColumn;
    cgvOtherTransactionDtvcIdSupplies2: TcxGridDBColumn;
    cgvOtherTransactionDtvcIdSupplies3: TcxGridDBColumn;
    cgvOtherTransactionDtinQty: TcxGridDBColumn;
    cgvOtherTransactionDtdcPrice: TcxGridDBColumn;
    cgOtherTransactionDtLevel1: TcxGridLevel;
    gvrOtherTransaction: TcxGridViewRepository;
    cgvPrevSupplies: TcxGridDBTableView;
    cgvPrevSuppliesvcIdSupplies: TcxGridDBColumn;
    cgvPrevSuppliesvcSuppliesName: TcxGridDBColumn;
    cgvPrevSuppliesvcType: TcxGridDBColumn;
    cgvPrevSuppliesinEndQtyReady: TcxGridDBColumn;
    qryPrevSupplies: TADOQuery;
    dsPrevSupplies: TDataSource;
    qryPrevTransactionType: TADOQuery;
    dsPrevTransactionType: TDataSource;
    cgvPrevTransactionType: TcxGridDBTableView;
    cgvPrevTransactionTypevcIdTransactionType: TcxGridDBColumn;
    cgvPrevTransactionTypevcTransactionName: TcxGridDBColumn;
    cgvPrevTransactionTypechStatusTransaction: TcxGridDBColumn;
    procedure actRevisionExecute(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure actApproveExecute(Sender: TObject);
    procedure cgvOtherTransactionHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure dtsIMOtherTransactionHdAfterPost(DataSet: TDataSet);
    procedure dtsIMOtherTransactionHdBeforeEdit(DataSet: TDataSet);
    procedure dtsIMOtherTransactionHdBeforePost(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dtsIMOtherTransactionDtBeforeDelete(DataSet: TDataSet);
    procedure dtsIMOtherTransactionDtBeforeEdit(DataSet: TDataSet);
    procedure dtsIMOtherTransactionDtBeforeInsert(DataSet: TDataSet);
    procedure dtsIMOtherTransactionDtBeforePost(DataSet: TDataSet);
    procedure dtsIMOtherTransactionHdNewRecord(DataSet: TDataSet);
    procedure dtsIMOtherTransactionDtNewRecord(DataSet: TDataSet);
    procedure dblcIdTransactionTypePropertiesEditValueChanged(Sender: TObject);
    procedure dblcIdWarehouseSourcePropertiesEditValueChanged(Sender: TObject);
    procedure cgvIdSuppliesPropertiesInitPopup(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FOldTransactionType: string;
    FOldWarehouse: string;
    FOldQty: real;

    procedure DeleteCurrentDetail;
    function GetTransactionTypeStatus(const AIdTransactionType: string): string;
    function ValidateOtherTransactionHd(const AIdOT: string): boolean;

    procedure ShowSupplies;
    procedure ShowSuppliesWithQtyReady;
  public
    { Public declarations }
  end;

var
  fmOtherTransaction: TfmOtherTransaction;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, frmNotes,
  untConstanta;

procedure TfmOtherTransaction.actApproveExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if (dtsIMOtherTransactionHd.IsEmpty) or
    (dtsIMOtherTransactionDt.IsEmpty) then
  begin
    MessageDlg(Format(MSG_CANNOT_APPROVE_EMPTY, [OT]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if MessageDlg(Format(ASK_APPROVE, [OT, VarToStr(dbeIdOtherTransaction.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateOtherTransactionHd(VarToStr(dbeIdOtherTransaction.EditValue)) then
    Exit;
  if GetTransactionTypeStatus(dtsIMOtherTransactionHd.FieldByName('vcIdTransactionType').AsString) <> '0' then
  begin
    if not dmShare.CompareOTWithWHValid(VarToStr(dbeIdOtherTransaction.EditValue),
      VarToStr(dblcIdWarehouseSource.EditValue)) then
    begin
      MessageDlg(Format(MSG_OT_WH_INVALID, [VarToStr(dbeIdOtherTransaction.EditValue),
        VarToStr(dblcIdWarehouseSource.EditText)]), mtInformation, [mbOk], 0);
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

  if (FStatusApprove + 1) = 2 then
  begin
    spOtherTransactionValidation.Close;
    spOtherTransactionValidation.Parameters[1].Value := dbeIdOtherTransaction.EditValue;
    spOtherTransactionValidation.ExecProc;
    if (spOtherTransactionValidation.Parameters[0].Value <> 0) or
      (VarIsEmpty(spOtherTransactionValidation.Parameters[0].Value)) then
    begin
      MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spPurchaseOrderValidation']), mtInformation, [mbOk], 0);
      //dmGlobal.AddApplicationLog('spOtherTransactionValidation cannot be execute !', llHigh);
      dsDefault.DataSet.Edit;
      dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
      dsDefault.DataSet.Post;
    end;
  end;
end;

procedure TfmOtherTransaction.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dsDefault.DataSet.IsEmpty then
    Exit;
  if not ValidateOtherTransactionHd(VarToStr(dbeIdOtherTransaction.EditValue)) then
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

procedure TfmOtherTransaction.actRevisionExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if dtsIMOtherTransactionHd.IsEmpty then
    Exit;
  if not ValidateOtherTransactionHd(VarToStr(dbeIdOtherTransaction.EditValue)) then
    Exit;
  if MessageDlg(Format(ASK_REVISION, [OT, VarToStr(dbeIdOtherTransaction.EditValue)]),
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

procedure TfmOtherTransaction.actVoidExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  //Ivan do not :inherited;

  // Validate
  if dtsIMOtherTransactionHd.IsEmpty then
    Exit;
  if not ValidateOtherTransactionHd(VarToStr(dbeIdOtherTransaction.EditValue)) then
    Exit;
  if MessageDlg(Format(ASK_REJECT, [OT, VarToStr(dbeIdOtherTransaction.EditValue)]),
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

procedure TfmOtherTransaction.cgvIdSuppliesPropertiesInitPopup(Sender: TObject);
begin
  ShowSuppliesWithQtyReady;
end;

procedure TfmOtherTransaction.cgvOtherTransactionHdStylesGetContentStyle(
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

procedure TfmOtherTransaction.dblcIdTransactionTypePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if GetTransactionTypeStatus(VarToStr(dblcIdTransactionType.EditValue)) = '0' then
  begin
    // Transaksi plus -> harga dapat diubah
    cgvOtherTransactionDtdcPrice.Properties.ReadOnly := False;
    cgvOtherTransactionDtdcPrice.Styles.Content := nil;
  end
  else
  begin
    // Transaksi minus -> harga tidak dapat diubah
    cgvOtherTransactionDtdcPrice.Properties.ReadOnly := True;
    cgvOtherTransactionDtdcPrice.Styles.Content := dmGlobal.stRedLight;
  end;
end;

procedure TfmOtherTransaction.dblcIdWarehouseSourcePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if dtsIMOtherTransactionHd.State in [dsBrowse] then
  begin
    ShowSupplies;
  end;
end;

procedure TfmOtherTransaction.DeleteCurrentDetail;
var
  TempQuery: TADOQuery;
begin
  TempQuery := TADOQuery.Create(nil);
  try
    TempQuery.Connection := dmGlobal.conGlobal;

    TempQuery.Close;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add('delete from tbIMOtherTransactionDt                ');
    TempQuery.SQL.Add('where vcIdOtherTransaction = :vcIdOtherTransaction');
    TempQuery.Parameters[0].Value := VarToStr(dbeIdOtherTransaction.EditValue);
    TempQuery.ExecSQL;

    LockRefresh(dtsIMOtherTransactionDt);
  finally
    FreeAndNil(TempQuery);
  end;
end;

procedure TfmOtherTransaction.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  // Setting button enabled
  if TDataSource(Sender).DataSet.State in [dsInsert] then
    SetReadOnly(dbeOtherTransactionDate, False);

  if TDataSource(Sender).DataSet.State in [dsBrowse] then
    SetReadOnly(dbeOtherTransactionDate, True, COLOR_INACTIVE);
end;

procedure TfmOtherTransaction.dtsIMOtherTransactionDtBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;

  if not ValidateOtherTransactionHd(dtsIMOtherTransactionHd.FieldByName('vcIdOtherTransaction').AsString) then
    Abort;
end;

procedure TfmOtherTransaction.dtsIMOtherTransactionDtBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;

  if not ValidateOtherTransactionHd(dtsIMOtherTransactionHd.FieldByName('vcIdOtherTransaction').AsString) then
    Abort;

  FOldQty := dtsIMOtherTransactionDt.FieldByName('inQty').AsFloat;
end;

procedure TfmOtherTransaction.dtsIMOtherTransactionDtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  if not ValidateOtherTransactionHd(dtsIMOtherTransactionHd.FieldByName('vcIdOtherTransaction').AsString) then
    Abort;
end;

procedure TfmOtherTransaction.dtsIMOtherTransactionDtBeforePost(
  DataSet: TDataSet);
var
  ReadyStockQty: Variant;
begin
  inherited;

  // Apabila bukan transaksi opname plus, maka QtyReady harus di cek
  if GetTransactionTypeStatus(dtsIMOtherTransactionHd.FieldByName('vcIdTransactionType').AsString) <> '0' then
  begin
    ReadyStockQty := dmInventory.GetReadyStockQty(dblcIdWarehouseSource.EditValue, dtsIMOtherTransactionDt.FieldByName('vcIdSupplies').AsString);
    ReadyStockQty := ReadyStockQty + FOldQty;
    if dtsIMOtherTransactionDt.FieldByName('inQty').AsFloat > ReadyStockQty then
    begin
      MessageDlg(MSG_QTY_GREATER_THAN_READYSTOCK, mtInformation, [mbOk], 0);
      Abort;
    end;
  end;
end;

procedure TfmOtherTransaction.dtsIMOtherTransactionDtNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('inNo').AsInteger := Dataset.RecordCount + 1;
  Dataset.FieldByName('inQty').AsFloat := 0;
  Dataset.FieldByName('dcPrice').AsFloat := 0;

  FOldQty := 0;
end;

procedure TfmOtherTransaction.dtsIMOtherTransactionHdAfterPost(
  DataSet: TDataSet);
begin
  inherited;

  // Jika tipe Opname minus maka set harga di detail menjadi nol
  if GetTransactionTypeStatus(dtsIMOtherTransactionHd.FieldByName('vcIdTransactionType').AsString) = '1' then
  begin
    qrySetDetailPrice.Close;
    qrySetDetailPrice.Parameters[0].Value := dbeIdOtherTransaction.EditValue;
    qrySetDetailPrice.ExecSQL;

    LockRefresh(dtsIMOtherTransactionDt);
  end;
end;

procedure TfmOtherTransaction.dtsIMOtherTransactionHdBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;

  if not ValidateOtherTransactionHd(dtsIMOtherTransactionHd.FieldByName('vcIdOtherTransaction').AsString) then
    Abort;

  FOldTransactionType := dtsIMOtherTransactionHd.FieldByName('vcIdTransactionType').AsString;
  FOldWarehouse := dtsIMOtherTransactionHd.FieldByName('vcIdWarehouseSource').AsString;
end;

procedure TfmOtherTransaction.dtsIMOtherTransactionHdBeforePost(
  DataSet: TDataSet);
var
  NewTransactionType, NewWarehouse: string;
begin
  inherited;

  // validate transaksi mutasi
  if GetTransactionTypeStatus(dtsIMOtherTransactionHd.FieldByName('vcIdTransactionType').AsString) <> '2' then
  begin
    // jika bukan transaksi mutasi, maka warehouse destination tidak boleh diisi
    dtsIMOtherTransactionHd.FieldByName('vcIdWarehouseDest').Value := null;
  end
  else
  begin
    // jika transaksi mutasi, maka gudang asal dan tujuan tidak boleh sama
    if dtsIMOtherTransactionHd.FieldByName('vcIdWarehouseSource').AsString =
      dtsIMOtherTransactionHd.FieldByName('vcIdWarehouseDest').AsString then
    begin
      MessageDlg(MSG_WAREHOUSE_INVALID, mtInformation, [mbOk], 0);
      Abort;
    end;
  end;

  // jika Transaction Type atau Warehouse berubah, maka detail harus di delete
  NewTransactionType := dtsIMOtherTransactionHd.FieldByName('vcIdTransactionType').AsString;
  NewWarehouse := dtsIMOtherTransactionHd.FieldByName('vcIdWarehouseSource').AsString;
  if not dtsIMOtherTransactionDt.IsEmpty then
  begin
    if (FOldTransactionType <> NewTransactionType) or (FOldWarehouse <> NewWarehouse) then
    begin
      if MessageDlg(ASK_SAVE_OT, mtWarning, [mbYes, mbNo], 0) = mrNo then
        Abort;
      DeleteCurrentDetail;
    end;
  end;

  // Insert Id
  if DataSet.FieldByName('vcIdOtherTransaction').IsNull then
    DataSet.FieldByName('vcIdOtherTransaction').AsString :=
      dmShare.GetCurrentTransNo(utOtherTransaction,
      DataSet.FieldByName('dtOtherTransactionDate').AsDateTime);
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmOtherTransaction.dtsIMOtherTransactionHdNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  FOldTransactionType := '';
  FOldWarehouse := '';

  DataSet.FieldByName('dtOtherTransactionDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
  Dataset.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
  Dataset.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
  Dataset.FieldByName('CounterPrint').AsInteger := 0;
end;

function TfmOtherTransaction.GetTransactionTypeStatus(
  const AIdTransactionType: string): string;
begin
  Result := '';
  qryGetTransactionTypeStatus.Close;
  qryGetTransactionTypeStatus.Parameters[0].Value := AIdTransactionType;
  OpenIfClose(qryGetTransactionTypeStatus);
  if not qryGetTransactionTypeStatus.IsEmpty then
    Result := qryGetTransactionTypeStatus.FieldByName('chStatusTransaction').AsString;
end;

procedure TfmOtherTransaction.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_OT);

  // Display Format
  TcxCalcEditProperties(cgvPrevSuppliesinEndQtyReady.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvOtherTransactionDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvOtherTransactionDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

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
      end;
    2:
      begin
        Self.Caption := Self.Caption + ' - Approval 2';
      end;
  end;

  SetReadOnly(cgvOtherTransactionHd);
  SetReadOnly(dbeIdOtherTransaction, True, COLOR_INACTIVE);
  SetReadOnly(dbeOtherTransactionDate, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);

  // Open all query
  OpenIfClose(qryPrevTransactionType);
  OpenIfClose(dmInventory.qryWarehouse);

  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMOtherTransactionDt);
end;

procedure TfmOtherTransaction.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (dtsIMOtherTransactionHd.State in [dsEdit, dsInsert]) or
    (dtsIMOtherTransactionDt.State in [dsEdit, dsInsert]) then
    Abort;

  dtsIMOtherTransactionHd.Close;
  dtsIMOtherTransactionHd.Parameters[0].Value := FStatusApprove;
  dtsIMOtherTransactionHd.Parameters[1].Value := FStatusApprove + 1;
  dtsIMOtherTransactionHd.Parameters[2].Value := STATUS_REJECT;
  dtsIMOtherTransactionHd.Parameters[3].Value := STATUS_DONE;
  dtsIMOtherTransactionHd.Parameters[4].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMOtherTransactionHd.Parameters[5].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsIMOtherTransactionHd, True);
  cgvOtherTransactionHd.ViewData.Expand(True);
end;

procedure TfmOtherTransaction.RefreshAll;
begin
  inherited;

  LockRefresh(dtsIMOtherTransactionHd, True);
  LockRefresh(dtsIMOtherTransactionDt);
  cgvOtherTransactionHd.ViewData.Expand(False);
end;

procedure TfmOtherTransaction.ShowSupplies;
begin
  // Semua barang, tanpa QtyReady
  if qryPrevSupplies.Parameters[0].Value <> '%' then
  begin
    qryPrevSupplies.Close;
    qryPrevSupplies.Parameters[0].Value := '%';
    OpenIfClose(qryPrevSupplies);
  end;
end;

procedure TfmOtherTransaction.ShowSuppliesWithQtyReady;
begin
  // Semua barang, dengan QtyReady per gudang
  if qryPrevSupplies.Parameters[0].Value <> dblcIdWarehouseSource.EditValue then
  begin
    qryPrevSupplies.Close;
    qryPrevSupplies.Parameters[0].Value := VarToStr(dblcIdWarehouseSource.EditValue);
    OpenIfClose(qryPrevSupplies);
  end;
end;

function TfmOtherTransaction.ValidateOtherTransactionHd(
  const AIdOT: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(Self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select chStatusApprove from tbIMOtherTransactionHd');
    qryTemp.SQL.Add('where vcIdOtherTransaction = :vcIdOtherTransaction');
    qryTemp.Parameters[0].Value := AIdOT;
    qryTemp.Open;
    if qryTemp.IsEmpty then
      Exit;
    if qryTemp.FieldByName('chStatusApprove').AsInteger <> FStatusApprove then
    begin
      MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [OT, AIdOT]), mtInformation,
        [mbOk], 0);
      Exit;
    end;
  finally
    FreeAndNil(qryTemp);
  end;
  Result := True;
end;

end.
