unit frmBankTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, cxCalendar, cxDBExtLookupComboBox, cxCalc, MemDS, DBAccess,
  Uni, cxGrid, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxCurrencyEdit,
  cxDBEdit, cxMemo, cxDropDownEdit, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, dxDockPanel, cxLookupEdit, cxDBLookupEdit,
  cxContainer, cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, ExtCtrls,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, dxSkinscxPCPainter;

type
  TfmBankTransaction = class(TFormUniTransactionEx)
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplaystatusapprove: TcxGridDBColumn;
    cgvDisplaybanktransactionid: TcxGridDBColumn;
    cgvDisplaybanktransactiondate: TcxGridDBColumn;
    cgvDisplaycashbanktransactiontypeid: TcxGridDBColumn;
    cgvDisplaybankid: TcxGridDBColumn;
    cgvDisplayaccountno: TcxGridDBColumn;
    cgvDisplaygironumber: TcxGridDBColumn;
    cgvDisplayprojectid: TcxGridDBColumn;
    cgvDisplayamount: TcxGridDBColumn;
    cgvDisplayoutstanding: TcxGridDBColumn;
    cgvDisplayvendorid: TcxGridDBColumn;
    cgvDisplaycustomerid: TcxGridDBColumn;
    cgvDisplayemployeeid: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    lblTanggal: TLabel;
    dbeBankTransactionDate: TcxDBDateEdit;
    Label2: TLabel;
    dbeBankTransactionId: TcxDBTextEdit;
    lblTipe_Transaksi: TLabel;
    dblcCashBankTransactionTypeId: TcxDBExtLookupComboBox;
    lblBank: TLabel;
    dblcBank: TcxDBExtLookupComboBox;
    dblcNoAccount: TcxDBExtLookupComboBox;
    lblNoGiro: TLabel;
    dbeNoGiro: TcxDBTextEdit;
    lblProject: TLabel;
    dblcProject: TcxDBExtLookupComboBox;
    lblVendor: TLabel;
    dblcVendorId: TcxDBExtLookupComboBox;
    dblcVendorId2: TcxDBExtLookupComboBox;
    lblCustomer: TLabel;
    dblcCustomerId: TcxDBExtLookupComboBox;
    dblcCustomerId2: TcxDBExtLookupComboBox;
    lblJumlah: TLabel;
    dbmStatementMemo: TcxDBMemo;
    lblAutoCreate: TLabel;
    Label5: TLabel;
    dbeExternalId: TcxDBTextEdit;
    Label8: TLabel;
    dblcCurrencyId: TcxDBExtLookupComboBox;
    dbeKurs: TcxDBCurrencyEdit;
    lblKeterangan: TLabel;
    dbeAmount: TcxDBCurrencyEdit;
    dsPrevCashBankTransactionType: TDataSource;
    gvrAccounting: TcxGridViewRepository;
    cgvPrevCashBankTransactionType: TcxGridDBTableView;
    cgvPrevCashBankTransactionTypecashbanktransactiontypeid: TcxGridDBColumn;
    cgvPrevCashBankTransactionTypecashbanktransactiontypename: TcxGridDBColumn;
    cgvPrevCashBankTransactionTypeflagbank: TcxGridDBColumn;
    cgvPrevCashBankTransactionTypeflagout: TcxGridDBColumn;
    qryBankTransaction: TUniQuery;
    qryPrevCashBankTransactionType: TUniQuery;
    procedure qryBankTransactionAfterPost(DataSet: TDataSet);
    procedure qryBankTransactionBeforeInsert(DataSet: TDataSet);
    procedure qryBankTransactionAfterCancel(DataSet: TDataSet);
    procedure qryBankTransactionBeforeEdit(DataSet: TDataSet);
    procedure dblcBankPropertiesEditValueChanged(Sender: TObject);
    procedure dsPrevCashOutstandingStateChange(Sender: TObject);
    procedure qryBankTransactionBeforePost(DataSet: TDataSet);
    procedure qryBankTransactionNewRecord(DataSet: TDataSet);
    procedure dbeBankTransactionIdPropertiesEditValueChanged(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure DeinitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FInsertState: boolean;
  public

  end;

var
  fmBankTransaction: TfmBankTransaction;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmGeneral,
  dtmShare, dtmAccounting, frmUni;

procedure TfmBankTransaction.dbeBankTransactionIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  lblAutoCreate.Visible := qryBankTransaction.FieldByName(FIELD_FLAGFIX).AsString = '1';
end;

procedure TfmBankTransaction.dblcBankPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  dmAccounting.qryPrevAccount.Close;
  dmAccounting.qryPrevAccount.Params[0].Value := VarToStr(dblcBank.EditValue);
  OpenIfClose(dmAccounting.qryPrevAccount);
end;

procedure TfmBankTransaction.DeinitForm;
begin
  //

  inherited;
end;

procedure TfmBankTransaction.dsPrevCashOutstandingStateChange(Sender: TObject);
begin
  inherited;

  if qryBankTransaction.State in [dsBrowse] then
  begin
    SetReadOnly(dblcVendorId, True, COLOR_INACTIVE);
    SetReadOnly(dblcCustomerId, True, COLOR_INACTIVE);
    SetReadOnly(dblcVendorId2, True, COLOR_INACTIVE);
    SetReadOnly(dblcCustomerId2, True, COLOR_INACTIVE);
  end;
  if qryBankTransaction.State in [dsInsert] then
  begin
    SetReadOnly(dblcVendorId, False);
    SetReadOnly(dblcCustomerId, False);
    SetReadOnly(dblcVendorId2, False);
    SetReadOnly(dblcCustomerId2, False);
  end;
end;

procedure TfmBankTransaction.InitForm;
begin
  inherited;

  // Init Print
//  DefaultPrimaryKeyField := 'BankTransactionId';
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_BT);

  if FParamValuesArray[0] = 0 then
    Caption := 'Bank Masuk'
  else
    Caption := 'Bank Keluar';

  if FParamValuesArray[1] <> '%' then
    Caption := Caption + ' (per user)';

  SetReadOnly(dblcStatusApprove, True, COLOR_INACTIVE);
  SetReadOnly(dbeBankTransactionId, True, COLOR_INACTIVE);
  SetReadOnly(dbeNoGiro, True, COLOR_INACTIVE);

  TcxCurrencyEditProperties(cgvDisplayamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayoutstanding.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeKurs.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmGeneral.qryVendor, True);
  OpenIfClose(dmGeneral.qryCustomer, True);
  OpenIfClose(dmGeneral.qryProject);
  OpenIfClose(dmAccounting.qryPrevBank);
  qryPrevCashBankTransactionType.Close;
  qryPrevCashBankTransactionType.Params[0].Value := FParamValuesArray[0];
  OpenIfClose(qryPrevCashBankTransactionType);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  MonthYearValueChange(nil); // -> Trigger dtsPurchaseInvoiceHd;
end;

procedure TfmBankTransaction.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryBankTransaction.State in [dsEdit, dsInsert]) or
    (qryBankTransaction.State in [dsEdit, dsInsert]) then
    Abort;

  qryBankTransaction.Close;
  qryBankTransaction.Params[0].Value := StrToInt(cbYear.Text);
  qryBankTransaction.Params[1].Value := cbMonth.ItemIndex + 1;
  qryBankTransaction.Params[2].Value := FParamValuesArray[1];
  qryBankTransaction.Params[3].Value := FParamValuesArray[0];
  OpenIfClose(qryBankTransaction, True, True);
end;

procedure TfmBankTransaction.qryBankTransactionAfterCancel(DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmBankTransaction.qryBankTransactionAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    if FParamValuesArray[0] = 0 then
      dmGlobal.SetLastTransactionId('BankTransaction', dmShare.OptionBM.Prefix,
        DataSet.FieldByName('BankTransactionDate').AsDateTime, dmShare.OptionBM.RunYear)
    else
      dmGlobal.SetLastTransactionId('BankTransaction', dmShare.OptionBK.Prefix,
        DataSet.FieldByName('BankTransactionDate').AsDateTime, dmShare.OptionBK.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmBankTransaction.qryBankTransactionBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName('FlagAutomatic').AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_AUTO_CREATE, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmBankTransaction.qryBankTransactionBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmBankTransaction.qryBankTransactionBeforePost(DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName('Kurs').AsVariant = 0 then
    Dataset.FieldByName('Kurs').AsVariant := 1;

  // Insert Id
  if FInsertState then
  begin
    if FParamValuesArray[0] = 0 then
      DataSet.FieldByName('BankTransactionId').AsString :=
        dmGlobal.GetLastTransactionId('BankTransaction', dmShare.OptionBM.Prefix, dmShare.OptionBM.Length,
          DataSet.FieldByName('BankTransactionDate').AsDateTime, dmShare.OptionBM.RunYear)
    else
      DataSet.FieldByName('BankTransactionId').AsString :=
        dmGlobal.GetLastTransactionId('BankTransaction', dmShare.OptionBK.Prefix, dmShare.OptionBK.Length,
          DataSet.FieldByName('BankTransactionDate').AsDateTime, dmShare.OptionBK.RunYear);
  end;

  // Insert memo if null
  if DataSet.FieldByName('Memo').IsNull then
  begin
    DataSet.FieldByName('Memo').AsString := dblcCashBankTransactionTypeId.Text;
  end;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmBankTransaction.qryBankTransactionNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('Amount').AsCurrency := 0;
  Dataset.FieldByName('StatusApprove').AsInteger := 1;
  Dataset.FieldByName('FlagAutomatic').AsInteger := 0;
  Dataset.FieldByName('StatusApprove').AsInteger := 1;
  if FParamValuesArray[0] = 0 then
    //Caption := 'Kas Masuk'
    DataSet.FieldByName('CashBankTransactionTypeId').AsString := 'B0001'
  else
    //Caption := 'Kas Keluar';
    DataSet.FieldByName('CashBankTransactionTypeId').AsString := 'B0002';

  DataSet.FieldByName('CurrencyId').AsString := 'IDR';
  DataSet.FieldByName('Kurs').AsInteger := 1;
end;

procedure TfmBankTransaction.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryVendor, True);
  LockRefresh(dmGeneral.qryCustomer, True);
  LockRefresh(dmGeneral.qryProject);
  LockRefresh(dmAccounting.qryPrevBank);
  LockRefresh(dmAccounting.qryPrevAccount);
  LockRefresh(qryPrevCashBankTransactionType);
  LockRefresh(dmGlobal.qryCurrencyMaster);
  LockRefresh(qryBankTransaction, True);
end;

end.

