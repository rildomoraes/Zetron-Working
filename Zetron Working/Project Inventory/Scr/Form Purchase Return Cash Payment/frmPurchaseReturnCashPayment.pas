unit frmPurchaseReturnCashPayment;

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
  TfmPurchaseReturnCashPayment = class(TForm)
    dsPrevPurchaseReturnHd: TDataSource;
    gbInvoice: TcxGroupBox;
    Label4: TLabel;
    Label12: TLabel;
    lblPurchaseReturnDate: TDBText;
    Label1: TLabel;
    Label13: TLabel;
    lbPurchaseReturnId: TDBText;
    Label11: TLabel;
    Label14: TLabel;
    lblVendorPurchaseReturnId: TDBText;
    lblVendor: TLabel;
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
    edtPaymentAmount: TcxCurrencyEdit;
    qryPrevPurchaseReturnHd: TUniQuery;
    qryInsPurchaseReturnPaymentHd: TUniQuery;
    qryInsPurchaseReturnPaymentDt: TUniQuery;
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
  untProcedure, untConstanta, untConstantaPOS, dtmGlobal, dtmGeneral, dtmShare,
  dtmAccounting;

{$R *.dfm}

class function TfmPurchaseReturnCashPayment.ExecuteForm(
  ASalesReturnId: string): TModalResult;
var
  fmPurchaseReturnCashPayment: TfmPurchaseReturnCashPayment;
begin
  // NOT MDI
  fmPurchaseReturnCashPayment := TfmPurchaseReturnCashPayment.Create(Application);
  with fmPurchaseReturnCashPayment do
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

procedure TfmPurchaseReturnCashPayment.DeinitForm;
begin
//
end;

procedure TfmPurchaseReturnCashPayment.InitForm;
begin
  dmGlobal.InitComponent(Self);

  qryPrevPurchaseReturnHd.Close;
  qryPrevPurchaseReturnHd.Params[0].Value := FSalesReturnId;
  OpenIfClose(qryPrevPurchaseReturnHd, True);
  qryPrevPaymentType.Close;
  qryPrevPaymentType.Params[0].Value := '%'; // FlagInactive
  OpenIfClose(qryPrevPaymentType, True);
  OpenIfClose(dmGlobal.qryCurrencyMaster);

  edtPaymentDate.EditValue := dmGlobal.SettingGlobal.ServerDateTime;
  lcbPaymentType.EditValue := 'PT002'; // Terima Tunai as Default
  edtPaymentAmount.EditValue := qryPrevPurchaseReturnHd.FieldbyName('OutstandingTotalAmount').AsCurrency;
  edtShortage.EditValue := 0;
  edtKurs.EditValue := 1;

  SetReadOnly(lcbCurrencyId);
  lcbCurrencyId.EditValue := qryPrevPurchaseReturnHd.FieldbyName('CurrencyId').AsString;

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

procedure TfmPurchaseReturnCashPayment.edtPaymentAmountPropertiesEditValueChanged(
  Sender: TObject);
begin
  if edtPaymentAmount.EditValue > dbeOutstandingTotalAmount.EditValue then
    edtShortage.EditValue := edtPaymentAmount.EditValue - dbeOutstandingTotalAmount.EditValue
  else
    edtShortage.EditValue := 0;
end;

procedure TfmPurchaseReturnCashPayment.btnSaveClick(Sender: TObject);
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

  PaymentId := dmGlobal.GetLastTransactionId('PurchaseReturnPaymentHd',
    dmShare.OptionPRP.Prefix, dmShare.OptionPRP.Length, edtPaymentDate.Date, dmShare.OptionPRP.RunYear);

  qryInsPurchaseReturnPaymentHd.Params[0].Value := PaymentId;
  qryInsPurchaseReturnPaymentHd.Params[1].Value := edtPaymentDate.Date;
  qryInsPurchaseReturnPaymentHd.Params[2].Value := qryPrevPurchaseReturnHd.FieldByName('VendorId').AsString;
  qryInsPurchaseReturnPaymentHd.Params[3].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
  qryInsPurchaseReturnPaymentHd.Execute;

  dmGlobal.SetLastTransactionId('PurchaseReturnPaymentHd', dmShare.OptionPRP.Prefix,
    edtPaymentDate.Date, dmShare.OptionPRP.RunYear);

  qryInsPurchaseReturnPaymentDt.Params[0].Value := PaymentId;
  qryInsPurchaseReturnPaymentDt.Params[1].Value := qryPrevPurchaseReturnHd.FieldByName('PurchaseReturnId').AsString;
  qryInsPurchaseReturnPaymentDt.Params[2].Value := VarToStr(lcbPaymentType.EditValue);
  qryInsPurchaseReturnPaymentDt.Params[3].Value := AmountPaymentSaved;
  qryInsPurchaseReturnPaymentDt.Params[4].Value := dmGlobal.SettingGlobal.LoginEmployeeId;
  qryInsPurchaseReturnPaymentDt.Params[5].Value := VarToStr(lcbCurrencyId.EditValue);
  qryInsPurchaseReturnPaymentDt.Params[6].Value := edtKurs.EditValue;
  qryInsPurchaseReturnPaymentDt.Execute;

  ModalResult := mrOk;
end;

end.
