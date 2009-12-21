unit frmPurchaseInvoiceEdit;

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
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, ADODB, DB, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxSpinEdit, cxCalc,
  cxCurrencyEdit, cxGridBandedTableView, cxGridDBBandedTableView, cxMemo, cxPC,
  cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfmPurchaseInvoiceEdit = class(TFormUniTransactionApprovalEx)
    dtsIMPurchaseInvoiceHd: TADODataSet;
    dtsIMPurchaseInvoiceDt: TADODataSet;
    dsIMPurchaseInvoiceDt: TDataSource;
    qryGetTotalAmount: TADOQuery;
    qryGetTotalQty: TADOQuery;
    qryUpdateHPP: TADOQuery;
    qryInsTransactionAP: TADOQuery;
    qryUpdStockOnHandHd: TADOQuery;
    spPurchaseEditingProcess: TADOStoredProc;
    cgPurchaseInvoiceHd: TcxGrid;
    cgvPurchaseInvoiceHd: TcxGridDBTableView;
    cgvPurchaseInvoiceHdvcIdPurchaseInvoice: TcxGridDBColumn;
    cgvPurchaseInvoiceHddtDatePurchaseInvoice: TcxGridDBColumn;
    cgvPurchaseInvoiceHdvcIdSupplier: TcxGridDBColumn;
    cgvPurchaseInvoiceHdvcIdSupplier2: TcxGridDBColumn;
    cgvPurchaseInvoiceHdchFlagPrint: TcxGridDBColumn;
    cgvPurchaseInvoiceHdchStatusApprove: TcxGridDBColumn;
    cgPurchaseInvoiceHdLevel1: TcxGridLevel;
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
    dbeIdPurchaseOrder: TcxDBTextEdit;
    dbeIdReceivingRecord: TcxDBTextEdit;
    dblcSupplierDO: TcxDBExtLookupComboBox;
    dblcSupplierPO: TcxDBExtLookupComboBox;
    dbePurchaseInvoiceSupplier: TcxDBTextEdit;
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
    procedure cgvPurchaseInvoiceHdStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure dtsIMPurchaseInvoiceDtBeforePost(DataSet: TDataSet);
    procedure dtsIMPurchaseInvoiceDtBeforeEdit(DataSet: TDataSet);
    procedure dtsIMPurchaseInvoiceDtAfterPost(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FOldPrice: currency;
    FOldTotalAmount: currency;
    FNewPrice: currency;
    FNewTotalAmount: currency;

    FNotaSudahDibayarDanHargaTurun: boolean;
    FSelisihHargaTurun: currency;

    procedure Calculate;
    procedure CalculateTotal;
  public
    { Public declarations }
  end;

var
  fmPurchaseInvoiceEdit: TfmPurchaseInvoiceEdit;

implementation

{$R *.dfm}

uses
  untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare, frmNotes,
  untConstanta;

procedure TfmPurchaseInvoiceEdit.actNotesExecute(Sender: TObject);
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

procedure TfmPurchaseInvoiceEdit.Calculate;
var
  Amount, AmountAfterDisc: real;
begin
  with dtsIMPurchaseInvoiceDt do
  begin
    if State in [dsInsert, dsEdit] then
    begin
      // Initial
      Amount := FieldByName('inQty').AsFloat * FieldByName('dcPrice').AsFloat;

      FieldByName('dcDiscItemPrice').AsFloat := (Amount * FieldByName('dcDiscItem').AsFloat) / 100;

      AmountAfterDisc := Amount - FieldByName('dcDiscItemPrice').AsFloat;

      FieldByName('dcAmount').AsFloat := AmountAfterDisc;
    end;
  end;
end;

procedure TfmPurchaseInvoiceEdit.CalculateTotal;
begin
  qryGetTotalAmount.Close;
  qryGetTotalAmount.Parameters[0].Value := dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseInvoice').AsString;
  qryGetTotalAmount.Open;

  //Update Amount, TotalAmount
  dtsIMPurchaseInvoiceHd.FieldByName('dcAmount').AsFloat :=
    qryGetTotalAmount.FieldByName('Amount').AsFloat;
    //IsNull(cgvPurchaseInvoiceDt.DataController.Summary.FooterSummaryValues[1], 0);
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

  FNewTotalAmount := dtsIMPurchaseInvoiceHd.FieldByName('dcTotalAmount').AsCurrency;

  // Update OutstandingTotalAmount, StatusApprove
  if FNewPrice > FOldPrice then
  begin
    // Harga Naik
    dtsIMPurchaseInvoiceHd.FieldByName('dcOutstandingTotalAmount').AsCurrency :=
      dtsIMPurchaseInvoiceHd.FieldByName('dcOutstandingTotalAmount').AsCurrency +
      (FNewTotalAmount - FOldTotalAmount);
    // update status approve (agar bisa dibayar lagi)
    dtsIMPurchaseInvoiceHd.FieldByName('chStatusApprove').AsInteger := FStatusApprove;
  end
  else
  begin
    // Harga Turun
    dtsIMPurchaseInvoiceHd.FieldByName('dcOutstandingTotalAmount').AsCurrency :=
      dtsIMPurchaseInvoiceHd.FieldByName('dcOutstandingTotalAmount').AsCurrency -
      (FOldTotalAmount - FNewTotalAmount);
    // Kalo minus maka buat nol saja  (kelebihan bayar), dihandle di AP nantinya
    if dtsIMPurchaseInvoiceHd.FieldByName('dcOutstandingTotalAmount').AsCurrency < 0 then
    begin
      FNotaSudahDibayarDanHargaTurun := True;
      FSelisihHargaTurun := Abs(dtsIMPurchaseInvoiceHd.FieldByName('dcOutstandingTotalAmount').AsCurrency);

      dtsIMPurchaseInvoiceHd.FieldByName('dcOutstandingTotalAmount').AsCurrency := 0;
    end;
    // status approve  tidak perlu diubah !
  end;
end;

procedure TfmPurchaseInvoiceEdit.cgvPurchaseInvoiceHdStylesGetContentStyle(
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

procedure TfmPurchaseInvoiceEdit.dtsIMPurchaseInvoiceDtAfterPost(
  DataSet: TDataSet);
var
  DiffPrice, DiffTotalAmount, NewHPPAdded: currency;
begin
  inherited;

  // Adjustment process
  DiffPrice := FNewPrice - FOldPrice;
  if DiffPrice <> 0 then
  begin
    // 1.Update Amount, TotalAmount, OutstandingTotalAmount, StatusApprove
    dtsIMPurchaseInvoiceHd.Edit;
    CalculateTotal;
    dtsIMPurchaseInvoiceHd.Post;

    qryGetTotalQty.Close;
    qryGetTotalQty.Parameters[0].Value := dtsIMPurchaseInvoiceDt.FieldByName('vcIdSupplies').AsString;
    qryGetTotalQty.Open;
    DiffTotalAmount := FNewTotalAmount - FOldTotalAmount;

    // 2.update HPP (+/-)
    NewHPPAdded := DiffTotalAmount / qryGetTotalQty.Fields[0].AsInteger;
    qryUpdateHPP.Close;
    qryUpdateHPP.Parameters[0].Value := NewHPPAdded;
    qryUpdateHPP.Parameters[1].Value := dtsIMPurchaseInvoiceDt.FieldByName('vcIdSupplies').AsString;
    qryUpdateHPP.ExecSQL;

    // 3.update stock header
    qryUpdStockOnHandHd.Close;
    qryUpdStockOnHandHd.Parameters[0].Value := dtsIMPurchaseInvoiceDt.FieldByName('vcIdSupplies').AsString;
    qryUpdStockOnHandHd.ExecSQL;

    // 4.update AP (+/-)
    qryInsTransactionAP.Close;
    qryInsTransactionAP.Parameters[0].Value := FormatDateTime('ddmmyyhhnnss', Now);
    qryInsTransactionAP.Parameters[1].Value := dtsIMPurchaseInvoiceHd.FieldByName('dtPurchaseInvoiceDate').AsDateTime;
    qryInsTransactionAP.Parameters[2].Value := dtsIMPurchaseInvoiceHd.FieldByName('vcIdSupplier').AsString;
    if DiffTotalAmount > 0 then // Harga Naik
    begin
      qryInsTransactionAP.Parameters[3].Value := 'TP006';
      qryInsTransactionAP.Parameters[5].Value := 'Adjustment Harga (+) (' +
        dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseInvoice').AsString + ')';
      qryInsTransactionAP.Parameters[4].Value := Abs(DiffTotalAmount);
    end
    else
    begin // Harga Turun
      qryInsTransactionAP.Parameters[3].Value := 'TP007';
      qryInsTransactionAP.Parameters[5].Value := 'Adjustment Harga (-) (' +
        dtsIMPurchaseInvoiceHd.FieldByName('vcIdPurchaseInvoice').AsString + ')';
      if not FNotaSudahDibayarDanHargaTurun then
        // Normal
        qryInsTransactionAP.Parameters[4].Value := Abs(DiffTotalAmount)
      else
      begin
        // Outstanding menjadi minus (kelebihan pembayaran)

        // Kurangi outstanding
        qryInsTransactionAP.Parameters[4].Value := Abs(DiffTotalAmount) - FSelisihHargaTurun;

        // Sisa masukan ke deposit
        spPurchaseEditingProcess.Close;
        spPurchaseEditingProcess.Parameters[1].Value := dmGlobal.SettingGlobal.ServerDateTime;
        spPurchaseEditingProcess.Parameters[2].Value := dtsIMPurchaseInvoiceHd.FieldByName('vcIdSupplier').AsString;
        spPurchaseEditingProcess.Parameters[3].Value := FSelisihHargaTurun;
        spPurchaseEditingProcess.Parameters[4].Value := dmGlobal.SettingGlobal.LoginEmployeeName;
        spPurchaseEditingProcess.ExecProc;
        if (spPurchaseEditingProcess.Parameters[0].Value <> 0) or
          (VarIsEmpty(spPurchaseEditingProcess.Parameters[0].Value)) then
        begin
          MessageDlg(Format(MSG_CANNOT_EXECUTE_SP, ['spPurchaseEditingProcess']), mtInformation, [mbOk], 0);
          //dmGlobal.AddApplicationLog('spPurchaseEditingProcess cannot be execute !', llHigh);
        end;
      end;
    end;

    if qryInsTransactionAP.Parameters[4].Value <> 0 then
      qryInsTransactionAP.ExecSQL;
  end;
end;

procedure TfmPurchaseInvoiceEdit.dtsIMPurchaseInvoiceDtBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;

  FOldPrice := dtsIMPurchaseInvoiceDt.FieldByName('dcPrice').AsCurrency;
  FOldTotalAmount := dtsIMPurchaseInvoiceHd.FieldByName('dcTotalAmount').AsCurrency;

  FNotaSudahDibayarDanHargaTurun := False;
  FSelisihHargaTurun := 0;
end;

procedure TfmPurchaseInvoiceEdit.dtsIMPurchaseInvoiceDtBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  qryGetTotalQty.Close;
  qryGetTotalQty.Parameters[0].Value := dtsIMPurchaseInvoiceDt.FieldByName('vcIdSupplies').AsString;
  qryGetTotalQty.Open;
  if qryGetTotalQty.Fields[0].AsInteger > 0 then
  begin
    Calculate;
    FNewPrice := dtsIMPurchaseInvoiceDt.FieldByName('dcPrice').AsCurrency;
  end
  else
  begin
    MessageDlg(MSG_STOCK_ZERO, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmPurchaseInvoiceEdit.InitForm;
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
  btnApprove.Visible := False;
  btnRevision.Visible := False;
  btnVoid.Visible := False;
  bvlSpacer2.Visible := False;
  btnCancel.Visible := False;
  btnPost.Visible := False;
  btnEdit.Visible := False;
  btnInsert.Visible := False;

  SetReadOnly(cgvPurchaseInvoiceHd);
  SetReadOnly(dbeIdPurchaseInvoice);
  SetReadOnly(dblcIdSupplier);
  SetReadOnly(dbicType);
  SetReadOnly(dbeIdPurchaseOrder);
  SetReadOnly(dbeIdReceivingRecord);
  SetReadOnly(dbeInvoiceDueDay);
  SetReadOnly(dbeEmployeeName);
  SetReadOnly(dbmNotes);
  SetReadOnly(dbmMemo);
  SetReadOnly(dbeDisc);
  SetReadOnly(dbeTax);
  SetReadOnly(dbeDiscAmount);
  SetReadOnly(dbeTaxAmount);
  SetReadOnly(dbeTotalAmount);
  SetReadOnly(dbePurchaseInvoiceDate);
  SetReadOnly(dblcSupplierDO);
  SetReadOnly(dblcSupplierPO);
  SetReadOnly(dbePurchaseInvoiceSupplier);

//  if (dmGlobal.OptionOnlyPIEntryCanModifyData) and (FStatusApprove <> 0) then
//  begin
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
//  end;

  // Open all query
  OpenIfClose(dmInventory.qrySupplier, True);
  OpenIfClose(dmInventory.qryStatusApprove);
  OpenIfClose(dmInventory.qrySupplies, True);
  MonthYearValueChange(nil); // -> Trigger dsDefault
  OpenIfClose(dtsIMPurchaseInvoiceDt);
end;

procedure TfmPurchaseInvoiceEdit.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (dtsIMPurchaseInvoiceHd.State in [dsEdit, dsInsert]) or
    (dtsIMPurchaseInvoiceDt.State in [dsEdit, dsInsert]) then
    Abort;

  dtsIMPurchaseInvoiceHd.Close;
  dtsIMPurchaseInvoiceHd.Parameters[0].Value := FStatusApprove;
  dtsIMPurchaseInvoiceHd.Parameters[1].Value := STATUS_DONE;
  dtsIMPurchaseInvoiceHd.Parameters[2].Value := StartOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  dtsIMPurchaseInvoiceHd.Parameters[3].Value := EndOfAMonth(cbYear.EditingValue, cbMonth.ItemIndex + 1);
  OpenIfClose(dtsIMPurchaseInvoiceHd, True);
  cgvPurchaseInvoiceHd.ViewData.Expand(True);
end;

procedure TfmPurchaseInvoiceEdit.RefreshAll;
begin
  inherited;

  LockRefresh(dtsIMPurchaseInvoiceHd, True);
  LockRefresh(dtsIMPurchaseInvoiceDt);
  cgvPurchaseInvoiceHd.ViewData.Expand(False);
end;

end.
