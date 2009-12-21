unit frmAPAdjustmentVendor;

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
  TfmAPAdjustmentVendor = class(TFormUniTransactionEx)
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
    qryAPAdjustmentVendor: TUniQuery;
    procedure qryAPAdjustmentVendorAfterPost(DataSet: TDataSet);
    procedure qryAPAdjustmentVendorBeforeInsert(DataSet: TDataSet);
    procedure qryAPAdjustmentVendorAfterCancel(DataSet: TDataSet);
    procedure qryAPAdjustmentVendorNewRecord(DataSet: TDataSet);
    procedure qryAPAdjustmentVendorBeforePost(DataSet: TDataSet);
    procedure qryAPAdjustmentVendorBeforeEdit(DataSet: TDataSet);
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
  fmAPAdjustmentVendor: TfmAPAdjustmentVendor;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmGeneral, dtmShare;

procedure TfmAPAdjustmentVendor.dbeCashTransactionIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  lblAutoCreate.Visible := qryAPAdjustmentVendor.FieldByName(FIELD_FLAGFIX).AsString = '1';
end;

procedure TfmAPAdjustmentVendor.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qryAPAdjustmentVendor.State in [dsBrowse] then
  begin
    SetReadOnly(dblcVendorId, True, COLOR_INACTIVE);
    SetReadOnly(dblcVendorId2, True, COLOR_INACTIVE);
  end;
  if qryAPAdjustmentVendor.State in [dsInsert] then
  begin
    SetReadOnly(dblcVendorId, False);
    SetReadOnly(dblcVendorId2, False);
  end;
end;

procedure TfmAPAdjustmentVendor.InitForm;
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

procedure TfmAPAdjustmentVendor.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryAPAdjustmentVendor.State in [dsEdit, dsInsert]) or
    (qryAPAdjustmentVendor.State in [dsEdit, dsInsert]) then
    Abort;

  qryAPAdjustmentVendor.Close;
  qryAPAdjustmentVendor.Params[0].Value := StrToInt(cbYear.Text);
  qryAPAdjustmentVendor.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryAPAdjustmentVendor, True, True);
end;

procedure TfmAPAdjustmentVendor.qryAPAdjustmentVendorAfterCancel(DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmAPAdjustmentVendor.qryAPAdjustmentVendorAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('APAdjustmentVendor', dmShare.OptionAP_V_ADJ.Prefix,
      DataSet.FieldByName('APAdjustmentVendorDate').AsDateTime, dmShare.OptionAP_V_ADJ.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmAPAdjustmentVendor.qryAPAdjustmentVendorBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if Dataset.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmAPAdjustmentVendor.qryAPAdjustmentVendorBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmAPAdjustmentVendor.qryAPAdjustmentVendorBeforePost(DataSet: TDataSet);
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
    DataSet.FieldByName('APAdjustmentVendorId').AsString :=
      dmGlobal.GetLastTransactionId('APAdjustmentVendor', dmShare.OptionAP_V_ADJ.Prefix, dmShare.OptionAP_V_ADJ.Length,
        DataSet.FieldByName('APAdjustmentVendorDate').AsDateTime, dmShare.OptionAP_V_ADJ.RunYear);
  end;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmAPAdjustmentVendor.qryAPAdjustmentVendorNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('Amount').AsCurrency := 0;
  Dataset.FieldByName('StatusApprove').AsInteger := 1;
  Dataset.FieldByName('FlagFix').AsInteger := 0;
  DataSet.FieldByName('CurrencyId').AsString := 'IDR';
end;

procedure TfmAPAdjustmentVendor.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryVendor, True);
  LockRefresh(dmGlobal.qryCurrencyMaster);
  LockRefresh(qryAPAdjustmentVendor, True);
end;

end.
