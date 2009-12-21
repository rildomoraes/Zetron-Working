unit frmPurchaseInvoice;

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
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxDBLookupComboBox,
  cxSpinEdit, cxCalc, cxCurrencyEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, cxMemo, cxPC, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ADODB;

type
  TfmPurchaseInvoice = class(TFormUniTransactionApprovalEx)
    dtsIMPurchaseInvoiceHd: TADODataSet;
    dtsIMPurchaseInvoiceDt: TADODataSet;
    dsIMPurchaseInvoiceDt: TDataSource;
    spPurchaseInvoiceValidation: TADOStoredProc;
    qryGetTotalAmount: TADOQuery;
    cgPurchaseInvoiceHd: TcxGrid;
    cgvPurchaseInvoiceHd: TcxGridDBTableView;
    cgvPurchaseInvoiceHdvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPurchaseInvoiceHddtDatePurchaseInvoice: TcxGridDBColumn;
    cgvPurchaseInvoiceHdvcIdSupplier: TcxGridDBColumn;
    cgvPurchaseInvoiceHdvcIdSupplier2: TcxGridDBColumn;
    cgvPurchaseInvoiceHdchFlagPrint: TcxGridDBColumn;
    cgvPurchaseInvoiceHdchStatusApprove: TcxGridDBColumn;
    cgPurchaseInvoiceHdLevel1: TcxGridLevel;
    pnlDetailTop: TPanel;
    lblPurchaseInvoiceDate: TLabel;
    lblIdPurchaseInvoice: TLabel;
    lblEmployeeName: TLabel;
    lblIdReceivingRecord: TLabel;
    lblIdSupplier: TLabel;
    lblIdPurchaseOrder: TLabel;
    lblType: TLabel;
    lblInvoiceDueDay: TLabel;
    lblSupplierDO: TLabel;
    lblSupplierPO: TLabel;
    dblcIdSupplier: TcxDBExtLookupComboBox;
    dbePurchaseInvoiceDate: TcxDBDateEdit;
    dbeIdPurchaseInvoice: TcxDBTextEdit;
    dbeEmployeeName: TcxDBTextEdit;
    dbicType: TcxDBImageComboBox;
    dbeInvoiceDueDay: TcxDBSpinEdit;
    pcNotes: TcxPageControl;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsMemo: TcxTabSheet;
    dbmMemo: TcxDBMemo;
    btnPurchaseOrder: TcxButton;
    btnReceivingRecord: TcxButton;
    dbeIdPurchaseOrder: TcxDBTextEdit;
    dbeIdReceivingRecord: TcxDBTextEdit;
    dblcSupplierDO: TcxDBExtLookupComboBox;
    dblcSupplierPO: TcxDBExtLookupComboBox;
    dbePurchaseInvoiceSupplier: TcxDBTextEdit;
    cgPurchaseInvoiceDt: TcxGrid;
    cgvPurchaseInvoiceDt: TcxGridDBBandedTableView;
    cgvPurchaseInvoiceDtvcIdPurchaseInvoice: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtinNo: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtvcIdSupplies: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtvcIdSupplies2: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtvcIdSupplies3: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtinQty: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtdcPrice: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtdcDiscItem: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtdcDiscItemPrice: TcxGridDBBandedColumn;
    cgvPurchaseInvoiceDtdcAmount: TcxGridDBBandedColumn;
    cgPurchaseInvoiceDtLevel1: TcxGridLevel;
    pnlDetailBottom: TPanel;
    lblTax: TLabel;
    lblTotal: TLabel;
    lblDisc: TLabel;
    dbeTax: TcxDBSpinEdit;
    dbeDisc: TcxDBSpinEdit;
    dbeDiscAmount: TcxDBCurrencyEdit;
    dbeTaxAmount: TcxDBCurrencyEdit;
    dbeTotalAmount: TcxDBCurrencyEdit;
    qryPrevSelectedPO: TADOQuery;
    procedure cgvPurchaseInvoiceHdFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure dbeIdReceivingRecordPropertiesChange(Sender: TObject);
    procedure dblcIdSupplierPropertiesEditValueChanged(Sender: TObject);
    procedure dbicTypePropertiesEditValueChanged(Sender: TObject);
    procedure dsIMPurchaseInvoiceDtStateChange(Sender: TObject);
    procedure dsIMPurchaseInvoiceDtDataChange(Sender: TObject; Field: TField);
    procedure dtsIMPurchaseInvoiceDtNewRecord(DataSet: TDataSet);
    procedure dtsIMPurchaseInvoiceDtBeforePost(DataSet: TDataSet);
    procedure dtsIMPurchaseInvoiceDtBeforeInsert(DataSet: TDataSet);
    procedure dtsIMPurchaseInvoiceDtBeforeEdit(DataSet: TDataSet);
    procedure dtsIMPurchaseInvoiceDtBeforeDelete(DataSet: TDataSet);
    procedure dtsIMPurchaseInvoiceDtAfterPost(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dtsIMPurchaseInvoiceHdAfterPost(DataSet: TDataSet);
    procedure dtsIMPurchaseInvoiceHdBeforeDelete(DataSet: TDataSet);
    procedure dtsIMPurchaseInvoiceHdBeforeEdit(DataSet: TDataSet);
    procedure dtsIMPurchaseInvoiceHdBeforePost(DataSet: TDataSet);
    procedure dtsIMPurchaseInvoiceHdNewRecord(DataSet: TDataSet);
    procedure btnReceivingRecordClick(Sender: TObject);
    procedure btnPurchaseOrderClick(Sender: TObject);
    procedure cgvPurchaseInvoiceHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure actNotesExecute(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
    procedure actRevisionExecute(Sender: TObject);
    procedure actApproveExecute(Sender: TObject);
    procedure cgvPurchaseInvoiceDtDataControllerSummaryAfterSummary(ASender: TcxDataSummary);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FDoSaveCalculate: boolean;
    FProcessDetail: boolean;
    FOldRR: string;
    FOldPO: string;

    procedure Calculate;
    procedure CalculateTotal;
    procedure DeleteCurrentDetail;
    function  ValidatePurchaseInvoiceHd(const AIdPI: string): boolean;
    procedure CheckPrice;
    procedure HidePrice(AHide: boolean);
  public
    { Public declarations }
  end;

var
  fmPurchaseInvoice: TfmPurchaseInvoice;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, frmNotes,
  untConstanta, frmPreviewRRAndPO; //, frmPurchasePaymentPay;

procedure TfmPurchaseInvoice.actApproveExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if (dtsIMPurchaseInvoiceHd.IsEmpty) or
    (dtsIMPurchaseInvoiceDt.IsEmpty) then
  begin
    MessageDlg(Format(MSG_CANNOT_APPROVE_EMPTY, [PI]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if MessageDlg(Format(ASK_APPROVE, [PI, VarToStr(dbeIdPurchaseInvoice.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if dtsIMPurchaseInvoiceHd.FieldByName('chFlagPO').AsString = '1' then
  begin
    if not dmShare.CompareRRWithPOValid(VarToStr(dbeIdReceivingRecord.EditValue),
      VarToStr(dbeIdPurchaseOrder.EditValue)) then
    begin
      MessageDlg(Format(MSG_RR_PO_INVALID, [VarToStr(dbeIdReceivingRecord.EditValue),
        VarToStr(dbeIdPurchaseOrder.EditValue)]), mtInformation, [mbOk], 0);
      Exit;
    end;
  end;
  if not ValidatePurchaseInvoiceHd(VarToStr(dbeIdPurchaseInvoice.EditValue)) then
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
  if (FStatusApprove + 1) = 2 then
  begin
    // Update price, discount, last supplier
    spPurchaseInvoiceValidation.Close;
    spPurchaseInvoiceValidation.Parameters[1].Value := dbeIdPurchaseInvoice.EditValue;
    spPurchaseInvoiceValidation.ExecProc;
    if (spPurchaseInvoiceValidation.Parameters[0].Value <> 0) or
      (VarIsEmpty(spPurchaseInvoiceValidation.Parameters[0].Value)) then
    begin
      MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spPurchaseInvoiceValidation']), mtInformation, [mbOk], 0);
      //dmGlobal.AddApplicationLog('spPurchaseInvoiceValidation cannot be execute !', llHigh);
      dsDefault.DataSet.Edit;
      dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
      dsDefault.DataSet.Post;
    end
    else
    begin
//      if dmGlobal.OptionCallPaymentAfterPI then
//      begin
//        if MessageDlg('Pay Now ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//        begin
//          //Purchase Payment form
//          TfmPurchasePaymentPay.ExecuteForm(dbeIdPurchaseInvoice.EditValue);
//        end;
//      end;
    end;
  end;
end;

procedure TfmPurchaseInvoice.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dsDefault.DataSet.IsEmpty then
    Exit;
  if not ValidatePurchaseInvoiceHd(VarToStr(dbeIdPurchaseInvoice.EditValue)) then
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

procedure TfmPurchaseInvoice.actRevisionExecute(Sender: TObject);
begin
  inherited;

  if dtsIMPurchaseInvoiceHd.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REVISION, [PI, VarToStr(dbeIdPurchaseInvoice.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidatePurchaseInvoiceHd(VarToStr(dbeIdPurchaseInvoice.EditValue)) then
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

procedure TfmPurchaseInvoice.actVoidExecute(Sender: TObject);
var
  S: TStringList;
begin
  //Ivan do not :inherited;

  // Validate
  if dtsIMPurchaseInvoiceHd.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REJECT, [PI, VarToStr(dbeIdPurchaseInvoice.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidatePurchaseInvoiceHd(VarToStr(dbeIdPurchaseInvoice.EditValue)) then
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

procedure TfmPurchaseInvoice.btnPurchaseOrderClick(Sender: TObject);
var
  IdReceivingRecord, IdPurchaseOrder: string;
  WithPO: boolean;
begin
  inherited;

  if VarToStr(dtsIMPurchaseInvoiceHd.FieldByName('vcIdSupplier').AsString) = '' then
    Exit;

  WithPO := False;
  if dbicType.ItemIndex = 1 then
    WithPO := True;

  if dtsIMPurchaseInvoiceHd.IsEmpty then
    dtsIMPurchaseInvoiceHd.Insert;

  TfmPreviewRRAndPO.ExecuteForm(
    dtsIMPurchaseInvoiceHd.FieldByName('vcIdSupplier').AsString,
    dblcIdSupplier.Text, WithPO,
    dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseInvoice').AsString,
    dtsIMPurchaseInvoiceHd.FieldByName('vcIdReceivingRecord').AsString,
    dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseOrder').AsString,
    IdReceivingRecord, IdPurchaseOrder);

  if (dtsIMPurchaseInvoiceHd.FieldByName('vcIdReceivingRecord').AsString <> IdReceivingRecord) or
    (dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseOrder').AsString <> IdPurchaseOrder) then
  begin
    if dtsIMPurchaseInvoiceHd.State in [dsBrowse] then
      dtsIMPurchaseInvoiceHd.Edit;
    dtsIMPurchaseInvoiceHd.FieldByName('vcIdReceivingRecord').AsString := IdReceivingRecord;
    dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseOrder').AsString := IdPurchaseOrder;
  end;
end;

procedure TfmPurchaseInvoice.btnReceivingRecordClick(Sender: TObject);
var
  IdReceivingRecord, IdPurchaseOrder: string;
  WithPO: boolean;
begin
  inherited;

  if dtsIMPurchaseInvoiceHd.FieldByName('vcIdSupplier').AsString = '' then
    Exit;

  WithPO := False;
  if dbicType.ItemIndex = 1 then
    WithPO := True;

  if dtsIMPurchaseInvoiceHd.IsEmpty then
    dtsIMPurchaseInvoiceHd.Insert;

  TfmPreviewRRAndPO.ExecuteForm(
    dtsIMPurchaseInvoiceHd.FieldByName('vcIdSupplier').AsString, dblcIdSupplier.Text, WithPO,
    dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseInvoice').AsString,
    dtsIMPurchaseInvoiceHd.FieldByName('vcIdReceivingRecord').AsString,
    dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseOrder').AsString,
    IdReceivingRecord, IdPurchaseOrder);

  if (dtsIMPurchaseInvoiceHd.FieldByName('vcIdReceivingRecord').AsString <> IdReceivingRecord) or
    (dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseOrder').AsString <> IdPurchaseOrder) then
  begin
    if dtsIMPurchaseInvoiceHd.State in [dsBrowse] then
      dtsIMPurchaseInvoiceHd.Edit;
    dtsIMPurchaseInvoiceHd.FieldByName('vcIdReceivingRecord').AsString := IdReceivingRecord;
    dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseOrder').AsString := IdPurchaseOrder;
  end;
end;

procedure TfmPurchaseInvoice.Calculate;
begin
  with dtsIMPurchaseInvoiceDt do
  begin
    if State in [dsInsert, dsEdit] then
    begin
      // Jika disc lebih besar dari 0%
      if FieldByName('dcDiscItem').AsFloat >= 0 then
        FieldByName('dcDiscItemPrice').AsCurrency :=
          (FieldByName('dcPrice').AsCurrency * FieldByName('dcDiscItem').AsFloat) / 100;

      FieldByName('dcAmount').AsCurrency :=
        FieldByName('inQty').AsFloat *
        (FieldByName('dcPrice').AsCurrency - FieldByName('dcDiscItemPrice').AsCurrency);
    end;
  end;
end;

procedure TfmPurchaseInvoice.CalculateTotal;
begin
  qryGetTotalAmount.Close;
  qryGetTotalAmount.Parameters[0].Value := dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseInvoice').AsString;
  qryGetTotalAmount.Open;

  dtsIMPurchaseInvoiceHd.FieldByName('dcAmount').AsFloat :=
    qryGetTotalAmount.FieldByName('Amount').AsFloat;
  dtsIMPurchaseInvoiceHd.FieldByName('dcDiscAmount').AsFloat :=
    (dtsIMPurchaseInvoiceHd.FieldByName('dcAmount').AsFloat *
    dtsIMPurchaseInvoiceHd.FieldByName('dcDisc').AsFloat) / 100;
  dtsIMPurchaseInvoiceHd.FieldByName('dcTaxAmount').AsFloat :=
    ((dtsIMPurchaseInvoiceHd.FieldByName('dcAmount').AsFloat -
    dtsIMPurchaseInvoiceHd.FieldByName('dcDiscAmount').AsFloat) *
    dtsIMPurchaseInvoiceHd.FieldByName('dcTax').AsFloat) / 100;
  dtsIMPurchaseInvoiceHd.FieldByName('dcTotalAmount').AsFloat :=
    dtsIMPurchaseInvoiceHd.FieldByName('dcAmount').AsFloat -
    dtsIMPurchaseInvoiceHd.FieldByName('dcDiscAmount').AsFloat +
    dtsIMPurchaseInvoiceHd.FieldByName('dcTaxAmount').AsFloat;
end;

procedure TfmPurchaseInvoice.cgvPurchaseInvoiceDtDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;

//  if FDoSaveCalculate then
//  begin
//    dsDefault.DataSet.Edit;
//    CalculateTotal;
//    dsDefault.DataSet.Post;
//  end;
end;

procedure TfmPurchaseInvoice.cgvPurchaseInvoiceHdFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;

  CheckPrice;
end;

procedure TfmPurchaseInvoice.cgvPurchaseInvoiceHdStylesGetContentStyle(
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

procedure TfmPurchaseInvoice.CheckPrice;
var
  i: integer;
  FoundZero: boolean;
begin
  if FParamArrayValues[0] = '0' then
  begin
    FoundZero := False;
    if not dtsIMPurchaseInvoiceDt.IsEmpty then
    begin
      dtsIMPurchaseInvoiceDt.DisableControls;
      for i := 1 to dtsIMPurchaseInvoiceDt.RecordCount do
      begin
        dtsIMPurchaseInvoiceDt.RecNo := i;
        // Kalo masih ada harga yg nol, tidak di hide
        FoundZero := dtsIMPurchaseInvoiceDt.FieldByName('dcPrice').AsFloat = 0;
        if FoundZero then
          Break;
      end;
      dtsIMPurchaseInvoiceDt.EnableControls;
    end
    else
      FoundZero := True;
    HidePrice(not FoundZero);
  end;
end;

procedure TfmPurchaseInvoice.dbeIdReceivingRecordPropertiesChange(
  Sender: TObject);
begin
  inherited;

  dmInventory.qryPrevReceivingRecordHd.Close;
  dmInventory.qryPrevReceivingRecordHd.Parameters[0].Value := VarToStr(dbeIdReceivingRecord.EditValue);
  dmInventory.qryPrevReceivingRecordHd.Open;
end;

procedure TfmPurchaseInvoice.dbicTypePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

//  if (dmGlobal.OptionOnlyPIEntryCanModifyData) and (FStatusApprove <> 0) then
//    Exit;

  case dbicType.ItemIndex of
    0 :
      begin // Without PO
        btnPurchaseOrder.Enabled := False;
        //SetReadOnly(dbeDisc, False);
        //SetReadOnly(dbeTax, False);
        if FStatusApprove = 1 then
          //cgvPurchaseInvoiceDtdcPrice.Properties.ReadOnly := False;
      end;
    1 :
      begin // With PO
        btnPurchaseOrder.Enabled := True;
        //SetReadOnly(dbeDisc, True, COLOR_INACTIVE);
        //SetReadOnly(dbeTax, True, COLOR_INACTIVE);
        if FStatusApprove = 1 then
          //cgvPurchaseInvoiceDtdcPrice.Properties.ReadOnly := True;
      end;
  end;
end;

procedure TfmPurchaseInvoice.dblcIdSupplierPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if dtsIMPurchaseInvoiceHd.State in [dsEdit, dsInsert] then
    dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseOrder').AsVariant := null;
end;

procedure TfmPurchaseInvoice.DeleteCurrentDetail;
var
  TempQuery: TADOQuery;
begin
  TempQuery := TADOQuery.Create(nil);
  try
    TempQuery.Connection := dmGlobal.conGlobal;
    TempQuery.SQL.Add('delete from tbIMPurchaseInvoiceDt');
    TempQuery.SQL.Add('where vcIdPurchaseInvoice = :vcIdPurchaseInvoice');
    TempQuery.Parameters[0].Value := VarToStr(dbeIdPurchaseInvoice.EditValue);
    TempQuery.ExecSQL;
    LockRefresh(dtsIMPurchaseInvoiceDt);
  finally
    FreeAndNil(TempQuery);
  end;
end;

procedure TfmPurchaseInvoice.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if dtsIMPurchaseInvoiceHd.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;
    if (Field.FieldName = 'dcDisc') or (Field.FieldName = 'dcTax') then
      CalculateTotal;
  end;
end;

procedure TfmPurchaseInvoice.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if FProcessDetail then
    Exit;

  // Setting button enabled
  if TDataSource(Sender).DataSet.State in [dsInsert] then
    SetReadOnly(dbePurchaseInvoiceDate, False);
  if TDataSource(Sender).DataSet.State in [dsBrowse] then
  begin
    SetReadOnly(dbePurchaseInvoiceDate, True, COLOR_INACTIVE);
  end;
end;

procedure TfmPurchaseInvoice.dsIMPurchaseInvoiceDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

    if dtsIMPurchaseInvoiceDt.State in [dsEdit, dsInsert] then
    begin
      if Field = nil then
        Exit;
      if Field.FieldName = 'inQty' then
        dtsIMPurchaseInvoiceDt.FieldByName('inCurrentQty').AsInteger :=
          dtsIMPurchaseInvoiceDt.FieldByName('inQty').AsInteger;
    end;
end;

procedure TfmPurchaseInvoice.dsIMPurchaseInvoiceDtStateChange(Sender: TObject);
begin
  inherited;

  if FProcessDetail then
    Exit;

  // Setting button enabled
  if TDataSource(Sender).DataSet.State in [dsInsert] then
    SetReadOnly(dbePurchaseInvoiceDate, False);
  if TDataSource(Sender).DataSet.State in [dsBrowse] then
    SetReadOnly(dbePurchaseInvoiceDate, True, COLOR_INACTIVE);
end;

procedure TfmPurchaseInvoice.dtsIMPurchaseInvoiceDtAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FProcessDetail then
    Exit;
  dtsIMPurchaseInvoiceHd.Edit;
  CalculateTotal;
  dtsIMPurchaseInvoiceHd.Post;

  CheckPrice;
end;

procedure TfmPurchaseInvoice.dtsIMPurchaseInvoiceDtBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;

  if not ValidatePurchaseInvoiceHd(dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseInvoice').AsString) then
    Abort;
end;

procedure TfmPurchaseInvoice.dtsIMPurchaseInvoiceDtBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if dtsIMPurchaseInvoiceHd.State in [dsInsert, dsEdit] then
    dtsIMPurchaseInvoiceHd.Post;
  if not ValidatePurchaseInvoiceHd(dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseInvoice').AsString) then
    Abort;
  if dtsIMPurchaseInvoiceHd.FieldByName('chFlagPO').AsString = '1' then
  begin
    MessageDlg(MSG_RR_WITH_PO, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmPurchaseInvoice.dtsIMPurchaseInvoiceDtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if not ValidatePurchaseInvoiceHd(dbeIdPurchaseInvoice.EditValue) then
    Abort;
end;

procedure TfmPurchaseInvoice.dtsIMPurchaseInvoiceDtBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  Calculate;
end;

procedure TfmPurchaseInvoice.dtsIMPurchaseInvoiceDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('inNo').AsInteger := Dataset.RecordCount + 1;
  Dataset.FieldByName('inQty').AsInteger := 0;
  Dataset.FieldByName('dcPrice').AsInteger := 0;
  Dataset.FieldByName('dcDiscItem').AsInteger := 0;
  Dataset.FieldByName('dcDiscItemPrice').AsInteger := 0;
end;

procedure TfmPurchaseInvoice.dtsIMPurchaseInvoiceHdAfterPost(DataSet: TDataSet);
var
  i: integer;
  IsPIWithoutPO: boolean;
//  PurchasePrice, PurchaseDisc: real;
begin
  inherited;

    if dtsIMPurchaseInvoiceDt.IsEmpty then
    begin
      // Initial
      if dbicType.ItemIndex = 0 then
        IsPIWithoutPO := True
      else
        IsPIWithoutPO := False;

      //Create Detail PI Qty (from RR)
      dmInventory.qryValidateRRWithPO.Close;
      dmInventory.qryValidateRRWithPO.Parameters[0].Value := VarToStr(dbeIdPurchaseOrder.EditValue);
      dmInventory.qryValidateRRWithPO.Parameters[1].Value := VarToStr(dbeIdReceivingRecord.EditValue);
      dmInventory.qryValidateRRWithPO.Open;
      i := 1;
      FProcessDetail := True;
      while not dmInventory.qryValidateRRWithPO.Eof do
      begin
        // PI price from PO
        dtsIMPurchaseInvoiceDt.Insert;
        dtsIMPurchaseInvoiceDt.FieldByName('vcIdPurchaseInvoice').AsVariant := dbeIdPurchaseInvoice.EditValue;
        dtsIMPurchaseInvoiceDt.FieldByName('inNo').AsVariant := i;
        dtsIMPurchaseInvoiceDt.FieldByName('vcIdSupplies').AsVariant :=
          dmInventory.qryValidateRRWithPO.FieldByName('IdSuppliesRR').AsVariant;
        dtsIMPurchaseInvoiceDt.FieldByName('inQty').AsVariant :=
          dmInventory.qryValidateRRWithPO.FieldByName('QtyRR').AsVariant;
        dtsIMPurchaseInvoiceDt.FieldByName('dcPrice').AsVariant := 0; //Harga selalu nol
          //dmInventory.qryValidateRRWithPO.FieldByName('dcPrice').AsVariant;
        dtsIMPurchaseInvoiceDt.FieldByName('dcDiscItem').AsVariant := 0; //sama
          //dmInventory.qryValidateRRWithPO.FieldByName('dcDiscItem').AsVariant;
        dtsIMPurchaseInvoiceDt.FieldByName('dcDiscItemPrice').AsVariant := 0; //sama
          dmInventory.qryValidateRRWithPO.FieldByName('dcDiscItemPrice').AsVariant;

        // PI price not from PO
        if IsPIWithoutPO then
        begin
          //dmShare.GetPurchasePriceAndDisc(VarToStr(dblcIdSupplier.EditValue),
          //  dmInventory.qryValidateRRWithPO.FieldByName('IdSuppliesRR').AsString,
          //  PurchasePrice, PurchaseDisc);
          dtsIMPurchaseInvoiceDt.FieldByName('dcPrice').AsVariant := 0; //Harga selalu nol
            //PurchasePrice;
          dtsIMPurchaseInvoiceDt.FieldByName('dcDiscItem').AsVariant := 0; //selalu nol
            //PurchaseDisc;
        end;

        // Finally
        dtsIMPurchaseInvoiceDt.Post;
        dmInventory.qryValidateRRWithPO.Next;
        Inc(i);
      end;

      dtsIMPurchaseInvoiceHd.Edit;
      CalculateTotal;
      dtsIMPurchaseInvoiceHd.Post;
      FProcessDetail := False;
    end;
end;

procedure TfmPurchaseInvoice.dtsIMPurchaseInvoiceHdBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;

  if not ValidatePurchaseInvoiceHd(dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseInvoice').AsString) then
    Abort;
end;

procedure TfmPurchaseInvoice.dtsIMPurchaseInvoiceHdBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;

  // Check Status Approval
  if not ValidatePurchaseInvoiceHd(dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseInvoice').AsString) then
    Abort;

  FOldRR := dtsIMPurchaseInvoiceHd.FieldByName('vcIdReceivingRecord').AsString;
  FOldPO := dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseOrder').AsString;
end;

procedure TfmPurchaseInvoice.dtsIMPurchaseInvoiceHdBeforePost(
  DataSet: TDataSet);
var
  NewRR, NewPO, ReceivingRecordPI: string;
begin
  inherited;

  if FProcessDetail then
    Exit;

  NewRR := dtsIMPurchaseInvoiceHd.FieldByName('vcIdReceivingRecord').AsString;
  NewPO := dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseOrder').AsString;

  // Validate
  if NewRR = '' then
  begin
    MessageDlg(Format(MSG_ID_ISNULL, ['Id receiving record']), mtInformation, [mbOk], 0);
    Abort;
  end;

  // Check RR status (lock or unlock), by getting newest vcIdPurchaseOrder.
  ReceivingRecordPI := dmShare.GetReceivingRecordPI(NewRR);
  if (ReceivingRecordPI <> '') and (ReceivingRecordPI <> VarToStr(dbeIdPurchaseInvoice.EditValue)) then
  begin
    MessageDlg(Format(MSG_CANNOT_USE_RR, [NewRR, ReceivingRecordPI]), mtInformation, [mbOk], 0);
    Abort;
  end;

  // Compare RR with PO
  if dtsIMPurchaseInvoiceHd.FieldByName('chFlagPO').AsString = '1' then
  begin
    if not dmShare.CompareRRWithPOValid(NewRR, VarToStr(dbeIdPurchaseOrder.EditValue)) then
    begin
      MessageDlg(Format(MSG_RR_PO_INVALID, [NewRR, VarToStr(dbeIdPurchaseOrder.EditValue)]), mtInformation, [mbOk], 0);
      Abort;
    end;
  end
  else
    dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseOrder').AsVariant := null;

  // Check RR & PO changing
  if not dtsIMPurchaseInvoiceDt.IsEmpty then
  begin
    if (FOldRR <> NewRR) or (FOldPO <> NewPO) then
    begin
      if MessageDlg(Format(ASK_SAVE_PI, [FOldRR, NewRR, FOldPO, NewPO]), mtWarning, [mbYes, mbNo], 0) = mrNo then
        Abort
      else
      begin
        DeleteCurrentDetail;
        CalculateTotal;
      end;
    end;
  end;

  // Insert Id
  if DataSet.FieldByName('vcIdPurchaseInvoice').IsNull then
    DataSet.FieldByName('vcIdPurchaseInvoice').AsString :=
      dmShare.GetCurrentTransNo(utPurchaseInvoice, DataSet.FieldByName('dtPurchaseInvoiceDate').AsDateTime);
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;

  // Insert Disc and Tax, if PI with PO
  if NewPO <> '' then
  begin
    qryPrevSelectedPO.Close;
    qryPrevSelectedPO.Parameters[0].Value := NewPO;
    qryPrevSelectedPO.Open;
    if not qryPrevSelectedPO.IsEmpty then
    begin
      DataSet.FieldByName('dcDisc').AsFloat := qryPrevSelectedPO.FieldByName('dcDisc').AsFloat;
      DataSet.FieldByName('dcTax').AsFloat := qryPrevSelectedPO.FieldByName('dcTax').AsFloat;
    end;
    qryPrevSelectedPO.Close;
  end;

  // Release old RR lock
  if (FOldRR <> NewRR) and (FOldRR <> '') then
    dmShare.SetReceivingRecordPI(FOldRR, '');

  // And lock new RR with current PI
  dmShare.SetReceivingRecordPI(NewRR, VarToStr(dbeIdPurchaseInvoice.EditValue));
end;

procedure TfmPurchaseInvoice.dtsIMPurchaseInvoiceHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  FOldRR := '';
  FOldPO := '';

  DataSet.FieldByName('dtPurchaseInvoiceDate').AsDateTime := DateOf(dmGlobal.SettingGlobal.ServerDateTime);
  Dataset.FieldByName('dcDisc').AsFloat := 0;
  Dataset.FieldByName('dcDiscAmount').AsFloat := 0;
  Dataset.FieldByName('dcTax').AsFloat := 0;
  Dataset.FieldByName('dcTaxAmount').AsFloat := 0;
  Dataset.FieldByName('dcTotalAmount').AsFloat := 0;
  Dataset.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
  Dataset.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
  Dataset.FieldByName('chFlagPO').AsInteger := 0;
  Dataset.FieldByName('CounterPrint').AsInteger := 0;
end;

procedure TfmPurchaseInvoice.HidePrice(AHide: boolean);
begin
  if Assigned(cgvPurchaseInvoiceDtdcPrice) then
  begin
    if AHide then
    begin
      cgvPurchaseInvoiceDtdcPrice.DataBinding.FieldName := '';
      cgvPurchaseInvoiceDtdcAmount.DataBinding.FieldName := '';
      cgvPurchaseInvoiceDtdcPrice.Styles.Content := dmGlobal.stRedLight;
      cgvPurchaseInvoiceDtdcAmount.Styles.Content := dmGlobal.stRedLight;
    end
    else
    begin
      cgvPurchaseInvoiceDtdcPrice.DataBinding.FieldName := 'dcPrice';
      cgvPurchaseInvoiceDtdcAmount.DataBinding.FieldName := 'dcAmount';
      cgvPurchaseInvoiceDtdcPrice.Styles.Content := nil;
      cgvPurchaseInvoiceDtdcAmount.Styles.Content := nil;
    end;
  end;
end;

procedure TfmPurchaseInvoice.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PI);

  TcxCalcEditProperties(cgvPurchaseInvoiceDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPurchaseInvoiceDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseInvoiceDtdcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPurchaseInvoiceDtdcDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseInvoiceDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeDisc.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeDiscAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTax.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeTaxAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvPurchaseInvoiceDt.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  // Initial
  FProcessDetail := False;

  case FStatusApprove of
    0:
      begin
        Self.Caption := Self.Caption + ' - Entry';
        btnRevision.Enabled := False;
        btnPrint.Enabled := False;

        // Hide Price On PIEntry
        cgvPurchaseInvoiceDtdcPrice.Free;
        cgvPurchaseInvoiceDtdcAmount.Free;
        lblTotal.Visible := False;
        dbeTotalAmount.Visible := False;
      end;
    1:
      begin
        Self.Caption := Self.Caption + ' - Approval';
        btnPrint.Enabled := False;
      end;
  end;

  SetReadOnly(cgvPurchaseInvoiceHd);
  SetReadOnly(dbeIdPurchaseInvoice, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdPurchaseOrder, True, clWindow);
  SetReadOnly(dbeIdReceivingRecord, True, clWindow);
  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbeDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchaseInvoiceDate, True, COLOR_INACTIVE);
  SetReadOnly(dblcSupplierDO, True, COLOR_INACTIVE);
  SetReadOnly(dblcSupplierPO, True, COLOR_INACTIVE);

//  if (dmGlobal.OptionOnlyPIEntryCanModifyData) and (FStatusApprove <> 0) then
//  begin
//    pnlHeaderControl.Visible := False;
//    pnlDetailControl.Visible := False;
//    SetReadOnly(cgvPurchaseInvoiceDt);
//    SetReadOnly(dbePurchaseInvoiceDate, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dblcIdSupplier, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dbicType, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dbeIdPurchaseOrder, True, COLOR_INACTIVE);
//    SetReadOnly(dbeIdReceivingRecord, True, COLOR_INACTIVE);
//    SetReadOnly(dbeInvoiceDueDay, True, COLOR_INACTIVE);
//    SetReadOnly(dbmMemo, True, COLOR_INACTIVE);
//    SetReadOnly(dbeDisc, True, COLOR_INACTIVE);
//    SetReadOnly(dbeTax, True, COLOR_INACTIVE);
//    btnSupplier.Enabled := False;
//    btnPurchaseOrder.Enabled := False;
//    btnReceivingRecord.Enabled := False;
//  end;

  // Open all query
  OpenIfClose(dmInventory.qrySupplier, True);
  OpenIfClose(dmInventory.qrySupplies, True);

  FDoSaveCalculate := False;
  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMPurchaseInvoiceDt);
  CheckPrice;
end;

procedure TfmPurchaseInvoice.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (dtsIMPurchaseInvoiceHd.State in [dsEdit, dsInsert]) or
    (dtsIMPurchaseInvoiceDt.State in [dsEdit, dsInsert]) then
    Abort;

  dtsIMPurchaseInvoiceHd.Close;
  dtsIMPurchaseInvoiceHd.Parameters[0].Value := FStatusApprove;
  dtsIMPurchaseInvoiceHd.Parameters[1].Value := FStatusApprove + 1;
  dtsIMPurchaseInvoiceHd.Parameters[2].Value := STATUS_REJECT;
  dtsIMPurchaseInvoiceHd.Parameters[3].Value := STATUS_DONE;
  dtsIMPurchaseInvoiceHd.Parameters[4].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMPurchaseInvoiceHd.Parameters[5].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsIMPurchaseInvoiceHd, True);
  cgvPurchaseInvoiceHd.ViewData.Expand(True);
end;

procedure TfmPurchaseInvoice.RefreshAll;
begin
  inherited;

  LockRefresh(dmInventory.qrySupplier);
  LockRefresh(dmInventory.qrySupplies);
  LockRefresh(dtsIMPurchaseInvoiceHd, True);
  LockRefresh(dtsIMPurchaseInvoiceDt);
  cgvPurchaseInvoiceHd.ViewData.Expand(False);

  CheckPrice;
end;

function TfmPurchaseInvoice.ValidatePurchaseInvoiceHd(
  const AIdPI: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(Self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select chStatusApprove from tbIMPurchaseInvoiceHd');
    qryTemp.SQL.Add('where vcIdPurchaseInvoice = :vcIdPurchaseInvoice');
    qryTemp.Parameters[0].Value := AIdPI;
    qryTemp.Open;
    if qryTemp.IsEmpty then
      Exit;
    if qryTemp.FieldByName('chStatusApprove').AsInteger <> FStatusApprove then
    begin
      MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [PI, AIdPI]), mtInformation,
        [mbOk], 0);
      Exit;
    end;
  finally
    FreeAndNil(qryTemp);
  end;
  Result := True;
end;

end.
