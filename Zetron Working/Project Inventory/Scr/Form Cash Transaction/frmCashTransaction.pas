unit frmCashTransaction;

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
  TfmCashTransaction = class(TFormUniTransactionEx)
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplaystatusapprove: TcxGridDBColumn;
    cgvDisplaycashtransactionid: TcxGridDBColumn;
    cgvDisplaycashtransactiondate: TcxGridDBColumn;
    cgvDisplaycashbanktransactiontypeid: TcxGridDBColumn;
    cgvDisplaycashbanktransactiontypeid2: TcxGridDBColumn;
    cgvDisplayprojectid: TcxGridDBColumn;
    cgvDisplayvendorid: TcxGridDBColumn;
    cgvDisplaycustomerid: TcxGridDBColumn;
    cgvDisplayamount: TcxGridDBColumn;
    cgvDisplayoutstanding: TcxGridDBColumn;
    cgvDisplayemployeeid: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    lblTanggal: TLabel;
    dbeCashTransactionDate: TcxDBDateEdit;
    Label2: TLabel;
    dbeCashTransactionId: TcxDBTextEdit;
    lblTipe_Transaksi: TLabel;
    dblcCashBankTransactionTypeId: TcxDBExtLookupComboBox;
    lblProject: TLabel;
    dblcProject: TcxDBExtLookupComboBox;
    lblVendor: TLabel;
    dblcVendorId: TcxDBExtLookupComboBox;
    dblcVendorId2: TcxDBExtLookupComboBox;
    lblCustomer: TLabel;
    dblcCustomerId: TcxDBExtLookupComboBox;
    dblcCustomerId2: TcxDBExtLookupComboBox;
    lblJumlah: TLabel;
    lblKeterangan: TLabel;
    dbmStatementMemo: TcxDBMemo;
    lblAutoCreate: TLabel;
    Label5: TLabel;
    dbeExternalId: TcxDBTextEdit;
    Label8: TLabel;
    dblcCurrencyId: TcxDBExtLookupComboBox;
    dbeKurs: TcxDBCurrencyEdit;
    dbeAmount: TcxDBCurrencyEdit;
    dsPrevCashBankTransactionType: TDataSource;
    gvrAccounting: TcxGridViewRepository;
    cgvPrevCashBankTransactionType: TcxGridDBTableView;
    cgvPrevCashBankTransactionTypecashbanktransactiontypeid: TcxGridDBColumn;
    cgvPrevCashBankTransactionTypecashbanktransactiontypename: TcxGridDBColumn;
    cgvPrevCashBankTransactionTypeflagbank: TcxGridDBColumn;
    cgvPrevCashBankTransactionTypeflagout: TcxGridDBColumn;
    qryCashTransaction: TUniQuery;
    qryPrevCashBankTransactionType: TUniQuery;
    procedure qryCashTransactionAfterPost(DataSet: TDataSet);
    procedure qryCashTransactionBeforeInsert(DataSet: TDataSet);
    procedure qryCashTransactionAfterCancel(DataSet: TDataSet);
    procedure qryCashTransactionNewRecord(DataSet: TDataSet);
    procedure qryCashTransactionBeforePost(DataSet: TDataSet);
    procedure qryCashTransactionBeforeEdit(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dbeCashTransactionIdPropertiesEditValueChanged(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
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
  fmCashTransaction: TfmCashTransaction;

implementation

{$R *.dfm}

uses untProcedure, untConstantaPOS, untConstanta, dtmGlobal, dtmGeneral,
  dtmShare, dtmAccounting;

procedure TfmCashTransaction.actVoidExecute(Sender: TObject);
begin
  if qryCashTransaction.FieldByName('FlagAutomatic').AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_AUTO_CREATE, mtInformation, [mbOk], 0);
    Abort;
  end;

  inherited;
end;

procedure TfmCashTransaction.dbeCashTransactionIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  lblAutoCreate.Visible := qryCashTransaction.FieldByName('FlagAutomatic').AsString = '1';
end;

procedure TfmCashTransaction.DeinitForm;
begin
  //

  inherited;
end;

procedure TfmCashTransaction.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qryCashTransaction.State in [dsBrowse] then
  begin
    SetReadOnly(dblcVendorId, True, COLOR_INACTIVE);
    SetReadOnly(dblcCustomerId, True, COLOR_INACTIVE);
    SetReadOnly(dblcVendorId2, True, COLOR_INACTIVE);
    SetReadOnly(dblcCustomerId2, True, COLOR_INACTIVE);
  end;
  if qryCashTransaction.State in [dsInsert] then
  begin
    SetReadOnly(dblcVendorId, False);
    SetReadOnly(dblcCustomerId, False);
    SetReadOnly(dblcVendorId2, False);
    SetReadOnly(dblcCustomerId2, False);
  end;
end;

procedure TfmCashTransaction.InitForm;
begin
  inherited;

  // Init Print
//  DefaultPrimaryKeyField := 'CashTransactionId';
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_CT);

  if FParamValuesArray[0] = 0 then
    Caption := 'Kas Masuk'
  else
    Caption := 'Kas Keluar';

  if FParamValuesArray[1] <> '%' then
    Caption := Caption + ' (per user)';

  SetReadOnly(dbeCashTransactionId, True, COLOR_INACTIVE);

  TcxCurrencyEditProperties(cgvDisplayamount.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvDisplayoutstanding.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeKurs.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmGeneral.qryVendor, True);
  OpenIfClose(dmGeneral.qryCustomer, True);
  OpenIfClose(dmGeneral.qryProject);
  qryPrevCashBankTransactionType.Close;
  qryPrevCashBankTransactionType.Params[0].Value := FParamValuesArray[0];
  OpenIfClose(qryPrevCashBankTransactionType);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  MonthYearValueChange(nil); // -> Trigger dtsPurchaseInvoiceHd;
end;

procedure TfmCashTransaction.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryCashTransaction.State in [dsEdit, dsInsert]) or
    (qryCashTransaction.State in [dsEdit, dsInsert]) then
    Abort;

  qryCashTransaction.Close;
  qryCashTransaction.Params[0].Value := StrToInt(cbYear.Text);
  qryCashTransaction.Params[1].Value := cbMonth.ItemIndex + 1;
  qryCashTransaction.Params[2].Value := FParamValuesArray[1];
  qryCashTransaction.Params[3].Value := FParamValuesArray[0];
  OpenIfClose(qryCashTransaction, True, True);
end;

procedure TfmCashTransaction.qryCashTransactionAfterCancel(DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmCashTransaction.qryCashTransactionAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    if FParamValuesArray[0] = 0 then
      dmGlobal.SetLastTransactionId('CashTransaction', dmShare.OptionKM.Prefix,
        DataSet.FieldByName('CashTransactionDate').AsDateTime, dmShare.OptionKM.RunYear)
    else
      dmGlobal.SetLastTransactionId('CashTransaction', dmShare.OptionKK.Prefix,
        DataSet.FieldByName('CashTransactionDate').AsDateTime, dmShare.OptionKK.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmCashTransaction.qryCashTransactionBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName('FlagAutomatic').AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_AUTO_CREATE, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmCashTransaction.qryCashTransactionBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmCashTransaction.qryCashTransactionBeforePost(DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName('Kurs').AsVariant = 0 then
    Dataset.FieldByName('Kurs').AsVariant := 1;

  // Insert Id
  if FInsertState then
  begin
    if FParamValuesArray[0] = 0 then
      DataSet.FieldByName('CashTransactionId').AsString :=
        dmGlobal.GetLastTransactionId('CashTransaction', dmShare.OptionKM.Prefix, dmShare.OptionKM.Length,
          DataSet.FieldByName('CashTransactionDate').AsDateTime, dmShare.OptionKM.RunYear)
    else
      DataSet.FieldByName('CashTransactionId').AsString :=
        dmGlobal.GetLastTransactionId('CashTransaction', dmShare.OptionKK.Prefix, dmShare.OptionKK.Length,
          DataSet.FieldByName('CashTransactionDate').AsDateTime, dmShare.OptionKK.RunYear);
  end;

  // Insert memo if null
  if DataSet.FieldByName('Memo').IsNull then
  begin
    DataSet.FieldByName('Memo').AsString := dblcCashBankTransactionTypeId.Text;
  end;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmCashTransaction.qryCashTransactionNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('Amount').AsCurrency := 0;
  DataSet.FieldByName('StatusApprove').AsInteger := 1;
  Dataset.FieldByName('FlagAutomatic').AsInteger := 0;
  DataSet.FieldByName('StatusApprove').AsInteger := 1;
  if FParamValuesArray[0] = 0 then
    //Caption := 'Kas Masuk'
    DataSet.FieldByName('CashBankTransactionTypeId').AsString := 'C0001'
  else
    //Caption := 'Kas Keluar';
    DataSet.FieldByName('CashBankTransactionTypeId').AsString := 'C0002';

  DataSet.FieldByName('CurrencyId').AsString := 'IDR';
  DataSet.FieldByName('Kurs').AsInteger := 1;
end;

procedure TfmCashTransaction.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryVendor, True);
  LockRefresh(dmGeneral.qryCustomer, True);
  LockRefresh(dmGeneral.qryProject);
  LockRefresh(qryPrevCashBankTransactionType);
  LockRefresh(dmGlobal.qryCurrencyMaster);
  LockRefresh(qryCashTransaction, True);
end;

end.
