unit frmPaymentType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxImageComboBox, cxDBExtLookupComboBox, cxCheckBox, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBEdit, cxContainer, cxTextEdit, StdCtrls,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxButtons, dxSkinsCore, dxSkinsdxDockControlPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmPaymentType = class(TFormUniMasterEx)
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgvPrevDisplayPaymentTypeId: TcxGridDBColumn;
    cgvPrevDisplayPaymentTypeName: TcxGridDBColumn;
    cgvPrevDisplayflagbank: TcxGridDBColumn;
    cgvPrevDisplaybankid: TcxGridDBColumn;
    cgvPrevDisplayaccountno: TcxGridDBColumn;
    cgvPrevDisplayFlagInactive: TcxGridDBColumn;
    cgvPrevDisplayflagfix: TcxGridDBColumn;
    cgPrevDisplayLevel1: TcxGridLevel;
    lblPaymentTypeId: TLabel;
    dbePaymentTypeId: TcxDBTextEdit;
    dbchkInactive: TcxDBCheckBox;
    lblPaymentTypeName: TLabel;
    dbePaymentTypeName: TcxDBTextEdit;
    lblTransactionPayment: TLabel;
    dbchkFlagPurchasePayment: TcxDBCheckBox;
    dbchkFlagSalesPayment: TcxDBCheckBox;
    dbchkFlagPurchaseReturnPayment: TcxDBCheckBox;
    dbchkFlagSalesReturnPayment: TcxDBCheckBox;
    lblCashOrBank: TLabel;
    dblcCashBankTransactionTypeId: TcxDBExtLookupComboBox;
    lblBank: TLabel;
    dblcBankId: TcxDBExtLookupComboBox;
    lblAccount: TLabel;
    dblcAccountNo: TcxDBExtLookupComboBox;
    dblcAccountName: TcxDBExtLookupComboBox;
    pnlLegend: TPanel;
    Image1: TImage;
    lblFixed: TLabel;
    dbchkFlagSalesBarcodePayment: TcxDBCheckBox;
    procedure qryPaymentTypeBeforeDelete(DataSet: TDataSet);
    procedure cgvPrevDisplayStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure qryPaymentTypeBeforeEdit(DataSet: TDataSet);
    procedure dblcCashBankTransactionTypeIdPropertiesEditValueChanged(
      Sender: TObject);
    procedure dblcBankIdPropertiesEditValueChanged(Sender: TObject);
    procedure qryPaymentTypeBeforePost(DataSet: TDataSet);
    procedure qryPaymentTypeNewRecord(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
  protected
    procedure InitForm; override;
    procedure DeinitForm; override;
    procedure RefreshAll; override;
  private

  public

  end;

var
  fmPaymentType: TfmPaymentType;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmAccounting;

procedure TfmPaymentType.cgvPrevDisplayStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.IsData then
    begin
      if VarToStr(ARecord.Values[GetColumnByFieldName(FIELD_FLAGFIX).Index]) = '1' then
        AStyle := dmGlobal.stRedLight;
    end;
  end;
end;

procedure TfmPaymentType.dblcBankIdPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  dmAccounting.qryPrevAccount.Close;
  dmAccounting.qryPrevAccount.Params[0].Value := VarToStr(dblcBankId.EditValue);
  OpenIfClose(dmAccounting.qryPrevAccount);

  if dmAccounting.qryPaymentType.State in [dsInsert, dsEdit] then
  begin

    dmAccounting.qryPaymentType.FieldByName('AccountNo').AsVariant := Null;
  end;
end;

procedure TfmPaymentType.dblcCashBankTransactionTypeIdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if dmAccounting.cgvPrevCashBankTransactionTypeflagbank.EditValue = 0 then
  begin
    SetReadOnly(dblcBankId, True, COLOR_INACTIVE);
    SetReadOnly(dblcAccountNo, True, COLOR_INACTIVE);
  end
  else
  begin
    SetReadOnly(dblcBankId, False);
    SetReadOnly(dblcAccountNo, False);
  end;
end;

procedure TfmPaymentType.DeinitForm;
begin
  inherited;

end;

procedure TfmPaymentType.dsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if Field = nil then
    Exit;

  if (CompareText(Field.FieldName, 'FlagSalesPayment') = 0) then
  begin
    if dmAccounting.qryPaymentType.FieldByName('FlagSalesPayment').AsString = '0' then
    begin
      SetReadOnly(dbchkFlagSalesBarcodePayment, True);
      dmAccounting.qryPaymentType.FieldByName('FlagSalesBarcodePayment').AsString := '0';
    end
    else
      SetReadOnly(dbchkFlagSalesBarcodePayment, False);
  end;
end;

procedure TfmPaymentType.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dmAccounting.qryPaymentType.State in [dsBrowse] then
  begin
    SetReadOnly(dbePaymentTypeId, True, COLOR_INACTIVE);
//    SetReadOnly(dbchkInactive, True);
    SetReadOnly(dbchkFlagPurchasePayment, True);
    SetReadOnly(dbchkFlagSalesPayment, True);
    SetReadOnly(dbchkFlagSalesBarcodePayment, True);
    SetReadOnly(dbchkFlagPurchaseReturnPayment, True);
    SetReadOnly(dbchkFlagSalesReturnPayment, True);
    SetReadOnly(dblcAccountName, True, COLOR_INACTIVE);
    SetReadOnly(dblcAccountNo, True, COLOR_INACTIVE);
    SetReadOnly(dblcBankId, True, COLOR_INACTIVE);
    SetReadOnly(dblcCashBankTransactionTypeId, True, COLOR_INACTIVE);
  end
  else
  begin
    if dmAccounting.qryPaymentType.FieldByName('FlagSalesPayment').AsString = '0' then
      SetReadOnly(dbchkFlagSalesBarcodePayment, True)
    else
      SetReadOnly(dbchkFlagSalesBarcodePayment, False);
  end;
end;

procedure TfmPaymentType.InitForm;
begin
  inherited;

  SetReadOnly(dbePaymentTypeId, True, COLOR_INACTIVE);
  SetReadOnly(dbchkInactive, True);
  SetReadOnly(dbchkFlagPurchasePayment, True);
  SetReadOnly(dbchkFlagSalesPayment, True);
  SetReadOnly(dbchkFlagSalesBarcodePayment, True);
  SetReadOnly(dbchkFlagPurchaseReturnPayment, True);
  SetReadOnly(dbchkFlagSalesReturnPayment, True);
  SetReadOnly(dblcAccountName, True, COLOR_INACTIVE);
  SetReadOnly(dblcAccountNo, True, COLOR_INACTIVE);
  SetReadOnly(dblcBankId, True, COLOR_INACTIVE);
  SetReadOnly(dblcCashBankTransactionTypeId, True, COLOR_INACTIVE);

  OpenIfClose(dmAccounting.qryPrevBank);
  OpenIfClose(dmAccounting.qryPrevCashBankTransactionType, False);
  OpenIfClose(dmAccounting.qryPaymentType, True);
end;

procedure TfmPaymentType.qryPaymentTypeBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
  begin
    MessageDlg(MSG_RECORD_IS_FIXED, mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfmPaymentType.qryPaymentTypeBeforeEdit(DataSet: TDataSet);
begin
  inherited;
//  if DataSet.FieldByName(FIELD_FLAGFIX).AsString = '1' then
//  begin
//    SetReadOnly(dbePaymentTypeId, False);
//    SetReadOnly(dbchkInactive, False);
//    SetReadOnly(dbchkFlagPurchasePayment, False);
//    SetReadOnly(dbchkFlagSalesPayment, False);
//    SetReadOnly(dbchkFlagSalesBarcodePayment, False);
//    SetReadOnly(dbchkFlagPurchaseReturnPayment, False);
//    SetReadOnly(dbchkFlagSalesReturnPayment, False);
//    SetReadOnly(dblcAccountName, False);
//    SetReadOnly(dblcAccountNo, False);
//    SetReadOnly(dblcBankId, False);
//    SetReadOnly(dblcCashBankTransactionTypeId, False);
//  end;
end;

procedure TfmPaymentType.qryPaymentTypeBeforePost(DataSet: TDataSet);
begin
  inherited;
  if dmAccounting.cgvPrevCashBankTransactionTypeflagbank.EditValue = 0 then
  begin
    DataSet.FieldByName('BankId').AsVariant := Null;
    DataSet.FieldByName('AccountNo').AsVariant := Null;
  end
  else
  begin
    if (DataSet.FieldByName('BankId').IsNull) or
      (DataSet.FieldByName('AccountNo').IsNull) then
    begin
      MessageDlg(MSG_BANK_NOACCOUNT_NULL, mtInformation, [mbok], 0);
      Abort;
    end;
  end;
end;

procedure TfmPaymentType.qryPaymentTypeNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('FlagInactive').AsString := '0';
  DataSet.FieldByName('FlagPurchasePayment').AsString := '0';
  DataSet.FieldByName('FlagSalesPayment').AsString := '0';
  DataSet.FieldByName('FlagSalesBarcodePayment').AsString := '0';
  DataSet.FieldByName('FlagPurchaseReturnPayment').AsString := '0';
  DataSet.FieldByName('FlagSalesReturnPayment').AsString := '0';
  DataSet.FieldByName('FlagFix').AsString := '0';

  SetReadOnly(dbePaymentTypeId, False);
//  SetReadOnly(dbchkInactive, False);
  SetReadOnly(dbchkFlagPurchasePayment, False);
  SetReadOnly(dbchkFlagSalesPayment, False);
  SetReadOnly(dbchkFlagPurchaseReturnPayment, False);
  SetReadOnly(dbchkFlagSalesReturnPayment, False);
  SetReadOnly(dblcCashBankTransactionTypeId, False);
end;

procedure TfmPaymentType.RefreshAll;
begin
  inherited;

  LockRefresh(dmAccounting.qryPrevBank);
  LockRefresh(dmAccounting.qryPrevAccount);
  LockRefresh(dmAccounting.qryPaymentType, True);
end;

end.

