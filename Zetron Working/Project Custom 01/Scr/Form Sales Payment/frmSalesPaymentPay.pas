unit frmSalesPaymentPay;

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
  TfmSalesPaymentPay = class(TForm)
    dbeIdSalesPayment: TcxDBTextEdit;
    dbeSalesPaymentDate: TcxDBDateEdit;
    pnlControl: TPanel;
    aclHeader: TActionList;
    pnlBody: TPanel;
    dbeEmployeeName: TcxDBTextEdit;
    dbeAmount: TcxDBCurrencyEdit;
    dbeEffectiveDate: TcxDBDateEdit;
    btnCancel: TcxButton;
    dsIMSalesPayment: TDataSource;
    dtsIMSalesPayment: TADODataSet;
    DataSetPost: TDataSetPost;
    bvlLine2: TBevel;
    edtShortage: TcxCurrencyEdit;
    dbmNotes: TcxDBMemo;
    btnSave: TcxButton;
    btnDefaultAmount: TcxButton;
    DataSetCancel: TDataSetCancel;
    bvlLine1: TBevel;
    bvlLine4: TBevel;
    dbeCustomer: TcxDBTextEdit;
    dbeIdSalesOrder: TcxDBTextEdit;
    dbeIdDeliveryOrder: TcxDBTextEdit;
    dbeIdSalesInvoice: TcxDBTextEdit;
    dbeSalesInvoiceDate: TcxDBDateEdit;
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
    dblcCustomerIdBank: TcxDBExtLookupComboBox;
    dblcAccountNo: TcxDBExtLookupComboBox;
    dblcCustomerAccountNo: TcxDBExtLookupComboBox;
    edtDownPaymentLimit: TcxCurrencyEdit;
    bvlLine5: TBevel;
    dbeDiscAmount: TcxDBCurrencyEdit;
    dbeTaxAmount: TcxDBCurrencyEdit;
    dbeTotal: TcxDBCurrencyEdit;
    lblSalesInvoice: TLabel;
    lblSalesInvoiceDate: TLabel;
    lblCustomer: TLabel;
    lblIdSalesOrder: TLabel;
    lblIdReceiveRecord: TLabel;
    lblIdSalesPayment: TLabel;
    lblSalesPaymentDate: TLabel;
    lblPaymentType: TLabel;
    lblEffectiveDate: TLabel;
    lblNameOfBank: TLabel;
    lblAccountNo: TLabel;
    lblCustomerBank: TLabel;
    lblCustomerAccountNo: TLabel;
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
    qryCustomerBankAccount: TADOQuery;
    dsCustomerBankAccount: TDataSource;
    gvrAccounting: TcxGridViewRepository;
    cgvPrevBankAccount: TcxGridDBTableView;
    cgvPrevBankAccountvcIdBank: TcxGridDBColumn;
    cgvPrevBankAccountvcBankName: TcxGridDBColumn;
    cgvPrevBankAccountvcAccountNo: TcxGridDBColumn;
    cgvPrevBankAccountvcAccountName: TcxGridDBColumn;
    cgvPrevCustomerBankAccount: TcxGridDBTableView;
    cgvPrevCustomerBankAccountvcCustomerName: TcxGridDBColumn;
    cgvPrevCustomerBankAccountvcCustomerIdBank: TcxGridDBColumn;
    cgvPrevCustomerBankAccountvcBankName: TcxGridDBColumn;
    cgvPrevCustomerBankAccountvcCustomerAccountNo: TcxGridDBColumn;
    cgvPrevCustomerBankAccountvcAccountName: TcxGridDBColumn;
    qryPrevSalesInvoiceHd: TADOQuery;
    dsPrevSalesInvoiceHd: TDataSource;
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
    procedure dsIMSalesPaymentDataChange(Sender: TObject; Field: TField);
    procedure dtsIMSalesPaymentAfterCancel(DataSet: TDataSet);
    procedure dtsIMSalesPaymentNewRecord(DataSet: TDataSet);
    procedure dtsIMSalesPaymentAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    FIdSalesInvoice: string;

    procedure DeinitForm;
    procedure InitForm;
  public
    { Public declarations }
    class procedure ExecuteForm(const AIdSalesInvoice: string);
  end;

var
  fmSalesPaymentPay: TfmSalesPaymentPay;

implementation

uses
  untConstanta, untProcedure, untCustom01, dtmGlobal, dtmInventory, dtmShare,
  dtmAccounting, frmNotes;

const
  APPROVAL_1 = '1';

{$R *.dfm}

procedure TfmSalesPaymentPay.actDefaultAmountExecute(Sender: TObject);
begin
  dtsIMSalesPayment.FieldByName('dcAmount').AsFloat := dbeOutstanding.EditValue;
end;

procedure TfmSalesPaymentPay.actNotesExecute(Sender: TObject);
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
    dtsIMSalesPayment.FieldByName('txNotes').AsString := Temp;
  finally
    S.Free;
  end;
end;

procedure TfmSalesPaymentPay.DataSetBeforePost(Dataset: TDataSet);
begin
  if (dtsIMSalesPayment.FieldByName('vcIdPaymentType').AsString = '2') or
    (dtsIMSalesPayment.FieldByName('vcIdPaymentType').AsString = '3') or
    (dtsIMSalesPayment.FieldByName('vcIdPaymentType').AsString = '4') then
  begin
    if (dtsIMSalesPayment.FieldByName('vcIdBank').AsString = '') or
      (dtsIMSalesPayment.FieldByName('vcAccountNo').AsString = '') then
    begin
      MessageDlg(MSG_INCOMPLETE_PAYMENT_INFO, mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else
  begin
    dtsIMSalesPayment.FieldByName('dtEffectiveDate').AsVariant := null;
    dtsIMSalesPayment.FieldByName('vcIdBank').AsVariant := null;
    dtsIMSalesPayment.FieldByName('vcAccountNo').AsVariant := null;
    dtsIMSalesPayment.FieldByName('vcCustomerIdBank').AsVariant := null;
    dtsIMSalesPayment.FieldByName('vcCustomerAccountNo').AsVariant := null;
  end;

  if dtsIMSalesPayment.FieldByName('vcIdPaymentType').AsString = '5' then
  begin
    edtDownPaymentLimit.EditValue := dmShare.GetCustomerDownPayment(qryPrevSalesInvoiceHd.FieldByName('vcIdCustomer').AsString);
    if dbeAmount.EditValue > edtDownPaymentLimit.EditValue then
    begin
      MessageDlg(MSG_AMOUNT_GREATER_INVALID2, mtInformation, [mbOK], 0);
      Abort;
    end;
  end;

  if dmShare.CheckOutstandingSalesInvoice(dbeIdSalesInvoice.EditValue, dbeAmount.EditValue) then
  begin
    if DataSet.FieldByName('vcIdSalesPayment').IsNull then
      DataSet.FieldByName('vcIdSalesPayment').AsString :=
        dmShare.GetCurrentTransNo(utSalesPayment,
        DataSet.FieldByName('dtSalesPaymentDate').AsDateTime);
    DataSet.FieldByName('vcIdSalesInvoice').AsString := FIdSalesInvoice;
    Dataset.FieldByName('chStatusApprove').AsString := APPROVAL_1;
  end
  else
  begin
    MessageDlg(MSG_AMOUNT_GREATER_INVALID, mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure TfmSalesPaymentPay.DeinitForm;
begin
//
end;

procedure TfmSalesPaymentPay.dsIMSalesPaymentDataChange(
  Sender: TObject; Field: TField);
begin
  if dtsIMSalesPayment.State in [dsEdit, dsInsert] then
  begin
    if Field = nil then
      Exit;

    if Field.FieldName = 'vcIdPaymentType' then
    begin
      // Control
      dbeEffectiveDate.Enabled := False;
      dblcIdBank.Enabled := False;
      dblcAccountNo.Enabled := False;
      dblcCustomerIdBank.Enabled := False;
      dblcCustomerAccountNo.Enabled := False;
      bvlLine5.Visible := False;
      lblDownPaymentLimit.Visible := False;
      edtDownPaymentLimit.Visible := False;
      lblInfo.Visible := False;
      if (dtsIMSalesPayment.FieldByName('vcIdPaymentType').AsString = '2') or
        (dtsIMSalesPayment.FieldByName('vcIdPaymentType').AsString = '3') or
        (dtsIMSalesPayment.FieldByName('vcIdPaymentType').AsString = '4') then
      begin
        dbeEffectiveDate.Enabled := True;
        dblcIdBank.Enabled := True;
        dblcAccountNo.Enabled := True;
        dblcCustomerIdBank.Enabled := True;
        dblcCustomerAccountNo.Enabled := True;
      end;
      if dtsIMSalesPayment.FieldByName('vcIdPaymentType').AsString = '5' then
      begin
        bvlLine5.Visible := True;
        lblDownPaymentLimit.Visible := True;
        edtDownPaymentLimit.Visible := True;
        edtDownPaymentLimit.EditValue := dmShare.GetCustomerDownPayment(qryPrevSalesInvoiceHd.FieldByName('vcIdCustomer').AsString);
        lblInfo.Visible := True;
      end;
    end;

    if Field.FieldName = 'vcIdBank' then
    begin
      dtsIMSalesPayment.FieldByName('vcAccountNo').AsVariant := null;
      qryBankAccount.Close;
      qryBankAccount.Parameters[0].Value := dblcIdBank.EditValue;
      OpenIfClose(qryBankAccount);
    end;

    if Field.FieldName = 'vcCustomerIdBank' then
    begin
      dtsIMSalesPayment.FieldByName('vcCustomerAccountNo').AsVariant := null;
      qryCustomerBankAccount.Close;
      qryCustomerBankAccount.Parameters[0].Value := qryPrevSalesInvoiceHd.FieldbyName('vcIdCustomer').AsString;
      qryCustomerBankAccount.Parameters[1].Value := dblcCustomerIdBank.EditValue;
      OpenIfClose(qryCustomerBankAccount);
    end;

    if Field.FieldName = 'dcAmount' then
    begin
      // Validate payment and change
      edtShortage.EditValue := dbeOutstanding.EditValue;
      if dtsIMSalesPayment.FieldByName('dcAmount').AsFloat > dbeOutstanding.EditValue then
      begin
        MessageDlg(MSG_AMOUNT_GREATER_INVALID, mtInformation, [mbOk], 0);
        dtsIMSalesPayment.FieldByName('dcAmount').AsFloat := 0;
      end
      else
        edtShortage.EditValue := dbeOutstanding.EditValue - dtsIMSalesPayment.FieldByName('dcAmount').AsFloat;
    end;
  end;
end;

procedure TfmSalesPaymentPay.dtsIMSalesPaymentAfterCancel(
  DataSet: TDataSet);
begin
  Close;
end;

procedure TfmSalesPaymentPay.dtsIMSalesPaymentAfterPost(
  DataSet: TDataSet);
begin
  Close;
end;

procedure TfmSalesPaymentPay.dtsIMSalesPaymentNewRecord(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('dtSalesPaymentDate').AsDateTime := DateOf(dmGlobal.SettingGlobal.ServerDateTime);
  DataSet.FieldByName('dcAmount').AsFloat := 0;
  DataSet.FieldByName('vcEmployeeName').AsString := dmGlobal.SettingGlobal.LoginEmployeeName;
end;

class procedure TfmSalesPaymentPay.ExecuteForm(const AIdSalesInvoice: string);
var
  fmSalesPaymentPay: TfmSalesPaymentPay;
begin
  fmSalesPaymentPay := TfmSalesPaymentPay.Create(Application);
  with fmSalesPaymentPay do
  begin
    try
      FIdSalesInvoice := AIdSalesInvoice;
      InitForm;
      ShowModal;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmSalesPaymentPay.InitForm;
begin

  dmGlobal.InitComponent(Self);

  SetReadOnly(dbeCustomer, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdSalesOrder, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdDeliveryOrder, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdSalesInvoice, True, COLOR_INACTIVE);
  SetReadOnly(dbeSalesInvoiceDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeInvoiceDueDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeIdSalesPayment, True, COLOR_INACTIVE);
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
  dblcCustomerIdBank.Enabled := False;
  dblcCustomerAccountNo.Enabled := False;

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
  qryPrevSalesInvoiceHd.Close;
  qryPrevSalesInvoiceHd.Parameters[0].Value := FIdSalesInvoice;
  OpenIfClose(qryPrevSalesInvoiceHd);

  dtsIMSalesPayment.Open;
  dtsIMSalesPayment.Insert;
end;

end.

