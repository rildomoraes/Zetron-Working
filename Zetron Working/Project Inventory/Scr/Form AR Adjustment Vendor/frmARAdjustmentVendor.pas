unit frmARAdjustmentVendor;

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
  TfmARAdjustmentVendor = class(TFormUniTransactionEx)
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
    dblcVendorId: TcxDBExtLookupComboBox;
    dblcVendorId2: TcxDBExtLookupComboBox;
    lblJumlah: TLabel;
    dbeAmount: TcxDBCalcEdit;
    lblKeterangan: TLabel;
    dbmStatementMemo: TcxDBMemo;
    lblAutoCreate: TLabel;
    Label5: TLabel;
    dbeExternalId: TcxDBTextEdit;
    Label8: TLabel;
    dblcCurrencyId: TcxDBExtLookupComboBox;
    qryARAdjustmentVendor: TUniQuery;
    procedure qryARAdjustmentVendorAfterPost(DataSet: TDataSet);
    procedure qryARAdjustmentVendorBeforeInsert(DataSet: TDataSet);
    procedure qryARAdjustmentVendorAfterCancel(DataSet: TDataSet);
    procedure qryARAdjustmentVendorNewRecord(DataSet: TDataSet);
    procedure qryARAdjustmentVendorBeforePost(DataSet: TDataSet);
    procedure qryARAdjustmentVendorBeforeEdit(DataSet: TDataSet);
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
  fmARAdjustmentVendor: TfmARAdjustmentVendor;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmGeneral, dtmShare;

procedure TfmARAdjustmentVendor.dbeCashTransactionIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  lblAutoCreate.Visible := qryARAdjustmentVendor.FieldByName(FIELD_FLAGFIX).AsString = '1';
end;

procedure TfmARAdjustmentVendor.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qryARAdjustmentVendor.State in [dsBrowse] then
  begin
    SetReadOnly(dblcVendorId, True, COLOR_INACTIVE);
    SetReadOnly(dblcVendorId2, True, COLOR_INACTIVE);
  end;
  if qryARAdjustmentVendor.State in [dsInsert] then
  begin
    SetReadOnly(dblcVendorId, False);
    SetReadOnly(dblcVendorId2, False);
  end;
end;

procedure TfmARAdjustmentVendor.InitForm;
begin
  inherited;

  // Init Print
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, FORM_AP_VENDOR_ADJUSTMENT);

  SetReadOnly(dbeTransactionId, True, COLOR_INACTIVE);

  OpenIfClose(dmGeneral.qryVendor, True);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  MonthYearValueChange(nil); // -> Trigger dtsPurchaseInvoiceHd;

  TcxCalcEditProperties(cgvDisplayamount.Properties).DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatCurrency;

  dbeAmount.Properties.DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatCurrency;
  
end;

procedure TfmARAdjustmentVendor.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryARAdjustmentVendor.State in [dsEdit, dsInsert]) or
    (qryARAdjustmentVendor.State in [dsEdit, dsInsert]) then
    Abort;

  qryARAdjustmentVendor.Close;
  qryARAdjustmentVendor.Params[0].Value := StrToInt(cbYear.Text);
  qryARAdjustmentVendor.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryARAdjustmentVendor, True, True);
end;

procedure TfmARAdjustmentVendor.qryARAdjustmentVendorAfterCancel(DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmARAdjustmentVendor.qryARAdjustmentVendorAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('ARAdjustmentVendor', dmShare.OptionAR_V_ADJ.Prefix,
      DataSet.FieldByName('ARAdjustmentVendorDate').AsDateTime, dmShare.OptionAR_V_ADJ.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmARAdjustmentVendor.qryARAdjustmentVendorBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmARAdjustmentVendor.qryARAdjustmentVendorBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmARAdjustmentVendor.qryARAdjustmentVendorBeforePost(DataSet: TDataSet);
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
    DataSet.FieldByName('ARAdjustmentVendorId').AsString :=
      dmGlobal.GetLastTransactionId('ARAdjustmentVendor', dmShare.OptionAR_V_ADJ.Prefix, dmShare.OptionAR_V_ADJ.Length,
        DataSet.FieldByName('ARAdjustmentVendorDate').AsDateTime, dmShare.OptionAR_V_ADJ.RunYear);
  end;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmARAdjustmentVendor.qryARAdjustmentVendorNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('Amount').AsCurrency := 0;
  Dataset.FieldByName('StatusApprove').AsInteger := 1;
  Dataset.FieldByName('FlagFix').AsInteger := 0;
  DataSet.FieldByName('CurrencyId').AsString := 'IDR';
end;

procedure TfmARAdjustmentVendor.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryVendor, True);
  LockRefresh(dmGlobal.qryCurrencyMaster);
  LockRefresh(qryARAdjustmentVendor, True);
end;

end.
