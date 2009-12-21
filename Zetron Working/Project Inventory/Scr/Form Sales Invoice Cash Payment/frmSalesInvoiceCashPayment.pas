unit frmSalesInvoiceCashPayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils,

  // Auto Generate
  cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, MemDS, DBAccess, Uni, cxCalc, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxCurrencyEdit, cxMaskEdit, cxCalendar,
  ExtCtrls, cxTextEdit, cxDBEdit, DBCtrls, StdCtrls, cxContainer, cxGroupBox,
  cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TfmSalesInvoiceCashPayment = class(TForm)
    dsPrevSalesInvoice: TDataSource;
    Panel1: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    gbTotalAmount: TcxGroupBox;
    lblAmount: TLabel;
    dbeAmount: TcxDBCurrencyEdit;
    lblDisc1: TLabel;
    dbeDisc1: TcxDBCurrencyEdit;
    Label5: TLabel;
    dbeDiscAmount1: TcxDBCurrencyEdit;
    lblDisc2: TLabel;
    dbeDisc2: TcxDBCurrencyEdit;
    lbl2: TLabel;
    dbeDiscAmount2: TcxDBCurrencyEdit;
    lblVoucher: TLabel;
    dbeVoucher: TcxDBCurrencyEdit;
    lblTax: TLabel;
    dbeTax: TcxDBCurrencyEdit;
    lbl6: TLabel;
    dbeTaxAmount: TcxDBCurrencyEdit;
    Label8: TLabel;
    dbeMeterai: TcxDBCurrencyEdit;
    lblTotalAmount: TLabel;
    dbeTotalAmount: TcxDBCurrencyEdit;
    Shape1: TShape;
    gbInvoice: TcxGroupBox;
    Label4: TLabel;
    Label12: TLabel;
    lblSalesInvoiceDate: TDBText;
    Label1: TLabel;
    Label13: TLabel;
    lblSalesInvoiceId: TDBText;
    Label11: TLabel;
    Label14: TLabel;
    lblSalesInvoiceIdInternal: TDBText;
    Label6: TLabel;
    Label15: TLabel;
    lblCustomerName: TDBText;
    Label7: TLabel;
    Label16: TLabel;
    gbPayment: TcxGroupBox;
    dbeOutstandingTotalAmount: TcxDBCurrencyEdit;
    edtPaymentDate: TcxDateEdit;
    edtShortage: TcxCurrencyEdit;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    lblOutstanding: TLabel;
    lcbPaymentType: TcxExtLookupComboBox;
    Shape2: TShape;
    dbeDepositBalance: TcxDBCurrencyEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label18: TLabel;
    lcbCurrencyId: TcxExtLookupComboBox;
    edtKurs: TcxCalcEdit;
    lblCurrencyId: TDBText;
    edtPaymentAmount: TcxCurrencyEdit;
    qryPrevSalesInvoice: TUniQuery;
    qryInsSalesPayment: TUniQuery;
    qryInsSalesPaymentDt: TUniQuery;
    qryGetPaymentType: TUniQuery;
    gvrAccounting: TcxGridViewRepository;
    cgvPrevPaymentType: TcxGridDBTableView;
    cgvPrevPaymentTypePaymentTypeId: TcxGridDBColumn;
    cgvPrevPaymentPaymentTypeName: TcxGridDBColumn;
    qryPrevPaymentType: TUniQuery;
    dsPrevPaymentType: TDataSource;
    procedure edtPaymentAmountPropertiesEditValueChanged(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    FSalesInvoiceId: string;
    procedure InitForm;
    procedure DeinitForm;
  public
    class function ExecuteForm(ASalesInvoiceId: string): TModalResult;
  end;

implementation

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmAccounting,
  dtmShare;

{$R *.dfm}

class function TfmSalesInvoiceCashPayment.ExecuteForm(
  ASalesInvoiceId: string): TModalResult;
var
  fmSalesInvoiceCashPayment: TfmSalesInvoiceCashPayment;
begin
  // NOT MDI !
  fmSalesInvoiceCashPayment := TfmSalesInvoiceCashPayment.Create(Application);
  with fmSalesInvoiceCashPayment do
  begin
    try
      FSalesInvoiceId := ASalesInvoiceId;
      InitForm;
      Result := ShowModal;
      DeinitForm;
    finally
      Release;
    end;
  end;
end;

procedure TfmSalesInvoiceCashPayment.DeinitForm;
begin
//
end;

procedure TfmSalesInvoiceCashPayment.InitForm;
begin
  dmGlobal.InitComponent(Self);

  qryPrevSalesInvoice.Close;
  qryPrevSalesInvoice.Params[0].Value := FSalesInvoiceId;
  OpenIfClose(qryPrevSalesInvoice);
  qryPrevPaymentType.Close;
  qryPrevPaymentType.Params[0].Value := '%'; // FlagInactive
  OpenIfClose(qryPrevPaymentType);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  edtPaymentDate.EditValue := dmGlobal.SettingGlobal.ServerDateTime;
  lcbPaymentType.EditValue := 'PT002'; // Terima Tunai as default
  edtPaymentAmount.EditValue := qryPrevSalesInvoice.FieldbyName('OutstandingTotalAmount').AsCurrency;
  edtShortage.EditValue := 0;
  edtKurs.EditValue := 1;

  SetReadOnly(lcbCurrencyId);
  lcbCurrencyId.EditValue := qryPrevSalesInvoice.FieldbyName('CurrencyId').AsString;

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

procedure TfmSalesInvoiceCashPayment.edtPaymentAmountPropertiesEditValueChanged(
  Sender: TObject);
begin
  if edtPaymentAmount.EditValue > dbeOutstandingTotalAmount.EditValue then
    edtShortage.EditValue := edtPaymentAmount.EditValue - dbeOutstandingTotalAmount.EditValue
  else
    edtShortage.EditValue := 0;
end;

procedure TfmSalesInvoiceCashPayment.btnSaveClick(Sender: TObject);
var
  PaymentId: string;
  AmountPaymentSaved: currency;
begin
  if edtPaymentAmount.EditValue = 0 then
    Exit;

  if edtKurs.EditValue = 0 then
    edtKurs.EditValue := 1;

  // Create Payment
  if (VarToStr(lcbPaymentType.EditValue) <> 'PT002') and (edtShortage.EditValue > 0) then
  begin
    MessageDlg(MSG_INVALID_NON_CASH_PAYMENT, mtinformation, [mbOk], 0);
    Exit;
  end;

  AmountPaymentSaved := edtPaymentAmount.EditValue - edtShortage.EditValue;

  PaymentId := dmGlobal.GetLastTransactionId('SalesPayment',
    dmShare.OptionSP.Prefix, dmShare.OptionSP.Length, edtPaymentDate.Date, dmShare.OptionSP.RunYear);

  qryInsSalesPayment.Params[0].Value := PaymentId;
  qryInsSalesPayment.Params[1].Value := edtPaymentDate.Date;
  qryInsSalesPayment.Params[2].Value := qryPrevSalesInvoice.FieldByName('CustomerId').AsString;
  qryInsSalesPayment.Params[3].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
  qryInsSalesPayment.Execute;

  dmGlobal.SetLastTransactionId('SalesPayment', dmShare.OptionSP.Prefix,
    edtPaymentDate.Date, dmShare.OptionSP.RunYear);

  qryInsSalesPaymentDt.Params[0].Value := PaymentId;
  qryInsSalesPaymentDt.Params[1].Value := qryPrevSalesInvoice.FieldByName('SalesInvoiceId').AsString;
  qryInsSalesPaymentDt.Params[2].Value := VarToStr(lcbPaymentType.EditValue);
  qryInsSalesPaymentDt.Params[3].Value := AmountPaymentSaved;
  qryInsSalesPaymentDt.Params[4].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
  qryInsSalesPaymentDt.Params[5].Value := VarToStr(lcbCurrencyId.EditValue);
  qryInsSalesPaymentDt.Params[6].Value := edtKurs.EditValue;
  qryInsSalesPaymentDt.Execute;

  ModalResult := mrOk;
end;

end.
