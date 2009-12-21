unit frmARAdjustmentCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, cxCalendar, cxDBExtLookupComboBox, cxCalc, MemDS, DBAccess,
  Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxMemo, cxDBEdit,
  cxDropDownEdit, dxDockControl, untIvPositionDevExpress, untIvPositionStandard,
  ActnList, dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit,
  cxMaskEdit, StdCtrls, cxButtons, ExtCtrls, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxSkinscxPCPainter;

type
  TfmARAdjustmentCustomer = class(TFormUniTransactionEx)
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
    dbeTransactionDate: TcxDBDateEdit;
    Label2: TLabel;
    dbeTransactionId: TcxDBTextEdit;
    lblVendor: TLabel;
    dblcCustomerId: TcxDBExtLookupComboBox;
    dblcCustomerId2: TcxDBExtLookupComboBox;
    lblJumlah: TLabel;
    dbeAmount: TcxDBCalcEdit;
    lblKeterangan: TLabel;
    dbmStatementMemo: TcxDBMemo;
    lblAutoCreate: TLabel;
    Label5: TLabel;
    dbeExternalId: TcxDBTextEdit;
    Label8: TLabel;
    dblcCurrencyId: TcxDBExtLookupComboBox;
    qryARAdjustmentCustomer: TUniQuery;
    procedure qryARAdjustmentCustomerAfterPost(DataSet: TDataSet);
    procedure qryARAdjustmentCustomerBeforeInsert(DataSet: TDataSet);
    procedure qryARAdjustmentCustomerAfterCancel(DataSet: TDataSet);
    procedure qryARAdjustmentCustomerNewRecord(DataSet: TDataSet);
    procedure qryARAdjustmentCustomerBeforePost(DataSet: TDataSet);
    procedure qryARAdjustmentCustomerBeforeEdit(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dbeCashTransactionIdPropertiesEditValueChanged(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FInsertState: boolean;
  public

  end;

var
  fmARAdjustmentCustomer: TfmARAdjustmentCustomer;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmGeneral, dtmShare;

procedure TfmARAdjustmentCustomer.dbeCashTransactionIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  lblAutoCreate.Visible := qryARAdjustmentCustomer.FieldByName(FIELD_FLAGFIX).AsString = '1';
end;

procedure TfmARAdjustmentCustomer.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qryARAdjustmentCustomer.State in [dsBrowse] then
  begin
    SetReadOnly(dblcCustomerId, True, COLOR_INACTIVE);
    SetReadOnly(dblcCustomerId2, True, COLOR_INACTIVE);
  end;
  if qryARAdjustmentCustomer.State in [dsInsert] then
  begin
    SetReadOnly(dblcCustomerId, False);
    SetReadOnly(dblcCustomerId2, False);
  end;
end;

procedure TfmARAdjustmentCustomer.InitForm;
begin
  inherited;

  // Init Print
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_AP_VENDOR_ADJUSTMENT);

  SetReadOnly(dbeTransactionId, True, COLOR_INACTIVE);

  OpenIfClose(dmGeneral.qryCustomer, True);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  MonthYearValueChange(nil); // -> Trigger dtsPurchaseInvoiceHd;

  TcxCalcEditProperties(cgvDisplayamount.Properties).DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatCurrency;

  dbeAmount.Properties.DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatCurrency;
  
end;

procedure TfmARAdjustmentCustomer.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryARAdjustmentCustomer.State in [dsEdit, dsInsert]) or
    (qryARAdjustmentCustomer.State in [dsEdit, dsInsert]) then
    Abort;

  qryARAdjustmentCustomer.Close;
  qryARAdjustmentCustomer.Params[0].Value := StrToInt(cbYear.Text);
  qryARAdjustmentCustomer.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryARAdjustmentCustomer, True, True);
end;

procedure TfmARAdjustmentCustomer.qryARAdjustmentCustomerAfterCancel(DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmARAdjustmentCustomer.qryARAdjustmentCustomerAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('ARAdjustmentCustomer', dmShare.OptionAR_C_ADJ.Prefix,
      DataSet.FieldByName('ARAdjustmentCustomerDate').AsDateTime, dmShare.OptionAR_C_ADJ.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmARAdjustmentCustomer.qryARAdjustmentCustomerBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmARAdjustmentCustomer.qryARAdjustmentCustomerBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmARAdjustmentCustomer.qryARAdjustmentCustomerBeforePost(DataSet: TDataSet);
begin
  inherited;

  if DataSet.FieldByName('CurrencyId').AsString = 'IDR' then
  begin
    MessageDlg(MSG_ADJUSTMENT_KURS_INVALID, mtInformation, [mbOk], 0);
    Abort;
  end;

  // Insert Id
  if FInsertState then
  begin
    DataSet.FieldByName('ARAdjustmentCustomerId').AsString :=
      dmGlobal.GetLastTransactionId('ARAdjustmentCustomer', dmShare.OptionAR_C_ADJ.Prefix, dmShare.OptionAR_C_ADJ.Length,
        DataSet.FieldByName('ARAdjustmentCustomerDate').AsDateTime, dmShare.OptionAR_C_ADJ.RunYear);
  end;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmARAdjustmentCustomer.qryARAdjustmentCustomerNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('Amount').AsCurrency := 0;
  Dataset.FieldByName('StatusApprove').AsInteger := 1;
  Dataset.FieldByName('FlagFix').AsInteger := 0;
  DataSet.FieldByName('CurrencyId').AsString := 'IDR';
end;

procedure TfmARAdjustmentCustomer.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryCustomer, True);
  LockRefresh(dmGlobal.qryCurrencyMaster);
  LockRefresh(qryARAdjustmentCustomer, True);
end;

end.
