unit frmRegisterPayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untConstantaPOS,

  // Auto Create
  Menus, cxLookAndFeelPainters, cxGraphics, DB, MemDS, DBAccess, Uni, ActnList,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxTextEdit, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxCurrencyEdit, ExtCtrls, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfmRegisterPayment = class(TForm)
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    actCard1: TAction;
    actCard2: TAction;
    edtGrandTotal: TcxCurrencyEdit;
    lblGrandTotal: TLabel;
    lblCashPayment: TLabel;
    Shape2: TShape;
    edtShortage: TcxCurrencyEdit;
    Shape1: TShape;
    lblShortage: TLabel;
    edtCard1Payment: TcxCurrencyEdit;
    edtCard2Payment: TcxCurrencyEdit;
    btnCard1: TcxButton;
    btnCard2: TcxButton;
    btnCard1Clear: TcxButton;
    btnCard2Clear: TcxButton;
    actVoidCard1: TAction;
    actVoidCard2: TAction;
    edtCashPayment: TcxCurrencyEdit;
    edtCard1No: TcxCurrencyEdit;
    edtCard2No: TcxCurrencyEdit;
    edtCard1Name: TcxTextEdit;
    edtCard2Name: TcxTextEdit;
    lcbCard1Type: TcxExtLookupComboBox;
    lcbCard2Type: TcxExtLookupComboBox;
    qryRegisterSalesPayment: TUniQuery;
    pnlTop1: TPanel;
    pnlTop2: TPanel;
    pnlTop3: TPanel;
    qrySalesPayment: TUniQuery;
    qrySalesPaymentDt: TUniQuery;
    qryPurchasePayment: TUniQuery;
    qryPurchasePaymentDt: TUniQuery;
    procedure actCancelExecute(Sender: TObject);
    procedure actCard1Execute(Sender: TObject);
    procedure actCard2Execute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actVoidCard1Execute(Sender: TObject);
    procedure actVoidCard2Execute(Sender: TObject);
    procedure edtCard1PaymentPropertiesEditValueChanged(Sender: TObject);
    procedure edtCard2PaymentPropertiesEditValueChanged(Sender: TObject);
    procedure edtCashPaymentPropertiesEditValueChanged(Sender: TObject);
    procedure edtGrandTotalPropertiesEditValueChanged(Sender: TObject);
    procedure edtShortagePropertiesEditValueChanged(Sender: TObject);
  private
    FTransactionPaymentType: TTransactionPaymentType;
    FTransactionId: string;
    FCustomerOrVendor: string;

    procedure InitForm;
    procedure Calculate;
  public
    class function ExecuteForm(ATransactionPaymentType: TTransactionPaymentType;
      const ATransactionId, ACustomerOrVendor: string; AOutstanding: double): TModalResult;
  end;

implementation

{$R *.dfm}

uses
  untProcedure, dtmGlobal, dtmRegister, dtmShare, frmInputBoxDecimal, frmCardEntry;

procedure TfmRegisterPayment.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmRegisterPayment.actCard1Execute(Sender: TObject);
var
  CardType, CardNumber, CardHolderName: string;
  DebitAmount: double;
begin
  if TfmCardEntry.ExecuteForm(CardType, CardNumber, CardHolderName, DebitAmount) = mrOk then
  begin
    lcbCard1Type.EditValue := CardType;
    edtCard1Name.EditValue := CardHolderName;
    edtCard1No.EditValue := CardNumber;
    edtCard1Payment.EditValue := DebitAmount;
  end;
end;

procedure TfmRegisterPayment.actCard2Execute(Sender: TObject);
var
  CardType, CardNumber, CardHolderName: string;
  DebitAmount: double;
begin
  if TfmCardEntry.ExecuteForm(CardType, CardNumber, CardHolderName, DebitAmount) = mrOk then
  begin
    lcbCard2Type.EditValue := CardType;
    edtCard2Name.EditValue := CardHolderName;
    edtCard2No.EditValue := CardNumber;
    edtCard2Payment.EditValue := DebitAmount;
  end;
end;

procedure TfmRegisterPayment.actVoidCard1Execute(Sender: TObject);
begin
  lcbCard1Type.EditValue := null;
  edtCard1Name.EditValue := null;
  edtCard1No.EditValue := null;
  edtCard1Payment.EditValue := 0;
end;

procedure TfmRegisterPayment.actVoidCard2Execute(Sender: TObject);
begin
  lcbCard2Type.EditValue := null;
  edtCard2Name.EditValue := null;
  edtCard2No.EditValue := null;
  edtCard2Payment.EditValue := 0;
end;

procedure TfmRegisterPayment.actOkExecute(Sender: TObject);
var
  NewNo: integer;
  TransactionId: string;
begin
  // Validate
  if (edtCashPayment.EditValue + edtCard1Payment.EditValue + edtCard2Payment.EditValue) = 0 then
  begin
    MessageDlg('Total jumlah pembayaran masih kosong !', mtInformation, [mbOk], 0);
    Exit;
  end;

  if (edtCard1Payment.EditValue + edtCard2Payment.EditValue) > edtGrandTotal.EditValue then
  begin
    MessageDlg('Jumlah pembayaran dengan kartu tidak boleh lebih besar daripada jumlah tagihan !', mtInformation, [mbOk], 0);
    Exit;
  end;

  // Initialize Data
  NewNo := 1;
  if FTransactionPaymentType = tptRegisterPayment then
  begin
    qryRegisterSalesPayment.Close;
    qryRegisterSalesPayment.Params[0].Value := FTransactionId;
    OpenIfClose(qryRegisterSalesPayment);
    qryRegisterSalesPayment.Last;
    if not qryRegisterSalesPayment.IsEmpty then
      NewNo := qryRegisterSalesPayment.FieldByName('No').AsInteger + 1;
  end;
  if FTransactionPaymentType = tptSalesPayment then
  begin
    TransactionId := dmGlobal.GetLastTransactionId('SalesPayment',
      dmShare.OptionSP.Prefix, dmShare.OptionSP.Length,
      dmGlobal.SettingGlobal.ServerDateTime, dmShare.OptionSP.RunYear);

    qrySalesPayment.Params[0].Value := TransactionId;
    qrySalesPayment.Open;
    qrySalesPayment.Insert;
    qrySalesPayment.FieldByName('SalesPaymentId').AsString := TransactionId;
    qrySalesPayment.FieldByName('SalesPaymentDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
    qrySalesPayment.FieldByName('CustomerId').AsString := FCustomerOrVendor;
    qrySalesPayment.FieldByName('StatusApprove').AsString := '1';
    qrySalesPayment.FieldByName('FlagAutomatic').AsString := '1';
    qrySalesPayment.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
    qrySalesPayment.FieldByName('CashRegisterTransactionId').AsString := dmRegister.CurrentCashRegisterTransactionId;
    qrySalesPayment.Post;

    dmGlobal.SetLastTransactionId('SalesPayment', dmShare.OptionSP.Prefix,
      dmGlobal.SettingGlobal.ServerDateTime, dmShare.OptionSP.RunYear);

    qrySalesPaymentDt.Params[0].Value := TransactionId;
    qrySalesPaymentDt.Open;
  end;
  if FTransactionPaymentType = tptPurchasePayment then
  begin
    TransactionId := dmGlobal.GetLastTransactionId('PurchasePayment',
      dmShare.OptionPP.Prefix, dmShare.OptionPP.Length,
      dmGlobal.SettingGlobal.ServerDateTime, dmShare.OptionPP.RunYear);

    qryPurchasePayment.Params[0].Value := TransactionId;
    qryPurchasePayment.Open;
    qryPurchasePayment.Insert;
    qryPurchasePayment.FieldByName('PurchasePaymentId').AsString := TransactionId;
    qryPurchasePayment.FieldByName('PurchasePaymentDate').AsDateTime := dmGlobal.SettingGlobal.ServerDateTime;
    qryPurchasePayment.FieldByName('VendorId').AsString := FCustomerOrVendor;
    qryPurchasePayment.FieldByName('StatusApprove').AsString := '1';
    qryPurchasePayment.FieldByName('FlagAutomatic').AsString := '1';
    qryPurchasePayment.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
    qryPurchasePayment.FieldByName('CashRegisterTransactionId').AsString := dmRegister.CurrentCashRegisterTransactionId;
    qryPurchasePayment.Post;

    dmGlobal.SetLastTransactionId('PurchasePayment', dmShare.OptionPP.Prefix,
      dmGlobal.SettingGlobal.ServerDateTime, dmShare.OptionPP.RunYear);

    qryPurchasePaymentDt.Params[0].Value := TransactionId;
    qryPurchasePaymentDt.Open;
  end;

  // Insert Cash Payment
  if edtCashPayment.EditValue <> 0 then
  begin
    if FTransactionPaymentType = tptRegisterPayment then
    begin
      qryRegisterSalesPayment.Insert;
      qryRegisterSalesPayment.FieldByName('No').AsInteger := NewNo;
      qryRegisterSalesPayment.FieldByName('RegisterSalesId').AsString := FTransactionId;
      qryRegisterSalesPayment.FieldByName('PaymentTypeId').AsString := 'PT002';
      qryRegisterSalesPayment.FieldByName('CardNo').AsString := '';
      qryRegisterSalesPayment.FieldByName('CardHolderName').AsString := '';
      qryRegisterSalesPayment.FieldByName('OnHandAmount').AsCurrency := edtCashPayment.EditValue;
      if edtShortage.EditValue <= 0 then
      begin
        // Kurang bayar atau bayar pas
        qryRegisterSalesPayment.FieldByName('Amount').AsCurrency := edtCashPayment.EditValue;
        qryRegisterSalesPayment.FieldByName('Shortage').AsCurrency := 0;
      end
      else
      begin
        // Bayar lebih
        qryRegisterSalesPayment.FieldByName('Amount').AsCurrency := (edtCashPayment.EditValue - edtShortage.EditValue);
        qryRegisterSalesPayment.FieldByName('Shortage').AsCurrency := edtShortage.EditValue;
      end;
      qryRegisterSalesPayment.Post;
      NewNo := NewNo + 1;
    end;
    if FTransactionPaymentType = tptSalesPayment then
    begin
      qrySalesPaymentDt.Insert;
      qrySalesPaymentDt.FieldByName('SalesPaymentId').AsString := qrySalesPayment.FieldByName('SalesPaymentId').AsString;
      qrySalesPaymentDt.FieldByName('No').AsInteger := NewNo;
      qrySalesPaymentDt.FieldByName('SalesInvoiceId').AsString := FTransactionId;
      qrySalesPaymentDt.FieldByName('PaymentTypeId').AsString := 'PT002';
      qrySalesPaymentDt.FieldByName('CurrencyId').AsString := 'IDR';
      qrySalesPaymentDt.FieldByName('Kurs').AsCurrency := 1;
      qrySalesPaymentDt.FieldByName('OnHandAmount').AsCurrency := edtCashPayment.EditValue;
      if edtShortage.EditValue <= 0 then
      begin
        // Kurang bayar atau bayar pas
        qrySalesPaymentDt.FieldByName('Amount').AsCurrency := edtCashPayment.EditValue;
        qrySalesPaymentDt.FieldByName('Shortage').AsCurrency := 0;
      end
      else
      begin
        // Bayar lebih
        qrySalesPaymentDt.FieldByName('Amount').AsCurrency := (edtCashPayment.EditValue - edtShortage.EditValue);
        qrySalesPaymentDt.FieldByName('Shortage').AsCurrency := edtShortage.EditValue;
      end;
      qrySalesPaymentDt.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
      qrySalesPaymentDt.Post;
      NewNo := NewNo + 1;
    end;
    if FTransactionPaymentType = tptPurchasePayment then
    begin
      qryPurchasePaymentDt.Insert;
      qryPurchasePaymentDt.FieldByName('PurchasePaymentId').AsString := qryPurchasePayment.FieldByName('PurchasePaymentId').AsString;
      qryPurchasePaymentDt.FieldByName('No').AsInteger := NewNo;
      qryPurchasePaymentDt.FieldByName('PurchaseInvoiceId').AsString := FTransactionId;
      qryPurchasePaymentDt.FieldByName('PaymentTypeId').AsString := 'PT001';
      qryPurchasePaymentDt.FieldByName('CurrencyId').AsString := 'IDR';
      qryPurchasePaymentDt.FieldByName('Kurs').AsCurrency := 1;
      qryPurchasePaymentDt.FieldByName('OnHandAmount').AsCurrency := edtCashPayment.EditValue;
      if edtShortage.EditValue <= 0 then
      begin
        // Kurang bayar atau bayar pas
        qryPurchasePaymentDt.FieldByName('Amount').AsCurrency := edtCashPayment.EditValue;
        qryPurchasePaymentDt.FieldByName('Shortage').AsCurrency := 0;
      end
      else
      begin
        // Bayar lebih
        qryPurchasePaymentDt.FieldByName('Amount').AsCurrency := (edtCashPayment.EditValue - edtShortage.EditValue);
        qryPurchasePaymentDt.FieldByName('Shortage').AsCurrency := 0;
      end;
      qryPurchasePaymentDt.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
      qryPurchasePaymentDt.Post;
      NewNo := NewNo + 1;
    end;
  end;

  // Insert Card 1 Payment (Register Payment & Sales Payment Only)
  if edtCard1Payment.EditValue <> 0 then
  begin
    if FTransactionPaymentType = tptRegisterPayment then
    begin
      qryRegisterSalesPayment.Insert;
      qryRegisterSalesPayment.FieldByName('No').AsInteger := NewNo;
      qryRegisterSalesPayment.FieldByName('RegisterSalesId').AsString := FTransactionId;
      qryRegisterSalesPayment.FieldByName('PaymentTypeId').AsString := lcbCard1Type.EditValue;
      qryRegisterSalesPayment.FieldByName('CardNo').AsString := edtCard1No.EditValue;
      qryRegisterSalesPayment.FieldByName('CardHolderName').AsString := edtCard1Name.EditValue;
      qryRegisterSalesPayment.FieldByName('OnHandAmount').AsCurrency := edtCard1Payment.EditValue;
      qryRegisterSalesPayment.FieldByName('Amount').AsCurrency := edtCard1Payment.EditValue;
      qryRegisterSalesPayment.FieldByName('Shortage').AsCurrency := 0;
      qryRegisterSalesPayment.Post;
      NewNo := NewNo + 1;
    end;
    if FTransactionPaymentType = tptSalesPayment then
    begin
      qrySalesPaymentDt.Insert;
      qrySalesPaymentDt.FieldByName('SalesPaymentId').AsString := qrySalesPaymentDt.FieldByName('SalesPaymentId').AsString;
      qrySalesPaymentDt.FieldByName('No').AsInteger := NewNo;
      qrySalesPaymentDt.FieldByName('SalesInvoiceId').AsString := FTransactionId;
      qrySalesPaymentDt.FieldByName('PaymentTypeId').AsString := lcbCard1Type.EditValue;
      qrySalesPaymentDt.FieldByName('CardNo').AsString := edtCard1No.EditValue;
      qrySalesPaymentDt.FieldByName('CardHolderName').AsString := edtCard1Name.EditValue;
      qrySalesPaymentDt.FieldByName('CurrencyId').AsString := 'IDR';
      qrySalesPaymentDt.FieldByName('Kurs').AsCurrency := 1;
      qrySalesPaymentDt.FieldByName('OnHandAmount').AsCurrency := edtCard1Payment.EditValue;
      qrySalesPaymentDt.FieldByName('Amount').AsCurrency := edtCard1Payment.EditValue;
      qrySalesPaymentDt.FieldByName('Shortage').AsCurrency := 0;
      qrySalesPaymentDt.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
      qrySalesPaymentDt.Post;
      NewNo := NewNo + 1;
    end;
  end;

  // Insert Card 2 Payment (Register Payment & Sales Payment Only)
  if edtCard2Payment.EditValue <> 0 then
  begin
    if FTransactionPaymentType = tptRegisterPayment then
    begin
      qryRegisterSalesPayment.Insert;
      qryRegisterSalesPayment.FieldByName('No').AsInteger := NewNo;
      qryRegisterSalesPayment.FieldByName('RegisterSalesId').AsString := FTransactionId;
      qryRegisterSalesPayment.FieldByName('PaymentTypeId').AsString := lcbCard2Type.EditValue;
      qryRegisterSalesPayment.FieldByName('CardNo').AsString := edtCard2No.EditValue;
      qryRegisterSalesPayment.FieldByName('CardHolderName').AsString := edtCard2Name.EditValue;
      qryRegisterSalesPayment.FieldByName('OnHandAmount').AsCurrency := edtCard2Payment.EditValue;
      qryRegisterSalesPayment.FieldByName('Amount').AsCurrency := edtCard2Payment.EditValue;
      qryRegisterSalesPayment.FieldByName('Shortage').AsCurrency := 0;
      qryRegisterSalesPayment.Post;
    end;
    if FTransactionPaymentType = tptSalesPayment then
    begin
      qrySalesPaymentDt.Insert;
      qrySalesPaymentDt.FieldByName('SalesPaymentId').AsString := qrySalesPaymentDt.FieldByName('SalesPaymentId').AsString;
      qrySalesPaymentDt.FieldByName('No').AsInteger := NewNo;
      qrySalesPaymentDt.FieldByName('SalesInvoiceId').AsString := FTransactionId;
      qrySalesPaymentDt.FieldByName('PaymentTypeId').AsString := lcbCard2Type.EditValue;
      qrySalesPaymentDt.FieldByName('CardNo').AsString := edtCard2No.EditValue;
      qrySalesPaymentDt.FieldByName('CardHolderName').AsString := edtCard2Name.EditValue;
      qrySalesPaymentDt.FieldByName('CurrencyId').AsString := 'IDR';
      qrySalesPaymentDt.FieldByName('Kurs').AsCurrency := 1;
      qrySalesPaymentDt.FieldByName('OnHandAmount').AsCurrency := edtCard2Payment.EditValue;
      qrySalesPaymentDt.FieldByName('Amount').AsCurrency := edtCard2Payment.EditValue;
      qrySalesPaymentDt.FieldByName('Shortage').AsCurrency := 0;
      qrySalesPaymentDt.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
      qrySalesPaymentDt.Post;
    end;
  end;

  ModalResult := mrOk;
end;

procedure TfmRegisterPayment.Calculate;
begin
  edtShortage.EditValue :=
    (edtCashPayment.EditValue + edtCard1Payment.EditValue + edtCard2Payment.EditValue) -
    edtGrandTotal.EditValue;
end;

procedure TfmRegisterPayment.edtCard1PaymentPropertiesEditValueChanged(
  Sender: TObject);
begin
  if edtCard1Payment.EditValue = null then
    edtCard1Payment.EditValue := 0
  else
    Calculate;
end;

procedure TfmRegisterPayment.edtCard2PaymentPropertiesEditValueChanged(
  Sender: TObject);
begin
  if edtCard2Payment.EditValue = null then
    edtCard2Payment.EditValue := 0
  else
    Calculate;
end;

procedure TfmRegisterPayment.edtCashPaymentPropertiesEditValueChanged(
  Sender: TObject);
begin
  if edtCashPayment.EditValue = null then
    edtCashPayment.EditValue := 0
  else
    Calculate;
end;

procedure TfmRegisterPayment.edtGrandTotalPropertiesEditValueChanged(
  Sender: TObject);
begin
  Calculate;
end;

procedure TfmRegisterPayment.edtShortagePropertiesEditValueChanged(
  Sender: TObject);
begin
  if edtShortage.EditValue < 0 then
    edtShortage.StyleDisabled.Color := $00DDDDFF
  else
    edtShortage.StyleDisabled.Color := clWhite;
end;

class function TfmRegisterPayment.ExecuteForm(ATransactionPaymentType: TTransactionPaymentType;
  const ATransactionId, ACustomerOrVendor: string; AOutstanding: double): TModalResult;
var
  fmRegisterPayment: TfmRegisterPayment;
begin
  fmRegisterPayment := TfmRegisterPayment.Create(Application);
  with fmRegisterPayment do
  begin
    try
      Position := poScreenCenter;
      FTransactionPaymentType := ATransactionPaymentType;
      FTransactionId := ATransactionId;
      FCustomerOrVendor := ACustomerOrVendor;
      edtGrandTotal.EditValue := AOutstanding;
      InitForm;
      Result := ShowModal;
    finally
      Release;
    end;
  end;
end;

procedure TfmRegisterPayment.InitForm;
begin
  dmGlobal.InitComponent(Self);

  case FTransactionPaymentType of
    tptRegisterPayment: Self.Caption := 'Pembayaran Nota Register';
    tptSalesPayment: Self.Caption := 'Pembayaran Nota Penjualan';
    tptPurchasePayment:
      begin
        Self.Caption := 'Pembayaran Nota Pembelian';
        pnlTop2.Visible := False;
      end;
  end;

  edtCashPayment.EditValue := 0;
  edtCard1Payment.EditValue := 0;
  edtCard2Payment.EditValue := 0;

  edtCard1No.Properties.Alignment.Horz := taLeftJustify;
  edtCard2No.Properties.Alignment.Horz := taLeftJustify;
  edtCard1No.Properties.DisplayFormat := '0;(0)';
  edtCard2No.Properties.DisplayFormat := '0;(0)';
  edtGrandTotal.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtCashPayment.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtCard1Payment.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtCard2Payment.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  edtShortage.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmRegister.qryPrevPaymentType);
end;

end.
