unit frmSalesInvoiceEdit;

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
  cxCurrencyEdit, cxGridBandedTableView, cxGridDBBandedTableView, cxCheckBox,
  cxMemo, cxPC, cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ADODB;

type
  TfmSalesInvoiceEdit = class(TFormUniTransactionApprovalEx)
    dtsIMSalesInvoiceHd: TADODataSet;
    dtsIMSalesInvoiceDt: TADODataSet;
    dsIMSalesInvoiceDt: TDataSource;
    qryGetTotalAmount: TADOQuery;
    qryInsTransactionAR: TADOQuery;
    qryUpdTransactionRevenue: TADOQuery;
    spSalesEditingProcess: TADOStoredProc;
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
    lblEmployeeName: TLabel;
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
    dbeEmployeeName: TcxDBTextEdit;
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
    dblcSalesName: TcxDBExtLookupComboBox;
    dbchPendingDO: TcxDBCheckBox;
    dbeRef: TcxDBTextEdit;
    dbchFlagManual: TcxDBCheckBox;
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
    pnlDetailBottom: TPanel;
    lblTax: TLabel;
    lblTotal: TLabel;
    lblDisc: TLabel;
    dbeTax: TcxDBSpinEdit;
    dbeDisc: TcxDBSpinEdit;
    dbeDiscAmount: TcxDBCurrencyEdit;
    dbeTaxAmount: TcxDBCurrencyEdit;
    dbeTotalAmount: TcxDBCurrencyEdit;
    procedure actNotesExecute(Sender: TObject);
    procedure cgvSalesInvoiceHdStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure dtsIMSalesInvoiceDtAfterPost(DataSet: TDataSet);
    procedure dtsIMSalesInvoiceDtBeforePost(DataSet: TDataSet);
    procedure dtsIMSalesInvoiceDtBeforeEdit(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FOldPrice: currency;
    FOldTotalAmount: currency;
    FNewPrice: currency;
    FnewTotalAmount: currency;

    FNotaSudahDibayarDanHargaTurun: boolean;
    FSelisihHargaTurun: currency;

    procedure Calculate;
    procedure CalculateTotal;
  public
    { Public declarations }
  end;

var
  fmSalesInvoiceEdit: TfmSalesInvoiceEdit;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untCustom01, dtmGlobal, dtmInventory, dtmShare,
  frmNotes, frmPrintFastReport;

procedure TfmSalesInvoiceEdit.actNotesExecute(Sender: TObject);
var
  S: TStringList;
begin
  inherited;

  // Validate
  if dsDefault.DataSet.IsEmpty then
    Exit;
  {dont care
  if not ValidatePurchaseInvoiceHd(VarToStr(dbeIdPurchaseInvoice.EditValue)) then
    Exit;}

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

procedure TfmSalesInvoiceEdit.Calculate;
var
  Amount, AmountAfterDisc: real;
begin
  with dtsIMSalesInvoiceDt do
  begin
    if State in [dsInsert, dsEdit] then
    begin
      Amount := FieldByName('inQty').AsFloat * FieldByName('dcPrice').AsFloat;

      FieldByName('dcDiscItemPrice').AsFloat := (Amount * FieldByName('dcDiscItem').AsFloat) / 100;

      AmountAfterDisc := Amount - FieldByName('dcDiscItemPrice').AsFloat;

      FieldByName('dcAmount').AsFloat := AmountAfterDisc;
    end;
  end;
end;

procedure TfmSalesInvoiceEdit.CalculateTotal;
begin
  qryGetTotalAmount.Close;
  qryGetTotalAmount.Parameters[0].Value := dtsIMSalesInvoiceHd.FieldByName('vcIdSalesInvoice').AsString;
  qryGetTotalAmount.Open;

  dtsIMSalesInvoiceHd.FieldByName('dcAmount').AsFloat :=
    qryGetTotalAmount.FieldByName('Amount').AsFloat;
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

  FNewTotalAmount := dtsIMSalesInvoiceHd.FieldByName('dcTotalAmount').AsCurrency;

  // Update OutstandingTotalAmount, StatusApprove
  if FNewPrice > FOldPrice then
  begin
    // Harga Naik
    dtsIMSalesInvoiceHd.FieldByName('dcOutstandingTotalAmount').AsCurrency :=
      dtsIMSalesInvoiceHd.FieldByName('dcOutstandingTotalAmount').AsCurrency +
      (FNewTotalAmount - FOldTotalAmount);
    // update status approve (agar bisa dibayar lagi)
    dtsIMSalesInvoiceHd.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
  end
  else
  begin
    // Harga Turun
    dtsIMSalesInvoiceHd.FieldByName('dcOutstandingTotalAmount').AsCurrency :=
      dtsIMSalesInvoiceHd.FieldByName('dcOutstandingTotalAmount').AsCurrency -
      (FOldTotalAmount - FNewTotalAmount);
    // Kalo minus maka buat nol saja  (kelebihan bayar), dihandle di AP nantinya
    if dtsIMSalesInvoiceHd.FieldByName('dcOutstandingTotalAmount').AsCurrency < 0 then
    begin
      FNotaSudahDibayarDanHargaTurun := True;
      FSelisihHargaTurun := Abs(dtsIMSalesInvoiceHd.FieldByName('dcOutstandingTotalAmount').AsCurrency);

      dtsIMSalesInvoiceHd.FieldByName('dcOutstandingTotalAmount').AsCurrency := 0;
    end;
    // status approve  tidak perlu diubah !
  end;
end;

procedure TfmSalesInvoiceEdit.cgvSalesInvoiceHdStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) >= IntToStr(FStatusApprove) then
      AStyle := dmGlobal.stYellowLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) = IntToStr(STATUS_REJECT) then
      AStyle := dmGlobal.stRedLight;
    if VarToStr(ARecord.Values[GetColumnByFieldName('chStatusApprove').Index]) = IntToStr(STATUS_DONE) then
      AStyle := dmGlobal.stGreenLight;
  end;
end;

procedure TfmSalesInvoiceEdit.dtsIMSalesInvoiceDtAfterPost(DataSet: TDataSet);
var
  DiffPrice, DiffTotalAmount: currency;
begin
  inherited;

  // Adjustment process
  DiffPrice := FNewPrice - FOldPrice;
  if DiffPrice <> 0 then
  begin
    // 1.Update Amount, TotalAmount, OutstandingTotalAmount, StatusApprove
    dtsIMSalesInvoiceHd.Edit;
    CalculateTotal;
    dtsIMSalesInvoiceHd.Post;

    DiffTotalAmount := FNewTotalAmount - FOldTotalAmount;

    // 2.update AP (+/-)
    qryInsTransactionAR.Close;
    qryInsTransactionAR.Parameters[0].Value := FormatDateTime('ddmmyyhhnnss', Now);
    qryInsTransactionAR.Parameters[1].Value := dtsIMSalesInvoiceHd.FieldByName('dtSalesInvoiceDate').AsDateTime;
    qryInsTransactionAR.Parameters[2].Value := dtsIMSalesInvoiceHd.FieldByName('vcIdCustomer').AsString;

    if DiffTotalAmount > 0 then // Harga Naik
    begin
      qryInsTransactionAR.Parameters[3].Value := 'TR006';
      qryInsTransactionAR.Parameters[5].Value := 'Adjustment Harga (+) (' + dtsIMSalesInvoiceHd.FieldByName('vcIdSalesInvoice').AsString + ')';
      qryInsTransactionAR.Parameters[4].Value := Abs(DiffTotalAmount);
      qryInsTransactionAR.ExecSQL;
    end
    else
    begin // Harga Turun
      if not FNotaSudahDibayarDanHargaTurun then
      begin
        // Nota belum dibayar
        qryInsTransactionAR.Parameters[3].Value := 'TR007';
        qryInsTransactionAR.Parameters[5].Value := 'Adjustment Harga (-) (' + dtsIMSalesInvoiceHd.FieldByName('vcIdSalesInvoice').AsString + ')';
        qryInsTransactionAR.Parameters[4].Value := Abs(DiffTotalAmount);
        qryInsTransactionAR.ExecSQL;
      end
      else
      begin
        // Outstanding menjadi minus (kelebihan pembayaran)

        // Kurangi outstanding
        qryInsTransactionAR.Parameters[4].Value := Abs(DiffTotalAmount) - FSelisihHargaTurun;

        // Sisa masukan ke deposit
        spSalesEditingProcess.Close;
        spSalesEditingProcess.Parameters[1].Value := dmGlobal.SettingGlobal.ServerDateTime;
        spSalesEditingProcess.Parameters[2].Value := dtsIMSalesInvoiceHd.FieldByName('vcIdCustomer').AsString;
        spSalesEditingProcess.Parameters[3].Value := FSelisihHargaTurun;
        spSalesEditingProcess.Parameters[4].Value := dmGlobal.SettingGlobal.LoginEmployeeName;
        spSalesEditingProcess.ExecProc;
        if (spSalesEditingProcess.Parameters[0].Value <> 0) or
          (VarIsEmpty(spSalesEditingProcess.Parameters[0].Value)) then
        begin
          MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spSalesEditingProcess']), mtInformation, [mbOk], 0);
          //dmGlobal.AddApplicationLog('spSalesEditingProcess cannot be execute !', llHigh);
        end;
      end;
    end;

    if qryInsTransactionAR.Parameters[4].Value <> 0 then
      qryInsTransactionAR.ExecSQL;
  end;

  // 3.update transaction revenue
  qryUpdTransactionRevenue.Close;
  qryUpdTransactionRevenue.Parameters[0].Value := dtsIMSalesInvoiceDt.FieldByName('dcPrice').AsCurrency;
  qryUpdTransactionRevenue.Parameters[1].Value := dtsIMSalesInvoiceHd.FieldByName('vcIdSalesInvoice').AsString;
  qryUpdTransactionRevenue.Parameters[2].Value := dtsIMSalesInvoiceDt.FieldByName('vcIdSupplies').AsString;
  qryUpdTransactionRevenue.ExecSQL;
end;

procedure TfmSalesInvoiceEdit.dtsIMSalesInvoiceDtBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  FOldPrice := dtsIMSalesInvoiceDt.FieldByName('dcPrice').AsCurrency;
  FOldTotalAmount := dtsIMSalesInvoiceHd.FieldByName('dcTotalAmount').AsCurrency;

  FNotaSudahDibayarDanHargaTurun := False;
  FSelisihHargaTurun := 0;
end;

procedure TfmSalesInvoiceEdit.dtsIMSalesInvoiceDtBeforePost(DataSet: TDataSet);
begin
  inherited;

  Calculate;
  FNewPrice := dtsIMSalesInvoiceDt.FieldByName('dcPrice').AsCurrency;
end;

procedure TfmSalesInvoiceEdit.InitForm;
begin
  inherited;

  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_SI);

  // Display Format
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
  btnApprove.Visible := False;
  btnRevision.Visible := False;
  btnVoid.Visible := False;
  bvlSpacer2.Visible := False;
  btnCancel.Visible := False;
  btnPost.Visible := False;
  btnEdit.Visible := False;
  btnInsert.Visible := False;

  SetReadOnly(cgvSalesInvoiceHd);
  SetReadOnly(dbeIdSalesInvoice);
  SetReadOnly(dbeIdSalesOrder);
  SetReadOnly(dbeEmployeeName);
  SetReadOnly(dbmNotes);
  SetReadOnly(dbeDiscAmount);
  SetReadOnly(dbeTaxAmount);
  SetReadOnly(dbeTotalAmount);
  SetReadOnly(dbeSalesInvoiceDate);
  SetReadOnly(dblcIdCustomer);
  SetReadOnly(dblcIdWarehouse);
  SetReadOnly(dbicType);
  SetReadOnly(dbeIdSalesOrder);
  SetReadOnly(dblcSalesName);
  SetReadOnly(dbeDeliverySchedule);
  SetReadOnly(dbeInvoiceDueDay);
  SetReadOnly(dbeRef);
  SetReadOnly(dbmNotesDeliveryOrder);
  SetReadOnly(dbmAddress);
  SetReadOnly(dbmMemo);
  SetReadOnly(dbchFlagManual);
  SetReadOnly(dbchPendingDO);
  SetReadOnly(dbeTax);
  SetReadOnly(dbeDisc);

  // Open all query
  OpenIfClose(dmInventory.qrySupplier, True);
  OpenIfClose(dmInventory.qryStatusApprove);
  OpenIfClose(dmInventory.qrySupplies, True);
  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMSalesInvoiceDt);
  cgvSalesInvoiceHd.ViewData.Expand(True);
end;

procedure TfmSalesInvoiceEdit.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (dtsIMSalesInvoiceHd.State in [dsEdit, dsInsert]) or
    (dtsIMSalesInvoiceDt.State in [dsEdit, dsInsert]) then
    Abort;

  dtsIMSalesInvoiceHd.Close;
  dtsIMSalesInvoiceHd.Parameters[0].Value := FStatusApprove;
  dtsIMSalesInvoiceHd.Parameters[1].Value := STATUS_DONE;
  dtsIMSalesInvoiceHd.Parameters[2].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMSalesInvoiceHd.Parameters[3].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsIMSalesInvoiceHd, True);
  cgvSalesInvoiceHd.ViewData.Expand(True);
end;

procedure TfmSalesInvoiceEdit.RefreshAll;
begin
  inherited;

  LockRefresh(dtsIMSalesInvoiceHd, True);
  LockRefresh(dtsIMSalesInvoiceDt);
  cgvSalesInvoiceHd.ViewData.Expand(False);
end;

end.
