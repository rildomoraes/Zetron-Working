unit frmPurchaseInvoiceCashPayment;

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
  TfmPurchaseInvoiceCashPayment = class(TForm)
    dsPrevPurchaseInvoice: TDataSource;
    gbInvoice: TcxGroupBox;
    Label4: TLabel;
    Label12: TLabel;
    lblPurchaseInvoiceDate: TDBText;
    Label1: TLabel;
    Label13: TLabel;
    lbPurchaseInvoiceId: TDBText;
    Label11: TLabel;
    Label14: TLabel;
    lblVendorPurchaseInvoiceId: TDBText;
    Label6: TLabel;
    Label15: TLabel;
    lblVendorName: TDBText;
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
    Label19: TLabel;
    Label20: TLabel;
    lblCurrencyId: TDBText;
    edtPaymentAmount: TcxCurrencyEdit;
    qryPrevPurchaseInvoice: TUniQuery;
    qryInsPurchasePayment: TUniQuery;
    qryInsPurchasePaymentDt: TUniQuery;
    qryPrevPaymentType: TUniQuery;
    dsPrevPaymentType: TDataSource;
    gvrAccounting: TcxGridViewRepository;
    cgvPrevPaymentType: TcxGridDBTableView;
    cgvPrevPaymentTypePaymentTypeId: TcxGridDBColumn;
    cgvPrevPaymentPaymentTypeName: TcxGridDBColumn;
    qryGetPaymentType: TUniQuery;
    procedure edtPaymentAmountPropertiesEditValueChanged(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
    FSalesInvoiceId: string;
    procedure InitForm;
    procedure DeinitForm;
  public
    { Public declarations }
    class function ExecuteForm(ASalesInvoiceId: string): TModalResult;
  end;

implementation

uses
  untProcedure, untConstanta, untConstantaPOS, dtmGeneral, dtmShare, dtmGlobal,
  dtmAccounting;

{$R *.dfm}

class function TfmPurchaseInvoiceCashPayment.ExecuteForm(
  ASalesInvoiceId: string): TModalResult;
var
  fmPurchaseInvoiceCashPayment: TfmPurchaseInvoiceCashPayment;
begin
  // NOT MDI
  fmPurchaseInvoiceCashPayment := TfmPurchaseInvoiceCashPayment.Create(Application);
  with fmPurchaseInvoiceCashPayment do
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

procedure TfmPurchaseInvoiceCashPayment.DeinitForm;
begin
//
end;

procedure TfmPurchaseInvoiceCashPayment.InitForm;
begin
  dmGlobal.InitComponent(Self);

  qryPrevPurchaseInvoice.Close;
  qryPrevPurchaseInvoice.Params[0].Value := FSalesInvoiceId;
  OpenIfClose(qryPrevPurchaseInvoice);
  qryPrevPaymentType.Close;
  qryPrevPaymentType.Params[0].Value := '%'; // FlagInactive
  OpenIfClose(qryPrevPaymentType);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  edtPaymentDate.EditValue := dmGlobal.SettingGlobal.ServerDateTime;
  lcbPaymentType.EditValue := 'PT001'; // Bayar Tunai as Default
  edtPaymentAmount.EditValue := qryPrevPurchaseInvoice.FieldbyName('OutstandingTotalAmount').AsCurrency;
  edtShortage.EditValue := 0;
  edtKurs.EditValue := 1;

  SetReadOnly(lcbCurrencyId);
  lcbCurrencyId.EditValue := qryPrevPurchaseInvoice.FieldbyName('CurrencyId').AsString;

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

procedure TfmPurchaseInvoiceCashPayment.edtPaymentAmountPropertiesEditValueChanged(
  Sender: TObject);
begin
  if edtPaymentAmount.EditValue > dbeOutstandingTotalAmount.EditValue then
    edtShortage.EditValue := edtPaymentAmount.EditValue - dbeOutstandingTotalAmount.EditValue
  else
    edtShortage.EditValue := 0;
end;

procedure TfmPurchaseInvoiceCashPayment.btnSaveClick(Sender: TObject);
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

  PaymentId := dmGlobal.GetLastTransactionId('PurchasePayment',
    dmShare.OptionPP.Prefix, dmShare.OptionPP.Length, edtPaymentDate.Date, dmShare.OptionPP.RunYear);

  qryInsPurchasePayment.Params[0].Value := PaymentId;
  qryInsPurchasePayment.Params[1].Value := edtPaymentDate.Date;
  qryInsPurchasePayment.Params[2].Value := qryPrevPurchaseInvoice.FieldByName('VendorId').AsString;
  qryInsPurchasePayment.Params[3].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
  qryInsPurchasePayment.Execute;

  dmGlobal.SetLastTransactionId('PurchasePayment', dmShare.OptionPP.Prefix,
    edtPaymentDate.Date, dmShare.OptionPP.RunYear);

  qryInsPurchasePaymentDt.Params[0].Value := PaymentId;
  qryInsPurchasePaymentDt.Params[1].Value := qryPrevPurchaseInvoice.FieldByName('PurchaseInvoiceId').AsString;
  qryInsPurchasePaymentDt.Params[2].Value := VarToStr(lcbPaymentType.EditValue);
  qryInsPurchasePaymentDt.Params[3].Value := AmountPaymentSaved;
  qryInsPurchasePaymentDt.Params[4].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
  qryInsPurchasePaymentDt.Params[5].Value := VarToStr(lcbCurrencyId.EditValue);
  qryInsPurchasePaymentDt.Params[6].Value := edtKurs.EditValue;
  qryInsPurchasePaymentDt.Execute;

  ModalResult := mrOk;
end;

end.
