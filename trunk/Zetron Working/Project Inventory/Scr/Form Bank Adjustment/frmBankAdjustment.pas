unit frmBankAdjustment;

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
  TfmBankAdjustment = class(TFormUniTransactionEx)
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
    dbeBankAdjustmentDate: TcxDBDateEdit;
    Label2: TLabel;
    dbeBankAdjustmentId: TcxDBTextEdit;
    lblBank: TLabel;
    dblcBank: TcxDBExtLookupComboBox;
    dblcNoAccount: TcxDBExtLookupComboBox;
    lblJumlah: TLabel;
    dbeAmount: TcxDBCalcEdit;
    dbmStatementMemo: TcxDBMemo;
    lblAutoCreate: TLabel;
    Label5: TLabel;
    dbeExternalId: TcxDBTextEdit;
    Label8: TLabel;
    dblcCurrencyId: TcxDBExtLookupComboBox;
    lblKeterangan: TLabel;
    qryBankAdjustment: TUniQuery;
    procedure dbeBankAdjustmentIdPropertiesEditValueChanged(Sender: TObject);
    procedure qryBankAdjustmentAfterPost(DataSet: TDataSet);
    procedure qryBankAdjustmentBeforeInsert(DataSet: TDataSet);
    procedure qryBankAdjustmentAfterCancel(DataSet: TDataSet);
    procedure qryBankAdjustmentBeforeEdit(DataSet: TDataSet);
    procedure dblcBankPropertiesEditValueChanged(Sender: TObject);
    procedure qryBankAdjustmentBeforePost(DataSet: TDataSet);
    procedure qryBankAdjustmentNewRecord(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FInsertState: boolean;
  public

  end;

var
  fmBankAdjustment: TfmBankAdjustment;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmGeneral, dtmShare,
  dtmAccounting;

procedure TfmBankAdjustment.dbeBankAdjustmentIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  lblAutoCreate.Visible := qryBankAdjustment.FieldByName(FIELD_FLAGFIX).AsString = '1';
end;

procedure TfmBankAdjustment.dblcBankPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  dmAccounting.qryPrevAccount.Close;
  dmAccounting.qryPrevAccount.Params[0].Value := VarToStr(dblcBank.EditValue);
  OpenIfClose(dmAccounting.qryPrevAccount);
end;

procedure TfmBankAdjustment.InitForm;
begin
  inherited;

  // Init Print
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_BT);

  SetReadOnly(dblcStatusApprove, True, COLOR_INACTIVE);
  SetReadOnly(dbeBankAdjustmentId, True, COLOR_INACTIVE);

  OpenIfClose(dmAccounting.qryPrevBank);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  MonthYearValueChange(nil); // -> Trigger dtsPurchaseInvoiceHd;

  TcxCalcEditProperties(cgvDisplayamount.Properties).DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatCurrency;

  dbeAmount.Properties.DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatCurrency;

end;

procedure TfmBankAdjustment.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryBankAdjustment.State in [dsEdit, dsInsert]) or
    (qryBankAdjustment.State in [dsEdit, dsInsert]) then
    Abort;

  qryBankAdjustment.Close;
  qryBankAdjustment.Params[0].Value := StrToInt(cbYear.Text);
  qryBankAdjustment.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryBankAdjustment, True, True);
end;

procedure TfmBankAdjustment.qryBankAdjustmentAfterCancel(DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmBankAdjustment.qryBankAdjustmentAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('BankAdjustment', dmShare.OptionBANK_ADJ.Prefix,
      DataSet.FieldByName('BankAdjustmentDate').AsDateTime, dmShare.OptionBANK_ADJ.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmBankAdjustment.qryBankAdjustmentBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmBankAdjustment.qryBankAdjustmentBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmBankAdjustment.qryBankAdjustmentBeforePost(DataSet: TDataSet);
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
    DataSet.FieldByName('BankAdjustmentId').AsString :=
      dmGlobal.GetLastTransactionId('BankAdjustment', dmShare.OptionBANK_ADJ.Prefix, dmShare.OptionBANK_ADJ.Length,
        DataSet.FieldByName('BankAdjustmentDate').AsDateTime, dmShare.OptionBANK_ADJ.RunYear);
  end;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmBankAdjustment.qryBankAdjustmentNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('Amount').AsCurrency := 0;
  Dataset.FieldByName('StatusApprove').AsInteger := 1;
  Dataset.FieldByName('FlagFix').AsInteger := 0;
  DataSet.FieldByName('CurrencyId').AsString := 'IDR';
end;

procedure TfmBankAdjustment.RefreshAll;
begin
  inherited;

  LockRefresh(dmAccounting.qryPrevBank);
  LockRefresh(dmAccounting.qryPrevAccount);
  LockRefresh(dmGlobal.qryCurrencyMaster);
  LockRefresh(qryBankAdjustment, True);
end;

end.

