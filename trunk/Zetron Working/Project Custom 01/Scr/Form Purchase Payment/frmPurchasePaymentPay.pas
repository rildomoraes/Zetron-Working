unit frmPurchasePaymentPay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  cxControls, cxSplitter, ExtCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxLabel,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxMaskEdit, cxCalendar, cxDBEdit,
  cxTextEdit, Menus, cxMemo, DBActns, ActnList, DateUtils, cxBlobEdit,
  cxCalc, cxCurrencyEdit, untIvPositionStandard, untIvPositionDevExpress,
  cxImageComboBox, ADODB, cxDBLookupComboBox, ImgList, cxSpinEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfmPurchasePaymentPay = class(TForm)
    dbeIdPurchasePayment: TcxDBTextEdit;
    dbePurchasePaymentDate: TcxDBDateEdit;
    pnlControl: TPanel;
    aclHeader: TActionList;
    pnlBody: TPanel;
    dbeEmployeeName: TcxDBTextEdit;
    dbeAmount: TcxDBCurrencyEdit;
    dbeEffectiveDate: TcxDBDateEdit;
    btnCancel: TcxButton;
    dsIMPurchasePayment: TDataSource;
    dtsIMPurchasePayment: TADODataSet;
    DataSetPost: TDataSetPost;
    bvlLine2: TBevel;
    edtShortage: TcxCurrencyEdit;
    dbmNotes: TcxDBMemo;
    btnSave: TcxButton;
    btnDefaultAmount: TcxButton;
    DataSetCancel: TDataSetCancel;
    bvlLine1: TBevel;
    bvlLine4: TBevel;
    dbeSupplier: TcxDBTextEdit;
    dbeIdPurchaseOrder: TcxDBTextEdit;
    dbeIdReceiveRecord: TcxDBTextEdit;
    dbeIdPurchaseInvoice: TcxDBTextEdit;
    dbePurchaseInvoiceDate: TcxDBDateEdit;
    dbeInvoiceDueDate: TcxDBDateEdit;
    dbeTotalAmount: TcxDBCurrencyEdit;
    dbeOutstanding: TcxDBCurrencyEdit;
    actDefaultAmount: TAction;
    btnNotes: TcxButton;
    actNotes: TAction;
    lblDisc: TLabel;
    lblTax: TLabel;
    dbeTax: TcxDBSpinEdit;
    dbeDisc: TcxDBSpinEdit;
    bvlLine3: TBevel;
    dblcPaymentType: TcxDBExtLookupComboBox;
    dblcIdBank: TcxDBExtLookupComboBox;
    dblcSupplierIdBank: TcxDBExtLookupComboBox;
    dblcAccountNo: TcxDBExtLookupComboBox;
    dblcSupplierAccountNo: TcxDBExtLookupComboBox;
    edtDownPaymentLimit: TcxCurrencyEdit;
    bvlLine5: TBevel;
    dbeDiscAmount: TcxDBCurrencyEdit;
    dbeTaxAmount: TcxDBCurrencyEdit;
    dbeTotal: TcxDBCurrencyEdit;
    lblPurchaseInvoice: TLabel;
    lblPurchaseInvoiceDate: TLabel;
    lblSupplier: TLabel;
    lblIdPurchaseOrder: TLabel;
    lblIdReceiveRecord: TLabel;
    lblIdPurchasePayment: TLabel;
    lblPurchasePaymentDate: TLabel;
    lblPaymentType: TLabel;
    lblEffectiveDate: TLabel;
    lblNameOfBank: TLabel;
    lblAccountNo: TLabel;
    lblSupplierBank: TLabel;
    lblSupplierAccountNo: TLabel;
    lblEmployeeName: TLabel;
    lblInvoiceDueDate: TLabel;
    lblAmount: TLabel;
    lblTotal: TLabel;
    lblOutstanding: TLabel;
    lblPayment: TLabel;
    lblShortage: TLabel;
    lblDownPaymentLimit: TLabel;
    lblInfo: TLabel;
    qryBankAccount: TADOQuery;
    dsBankAccount: TDataSource;
    qrySupplierBankAccount: TADOQuery;
    dsSupplierBankAccount: TDataSource;
    gvrAccounting: TcxGridViewRepository;
    cgvPrevBankAccount: TcxGridDBTableView;
    cgvPrevBankAccountvcIdBank: TcxGridDBColumn;
    cgvPrevBankAccountvcBankName: TcxGridDBColumn;
    cgvPrevBankAccountvcAccountNo: TcxGridDBColumn;
    cgvPrevBankAccountvcAccountName: TcxGridDBColumn;
    cgvPrevSupplierBankAccount: TcxGridDBTableView;
    cgvPrevSupplierBankAccountvcSupplierName: TcxGridDBColumn;
    cgvPrevSupplierBankAccountvcSupplierIdBank: TcxGridDBColumn;
    cgvPrevSupplierBankAccountvcBankName: TcxGridDBColumn;
    cgvPrevSupplierBankAccountvcSupplierAccountNo: TcxGridDBColumn;
    cgvPrevSupplierBankAccountvcAccountName: TcxGridDBColumn;
    qryPrevPurchaseInvoiceHd: TADOQuery;
    dsPrevPurchaseInvoiceHd: TDataSource;
    qryPrevPaymentType: TADOQuery;
    dsPrevPaymentType: TDataSource;
    cgvPrevPaymentType: TcxGridDBTableView;
    cgvPrevPaymentTypevcIdPaymentType: TcxGridDBColumn;
    cgvPrevPaymentTypevcPaymentTypeName: TcxGridDBColumn;
    cgvPrevPaymentTypechFlagInactive: TcxGridDBColumn;
    cgvPrevPaymentTypevcEmployeeName: TcxGridDBColumn;
    cgvPrevPaymentTypechFlagFix: TcxGridDBColumn;
    procedure actDefaultAmountExecute(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure DataSetBeforePost(Dataset: TDataSet);
    procedure dsIMPurchasePaymentDataChange(Sender: TObject; Field: TField);
    procedure dtsIMPurchasePaymentAfterCancel(DataSet: TDataSet);
    procedure dtsIMPurchasePaymentNewRecord(DataSet: TDataSet);
    procedure dtsIMPurchasePaymentAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    FIdPurchaseInvoice: string;

    procedure DeinitForm;
    procedure InitForm;
  public
    { Public declarations }
    class procedure ExecuteForm(const AIdPurchaseInvoice: string);
  end;

var
  fmPurchasePaymentPay: TfmPurchasePaymentPay;

implementation

uses
  untConstanta, untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare,
  dtmAccounting, frmNotes;

const
  APPROVAL_1 = '1';

{$R *.dfm}

procedure TfmPurchasePaymentPay.actDefaultAmountExecute(Sender: TObject);
begin
  dtsIMPurchasePayment.FieldByName('dcAmount').AsFloat := dbeOutstanding.EditValue;
end;

procedure TfmPurchasePaymentPay.actNotesExecute(Sender: TObject);
var
  S: TStringList;
  NotesOld, Temp: string;
begin
  // Process
  S := TStringList.Create;
  try
    TfmNotes.ExecuteForm(Self.Caption + ' ' + NS_NOTES, S);
    NotesOld := VarToStr(dbmNotes.EditValue);
    Temp := NotesOld +
      'Date: ' + FormatDateTime('dd/mm/yyyy', dmGlobal.SettingGlobal.ServerDateTime) +
      ' - ' + NS_NOTES + ' by ' + dmGlobal.SettingGlobal.LoginEmployeeName +
      #13#10 + S.Text + #13#10;
    dtsIMPurchasePayment.FieldByName('txNotes').AsString := Temp;
  finally
    S.Free;
  end;
end;

procedure TfmPurchasePaymentPay.DataSetBeforePost(Dataset: TDataSet);
begin
  if (dtsIMPurchasePayment.FieldByName('vcIdPaymentType').AsString = '2') or
    (dtsIMPurchasePayment.FieldByName('vcIdPaymentType').AsString = '3') or
    (dtsIMPurchasePayment.FieldByName('vcIdPaymentType').AsString = '4') then
  begin
    if (dtsIMPurchasePayment.FieldByName('vcIdBank').AsString = '') or
      (dtsIMPurchasePayment.FieldByName('vcAccountNo').AsString = '') then
    begin
      MessageDlg(MSG_INCOMPLETE_PAYMENT_INFO, mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else
  begin
    dtsIMPurchasePayment.FieldByName('dtEffectiveDate').AsVariant := null;
    dtsIMPurchasePayment.FieldByName('vcIdBank').AsVariant := null;
    dtsIMPurchasePayment.FieldByName('vcAccountNo').AsVariant := null;
    dtsIMPurchasePayment.FieldByName('vcSupplierIdBank').AsVariant := null;
    dtsIMPurchasePayment.FieldByName('vcSupplierAccountNo').AsVariant := null;
  end;

  if dtsIMPurchasePayment.FieldByName('vcIdPaymentType').AsString = '5' then
  begin
    edtDownPaymentLimit.EditValue := dmShare.GetSupplierDownPayment(qryPrevPurchaseInvoiceHd.FieldByName('vcIdSupplier').AsString);
    if dbeAmount.EditValue > edtDownPaymentLimit.EditValue then
    begin
      MessageDlg(MSG_AMOUNT_GREATER_INVALID2, mtInformation, [mbOK], 0);
      Abort;
    end;
  end;

  if dmShare.CheckOutstandingPurchaseInvoice(dbeIdPurchaseInvoice.EditValue, dbeAmount.EditValue) then
  begin
    if DataSet.FieldByName('vcIdPurchasePayment').IsNull then
      DataSet.FieldByName('vcIdPurchasePayment').AsString :=
        dmShare.GetCurrentTransNo(utPurchasePayment,
        DataSet.FieldByName('dtPurchasePaymentDate').AsDateTime);
    DataSet.FieldByName('vcIdPurchaseInvoice').AsString := FIdPurchaseInvoice;
    Dataset.FieldByName('chStatusApprove').AsString := APPROVAL_1;
  end
  else
  begin
    MessageDlg(MSG_AMOUNT_GREATER_INVALID, mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure TfmPurchasePaymentPay.DeinitForm;
begin
//
end;

procedure TfmPurchasePaymentPay.dsIMPurchasePaymentDataChange(
  Sender: TObject; Field: TField);
begin
  if dtsIMPurchasePayment.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;

    if Field.FieldName = 'vcIdPaymentType' then
    begin
      // Control
      dbeEffectiveDate.Enabled := False;
      dblcIdBank.Enabled := False;
      dblcAccountNo.Enabled := False;
      dblcSupplierIdBank.Enabled := False;
      dblcSupplierAccountNo.Enabled := False;
      bvlLine5.Visible := False;
      lblDownPaymentLimit.Visible := False;
      edtDownPaymentLimit.Visible := False;
      lblInfo.Visible := False;
      if (dtsIMPurchasePayment.FieldByName('vcIdPaymentType').AsString = '2') or
        (dtsIMPurchasePayment.FieldByName('vcIdPaymentType').AsString = '3') or
        (dtsIMPurchasePayment.FieldByName('vcIdPaymentType').AsString = '4') then
      begin
        dbeEffectiveDate.Enabled := True;
        dblcIdBank.Enabled := True;
        dblcAccountNo.Enabled := True;
        dblcSupplierIdBank.Enabled := True;
        dblcSupplierAccountNo.Enabled := True;
      end;
      if dtsIMPurchasePayment.FieldByName('vcIdPaymentType').AsString = '5' then
      begin
        bvlLine5.Visible := True;
        lblDownPaymentLimit.Visible := True;
        edtDownPaymentLimit.Visible := True;
        edtDownPaymentLimit.EditValue := dmShare.GetSupplierDownPayment(qryPrevPurchaseInvoiceHd.FieldByName('vcIdSupplier').AsString);
        lblInfo.Visible := True;
      end;
    end;

    if Field.FieldName = 'vcIdBank' then
    begin
      dtsIMPurchasePayment.FieldByName('vcAccountNo').AsVariant := null;
      qryBankAccount.Close;
      qryBankAccount.Parameters[0].Value := dblcIdBank.EditValue;
      OpenIfClose(qryBankAccount);
    end;

    if Field.FieldName = 'vcSupplierIdBank' then
    begin
      dtsIMPurchasePayment.FieldByName('vcSupplierAccountNo').AsVariant := null;
      qrySupplierBankAccount.Close;
      qrySupplierBankAccount.Parameters[0].Value := qryPrevPurchaseInvoiceHd.FieldbyName('vcIdSupplier').AsString;
      qrySupplierBankAccount.Parameters[1].Value := dblcSupplierIdBank.EditValue;
      OpenIfClose(qrySupplierBankAccount);
    end;

    if Field.FieldName = 'dcAmount' then
    begin
      // Validate payment and change
      edtShortage.EditValue := dbeOutstanding.EditValue;
      if dtsIMPurchasePayment.FieldByName('dcAmount').AsFloat > dbeOutstanding.EditValue then
      begin
        MessageDlg(MSG_AMOUNT_GREATER_INVALID, mtInformation, [mbOk], 0);
        dtsIMPurchasePayment.FieldByName('dcAmount').AsFloat := 0;
      end
      else
        edtShortage.EditValue := dbeOutstanding.EditValue - dtsIMPurchasePayment.FieldByName('dcAmount').AsFloat;
    end;
  end;
end;

procedure TfmPurchasePaymentPay.dtsIMPurchasePaymentAfterCancel(
  DataSet: TDataSet);
begin
  Close;
end;

procedure TfmPurchasePaymentPay.dtsIMPurchasePaymentAfterPost(
  DataSet: TDataSet);
begin
  Close;
end;

procedure TfmPurchasePaymentPay.dtsIMPurchasePaymentNewRecord(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('dtPurchasePaymentDate').AsDateTime := DateOf(dmGlobal.SettingGlobal.ServerDateTime);
  DataSet.FieldByName('dcAmount').AsFloat := 0;
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

class procedure TfmPurchasePaymentPay.ExecuteForm(const AIdPurchaseInvoice: string);
var
  fmPurchasePaymentPay: TfmPurchasePaymentPay;
begin
  fmPurchasePaymentPay := TfmPurchasePaymentPay.Create(Application);
  with fmPurchasePaymentPay do
  begin
    try
      FIdPurchaseInvoice := AIdPurchaseInvoice;
      InitForm;
      ShowModal;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmPurchasePaymentPay.InitForm;
begin

  dmGlobal.InitComponent(Self);

  SetReadOnly(dbeSupplier, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdPurchaseOrder, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdReceiveRecord, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdPurchaseInvoice, True, COLOR_INACTIVE);
  SetReadOnly(dbePurchaseInvoiceDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeInvoiceDueDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdPurchasePayment, True, COLOR_INACTIVE);
  SetReadOnly(dbeEmployeeName, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotalAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeOutstanding, True, COLOR_INACTIVE);
  SetReadOnly(edtShortage, True, COLOR_INACTIVE);
  SetReadOnly(dbmNotes, True, COLOR_INACTIVE);
  SetReadOnly(dbeTax, True, COLOR_INACTIVE);
  SetReadOnly(dbeTaxAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeDisc, True, COLOR_INACTIVE);
  SetReadOnly(dbeDiscAmount, True, COLOR_INACTIVE);
  SetReadOnly(dbeTotal, True, COLOR_INACTIVE);
  SetReadOnly(edtDownPaymentLimit, True, COLOR_INACTIVE);

  dbeEffectiveDate.Enabled := False;
  dblcIdBank.Enabled := False;
  dblcAccountNo.Enabled := False;
  dblcSupplierIdBank.Enabled := False;
  dblcSupplierAccountNo.Enabled := False;

  // Hide Deposit
  bvlLine5.Visible := False;
  lblDownPaymentLimit.Visible := False;
  edtDownPaymentLimit.Visible := False;
  lblInfo.Visible := False;

  dbeTotal.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTaxAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeDiscAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTax.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeDisc.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtShortage.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeOutstanding.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtDownPaymentLimit.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  // Open all query
  OpenIfClose(dmAccounting.qryBank);
  OpenIfClose(qryPrevPaymentType);
  qryPrevPurchaseInvoiceHd.Close;
  qryPrevPurchaseInvoiceHd.Parameters[0].Value := FIdPurchaseInvoice;
  OpenIfClose(qryPrevPurchaseInvoiceHd);

  dtsIMPurchasePayment.Open;
  dtsIMPurchasePayment.Insert;
end;

end.

