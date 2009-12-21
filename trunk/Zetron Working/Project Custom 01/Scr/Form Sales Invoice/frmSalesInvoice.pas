unit frmSalesInvoice;

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
  cxSpinEdit, cxCalc, cxCurrencyEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, cxCheckBox, cxMemo, cxPC, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Grids, DBGrids;

type
  TfmSalesInvoice = class(TFormUniTransactionApprovalEx)
    dtsIMSalesInvoiceHd: TADODataSet;
    dtsIMSalesInvoiceDt: TADODataSet;
    dsIMSalesInvoiceDt: TDataSource;
    spSalesInvoiceValidation: TADOStoredProc;
    qryGetSITotalAmount: TADOQuery;
    cgSalesInvoiceHd: TcxGrid;
    cgvSalesInvoiceHd: TcxGridDBTableView;
    cgvSalesInvoiceHdvcIdSalesInvoice: TcxGridDBColumn;
    cgvSalesInvoiceHddtDateSalesInvoice: TcxGridDBColumn;
    cgvSalesInvoiceHdvcIdCustomer: TcxGridDBColumn;
    cgvSalesInvoiceHdvcIdCustomer2: TcxGridDBColumn;
    cgvSalesInvoiceHdchFlagPrint: TcxGridDBColumn;
    cgvSalesInvoiceHdchStatusApprove: TcxGridDBColumn;
    cgSalesInvoiceHdLevel1: TcxGridLevel;
    pnlDetailTop: TPanel;
    lblSalesInvoiceDate: TLabel;
    lblIdSalesInvoice: TLabel;
    lblIdCustomer: TLabel;
    lblIdSalesOrder: TLabel;
    lblType: TLabel;
    lblInvoiceDueDay: TLabel;
    lblWarehouse: TLabel;
    lblDeliverySchedule: TLabel;
    lblSalesName: TLabel;
    dblcIdCustomer: TcxDBExtLookupComboBox;
    dbeSalesInvoiceDate: TcxDBDateEdit;
    dbeIdSalesInvoice: TcxDBTextEdit;
    dbicType: TcxDBImageComboBox;
    dbeInvoiceDueDay: TcxDBSpinEdit;
    dblcIdWarehouse: TcxDBExtLookupComboBox;
    pcNotes: TcxPageControl;
    tsNotes: TcxTabSheet;
    dbmNotes: TcxDBMemo;
    tsMemo: TcxTabSheet;
    dbmMemo: TcxDBMemo;
    tsDeliveryAddress: TcxTabSheet;
    dbmAddress: TcxDBMemo;
    tsNotesDeliveryOrder: TcxTabSheet;
    dbmNotesDeliveryOrder: TcxDBMemo;
    dbeDeliverySchedule: TcxDBDateEdit;
    dbeIdSalesOrder: TcxDBTextEdit;
    btnIdSalesOrder: TcxButton;
    dblcSalesName: TcxDBExtLookupComboBox;
    dbchPendingDO: TcxDBCheckBox;
    dbeRef: TcxDBTextEdit;
    dbchFlagManual: TcxDBCheckBox;
    pnlDetailBottom: TPanel;
    lblTax: TLabel;
    lblTotal: TLabel;
    lblDisc: TLabel;
    dbeTax: TcxDBSpinEdit;
    dbeDisc: TcxDBSpinEdit;
    dbeDiscAmount: TcxDBCurrencyEdit;
    dbeTaxAmount: TcxDBCurrencyEdit;
    dbeTotalAmount: TcxDBCurrencyEdit;
    cgSalesInvoiceDt: TcxGrid;
    cgvSalesInvoiceDt: TcxGridDBBandedTableView;
    cgvSalesInvoiceDtvcIdSalesInvoice: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtinNo: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtvcIdSupplies: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtvcIdSupplies2: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtvcIdSupplies3: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtinQty: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtdcPrice: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtdcPricePrint: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtdcDiscItem: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtdcDiscItemPrice: TcxGridDBBandedColumn;
    cgvSalesInvoiceDtdcAmount: TcxGridDBBandedColumn;
    cgSalesInvoiceDtLevel1: TcxGridLevel;
    qryGetSOInfo: TADOQuery;
    gvrOtherTransaction: TcxGridViewRepository;
    cgvPrevSupplies: TcxGridDBTableView;
    cgvPrevSuppliesvcIdSupplies: TcxGridDBColumn;
    cgvPrevSuppliesvcSuppliesName: TcxGridDBColumn;
    cgvPrevSuppliesvcType: TcxGridDBColumn;
    cgvPrevSuppliesinEndQtyReady: TcxGridDBColumn;
    qryPrevSupplies: TADOQuery;
    dsPrevSupplies: TDataSource;
    qryPrevWarehouseSale: TADOQuery;
    dsPrevWarehouseSale: TDataSource;
    cgvPrevWarehouseSale: TcxGridDBTableView;
    cgvPrevWarehouseSalevcIdWarehouse: TcxGridDBColumn;
    cgvPrevWarehouseSalevcWarehouseName: TcxGridDBColumn;
    cgvPrevWarehouseSalevcContactPerson: TcxGridDBColumn;
    cgvPrevWarehouseSalevcIdCity: TcxGridDBColumn;
    qryPrevSuppliesSO: TADOQuery;
    dsPrevSuppliesSO: TDataSource;
    qryGetSOOutstandingQty: TADOQuery;
    procedure actPrintExecute(Sender: TObject);
    procedure dsIMSalesInvoiceDtDataChange(Sender: TObject; Field: TField);
    procedure dtsIMSalesInvoiceDtBeforePost(DataSet: TDataSet);
    procedure dtsIMSalesInvoiceDtBeforeInsert(DataSet: TDataSet);
    procedure dtsIMSalesInvoiceDtBeforeEdit(DataSet: TDataSet);
    procedure dtsIMSalesInvoiceDtBeforeDelete(DataSet: TDataSet);
    procedure dtsIMSalesInvoiceDtAfterPost(DataSet: TDataSet);
    procedure dtsIMSalesInvoiceDtNewRecord(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dtsIMSalesInvoiceHdBeforePost(DataSet: TDataSet);
    procedure dtsIMSalesInvoiceHdBeforeEdit(DataSet: TDataSet);
    procedure dtsIMSalesInvoiceHdNewRecord(DataSet: TDataSet);
    procedure dblcIdCustomerPropertiesEditValueChanged(Sender: TObject);
    procedure dbicTypePropertiesEditValueChanged(Sender: TObject);
    procedure cgvSalesInvoiceHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure btnIdSalesOrderClick(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
    procedure actRevisionExecute(Sender: TObject);
    procedure actApproveExecute(Sender: TObject);
    procedure dblcIdWarehousePropertiesEditValueChanged(Sender: TObject);
    procedure cgvIdSuppliesPropertiesInitPopup(Sender: TObject);
    procedure cgvSalesInvoiceDtDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FDoSaveCalculate: boolean;
    FOldSO: string;
    FOldWarehouse: string;
    FOldQty: real;

    procedure Calculate;
    procedure CalculateTotal;
    procedure DeleteCurrentDetail;
    function  ValidateSalesInvoiceHd(const AIdPI: string): boolean;

    function GetSOOutstandingQty(const AIdSalesOrder, AIdSupplies: string): Double;

    procedure ShowSupplies;
    procedure ShowSuppliesWithQtyReady;
  public
    { Public declarations }
  end;

var
  fmSalesInvoice: TfmSalesInvoice;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untCustom01, dtmGlobal, dtmInventory, dtmShare,
  frmNotes, frmPreviewSO; //, frmSalesPaymentPay;

{ TfmSalesInvoice }

procedure TfmSalesInvoice.actApproveExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if (dtsIMSalesInvoiceHd.IsEmpty) or
    (dtsIMSalesInvoiceDt.IsEmpty) then
  begin
    MessageDlg(Format(MSG_CANNOT_APPROVE_EMPTY, [PI]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if MessageDlg(Format(ASK_APPROVE, ['sales invoice', VarToStr(dbeIdSalesInvoice.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if dtsIMSalesInvoiceHd.FieldByName('chFlagSO').AsString = '1' then
  begin
    if not dmShare.CompareSIWithSOValid(VarToStr(dbeIdSalesInvoice.EditValue),
      VarToStr(dbeIdSalesOrder.EditValue)) then
    begin
      MessageDlg(Format(MSG_SI_SO_INVALID, [VarToStr(dbeIdSalesInvoice.EditValue),
        VarToStr(dbeIdSalesOrder.EditValue)]), mtInformation, [mbOk], 0);
      Exit;
    end;
  end;
  if not dmShare.CompareSIWithWHValid(VarToStr(dbeIdSalesInvoice.EditValue),
    VarToStr(dblcIdWarehouse.EditValue)) then
  begin
    MessageDlg(Format(MSG_SI_WH_INVALID, [VarToStr(dbeIdSalesInvoice.EditValue),
      VarToStr(dblcIdWarehouse.EditText)]), mtInformation, [mbOk], 0);
    Exit;
  end;
  if not ValidateSalesInvoiceHd(VarToStr(dbeIdSalesInvoice.EditValue)) then
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
    if dtsIMSalesInvoiceHd.FieldByName('chFlagManual').AsInteger = 0 then
      actPrint.Execute;
  end;

  if (FStatusApprove + 1) = 3 then
  begin
    // Update price, discount, last supplier
    spSalesInvoiceValidation.Close;
    spSalesInvoiceValidation.Parameters[1].Value := dbeIdSalesInvoice.EditValue;
    spSalesInvoiceValidation.ExecProc;
    if (spSalesInvoiceValidation.Parameters[0].Value <> 0) or
      (VarIsEmpty(spSalesInvoiceValidation.Parameters[0].Value)) then
    begin
      MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spSalesInvoiceValidation']), mtInformation, [mbOk], 0);
      //dmGlobal.AddApplicationLog('spSalesInvoiceValidation cannot be execute !', llHigh);
      dsDefault.DataSet.Edit;
      dsDefault.DataSet.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
      dsDefault.DataSet.Post;
    end
    else
    begin
//      if dmGlobal.OptionCallPaymentAfterSI then
//      begin
//        if MessageDlg('Pay Now ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//        begin
//          //Sales Payment form
//          TfmSalesPaymentPay.ExecuteForm(dbeIdSalesInvoice.EditValue);
//        end;
//      end;
    end;
  end;
end;

procedure TfmSalesInvoice.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dtsIMSalesInvoiceHd.IsEmpty then
    Exit;
  if not ValidateSalesInvoiceHd(VarToStr(dbeIdSalesInvoice.EditValue)) then
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

procedure TfmSalesInvoice.actPrintExecute(Sender: TObject);
begin
  // Validate
  if dtsIMSalesInvoiceHd.IsEmpty then
    Exit;
  if dtsIMSalesInvoiceHd.FieldByName('chFlagManual').AsInteger = 1 then
  begin
    MessageDlg(MSG_SI_MANUAL, mtInformation, [mbOk], 0);
    Exit;
  end;
  if not PERMIT_REPRINT_SALES_INVOICE then
  begin
    if dmShare.GetPrintCounter(utSalesInvoice, dbeIdSalesInvoice.EditValue) <> 0 then
    begin
      MessageDlg(MSG_CANNOT_REPRINT, mtInformation, [mbOk], 0);
      Exit;
    end;
  end;

  inherited;
end;

procedure TfmSalesInvoice.actRevisionExecute(Sender: TObject);
begin
  inherited;

  // Validate
  if dtsIMSalesInvoiceHd.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REVISION, [SI, VarToStr(dbeIdSalesInvoice.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateSalesInvoiceHd(VarToStr(dbeIdSalesInvoice.EditValue)) then
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

procedure TfmSalesInvoice.actVoidExecute(Sender: TObject);
var
  S: TStringList;
begin
  //Ivan do not :inherited;

  // Validate
  if dtsIMSalesInvoiceHd.IsEmpty then
    Exit;
  if MessageDlg(Format(ASK_REJECT, [SI, VarToStr(dbeIdSalesInvoice.EditValue)]),
    mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  if not ValidateSalesInvoiceHd(VarToStr(dbeIdSalesInvoice.EditValue)) then
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

procedure TfmSalesInvoice.btnIdSalesOrderClick(Sender: TObject);
var
  IdSalesOrder: string;
begin
  inherited;

  if dtsIMSalesInvoiceHd.FieldByName('vcIdCustomer').AsString = '' then
    Exit;

  if dtsIMSalesInvoiceHd.IsEmpty then
    dtsIMSalesInvoiceHd.Insert;

  TfmPreviewSO.ExecuteForm(
    dtsIMSalesInvoiceHd.FieldByName('vcIdCustomer').AsString,
    dblcIdCustomer.Text,
    dtsIMSalesInvoiceHd.FieldByName('vcIdSalesInvoice').AsString,
    dtsIMSalesInvoiceHd.FieldByName('vcIdSalesOrder').AsString, IdSalesOrder);

  if dtsIMSalesInvoiceHd.State in [dsBrowse] then
    dtsIMSalesInvoiceHd.Edit;
  dtsIMSalesInvoiceHd.FieldByName('vcIdSalesOrder').AsString := IdSalesOrder;
end;

procedure TfmSalesInvoice.Calculate;
begin
  with dtsIMSalesInvoiceDt do
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

procedure TfmSalesInvoice.CalculateTotal;
begin
  qryGetSITotalAmount.Close;
  qryGetSITotalAmount.Parameters[0].Value := dtsIMSalesInvoiceHd.FieldByName('vcIdSalesInvoice').AsString;
  qryGetSITotalAmount.Open;

  dtsIMSalesInvoiceHd.FieldByName('dcAmount').AsFloat :=
    qryGetSITotalAmount.FieldByName('Amount').AsFloat;
    //IsNull(cgvSalesInvoiceDt.DataController.Summary.FooterSummaryValues[1], 0);
  dtsIMSalesInvoiceHd.FieldByName('dcDiscAmount').AsFloat :=
    (dtsIMSalesInvoiceHd.FieldByName('dcAmount').AsFloat *
    dtsIMSalesInvoiceHd.FieldByName('dcDisc').AsFloat) / 100;
  dtsIMSalesInvoiceHd.FieldByName('dcTaxAmount').AsFloat :=
    ((dtsIMSalesInvoiceHd.FieldByName('dcAmount').AsFloat -
    dtsIMSalesInvoiceHd.FieldByName('dcDiscAmount').AsFloat) *
    dtsIMSalesInvoiceHd.FieldByName('dcTax').AsFloat) / 100;
  dtsIMSalesInvoiceHd.FieldByName('dcTotalAmount').AsFloat :=
    dtsIMSalesInvoiceHd.FieldByName('dcAmount').AsFloat -
    dtsIMSalesInvoiceHd.FieldByName('dcDiscAmount').AsFloat +
    dtsIMSalesInvoiceHd.FieldByName('dcTaxAmount').AsFloat;
end;

procedure TfmSalesInvoice.cgvIdSuppliesPropertiesInitPopup(Sender: TObject);
begin
  ShowSuppliesWithQtyReady;
end;

procedure TfmSalesInvoice.cgvSalesInvoiceDtDataControllerSummaryAfterSummary(
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

procedure TfmSalesInvoice.cgvSalesInvoiceHdStylesGetContentStyle(
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

procedure TfmSalesInvoice.dbicTypePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

//  if (dmGlobal.OptionOnlySIEntryCanModifyData) and (FStatusApprove <> 0) then
//    Exit;

  case dbicType.ItemIndex of
  0 :
    begin // Without SO
      btnIdSalesOrder.Enabled := False;
      SetReadOnly(dblcSalesName, False);
    end;
  1 :
    begin // With SO
      btnIdSalesOrder.Enabled := True;
      SetReadOnly(dblcSalesName, True, COLOR_INACTIVE);
    end;
  end;
end;

procedure TfmSalesInvoice.dblcIdCustomerPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if dtsIMSalesInvoiceHd.State in [dsEdit, dsInsert] then
    dtsIMSalesInvoiceHd.FieldByName('vcIdSalesOrder').AsVariant := null;
end;

procedure TfmSalesInvoice.dblcIdWarehousePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if dtsIMSalesInvoiceHd.State in [dsBrowse] then
  begin
    ShowSupplies;
  end;
end;

procedure TfmSalesInvoice.DeleteCurrentDetail;
var
  TempQuery: TADOQuery;
begin
  TempQuery := TADOQuery.Create(nil);
  try
    TempQuery.Connection := dmGlobal.conGlobal;

    TempQuery.Close;
    TempQuery.SQL.Clear;
    TempQuery.SQL.Add('delete from tbIMSalesInvoiceDt            ');
    TempQuery.SQL.Add('where vcIdSalesInvoice = :vcIdSalesInvoice');
    TempQuery.Parameters[0].Value := VarToStr(dbeIdSalesInvoice.EditValue);
    TempQuery.ExecSQL;

    LockRefresh(dtsIMSalesInvoiceDt);
  finally
    FreeAndNil(TempQuery);
  end;
end;

procedure TfmSalesInvoice.dsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if dtsIMSalesInvoiceHd.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;

    if (CompareText(Field.FieldName, 'dcDisc') = 0) or
      (CompareText(Field.FieldName, 'dcTax') = 0) then
      CalculateTotal;

    if CompareText(Field.FieldName, 'vcIdCustomer') = 0 then
    begin
      dtsIMSalesInvoiceHd.FieldByName('vcDeliveryOrderAddress').AsString :=
        dmInventory.GetCustomerAddress(dtsIMSalesInvoiceHd.FieldByName('vcIdCustomer').AsString);
    end;
  end;
end;

procedure TfmSalesInvoice.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  // Setting button enabled
  if TDataSource(Sender).DataSet.State in [dsInsert] then
    SetReadOnly(dbeSalesInvoiceDate, False);
  if TDataSource(Sender).DataSet.State in [dsBrowse] then
    SetReadOnly(dbeSalesInvoiceDate, True, COLOR_INACTIVE);
end;

procedure TfmSalesInvoice.dsIMSalesInvoiceDtDataChange(Sender: TObject;
  Field: TField);
var
  IdSupplies: string;
  TempDisc, TempPrice: real;
begin
  inherited;

  if dtsIMSalesInvoiceDt.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;

    if CompareText(Field.FieldName, 'vcIdSupplies') = 0 then
    begin
      IdSupplies := Field.Value;
      if dbicType.ItemIndex = 0 then
        // SI price not from SO
        dmShare.GetSalesPriceAndDisc(dblcIdCustomer.EditValue, IdSupplies, TempPrice, TempDisc)
      else
        // SI price from SO
        dmShare.GetSalesPriceAndDiscFromSO(dbeIdSalesOrder.EditValue, IdSupplies, TempPrice, TempDisc);

      dtsIMSalesInvoiceDt.FieldByName('dcPrice').AsFloat := TempPrice;
      dtsIMSalesInvoiceDt.FieldByName('dcDiscItem').AsFloat := TempDisc;
    end;

    if CompareText(Field.FieldName, 'inQty') = 0 then
      dtsIMSalesInvoiceDt.FieldByName('inCurrentQty').AsInteger :=
        dtsIMSalesInvoiceDt.FieldByName('inQty').AsInteger;

    if CompareText(Field.FieldName, 'dcPrice') = 0 then
      dtsIMSalesInvoiceDt.FieldByName('dcPricePrint').AsFloat :=
        dtsIMSalesInvoiceDt.FieldByName('dcPrice').AsFloat;
  end;
end;

procedure TfmSalesInvoice.dtsIMSalesInvoiceDtAfterPost(DataSet: TDataSet);
begin
  inherited;

  dtsIMSalesInvoiceHd.DisableControls;
  dtsIMSalesInvoiceHd.Edit;
  CalculateTotal;
  dtsIMSalesInvoiceHd.Post;
  dtsIMSalesInvoiceHd.EnableControls;
end;

procedure TfmSalesInvoice.dtsIMSalesInvoiceDtBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  if not ValidateSalesInvoiceHd(dtsIMSalesInvoiceHd.FieldByName('vcIdSalesInvoice').AsString) then
    Abort;
end;

procedure TfmSalesInvoice.dtsIMSalesInvoiceDtBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if not ValidateSalesInvoiceHd(dtsIMSalesInvoiceHd.FieldByName('vcIdSalesInvoice').AsString) then
    Abort;

  FOldQty := dtsIMSalesInvoiceDt.FieldByName('inQty').AsFloat;
end;

procedure TfmSalesInvoice.dtsIMSalesInvoiceDtBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if not ValidateSalesInvoiceHd(dbeIdSalesInvoice.EditValue) then
    Abort;
end;

procedure TfmSalesInvoice.dtsIMSalesInvoiceDtBeforePost(DataSet: TDataSet);
var
  OutStandingQty: variant;
  ReadyStockQty: variant;
begin
  inherited;

  // Cek outstanding SO
  if dtsIMSalesInvoiceHd.FieldByName('chFlagSO').AsString = '1' then
  begin
    OutStandingQty := GetSOOutstandingQty(dbeIdSalesOrder.EditValue, dtsIMSalesInvoiceDt.FieldByName('vcIdSupplies').AsString);
    OutStandingQty := OutStandingQty + FOldQty;
    if dtsIMSalesInvoiceDt.FieldByName('inQty').AsFloat > OutStandingQty then
    begin
      MessageDlg(MSG_QTY_GREATER_INVALID, mtInformation, [mbOk], 0);
      Abort;
    end;
  end;

  // Cek qty ready
  if not dmInventory.IsNonStockItem(dtsIMSalesInvoiceDt.FieldByName('vcIdSupplies').AsString) then
  begin
    ReadyStockQty := dmInventory.GetReadyStockQty(dblcIdWarehouse.EditValue, dtsIMSalesInvoiceDt.FieldByName('vcIdSupplies').AsString);
    ReadyStockQty := ReadyStockQty + FOldQty;
    if dtsIMSalesInvoiceDt.FieldByName('inQty').AsFloat > ReadyStockQty then
    begin
      MessageDlg(MSG_QTY_GREATER_THAN_READYSTOCK, mtInformation, [mbOk], 0);
      Abort;
    end;
  end;

  if dtsIMSalesInvoiceDt.FieldByName('dcPricePrint').IsNull then
    dtsIMSalesInvoiceDt.FieldByName('dcPricePrint').AsFloat :=
      dtsIMSalesInvoiceDt.FieldByName('dcPrice').AsFloat;
  Calculate;
end;

procedure TfmSalesInvoice.dtsIMSalesInvoiceDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('inNo').AsInteger := Dataset.RecordCount + 1;
  Dataset.FieldByName('inQty').AsInteger := 0;
  Dataset.FieldByName('dcPrice').AsInteger := 0;
  Dataset.FieldByName('dcPricePrint').AsInteger := 0;
  Dataset.FieldByName('dcDiscItem').AsInteger := 0;
  Dataset.FieldByName('dcDiscItemPrice').AsInteger := 0;

  FOldQty := 0;
end;

procedure TfmSalesInvoice.dtsIMSalesInvoiceHdBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if not ValidateSalesInvoiceHd(dtsIMSalesInvoiceHd.FieldByName('vcIdSalesInvoice').AsString) then
    Abort;

  FOldSO := dtsIMSalesInvoiceHd.FieldByName('vcIdSalesOrder').AsString;
  FOldWarehouse := dtsIMSalesInvoiceHd.FieldByName('vcIdWarehouse').AsString;
end;

procedure TfmSalesInvoice.dtsIMSalesInvoiceHdBeforePost(DataSet: TDataSet);
var
  NewSO, NewWarehouse: string;
begin
  inherited;

  if dtsIMSalesInvoiceHd.FieldByName('inInvoiceDueDay').AsInteger < 0 then
  begin
    MessageDlg(MSG_INVALID_DUE_DAY, mtInformation, [mbOk], 0);
    Abort;
  end;

  // Validate SI date with DO schedule date
  if dtsIMSalesInvoiceHd.FieldByName('dtSalesInvoiceDate').AsDateTime >
    dtsIMSalesInvoiceHd.FieldByName('dtDeliveryScheduleDate').AsDateTime then
  begin
    MessageDlg(MSG_INVALID_DELIVERY_SCHEDULE_DATE, mtInformation, [mbOk], 0);
    Abort;
  end;

  // Jika Warehouse-nya berubah, maka hapus detail yang telah dibuat
  NewWarehouse := dtsIMSalesInvoiceHd.FieldByName('vcIdWarehouse').AsString;
  if not dtsIMSalesInvoiceDt.IsEmpty then
  begin
    if FOldWarehouse <> NewWarehouse then
    begin
      if MessageDlg(ASK_SAVE_SI_2, mtWarning, [mbYes, mbNo], 0) = mrNo then
        Abort
      else
      begin
        DeleteCurrentDetail;
        CalculateTotal;
      end;
    end;
  end;

  // Validate detail with SO
  NewSO := dtsIMSalesInvoiceHd.FieldByName('vcIdSalesOrder').AsString;
  if dbicType.ItemIndex = 0 then
    dtsIMSalesInvoiceHd.FieldByName('vcIdSalesOrder').Value := null
  else
  begin
    if not dtsIMSalesInvoiceDt.IsEmpty then
    begin
      // Jika SalesOrder-nya berubah, maka hapus detail yang telah dibuat
      if FOldSO <> NewSO then
        if MessageDlg(Format(ASK_SAVE_SI, [FOldSO, NewSO]), mtWarning, [mbYes, mbNo], 0) = mrNo then
          Abort
        else
        begin
          DeleteCurrentDetail;
          CalculateTotal;
        end;
    end;
  end;

  // Insert default Disc and Tax dari SO, jika nota penjualan menggunakan SO
  if NewSO <> '' then
  begin
    qryGetSOInfo.Close;
    qryGetSOInfo.Parameters[0].Value := NewSO;
    OpenIfClose(qryGetSOInfo);
    if not qryGetSOInfo.IsEmpty then
    begin
      DataSet.FieldByName('vcSalesName').AsString := qryGetSOInfo.FieldByName('vcSalesName').AsString;
      DataSet.FieldByName('dcDisc').AsFloat := qryGetSOInfo.FieldByName('dcDisc').AsFloat;
      DataSet.FieldByName('dcTax').AsFloat := qryGetSOInfo.FieldByName('dcTax').AsFloat;
    end;
  end;

  // Insert Id
  if DataSet.FieldByName('vcIdSalesInvoice').IsNull then
    DataSet.FieldByName('vcIdSalesInvoice').AsString :=
      dmShare.GetCurrentTransNo(utSalesInvoice,
      DataSet.FieldByName('dtSalesInvoiceDate').AsDateTime);
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

procedure TfmSalesInvoice.dtsIMSalesInvoiceHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('dtSalesInvoiceDate').AsDateTime := DateOf(dmGlobal.SettingGlobal.ServerDateTime);
  Dataset.FieldByName('dcDisc').AsFloat := 0;
  Dataset.FieldByName('dcDiscAmount').AsFloat := 0;
  Dataset.FieldByName('dcTax').AsFloat := 0;
  Dataset.FieldByName('dcTaxAmount').AsFloat := 0;
  Dataset.FieldByName('dcTotalAmount').AsFloat := 0;
  DataSet.FieldByName('dtDeliveryScheduleDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime; // time saved
  Dataset.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
  Dataset.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
  Dataset.FieldByName('chFlagSO').AsInteger := 0;
  Dataset.FieldByName('chFlagPendingDO').AsInteger := 1;
  Dataset.FieldByName('CounterPrint').AsInteger := 0;

  FOldSO := '';
  FOldWarehouse := '';
end;

function TfmSalesInvoice.GetSOOutstandingQty(const AIdSalesOrder,
  AIdSupplies: string): Double;
begin
  Result := 0;
  qryGetSOOutstandingQty.Close;
  qryGetSOOutstandingQty.Parameters[0].Value := AIdSalesOrder;
  qryGetSOOutstandingQty.Parameters[1].Value := AIdSupplies;
  qryGetSOOutstandingQty.Open;
  if not qryGetSOOutstandingQty.IsEmpty then
    Result := qryGetSOOutstandingQty.FieldByName('inOutstandingQty').AsFloat;
  qryGetSOOutstandingQty.Close;
end;

procedure TfmSalesInvoice.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_SI);

  // Display Format
  TcxCalcEditProperties(cgvPrevSuppliesinEndQtyReady.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSalesInvoiceDtinQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvSalesInvoiceDtdcPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesInvoiceDtdcPricePrint.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesInvoiceDtdcDiscItem.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  TcxCalcEditProperties(cgvSalesInvoiceDtdcDiscItemPrice.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCalcEditProperties(cgvSalesInvoiceDtdcAmount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeDisc.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeDiscAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTax.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeTaxAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  cgvSalesInvoiceDt.DataController.Summary.FooterSummaryItems[1].Format := dmGlobal.SettingGlobal.DisplayFormatCurrency;

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
        btnPrint.Enabled := False;
      end;
  end;

  SetReadOnly(cgvSalesInvoiceHd);
  SetReadOnly(dbeIdSalesInvoice, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdSalesOrder, True, clWindow);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbeDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeSalesInvoiceDate, True, COLOR_INACTIVE);

//  if (dmGlobal.OptionOnlySIEntryCanModifyData) and (FStatusApprove <> 0) then
//  begin
//    pnlHeaderControl.Visible := False;
//    pnlDetailControl.Visible := False;
//    SetReadOnly(cgvSalesInvoiceDt);
//    SetReadOnly(dbeSalesInvoiceDate, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dblcIdCustomer, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dblcIdWarehouse, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dbicType, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dbeIdSalesOrder, True, COLOR_INACTIVE);
//    SetReadOnly(dblcSalesName, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dbeDeliverySchedule, True, AbortPropertiesInitPopup, COLOR_INACTIVE);
//    SetReadOnly(dbeInvoiceDueDay, True, COLOR_INACTIVE);
//    SetReadOnly(dbmMemo, True, COLOR_INACTIVE);
//    SetReadOnly(dbmAddress, True, COLOR_INACTIVE);
//    SetReadOnly(dbmNotesDeliveryOrder, True, COLOR_INACTIVE);
//    SetReadOnly(dbeDisc, True, COLOR_INACTIVE);
//    SetReadOnly(dbeTax, True, COLOR_INACTIVE);
//    SetReadOnly(dbeRef, True, COLOR_INACTIVE);
//    dbchPendingDO.Properties.ReadOnly := True;
//    btnCustomer.Enabled := False;
//    btnIdSalesOrder.Enabled := False;
//  end;

  // Open all query
  OpenIfClose(dmInventory.qryCustomer);
  OpenIfClose(qryPrevWarehouseSale);
  OpenIfClose(dmInventory.qryPrevSalesman);

  FDoSaveCalculate := False;
  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMSalesInvoiceDt);
end;

procedure TfmSalesInvoice.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  dtsIMSalesInvoiceHd.Close;
  dtsIMSalesInvoiceHd.Parameters[0].Value := FStatusApprove;
  dtsIMSalesInvoiceHd.Parameters[1].Value := FStatusApprove + 1;
  dtsIMSalesInvoiceHd.Parameters[2].Value := STATUS_REJECT;
  dtsIMSalesInvoiceHd.Parameters[3].Value := STATUS_DONE;
  dtsIMSalesInvoiceHd.Parameters[4].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMSalesInvoiceHd.Parameters[5].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsIMSalesInvoiceHd, True);
  cgvSalesInvoiceHd.ViewData.Expand(True);
end;

procedure TfmSalesInvoice.RefreshAll;
begin
  inherited;

  LockRefresh(dtsIMSalesInvoiceHd, True);
  LockRefresh(dtsIMSalesInvoiceDt);
  cgvSalesInvoiceHd.ViewData.Expand(False);
end;

procedure TfmSalesInvoice.ShowSupplies;
begin
  // Semua barang, tanpa QtyReady
  if qryPrevSupplies.Parameters[0].Value <> '%' then
  begin
    qryPrevSupplies.Close;
    qryPrevSupplies.Parameters[0].Value := '%';
    OpenIfClose(qryPrevSupplies);
  end;
  cgvPrevSupplies.DataController.DataSource := dsPrevSupplies;
end;

procedure TfmSalesInvoice.ShowSuppliesWithQtyReady;
begin
  // Barang dengan QtyReady per gudang
  if dbicType.ItemIndex = 0 then
  begin
    // Without SO
    if qryPrevSupplies.Parameters[0].Value <> dblcIdWarehouse.EditValue then
    begin
      qryPrevSupplies.Close;
      qryPrevSupplies.Parameters[0].Value := VarToStr(dblcIdWarehouse.EditValue);
      OpenIfClose(qryPrevSupplies);
    end;
    cgvPrevSupplies.DataController.DataSource := dsPrevSupplies;
  end
  else
  begin
    // With SO
    if (qryPrevSuppliesSO.Parameters[0].Value <> dblcIdWarehouse.EditValue) or
      (qryPrevSuppliesSO.Parameters[1].Value <> dbeIdSalesOrder.EditValue) then
    begin
      qryPrevSuppliesSO.Close;
      qryPrevSuppliesSO.Parameters[0].Value := VarToStr(dblcIdWarehouse.EditValue);
      qryPrevSuppliesSO.Parameters[1].Value := VarToStr(dbeIdSalesOrder.EditValue);
      OpenIfClose(qryPrevSuppliesSO);
    end;
    cgvPrevSupplies.DataController.DataSource := dsPrevSuppliesSO;
  end;
end;

function TfmSalesInvoice.ValidateSalesInvoiceHd(const AIdPI: string): boolean;
var
  qryTemp: TADOQuery;
begin
  Result := False;
  qryTemp := TADOQuery.Create(Self);
  try
    qryTemp.Connection := dmGlobal.conGlobal;
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select chStatusApprove from tbIMSalesInvoiceHd');
    qryTemp.SQL.Add('where vcIdSalesInvoice = :vcIdSalesInvoice');
    qryTemp.Parameters[0].Value := AIdPI;
    qryTemp.Open;
    if qryTemp.IsEmpty then
      Exit;
    if qryTemp.FieldByName('chStatusApprove').AsInteger <> FStatusApprove then
    begin
      MessageDlg(Format(MSG_CANNOT_EDIT_TRANS, [PI, AIdPI]), mtInformation, [mbOk], 0);
      Exit;
    end;
  finally
    FreeAndNil(qryTemp);
  end;
  Result := True;
end;

end.
