unit frmGiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCalendar, cxDBExtLookupComboBox, cxImageComboBox, cxCurrencyEdit, MemDS,
  DBAccess, Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxMemo,
  cxDBEdit, cxCalc, cxDropDownEdit, dxDockControl, untIvPositionDevExpress,
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
  TfmGiro = class(TFormUniTransactionEx)
    cgDisplay: TcxGrid;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplayissuedate: TcxGridDBColumn;
    cgvDisplaybankid: TcxGridDBColumn;
    cgvDisplaybankaccount: TcxGridDBColumn;
    cgvDisplaygironumber: TcxGridDBColumn;
    cgvDisplaystatusgiro: TcxGridDBColumn;
    cgvDisplaytransactiondate: TcxGridDBColumn;
    cgvDisplayamount: TcxGridDBColumn;
    cgvDisplayvendorid: TcxGridDBColumn;
    cgvDisplaycustomerid: TcxGridDBColumn;
    cgvDisplayprojectid: TcxGridDBColumn;
    cgDisplayLevel1: TcxGridLevel;
    lblTransactionDate: TLabel;
    dbeDateIssue: TcxDBDateEdit;
    lblTanggal: TLabel;
    dblcBank: TcxDBExtLookupComboBox;
    dblcNoAccount: TcxDBExtLookupComboBox;
    lblNoAccount: TLabel;
    dbeGiroNumber: TcxDBTextEdit;
    Label2: TLabel;
    dbcStatus: TcxDBImageComboBox;
    Label5: TLabel;
    dbeTransactionDate: TcxDBDateEdit;
    lblTipe_Transaksi: TLabel;
    dbeGiroDue: TcxDBDateEdit;
    lblProject: TLabel;
    dblcProject: TcxDBExtLookupComboBox;
    lblVendor: TLabel;
    dblcVendorId: TcxDBExtLookupComboBox;
    dblcVendorId2: TcxDBExtLookupComboBox;
    lblCustomer: TLabel;
    dblcCustomerId: TcxDBExtLookupComboBox;
    dblcCustomerId2: TcxDBExtLookupComboBox;
    lblNoGiro: TLabel;
    dbeAmount: TcxDBCalcEdit;
    lblReferenceId: TLabel;
    dbeReferenceId: TcxDBTextEdit;
    Label6: TLabel;
    dbmStatementMemo: TcxDBMemo;
    qryGiro: TUniQuery;
    procedure qryGiroNewRecord(DataSet: TDataSet);
    procedure qryGiroBeforePost(DataSet: TDataSet);
    procedure qryGiroAfterPost(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure dblcBankPropertiesEditValueChanged(Sender: TObject);
  protected
    procedure InitForm; override;
    procedure DeinitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
  public

  end;

var
  fmGiro: TfmGiro;

implementation

{$R *.dfm}

uses
  untProcedure, untConstanta, dtmGlobal, dtmGeneral,
  dtmAccounting, dtmShare, frmUni;

procedure TfmGiro.dblcBankPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  dmAccounting.qryPrevAccount.Close;
  dmAccounting.qryPrevAccount.Params[0].Value := dmAccounting.qryPrevBank.FieldByName('BankId').AsString;
  OpenIfClose(dmAccounting.qryPrevAccount);
end;

procedure TfmGiro.DeinitForm;
begin
  inherited;

end;

procedure TfmGiro.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qryGiro.State in [dsBrowse] then
  begin
    SetReadOnly(dblcVendorId, True, COLOR_INACTIVE);
    SetReadOnly(dblcCustomerId, True, COLOR_INACTIVE);
    SetReadOnly(dblcVendorId2, True, COLOR_INACTIVE);
    SetReadOnly(dblcCustomerId2, True, COLOR_INACTIVE);
  end;
  if qryGiro.State in [dsInsert] then
  begin
    SetReadOnly(dblcVendorId, False);
    SetReadOnly(dblcCustomerId, False);
    SetReadOnly(dblcVendorId2, False);
    SetReadOnly(dblcCustomerId2, False);
  end;
end;

procedure TfmGiro.InitForm;
begin
  inherited;

  // Init Print
//  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_GT);

  if FParamValuesArray[0] = 0 then
  begin
    Self.Caption := 'Giro Masuk';
    lblTransactionDate.Caption := 'Tanggal Terima';
    lblTanggal.Caption := 'Kepada Bank && No AC';
  end
  else
  begin
    Self.Caption := 'Giro Keluar';
    lblTransactionDate.Caption := 'Tanggal Keluar';
    lblTanggal.Caption := 'Dari Bank && No AC';
  end;

  SetReadOnly(dbeReferenceId, True, COLOR_INACTIVE);

  OpenIfClose(dmAccounting.qryPrevBank);
  OpenIfClose(dmGeneral.qryCustomer, True);
  OpenIfClose(dmGeneral.qryVendor, True);
  OpenIfClose(dmGeneral.qryProject);

  MonthYearValueChange(nil); // -> Trigger dtsGiro;

  dbeAmount.Properties.DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatCurrency;

  TcxCurrencyEditProperties(cgvDisplayamount.Properties).DisplayFormat :=
    dmGlobal.SettingGlobal.DisplayFormatCurrency;

end;

procedure TfmGiro.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryGiro.State in [dsEdit, dsInsert]) or
    (qryGiro.State in [dsEdit, dsInsert]) then
    Abort;

  qryGiro.Close;
  qryGiro.Params[0].Value :=
    FormatDateTime('YYYYMM', EncodeDate(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1), 1));
  qryGiro.Params[1].Value := FParamValuesArray[0];
  qryGiro.Params[2].Value := FParamValuesArray[1];
  OpenIfClose(qryGiro, True, True);
end;

procedure TfmGiro.qryGiroAfterPost(DataSet: TDataSet);
begin
  inherited;

  LockRefresh(qryGiro, True);
end;

procedure TfmGiro.qryGiroBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmGiro.qryGiroNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dataset.FieldByName('Amount').AsInteger := 0;
  Dataset.FieldByName('FlagGiroOut').AsInteger := FParamValuesArray[0];
  Dataset.FieldByName('StatusGiro').AsInteger := 0;
  Dataset.FieldByName('StatusApprove').AsInteger := 1;
end;

procedure TfmGiro.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryCustomer, True);
  LockRefresh(dmGeneral.qryVendor, True);
  LockRefresh(dmAccounting.qryPrevBank);
  LockRefresh(dmGeneral.qryProject);
  LockRefresh(qryGiro, True);
end;

end.
