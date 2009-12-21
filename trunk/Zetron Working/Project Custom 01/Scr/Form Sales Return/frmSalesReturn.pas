unit frmSalesReturn;

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
  cxGridCustomView, cxGrid, cxCheckBox;

type
  TfmSalesReturn = class(TFormUniTransactionApprovalEx)
    dtsIMSalesReturnHd: TADODataSet;
    dtsIMSalesReturnDt: TADODataSet;
    dsIMSalesReturnDt: TDataSource;
    spSalesReturnValidation: TADOStoredProc;
    qryGetSRTotalAmount: TADOQuery;
    cgSalesReturnHd: TcxGrid;
    cgvSalesReturnHd: TcxGridDBTableView;
    cgvSalesReturnHdvcIdSalesReturn: TcxGridDBColumn;
    cgvSalesReturnHddtSalesReturnDate: TcxGridDBColumn;
    cgvSalesReturnHdvcIdSalesInvoice: TcxGridDBColumn;
    cgvSalesReturnHdvcIdCustomer: TcxGridDBColumn;
    cgvSalesReturnHdtxNotes: TcxGridDBColumn;
    cgvSalesReturnHdtxMemo: TcxGridDBColumn;
    cgvSalesReturnHdvcEmployeeName: TcxGridDBColumn;
    cgvSalesReturnHdchStatusApprove: TcxGridDBColumn;
    cgSalesReturnHdLevel1: TcxGridLevel;
    cgSalesReturnDt: TcxGrid;
    cgvSalesReturnDt: TcxGridDBBandedTableView;
    cgvSalesReturnDtvcIdSalesReturn: TcxGridDBBandedColumn;
    cgvSalesReturnDtinNo: TcxGridDBBandedColumn;
    cgvSalesReturnDtvcIdSupplies: TcxGridDBBandedColumn;
    cgvSalesReturnDtvcIdSupplies1: TcxGridDBBandedColumn;
    cgvSalesReturnDtvcIdSupplies2: TcxGridDBBandedColumn;
    cgvSalesReturnDtinQty: TcxGridDBBandedColumn;
    cgvSalesReturnDtdcPrice: TcxGridDBBandedColumn;
    cgvSalesReturnDtdcDisc: TcxGridDBBandedColumn;
    cgvSalesReturnDtdcDiscAmount: TcxGridDBBandedColumn;
    cgvSalesReturnDtdcAmount: TcxGridDBBandedColumn;
    cgSalesReturnDtLevel1: TcxGridLevel;
    gvrSalesReturn: TcxGridViewRepository;
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
    qryPrevSuppliesSI: TADOQuery;
    dsPrevSuppliesSI: TDataSource;
    cgvPrevSuppliesdcPrice: TcxGridDBColumn;
    cgvPrevSuppliesdcDiscItem: TcxGridDBColumn;
    qryGetSICustomer: TADOQuery;
    pnlDetailTop: TPanel;
    lblIdPurchaseReturn: TLabel;
    lblPurchaseReturnDate: TLabel;
    lblIdPurchaseInvoice: TLabel;
    lblIdSupplier: TLabel;
    lblEmployeeName: TLabel;
    shpRRApprove: TShape;
    lblIdReceivingRecord: TLabel;
    lblIdWarehouse: TLabel;
    pcNotes: TcxPageControl;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsMemo: TcxTabSheet;
    dbMemo: TcxDBMemo;
    dbeIdSalesReturn: TcxDBTextEdit;
    dbeSalesReturnDate: TcxDBDateEdit;
    dblcIdCustomer: TcxDBExtLookupComboBox;
    dbeEmployeeName: TcxDBTextEdit;
    dblcIdWarehouse: TcxDBExtLookupComboBox;
    dbeIdRefRR: TcxDBTextEdit;
    btnSalesInvoice: TcxButton;
    dbeIdSalesInvoice: TcxDBTextEdit;
    dbchWarehouseStatus: TcxDBCheckBox;
    qryGetRRStatus: TADOQuery;
    procedure actApproveExecute(Sender: TObject);
    procedure actRevisionExecute(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure cgvSalesReturnHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure dtsIMSalesReturnHdBeforeEdit(DataSet: TDataSet);
    procedure dtsIMSalesReturnHdBeforePost(DataSet: TDataSet);
    procedure dtsIMSalesReturnHdNewRecord(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dtsIMSalesReturnDtAfterPost(DataSet: TDataSet);
    procedure dtsIMSalesReturnDtBeforeEdit(DataSet: TDataSet);
    procedure dtsIMSalesReturnDtBeforeInsert(DataSet: TDataSet);
    procedure dtsIMSalesReturnDtBeforePost(DataSet: TDataSet);
    procedure dtsIMSalesReturnDtNewRecord(DataSet: TDataSet);
    procedure dsIMSalesReturnDtDataChange(Sender: TObject; Field: TField);
    procedure dtsIMSalesReturnDtBeforeDelete(DataSet: TDataSet);
    procedure cgvSalesReturnDtvcIdSuppliesPropertiesInitPopup(Sender: TObject);
    procedure dbeIdSalesReturnPropertiesEditValueChanged(Sender: TObject);
    procedure btnSalesInvoiceClick(Sender: TObject);
    procedure cgvSalesReturnDtDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FDoSaveCalculate: boolean;
    FOldSI: string;

    procedure Calculate;
    procedure CalculateTotal;
    function  ValidateSalesReturnHd(const AIdSR: string): boolean;
    function  GetReceivingRecordStatus(const AIdReceivingRecord: string): integer;
    procedure DeleteCurrentDetail;

    procedure ShowSuppliesWithQtyReady;
    procedure ShowSupplies;
  public
    { Public declarations }
  end;

var
  fmSalesReturn: TfmSalesReturn;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, frmNotes,
  untConstanta, frmPreviewSalesInvoice;

procedure TfmSalesReturn.actApproveExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if (dtsIMSalesReturnHd.IsEmpty) or
    (dtsIMSalesReturnDt.IsEmpty) then
  begin
    MessageDlg(Format(MSG_CANNOT_APPROVE_EMPTY, [SR]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if (FStatusApprove = 0) or (FStatusApprove = 1) then
  begin
    if not dmShare.CompareSRWithSIValid(VarToStr(dbeIdSalesReturn.EditValue)) then
    begin
      MessageDlg(Format(MSG_SR_SI_INVALID, [VarToStr(dbeIdSalesReturn.EditValue),
        VarToStr(dbeIdSalesInvoice.EditValue)]), mtInformation, [mbOk], 0);
      Exit;
    end;
  end;
  if FStatusApprove = 2 then
  begin
    if (GetReceivingRecordStatus(dbeIdRefRR.EditValue) <> 2) then
    begin
      MessageDlg(MSG_APPROVE_SALES_RETURN, mtInformation, [mbOk], 0);
      Exit;
    end;
  end;
  if MessageDlg(Format(ASK_APPROVE, [SR, VarToStr(dbeIdSalesReturn.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateSalesReturnHd(VarToStr(dbeIdSalesReturn.EditValue)) then
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
  if ((FStatusApprove + 1) = 2) or ((FStatusApprove + 1) = 3) then
  begin
    spSalesReturnValidation.Close;
    spSalesReturnValidation.Parameters[1].Value := dbeIdSalesReturn.EditValue;
    spSalesReturnValidation.Parameters[2].Value := FStatusApprove + 1;
    spSalesReturnValidation.ExecProc;
    if (spSalesReturnValidation.Parameters[0].Value <> 0) or
      (VarIsEmpty(spSalesReturnValidation.Parameters[0].Value)) then
    begin
      MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spSalesReturnValidation']), mtInformation, [mbOk], 0);
      //dmGlobal.AddApplicationLog('spSalesReturnValidation cannot be execute !', llHigh);
      dsDefault.DataSet.Edit;
      dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
      dsDefault.DataSet.Post;
    end;
  end;
end;

procedure TfmSalesReturn.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dtsIMSalesReturnHd.IsEmpty then
    Exit;
  if not ValidateSalesReturnHd(VarToStr(dbeIdSalesReturn.EditValue)) then
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

procedure TfmSalesReturn.actRevisionExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if dtsIMSalesReturnHd.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REVISION, [SR, VarToStr(dbeIdSalesReturn.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateSalesReturnHd(VarToStr(dbeIdSalesReturn.EditValue)) then
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

procedure TfmSalesReturn.actVoidExecute(Sender: TObject);
var
  S: TStringList;
begin
  //Ivan do not :inherited;

  // Validate
  if dtsIMSalesReturnHd.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REJECT, [SR, VarToStr(dbeIdSalesReturn.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateSalesReturnHd(VarToStr(dbeIdSalesReturn.EditValue)) then
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

procedure TfmSalesReturn.btnSalesInvoiceClick(Sender: TObject);
var
  IdSalesInvoice: string;
  Disc, Tax: real;
begin
  inherited;

  IdSalesInvoice := VarToStr(dbeIdSalesInvoice.EditValue);
  if TfmPreviewSalesInvoice.ExecuteForm(IdSalesInvoice, Disc, Tax) = mrOk then
  begin
    if dtsIMSalesReturnHd.State in [dsBrowse] then
    begin
      if dtsIMSalesReturnHd.IsEmpty then
        dtsIMSalesReturnHd.Insert
      else
        dtsIMSalesReturnHd.Edit;
    end;

    dtsIMSalesReturnHd.FieldByName('vcIdSalesInvoice').AsString := IdSalesInvoice;
    dtsIMSalesReturnHd.FieldByName('dcDisc').AsFloat := Disc;
    dtsIMSalesReturnHd.FieldByName('dcTax').AsFloat := Tax;
  end;
end;

procedure TfmSalesReturn.Calculate;
begin
  with dtsIMSalesReturnDt do
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

procedure TfmSalesReturn.CalculateTotal;
begin
  qryGetSRTotalAmount.Close;
  qryGetSRTotalAmount.Parameters[0].Value := dtsIMSalesReturnHd.FieldByName('vcIdSalesReturn').AsString;
  qryGetSRTotalAmount.Open;

  dtsIMSalesReturnHd.FieldByName('dcAmount').AsFloat :=
    qryGetSRTotalAmount.FieldByName('Amount').AsFloat;
  dtsIMSalesReturnHd.FieldByName('dcDiscAmount').AsFloat :=
    (dtsIMSalesReturnHd.FieldByName('dcAmount').AsFloat *
    dtsIMSalesReturnHd.FieldByName('dcDisc').AsFloat) / 100;
  dtsIMSalesReturnHd.FieldByName('dcTaxAmount').AsFloat :=
    ((dtsIMSalesReturnHd.FieldByName('dcAmount').AsFloat -
    dtsIMSalesReturnHd.FieldByName('dcDiscAmount').AsFloat) *
    dtsIMSalesReturnHd.FieldByName('dcTax').AsFloat) / 100;
  dtsIMSalesReturnHd.FieldByName('dcTotalAmount').AsFloat :=
    dtsIMSalesReturnHd.FieldByName('dcAmount').AsFloat -
    dtsIMSalesReturnHd.FieldByName('dcDiscAmount').AsFloat +
    dtsIMSalesReturnHd.FieldByName('dcTaxAmount').AsFloat;
end;

procedure TfmSalesReturn.cgvSalesReturnDtDataControllerSummaryAfterSummary(
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

procedure TfmSalesReturn.cgvSalesReturnDtvcIdSuppliesPropertiesInitPopup(
  Sender: TObject);
begin
  inherited;

  ShowSuppliesWithQtyReady;
end;

procedure TfmSalesReturn.cgvSalesReturnHdStylesGetContentStyle(
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

procedure TfmSalesReturn.dbeIdSalesReturnPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  shpRRApprove.Brush.Color := dmGlobal.stRedLight.Color;
  if GetReceivingRecordStatus(varToStr(dbeIdRefRR.EditValue)) >= 2 then
    shpRRApprove.Brush.Color := dmGlobal.stGreenLight.Color;

  if dtsIMSalesReturnHd.State in [dsBrowse] then
  begin
    ShowSupplies;
  end;
end;

procedure TfmSalesReturn.DeleteCurrentDetail;
var
  TempQuery: TADOQuery;
begin
  TempQuery := TADOQuery.Create(nil);
  try
    TempQuery.Connection := dmGlobal.conGlobal;

    TempQuery.Close;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add('delete from tbIMSalesReturnDt            ');
    TempQuery.SQL.Add('where vcIdSalesReturn = :vcIdSalesReturn');
    TempQuery.Parameters[0].Value := VarToStr(dbeIdSalesReturn.EditValue);
    TempQuery.ExecSQL;

    LockRefresh(dtsIMSalesReturnDt);
  finally
    FreeAndNil(TempQuery);
  end;
end;

procedure TfmSalesReturn.dsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if dtsIMSalesReturnHd.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;

    if CompareText(Field.FieldName, 'vcIdSalesInvoice') = 0 then
    begin
      qryGetSICustomer.Close;
      qryGetSICustomer.Parameters[0].Value := dtsIMSalesReturnHd.FieldByName('vcIdSalesInvoice').AsString;
      OpenIfClose(qryGetSICustomer);
      if not qryGetSICustomer.IsEmpty then
        dtsIMSalesReturnHd.FieldByName('vcIdCustomer').AsString := qryGetSICustomer.FieldByName('vcIdCustomer').AsString
      else
        dtsIMSalesReturnHd.FieldByName('vcIdCustomer').AsVariant := null;
    end;

    if (CompareText(Field.FieldName, 'dcDisc') = 0) or
      (CompareText(Field.FieldName, 'dcTax') = 0) then
      CalculateTotal;
  end;
end;

procedure TfmSalesReturn.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if TDataSource(Sender).DataSet.State in [dsInsert] then
    SetReadOnly(dbeSalesReturnDate, False);
  if TDataSource(Sender).DataSet.State in [dsBrowse] then
    SetReadOnly(dbeSalesReturnDate, True, COLOR_INACTIVE);
end;

procedure TfmSalesReturn.dsIMSalesReturnDtDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if dtsIMSalesReturnDt.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;

    if CompareText(Field.FieldName, 'vcIdSupplies') = 0 then
    begin
      dtsIMSalesReturnDt.FieldByName('dcPrice').Value := cgvPrevSuppliesdcPrice.EditValue;
      dtsIMSalesReturnDt.FieldByName('dcDiscItem').Value := cgvPrevSuppliesdcDiscItem.EditValue;
    end;
  end;
end;

procedure TfmSalesReturn.dtsIMSalesReturnDtAfterPost(DataSet: TDataSet);
begin
  inherited;

  dtsIMSalesReturnHd.DisableControls;
  dtsIMSalesReturnHd.Edit;
  CalculateTotal;
  dtsIMSalesReturnHd.Post;
  dtsIMSalesReturnHd.EnableControls;
end;

procedure TfmSalesReturn.dtsIMSalesReturnDtBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;

  if not ValidateSalesReturnHd(dtsIMSalesReturnHd.FieldByName('vcIdSalesReturn').AsString) then
    Abort;
end;

procedure TfmSalesReturn.dtsIMSalesReturnDtBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if not ValidateSalesReturnHd(dtsIMSalesReturnHd.FieldByName('vcIdSalesReturn').AsString) then
    Abort;
end;

procedure TfmSalesReturn.dtsIMSalesReturnDtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  if not ValidateSalesReturnHd(dtsIMSalesReturnHd.FieldByName('vcIdSalesReturn').AsString) then
    Abort;
end;

procedure TfmSalesReturn.dtsIMSalesReturnDtBeforePost(DataSet: TDataSet);
begin
  inherited;

  Calculate;
end;

procedure TfmSalesReturn.dtsIMSalesReturnDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('inNo').AsInteger := Dataset.RecordCount + 1;
  Dataset.FieldByName('inQty').AsInteger := 0;
  Dataset.FieldByName('dcPrice').AsInteger := 0;
  Dataset.FieldByName('dcDiscItem').AsInteger := 0;
  Dataset.FieldByName('dcDiscItemPrice').AsInteger := 0;
end;

procedure TfmSalesReturn.dtsIMSalesReturnHdBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if not ValidateSalesReturnHd(dtsIMSalesReturnHd.FieldByName('vcIdSalesReturn').AsString) then
    Abort;

  FOldSI := dtsIMSalesReturnHd.FieldByName('vcIdSalesInvoice').AsString;
end;

procedure TfmSalesReturn.dtsIMSalesReturnHdBeforePost(DataSet: TDataSet);
var
  NewSI: string;
begin
  inherited;

  // Jika SalesInvoice-nya berubah, maka hapus detail yang telah dibuat
  NewSI := dtsIMSalesReturnHd.FieldByName('vcIdSalesInvoice').AsString;
  if not dtsIMSalesReturnDt.IsEmpty then
  begin
    if FOldSI <> NewSI then
      if MessageDlg(Format(ASK_SAVE_SR2, [FOldSI, NewSI]), mtWarning, [mbYes, mbNo], 0) = mrNo then
        Abort
      else
      begin
        DeleteCurrentDetail;
        CalculateTotal;
      end;
  end;

  if DataSet.FieldByName('vcIdSalesReturn').IsNull then
    DataSet.FieldByName('vcIdSalesReturn').AsString :=
      dmShare.GetCurrentTransNo(utSalesReturn,
      DataSet.FieldByName('dtSalesReturnDate').AsDateTime);
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmSalesReturn.dtsIMSalesReturnHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('dtSalesReturnDate').AsDateTime := DateOf(dmGlobal.SettingGlobal.ServerDateTime);
  Dataset.FieldByName('dcDisc').AsFloat := 0;
  Dataset.FieldByName('dcDiscAmount').AsFloat := 0;
  Dataset.FieldByName('dcTax').AsFloat := 0;
  Dataset.FieldByName('dcTaxAmount').AsFloat := 0;
  Dataset.FieldByName('dcTotalAmount').AsFloat := 0;
  Dataset.FieldByName('vcEmployeeName').Value := dmGlobal.SettingGlobal.LoginEmployeeName;
  Dataset.FieldByName('chFlagWarehouse').AsString := '0';
  Dataset.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
  Dataset.FieldByName('CounterPrint').AsInteger := 0;

  FOldSI := '';
end;

function TfmSalesReturn.GetReceivingRecordStatus(
  const AIdReceivingRecord: string): integer;
begin
  Result := 0;
  qryGetRRStatus.Close;
  qryGetRRStatus.Parameters[0].Value := AIdReceivingRecord;
  qryGetRRStatus.Open;
  if not qryGetRRStatus.IsEmpty then
    Result := qryGetRRStatus.FieldByName('chStatusApprove').AsInteger;
end;

procedure TfmSalesReturn.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_SR);

  // Display Format
  TcxCalcEditProperties(cgvPrevSuppliesdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvPrevSuppliesdcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvPrevSuppliesinEndQtyReady.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSalesReturnDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSalesReturnDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesReturnDtdcDisc.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvSalesReturnDtdcDiscAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesReturnDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeDisc.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeDiscAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTax.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeTaxAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvSalesReturnDt.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;

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
    2:
      begin
        Self.Caption := Self.Caption + ' - Approval 2';
        dbchWarehouseStatus.Properties.ReadOnly := True;
      end;
  end;

  SetReadOnly(cgvSalesReturnHd);
  SetReadOnly(dbeIdSalesReturn, True, COLOR_INACTIVE);
  SetReadOnly(dblcIdCustomer, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdRefRR, True, COLOR_INACTIVE);
  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbeDisc, True, COLOR_INACTIVE);
  SetReadOnly(dbeTax, True, COLOR_INACTIVE);
  SetReadOnly(dbeDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeSalesReturnDate, True, COLOR_INACTIVE);

  // Open all query
  OpenIfClose(dmInventory.qryWarehouse);
  OpenIfClose(dmInventory.qryCustomer, True);
  OpenIfClose(dmInventory.qrySupplies, True);

  FDoSaveCalculate := False;
  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMSalesReturnDt);
end;

procedure TfmSalesReturn.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  dtsIMSalesReturnHd.Close;
  dtsIMSalesReturnHd.Parameters[0].Value := FStatusApprove;
  dtsIMSalesReturnHd.Parameters[1].Value := FStatusApprove + 1;
  dtsIMSalesReturnHd.Parameters[2].Value := STATUS_REJECT;
  dtsIMSalesReturnHd.Parameters[3].Value := STATUS_DONE;
  dtsIMSalesReturnHd.Parameters[4].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMSalesReturnHd.Parameters[5].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsIMSalesReturnHd, True);
  cgvSalesReturnHd.ViewData.Expand(False);
end;

procedure TfmSalesReturn.RefreshAll;
begin
  inherited;

  LockRefresh(dtsIMSalesReturnHd, True);
  LockRefresh(dtsIMSalesReturnDt);
  cgvSalesReturnHd.ViewData.Expand(False);
end;

procedure TfmSalesReturn.ShowSupplies;
begin
  // Semua barang, tanpa QtyReady
  OpenIfClose(dmInventory.qrySupplies, True);
  cgvPrevSupplies.DataController.DataSource := dmInventory.dsSupplies;
end;

procedure TfmSalesReturn.ShowSuppliesWithQtyReady;
begin
  if (qryPrevSuppliesSI.Parameters[0].Value <> VarToStr(dblcIdWarehouse.EditValue)) or
    (qryPrevSuppliesSI.Parameters[1].Value <> VarToStr(dbeIdSalesInvoice.EditValue)) then
  begin
    qryPrevSuppliesSI.Close;
    qryPrevSuppliesSI.Parameters[0].Value := VarToStr(dblcIdWarehouse.EditValue);
    qryPrevSuppliesSI.Parameters[1].Value := VarToStr(dbeIdSalesInvoice.EditValue);
    OpenIfClose(qryPrevSuppliesSI);
  end;
  cgvPrevSupplies.DataController.DataSource := dsPrevSuppliesSI;
end;

function TfmSalesReturn.ValidateSalesReturnHd(
  const AIdSR: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(Self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select chStatusApprove from tbIMSalesReturnHd');
    qryTemp.SQL.Add('where vcIdSalesReturn = :vcIdSalesReturn');
    qryTemp.Parameters[0].Value := AIdSR;
    qryTemp.Open;
    if qryTemp.IsEmpty then
      Exit;
    if qryTemp.FieldByName('chStatusApprove').AsInteger <> FStatusApprove then
    begin
      MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [PR, AIdSR]), mtInformation,
        [mbOk], 0);
      Exit;
    end;
  finally
    FreeAndNil(qryTemp);
  end;
  Result := True;
end;

end.
