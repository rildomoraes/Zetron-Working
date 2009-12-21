unit frmPurchaseReturn;

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
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, ADODB, DB, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxDBLookupComboBox,
  cxSpinEdit, cxCalc, cxCurrencyEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, cxLabel, cxCalendar, cxMemo, cxPC, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TfmPurchaseReturn = class(TFormUniTransactionApprovalEx)
    dtsIMPurchaseReturnHd: TADODataSet;
    dtsIMPurchaseReturnDt: TADODataSet;
    dsIMPurchaseReturnDt: TDataSource;
    spPurchaseReturnValidation: TADOStoredProc;
    qryGetPRTotalAmount: TADOQuery;
    cgPurchaseReturnHd: TcxGrid;
    cgvPurchaseReturnHd: TcxGridDBTableView;
    cgvPurchaseReturnHdvcIdPurchaseReturn: TcxGridDBColumn;
    cgvPurchaseReturnHddtPurchaseReturnDate: TcxGridDBColumn;
    cgvPurchaseReturnHdvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPurchaseReturnHdvcIdSupplier: TcxGridDBColumn;
    cgvPurchaseReturnHdtxNotes: TcxGridDBColumn;
    cgvPurchaseReturnHdtxMemo: TcxGridDBColumn;
    cgvPurchaseReturnHdvcEmployeeName: TcxGridDBColumn;
    cgvPurchaseReturnHdchStatusApprove: TcxGridDBColumn;
    cgPurchaseReturnHdLevel1: TcxGridLevel;
    pnlDetailTop: TPanel;
    lblIdPurchaseReturn: TLabel;
    lblPurchaseReturnDate: TLabel;
    lblIdPurchaseInvoice: TLabel;
    lblIdSupplier: TLabel;
    lblEmployeeName: TLabel;
    lblIdDeliveryOrder: TLabel;
    pcNotes: TcxPageControl;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsMemo: TcxTabSheet;
    dbMemo: TcxDBMemo;
    tsDeliveryAddress: TcxTabSheet;
    dbmDeliveryAddress: TcxDBMemo;
    tsNotesDeliveryOrder: TcxTabSheet;
    dbmNotesDeliveryOrder: TcxDBMemo;
    dbeIdPurchaseReturn: TcxDBTextEdit;
    dbePurchaseReturnDate: TcxDBDateEdit;
    dblcIdSupplier: TcxDBExtLookupComboBox;
    dbeEmployeeName: TcxDBTextEdit;
    dblcIdWarehouse: TcxDBExtLookupComboBox;
    dbeIdRefDO: TcxDBTextEdit;
    btnPurchaseInvoice: TcxButton;
    dbeIdPurchaseInvoice: TcxDBTextEdit;
    cgPurchaseReturnDt: TcxGrid;
    cgvPurchaseReturnDt: TcxGridDBBandedTableView;
    cgvPurchaseReturnDtvcIdPurchaseReturn: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtinNo: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtvcIdSupplies: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtvcIdSupplies1: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtvcIdSupplies2: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtinQty: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtdcPrice: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtdcDisc: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtdcDiscAmount: TcxGridDBBandedColumn;
    cgvPurchaseReturnDtdcAmount: TcxGridDBBandedColumn;
    cgPurchaseReturnDtLevel1: TcxGridLevel;
    cxLabel1: TLabel;
    gvrPurchaseReturn: TcxGridViewRepository;
    cgvPrevSupplies: TcxGridDBTableView;
    cgvPrevSuppliesvcIdSupplies: TcxGridDBColumn;
    cgvPrevSuppliesvcSuppliesName: TcxGridDBColumn;
    cgvPrevSuppliesvcType: TcxGridDBColumn;
    cgvPrevSuppliesinEndQtyReady: TcxGridDBColumn;
    pnlDetailBottom: TPanel;
    lblTax: TLabel;
    lblTotal: TLabel;
    lblDisc: TLabel;
    dbeTax: TcxDBSpinEdit;
    dbeDisc: TcxDBSpinEdit;
    dbeDiscAmount: TcxDBCurrencyEdit;
    dbeTaxAmount: TcxDBCurrencyEdit;
    dbeTotalAmount: TcxDBCurrencyEdit;
    qryPrevSuppliesPI: TADOQuery;
    dsPrevSuppliesPI: TDataSource;
    cgvPrevSuppliesdcPrice: TcxGridDBColumn;
    cgvPrevSuppliesdcDiscItem: TcxGridDBColumn;
    qryGetPISupplier: TADOQuery;
    procedure actApproveExecute(Sender: TObject);
    procedure actRevisionExecute(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure cgvPurchaseReturnHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure dtsIMPurchaseReturnHdBeforeEdit(DataSet: TDataSet);
    procedure dtsIMPurchaseReturnHdBeforePost(DataSet: TDataSet);
    procedure dtsIMPurchaseReturnHdNewRecord(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dtsIMPurchaseReturnDtAfterPost(DataSet: TDataSet);
    procedure dtsIMPurchaseReturnDtBeforeEdit(DataSet: TDataSet);
    procedure dtsIMPurchaseReturnDtBeforeInsert(DataSet: TDataSet);
    procedure dtsIMPurchaseReturnDtBeforePost(DataSet: TDataSet);
    procedure dtsIMPurchaseReturnDtNewRecord(DataSet: TDataSet);
    procedure dsIMPurchaseReturnDtDataChange(Sender: TObject; Field: TField);
    procedure dtsIMPurchaseReturnDtBeforeDelete(DataSet: TDataSet);
    procedure cgvPurchaseReturnDtvcIdSuppliesPropertiesInitPopup(
      Sender: TObject);
    procedure dbeIdPurchaseReturnPropertiesEditValueChanged(Sender: TObject);
    procedure btnPurchaseInvoiceClick(Sender: TObject);
    procedure cgvPurchaseReturnDtDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FDoSaveCalculate: boolean;
    FOldQty: real;
    FOldWarehouse: string;
    FOldPI: string;

    procedure Calculate;
    procedure CalculateTotal;
    function  ValidatePurchaseReturnHd(const AIdPR: string): boolean;
    procedure DeleteCurrentDetail;

    procedure ShowSuppliesWithQtyReady;
    procedure ShowSupplies;
  public
    { Public declarations }
  end;

var
  fmPurchaseReturn: TfmPurchaseReturn;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, frmNotes,
  untConstanta, frmPreviewPurchaseInvoice;

procedure TfmPurchaseReturn.actApproveExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if (dtsIMPurchaseReturnHd.IsEmpty) or
    (dtsIMPurchaseReturnDt.IsEmpty) then
  begin
    MessageDlg(Format(MSG_CANNOT_APPROVE_EMPTY, [PR]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if not dmShare.ComparePRWithWHValid(VarToStr(dbeIdPurchaseReturn.EditValue),
    VarToStr(dblcIdWarehouse.EditValue)) then
  begin
    MessageDlg(Format(MSG_PR_WH_INVALID, [VarToStr(dbeIdPurchaseReturn.EditValue),
      VarToStr(dblcIdWarehouse.EditText)]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if not dmShare.ComparePRWithPIValid(VarToStr(dbeIdPurchaseReturn.EditValue)) then
  begin
    MessageDlg(Format(MSG_PR_PI_INVALID, [VarToStr(dbeIdPurchaseReturn.EditValue),
      VarToStr(dbeIdPurchaseInvoice.EditValue)]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if MessageDlg(Format(ASK_APPROVE, [PR, VarToStr(dbeIdPurchaseReturn.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidatePurchaseReturnHd(VarToStr(dbeIdPurchaseReturn.EditValue)) then
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
  if (FStatusApprove + 1) = 2 then //App1
  begin
    spPurchaseReturnValidation.Close;
    spPurchaseReturnValidation.Parameters[1].Value := dbeIdPurchaseReturn.EditValue;
    spPurchaseReturnValidation.ExecProc;
    if (spPurchaseReturnValidation.Parameters[0].Value <> 0) or
      (VarIsEmpty(spPurchaseReturnValidation.Parameters[0].Value)) then
    begin
      MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spPurchaseReturnValidation']), mtInformation, [mbOk], 0);
      //dmGlobal.AddApplicationLog('spPurchaseReturnValidation cannot be execute !', llHigh);
      dsDefault.DataSet.Edit;
      dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
      dsDefault.DataSet.Post;
    end;
  end;
end;

procedure TfmPurchaseReturn.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dtsIMPurchaseReturnHd.IsEmpty then
    Exit;
  if not ValidatePurchaseReturnHd(VarToStr(dbeIdPurchaseReturn.EditValue)) then
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

procedure TfmPurchaseReturn.actRevisionExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if dtsIMPurchaseReturnHd.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REVISION, [PR, VarToStr(dbeIdPurchaseReturn.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidatePurchaseReturnHd(VarToStr(dbeIdPurchaseReturn.EditValue)) then
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

procedure TfmPurchaseReturn.actVoidExecute(Sender: TObject);
var
  S: TStringList;
begin
  //Ivan do not :inherited;

  // Validate
  if dtsIMPurchaseReturnHd.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REJECT, [PR, VarToStr(dbeIdPurchaseReturn.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidatePurchaseReturnHd(VarToStr(dbeIdPurchaseReturn.EditValue)) then
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

procedure TfmPurchaseReturn.btnPurchaseInvoiceClick(Sender: TObject);
var
  IdPurchaseInvoice: string;
  Disc, Tax: real;
begin
  inherited;

  IdPurchaseInvoice := VarToStr(dbeIdPurchaseInvoice.EditValue);
  if TfmPreviewPurchaseInvoice.ExecuteForm(IdPurchaseInvoice, Disc, Tax) = mrOk then
  begin
    if dtsIMPurchaseReturnHd.State in [dsBrowse] then
    begin
      if dtsIMPurchaseReturnHd.IsEmpty then
        dtsIMPurchaseReturnHd.Insert
      else
        dtsIMPurchaseReturnHd.Edit;
    end;

    dtsIMPurchaseReturnHd.FieldByName('vcIdPurchaseInvoice').AsString := IdPurchaseInvoice;
    dtsIMPurchaseReturnHd.FieldByName('dcDisc').AsFloat := Disc;
    dtsIMPurchaseReturnHd.FieldByName('dcTax').AsFloat := Tax;
  end;
end;

procedure TfmPurchaseReturn.Calculate;
begin
  with dtsIMPurchaseReturnDt do
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

procedure TfmPurchaseReturn.CalculateTotal;
begin
  qryGetPRTotalAmount.Close;
  qryGetPRTotalAmount.Parameters[0].Value := dtsIMPurchaseReturnHd.FieldByName('vcIdPurchaseReturn').AsString;
  qryGetPRTotalAmount.Open;

  dtsIMPurchaseReturnHd.FieldByName('dcAmount').AsFloat :=
    qryGetPRTotalAmount.FieldByName('Amount').AsFloat;
  dtsIMPurchaseReturnHd.FieldByName('dcDiscAmount').AsFloat :=
    (dtsIMPurchaseReturnHd.FieldByName('dcAmount').AsFloat *
    dtsIMPurchaseReturnHd.FieldByName('dcDisc').AsFloat) / 100;
  dtsIMPurchaseReturnHd.FieldByName('dcTaxAmount').AsFloat :=
    ((dtsIMPurchaseReturnHd.FieldByName('dcAmount').AsFloat -
    dtsIMPurchaseReturnHd.FieldByName('dcDiscAmount').AsFloat) *
    dtsIMPurchaseReturnHd.FieldByName('dcTax').AsFloat) / 100;
  dtsIMPurchaseReturnHd.FieldByName('dcTotalAmount').AsFloat :=
    dtsIMPurchaseReturnHd.FieldByName('dcAmount').AsFloat -
    dtsIMPurchaseReturnHd.FieldByName('dcDiscAmount').AsFloat +
    dtsIMPurchaseReturnHd.FieldByName('dcTaxAmount').AsFloat;
end;

procedure TfmPurchaseReturn.cgvPurchaseReturnDtDataControllerSummaryAfterSummary(
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

procedure TfmPurchaseReturn.cgvPurchaseReturnDtvcIdSuppliesPropertiesInitPopup(
  Sender: TObject);
begin
  inherited;

  ShowSuppliesWithQtyReady;
end;

procedure TfmPurchaseReturn.cgvPurchaseReturnHdStylesGetContentStyle(
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

procedure TfmPurchaseReturn.dbeIdPurchaseReturnPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if dtsIMPurchaseReturnHd.State in [dsBrowse] then
  begin
    ShowSupplies;
  end;
end;

procedure TfmPurchaseReturn.DeleteCurrentDetail;
var
  TempQuery: TADOQuery;
begin
  TempQuery := TADOQuery.Create(nil);
  try
    TempQuery.Connection := dmGlobal.conGlobal;

    TempQuery.Close;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add('delete from tbIMPurchaseReturnDt            ');
    TempQuery.SQL.Add('where vcIdPurchaseReturn = :vcIdPurchaseReturn');
    TempQuery.Parameters[0].Value := VarToStr(dbeIdPurchaseReturn.EditValue);
    TempQuery.ExecSQL;

    LockRefresh(dtsIMPurchaseReturnDt);
  finally
    FreeAndNil(TempQuery);
  end;
end;

procedure TfmPurchaseReturn.dsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if dtsIMPurchaseReturnHd.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;

    if CompareText(Field.FieldName, 'vcIdPurchaseInvoice') = 0 then
    begin
      qryGetPISupplier.Close;
      qryGetPISupplier.Parameters[0].Value := dtsIMPurchaseReturnHd.FieldByName('vcIdPurchaseInvoice').AsString;
      OpenIfClose(qryGetPISupplier);
      if not qryGetPISupplier.IsEmpty then
        dtsIMPurchaseReturnHd.FieldByName('vcIdSupplier').AsString := qryGetPISupplier.FieldByName('vcIdSupplier').AsString
      else
        dtsIMPurchaseReturnHd.FieldByName('vcIdSupplier').AsVariant := null;
    end;

    if CompareText(Field.FieldName, 'vcIdSupplier') = 0 then
    begin
      dtsIMPurchaseReturnHd.FieldByName('vcDeliveryOrderAddress').AsString :=
        dmInventory.GetSupplierAddress(dtsIMPurchaseReturnHd.FieldByName('vcIdSupplier').AsString);
    end;

    if (CompareText(Field.FieldName, 'dcDisc') = 0) or
      (CompareText(Field.FieldName, 'dcTax') = 0) then
      CalculateTotal;
  end;
end;

procedure TfmPurchaseReturn.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if TDataSource(Sender).DataSet.State in [dsInsert] then
    SetReadOnly(dbePurchaseReturnDate, False);
  if TDataSource(Sender).DataSet.State in [dsBrowse] then
    SetReadOnly(dbePurchaseReturnDate, True, COLOR_INACTIVE);
end;

procedure TfmPurchaseReturn.dsIMPurchaseReturnDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if dtsIMPurchaseReturnDt.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;

    if CompareText(Field.FieldName, 'vcIdSupplies') = 0 then
    begin
      dtsIMPurchaseReturnDt.FieldByName('dcPrice').Value := cgvPrevSuppliesdcPrice.EditValue;
      dtsIMPurchaseReturnDt.FieldByName('dcDiscItem').Value := cgvPrevSuppliesdcDiscItem.EditValue;
    end;
  end;
end;

procedure TfmPurchaseReturn.dtsIMPurchaseReturnDtAfterPost(DataSet: TDataSet);
begin
  inherited;

  dtsIMPurchaseReturnHd.DisableControls;
  dtsIMPurchaseReturnHd.Edit;
  CalculateTotal;
  dtsIMPurchaseReturnHd.Post;
  dtsIMPurchaseReturnHd.EnableControls;
end;

procedure TfmPurchaseReturn.dtsIMPurchaseReturnDtBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;

  if not ValidatePurchaseReturnHd(dtsIMPurchaseReturnHd.FieldByName('vcIdPurchaseReturn').AsString) then
    Abort;
end;

procedure TfmPurchaseReturn.dtsIMPurchaseReturnDtBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if not ValidatePurchaseReturnHd(dtsIMPurchaseReturnHd.FieldByName('vcIdPurchaseReturn').AsString) then
    Abort;

  FOldQty := dtsIMPurchaseReturnHd.FieldByName('inQty').AsFloat;
end;

procedure TfmPurchaseReturn.dtsIMPurchaseReturnDtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  if not ValidatePurchaseReturnHd(dtsIMPurchaseReturnHd.FieldByName('vcIdPurchaseReturn').AsString) then
    Abort;
end;

procedure TfmPurchaseReturn.dtsIMPurchaseReturnDtBeforePost(DataSet: TDataSet);
var
  ReadyStockQty: Variant;
begin
  inherited;

  ReadyStockQty := dmInventory.GetReadyStockQty(dblcIdWarehouse.EditValue, dtsIMPurchaseReturnDt.FieldByName('vcIdSupplies').AsString);
  ReadyStockQty := ReadyStockQty + FOldQty;
  if dtsIMPurchaseReturnDt.FieldByName('inQty').AsFloat > ReadyStockQty then
  begin
    MessageDlg(MSG_QTY_GREATER_THAN_READYSTOCK, mtInformation, [mbOk], 0);
    Abort;
  end;

  Calculate;
end;

procedure TfmPurchaseReturn.dtsIMPurchaseReturnDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('inNo').AsInteger := Dataset.RecordCount + 1;
  Dataset.FieldByName('inQty').AsInteger := 0;
  Dataset.FieldByName('dcPrice').AsInteger := 0;
  Dataset.FieldByName('dcDiscItem').AsInteger := 0;
  Dataset.FieldByName('dcDiscItemPrice').AsInteger := 0;

  FOldQty := 0;
end;

procedure TfmPurchaseReturn.dtsIMPurchaseReturnHdBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if not ValidatePurchaseReturnHd(dtsIMPurchaseReturnHd.FieldByName('vcIdPurchaseReturn').AsString) then
    Abort;

  FOldWarehouse := dtsIMPurchaseReturnHd.FieldByName('vcIdWarehouse').AsString;
  FOldPI := dtsIMPurchaseReturnHd.FieldByName('vcIdPurchaseInvoice').AsString;
end;

procedure TfmPurchaseReturn.dtsIMPurchaseReturnHdBeforePost(DataSet: TDataSet);
var
  NewPI, NewWarehouse: string;
begin
  inherited;

  // Jika Warehouse-nya berubah, maka hapus detail yang telah dibuat
  NewWarehouse := dtsIMPurchaseReturnHd.FieldByName('vcIdWarehouse').AsString;
  if not dtsIMPurchaseReturnDt.IsEmpty then
  begin
    if FOldWarehouse <> NewWarehouse then
    begin
      if MessageDlg(ASK_SAVE_PR, mtWarning, [mbYes, mbNo], 0) = mrNo then
        Abort
      else
      begin
        DeleteCurrentDetail;
        CalculateTotal;
      end;
    end;
  end;

  // Jika PurchaseInvoice-nya berubah, maka hapus detail yang telah dibuat
  NewPI := dtsIMPurchaseReturnHd.FieldByName('vcIdPurchaseInvoice').AsString;
  if not dtsIMPurchaseReturnDt.IsEmpty then
  begin
    if FOldPI <> NewPI then
      if MessageDlg(Format(ASK_SAVE_PR2, [FOldPI, NewPI]), mtWarning, [mbYes, mbNo], 0) = mrNo then
        Abort
      else
      begin
        DeleteCurrentDetail;
        CalculateTotal;
      end;
  end;

  if DataSet.FieldByName('vcIdPurchaseReturn').IsNull then
    DataSet.FieldByName('vcIdPurchaseReturn').AsString :=
      dmShare.GetCurrentTransNo(utPurchaseReturn,
      DataSet.FieldByName('dtPurchaseReturnDate').AsDateTime);
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmPurchaseReturn.dtsIMPurchaseReturnHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('dtPurchaseReturnDate').AsDateTime := DateOf(dmGlobal.SettingGlobal.ServerDateTime);
  Dataset.FieldByName('dcDisc').AsFloat := 0;
  Dataset.FieldByName('dcDiscAmount').AsFloat := 0;
  Dataset.FieldByName('dcTax').AsFloat := 0;
  Dataset.FieldByName('dcTaxAmount').AsFloat := 0;
  Dataset.FieldByName('dcTotalAmount').AsFloat := 0;
  Dataset.FieldByName('vcEmployeeName').Value := dmGlobal.SettingGlobal.LoginEmployeeName;
  Dataset.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
  Dataset.FieldByName('CounterPrint').AsInteger := 0;

  FOldWarehouse := '';
  FOldPI := '';
end;

procedure TfmPurchaseReturn.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PR);

  // Display Format
  TcxCalcEditProperties(cgvPrevSuppliesdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSuppliesdcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevSuppliesinEndQtyReady.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPurchaseReturnDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvPurchaseReturnDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseReturnDtdcDisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPurchaseReturnDtdcDiscAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPurchaseReturnDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeDisc.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeDiscAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTax.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeTaxAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvPurchaseReturnDt.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  // Initial
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
  end;

  SetReadOnly(cgvPurchaseReturnHd);
  SetReadOnly(dbeIdPurchaseReturn, True, COLOR_INACTIVE);
  SetReadOnly(dblcIdSupplier, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdRefDO, True, COLOR_INACTIVE);
  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
  SetReadOnly(dbeDisc, True, COLOR_INACTIVE);
  SetReadOnly(dbeTax, True, COLOR_INACTIVE);
  SetReadOnly(dbeDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbmDeliveryAddress, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchaseReturnDate, True, COLOR_INACTIVE);

  // Open all query
  OpenIfClose(dmInventory.qryWarehouse);
  OpenIfClose(dmInventory.qrySupplier, True);
  OpenIfClose(dmInventory.qrySupplies, True);

  FDoSaveCalculate := False;
  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMPurchaseReturnDt);
end;

procedure TfmPurchaseReturn.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  dtsIMPurchaseReturnHd.Close;
  dtsIMPurchaseReturnHd.Parameters[0].Value := FStatusApprove;
  dtsIMPurchaseReturnHd.Parameters[1].Value := FStatusApprove + 1;
  dtsIMPurchaseReturnHd.Parameters[2].Value := STATUS_REJECT;
  dtsIMPurchaseReturnHd.Parameters[3].Value := STATUS_DONE;
  dtsIMPurchaseReturnHd.Parameters[4].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMPurchaseReturnHd.Parameters[5].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsIMPurchaseReturnHd, True);
  cgvPurchaseReturnHd.ViewData.Expand(False);
end;

procedure TfmPurchaseReturn.RefreshAll;
begin
  inherited;

  LockRefresh(dtsIMPurchaseReturnHd, True);
  LockRefresh(dtsIMPurchaseReturnDt);
  cgvPurchaseReturnHd.ViewData.Expand(False);
end;

procedure TfmPurchaseReturn.ShowSupplies;
begin
  // Semua barang, tanpa QtyReady
  OpenIfClose(dmInventory.qrySupplies, True);
  cgvPrevSupplies.DataController.DataSource := dmInventory.dsSupplies;
end;

procedure TfmPurchaseReturn.ShowSuppliesWithQtyReady;
begin
  if (qryPrevSuppliesPI.Parameters[0].Value <> VarToStr(dblcIdWarehouse.EditValue)) or
    (qryPrevSuppliesPI.Parameters[1].Value <> VarToStr(dbeIdPurchaseInvoice.EditValue)) then
  begin
    qryPrevSuppliesPI.Close;
    qryPrevSuppliesPI.Parameters[0].Value := VarToStr(dblcIdWarehouse.EditValue);
    qryPrevSuppliesPI.Parameters[1].Value := VarToStr(dbeIdPurchaseInvoice.EditValue);
    OpenIfClose(qryPrevSuppliesPI);
  end;
  cgvPrevSupplies.DataController.DataSource := dsPrevSuppliesPI;
end;

function TfmPurchaseReturn.ValidatePurchaseReturnHd(
  const AIdPR: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(Self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select chStatusApprove from tbIMPurchaseReturnHd');
    qryTemp.SQL.Add('where vcIdPurchaseReturn = :vcIdPurchaseReturn');
    qryTemp.Parameters[0].Value := AIdPR;
    qryTemp.Open;
    if qryTemp.IsEmpty then
      Exit;
    if qryTemp.FieldByName('chStatusApprove').AsInteger <> FStatusApprove then
    begin
      MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [PR, AIdPR]), mtInformation,
        [mbOk], 0);
      Exit;
    end;
  finally
    FreeAndNil(qryTemp);
  end;
  Result := True;
end;

end.
