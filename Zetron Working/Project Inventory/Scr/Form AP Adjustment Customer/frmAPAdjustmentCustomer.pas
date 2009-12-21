unit frmAPAdjustmentCustomer;

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
  TfmAPAdjustmentCustomer = class(TFormUniTransactionEx)
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
    qryAPAdjustmentCustomer: TUniQuery;
    procedure qryAPAdjustmentCustomerAfterPost(DataSet: TDataSet);
    procedure qryAPAdjustmentCustomerBeforeInsert(DataSet: TDataSet);
    procedure qryAPAdjustmentCustomerAfterCancel(DataSet: TDataSet);
    procedure qryAPAdjustmentCustomerNewRecord(DataSet: TDataSet);
    procedure qryAPAdjustmentCustomerBeforePost(DataSet: TDataSet);
    procedure qryAPAdjustmentCustomerBeforeEdit(DataSet: TDataSet);
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
  fmAPAdjustmentCustomer: TfmAPAdjustmentCustomer;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmGeneral, dtmShare;

procedure TfmAPAdjustmentCustomer.dbeCashTransactionIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  lblAutoCreate.Visible := qryAPAdjustmentCustomer.FieldByName(FIELD_FLAGFIX).AsString = '1';
end;

procedure TfmAPAdjustmentCustomer.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qryAPAdjustmentCustomer.State in [dsBrowse] then
  begin
    SetReadOnly(dblcCustomerId, True, COLOR_INACTIVE);
    SetReadOnly(dblcCustomerId2, True, COLOR_INACTIVE);
  end;
  if qryAPAdjustmentCustomer.State in [dsInsert] then
  begin
    SetReadOnly(dblcCustomerId, False);
    SetReadOnly(dblcCustomerId2, False);
  end;
end;

procedure TfmAPAdjustmentCustomer.InitForm;
begin
  inherited;

  // Init Print
  //dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_AP_VENDOR_ADJUSTMENT);

  SetReadOnly(dbeTransactionId, True, COLOR_INACTIVE);

  OpenIfClose(dmGeneral.qryCustomer, True);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  MonthYearValueChange(nil); // -> Trigger dtsPurchaseInvoiceHd;

  TcxCalcEditProperties(cgvDisplayamount.Properties).DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatCurrency;

  dbeAmount.Properties.DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatCurrency;

end;

procedure TfmAPAdjustmentCustomer.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryAPAdjustmentCustomer.State in [dsEdit, dsInsert]) or
    (qryAPAdjustmentCustomer.State in [dsEdit, dsInsert]) then
    Abort;

  qryAPAdjustmentCustomer.Close;
  qryAPAdjustmentCustomer.Params[0].Value := StrToInt(cbYear.Text);
  qryAPAdjustmentCustomer.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryAPAdjustmentCustomer, True, True);
end;

procedure TfmAPAdjustmentCustomer.qryAPAdjustmentCustomerAfterCancel(DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmAPAdjustmentCustomer.qryAPAdjustmentCustomerAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('APAdjustmentCustomer', dmShare.OptionAP_C_ADJ.Prefix,
      DataSet.FieldByName('APAdjustmentCustomerDate').AsDateTime, dmShare.OptionAP_C_ADJ.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmAPAdjustmentCustomer.qryAPAdjustmentCustomerBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmAPAdjustmentCustomer.qryAPAdjustmentCustomerBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmAPAdjustmentCustomer.qryAPAdjustmentCustomerBeforePost(DataSet: TDataSet);
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
    DataSet.FieldByName('APAdjustmentCustomerId').AsString :=
      dmGlobal.GetLastTransactionId('APAdjustmentCustomer', dmShare.OptionAP_C_ADJ.Prefix, dmShare.OptionAP_C_ADJ.Length,
        DataSet.FieldByName('APAdjustmentCustomerDate').AsDateTime, dmShare.OptionAP_C_ADJ.RunYear);
  end;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmAPAdjustmentCustomer.qryAPAdjustmentCustomerNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('Amount').AsCurrency := 0;
  Dataset.FieldByName('StatusApprove').AsInteger := 1;
  Dataset.FieldByName('FlagFix').AsInteger := 0;
  DataSet.FieldByName('CurrencyId').AsString := 'IDR';
end;

procedure TfmAPAdjustmentCustomer.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryCustomer, True);
  LockRefresh(dmGlobal.qryCurrencyMaster);
  LockRefresh(qryAPAdjustmentCustomer, True);
end;

end.

