unit frmSalesReturnCashPayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  // Auto Generate
  cxGraphics, cxLookAndFeelPainters, Menus, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, MemDS, DBAccess, Uni, StdCtrls, cxButtons, ExtCtrls, cxCalc,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxCurrencyEdit, cxMaskEdit, cxCalendar, cxTextEdit, cxDBEdit, DBCtrls,
  cxContainer, cxGroupBox, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TfmSalesReturnCashPayment = class(TForm)
    dsPrevSalesReturnHd: TDataSource;
    gbInvoice: TcxGroupBox;
    Label4: TLabel;
    Label12: TLabel;
    lblSalesReturnDate: TDBText;
    Label1: TLabel;
    Label13: TLabel;
    lblSalesReturnId: TDBText;
    Label11: TLabel;
    Label14: TLabel;
    lblSalesReturnIdInternal: TDBText;
    lblVendor: TLabel;
    Label15: TLabel;
    lblCustomerName: TDBText;
    Label7: TLabel;
    Label16: TLabel;
    dbeDepositBalance: TcxDBCurrencyEdit;
    gbTotalAmount: TcxGroupBox;
    lblAmount: TLabel;
    lblDisc1: TLabel;
    Label5: TLabel;
    lblDisc2: TLabel;
    lbl2: TLabel;
    lblVoucher: TLabel;
    lblTax: TLabel;
    lbl6: TLabel;
    Label8: TLabel;
    lblTotalAmount: TLabel;
    Shape1: TShape;
    dbeAmount: TcxDBCurrencyEdit;
    dbeDisc1: TcxDBCurrencyEdit;
    dbeDiscAmount1: TcxDBCurrencyEdit;
    dbeDisc2: TcxDBCurrencyEdit;
    dbeDiscAmount2: TcxDBCurrencyEdit;
    dbeVoucher: TcxDBCurrencyEdit;
    dbeTax: TcxDBCurrencyEdit;
    dbeTaxAmount: TcxDBCurrencyEdit;
    dbeMeterai: TcxDBCurrencyEdit;
    dbeTotalAmount: TcxDBCurrencyEdit;
    gbPayment: TcxGroupBox;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    lblOutstanding: TLabel;
    Shape2: TShape;
    dbeOutstandingTotalAmount: TcxDBCurrencyEdit;
    edtPaymentDate: TcxDateEdit;
    edtShortage: TcxCurrencyEdit;
    lcbPaymentType: TcxExtLookupComboBox;
    Panel1: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    Label18: TLabel;
    lcbCurrencyId: TcxExtLookupComboBox;
    edtKurs: TcxCalcEdit;
    edtPaymentAmount: TcxCurrencyEdit;
    qryPrevSalesReturnHd: TUniQuery;
    qryInsSalesReturnPaymentHd: TUniQuery;
    qryInsSalesReturnPaymentDt: TUniQuery;
    qryGetPaymentType: TUniQuery;
    gvrAccounting: TcxGridViewRepository;
    cgvPrevPaymentType: TcxGridDBTableView;
    cgvPrevPaymentTypePaymentTypeId: TcxGridDBColumn;
    cgvPrevPaymentPaymentTypeName: TcxGridDBColumn;
    qryPrevPaymentType: TUniQuery;
    dsPrevPaymentType: TDataSource;
    procedure btnSaveClick(Sender: TObject);
    procedure edtPaymentAmountPropertiesEditValueChanged(Sender: TObject);
  private
    FSalesReturnId: string;
    procedure InitForm;
    procedure DeinitForm;
  public
    class function ExecuteForm(ASalesReturnId: string): TModalResult;
  end;

implementation

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGeneral, dtmInventory,
  dtmShare, frmPrintFastReport, dtmGlobal, dtmAccounting;

{$R *.dfm}

class function TfmSalesReturnCashPayment.ExecuteForm(
  ASalesReturnId: string): TModalResult;
var
  fmSalesReturnCashPayment: TfmSalesReturnCashPayment;
begin
  // NOT MDI
  fmSalesReturnCashPayment := TfmSalesReturnCashPayment.Create(Application);
  with fmSalesReturnCashPayment do
  begin
    try
      FSalesReturnId := ASalesReturnId;
      InitForm;
      Result := ShowModal;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmSalesReturnCashPayment.DeinitForm;
begin
//
end;

procedure TfmSalesReturnCashPayment.InitForm;
begin
  dmGlobal.InitComponent(Self);

  qryPrevSalesReturnHd.Close;
  qryPrevSalesReturnHd.Params[0].Value := FSalesReturnId;
  OpenIfClose(qryPrevSalesReturnHd);
  qryPrevPaymentType.Close;
  qryPrevPaymentType.Params[0].Value := '%'; // FlagInactive
  OpenIfClose(qryPrevPaymentType);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  edtPaymentDate.EditValue := dmGlobal.SettingGlobal.ServerDateTime;
  lcbPaymentType.EditValue := 'PT001'; // Bayar Tunai as default
  edtPaymentAmount.EditValue := qryPrevSalesReturnHd.FieldbyName('OutstandingTotalAmount').AsCurrency;
  edtShortage.EditValue := 0;
  edtKurs.EditValue := 1;

  SetReadOnly(lcbCurrencyId);
  lcbCurrencyId.EditValue := qryPrevSalesReturnHd.FieldbyName('CurrencyId').AsString;

  if dmGlobal.SettingLocal.LanguageFlag = 1 then
  begin
    btnSave.Caption := 'Simpan';
    btnCancel.Caption := 'Batal';
  end;  

  dbeDepositBalance.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeDisc1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeDiscAmount1.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeDisc2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeDiscAmount2.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeVoucher.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTax.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatDisc;
  dbeTaxAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeMeterai.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  dbeOutstandingTotalAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtKurs.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtPaymentAmount.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtShortage.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
end;

procedure TfmSalesReturnCashPayment.edtPaymentAmountPropertiesEditValueChanged(
  Sender: TObject);
begin
  if edtPaymentAmount.EditValue > dbeOutstandingTotalAmount.EditValue then
    edtShortage.EditValue := edtPaymentAmount.EditValue - dbeOutstandingTotalAmount.EditValue
  else
    edtShortage.EditValue := 0;
end;

procedure TfmSalesReturnCashPayment.btnSaveClick(Sender: TObject);
var
  PaymentId: string;
  AmountPaymentSaved: currency;
begin
  if edtPaymentAmount.EditValue = 0 then
    Exit;

  if edtKurs.EditValue = 0 then
    edtKurs.EditValue := 1;

  // Create Payment
  if (VarToStr(lcbPaymentType.EditValue) <> 'PT001') and (edtShortage.EditValue > 0) then
  begin
    MessageDlg(MSG_INVALID_NON_CASH_PAYMENT, mtinformation, [mbOk], 0);
    Exit;
  end;
  AmountPaymentSaved := edtPaymentAmount.EditValue - edtShortage.EditValue;

  PaymentId := dmGlobal.GetLastTransactionId('SalesReturnPaymentHd',
    dmShare.OptionSRP.Prefix, dmShare.OptionSRP.Length, edtPaymentDate.Date, dmShare.OptionSRP.RunYear);

  qryInsSalesReturnPaymentHd.Params[0].Value := PaymentId;
  qryInsSalesReturnPaymentHd.Params[1].Value := edtPaymentDate.Date;
  qryInsSalesReturnPaymentHd.Params[2].Value := qryPrevSalesReturnHd.FieldByName('CustomerId').AsString;
  qryInsSalesReturnPaymentHd.Params[3].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
  qryInsSalesReturnPaymentHd.Execute;

  dmGlobal.SetLastTransactionId('SalesReturnPaymentHd', dmShare.OptionSRP.Prefix,
    edtPaymentDate.Date, dmShare.OptionSRP.RunYear);

  qryInsSalesReturnPaymentDt.Params[0].Value := PaymentId;
  qryInsSalesReturnPaymentDt.Params[1].Value := qryPrevSalesReturnHd.FieldByName('SalesReturnId').AsString;
  qryInsSalesReturnPaymentDt.Params[2].Value := VarToStr(lcbPaymentType.EditValue);
  qryInsSalesReturnPaymentDt.Params[3].Value := AmountPaymentSaved;
  qryInsSalesReturnPaymentDt.Params[4].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
  qryInsSalesReturnPaymentDt.Params[5].Value := VarToStr(lcbCurrencyId.EditValue);
  qryInsSalesReturnPaymentDt.Params[6].Value := edtKurs.EditValue;
  qryInsSalesReturnPaymentDt.Execute;

  ModalResult := mrOk;
end;

end.
