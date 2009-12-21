unit frmSettingGlobalPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmSettingGlobal, Menus, cxLookAndFeelPainters, ActnList, cxDropDownEdit,
  cxCalc, cxMaskEdit, cxSpinEdit, cxTextEdit, cxContainer, cxEdit, cxCheckBox,
  StdCtrls, cxPC, cxControls, cxButtons, ExtCtrls;

type
  TfmSettingGlobalPro = class(TfmSettingGlobal)
    chkItemUsingExpiredDate: TcxCheckBox;
    chkShowAutomaticSalesOnSI: TcxCheckBox;
    tsCashRegister: TcxTabSheet;
    lblFormRgisterSalesInfo: TLabel;
    chkAutoPostingOnClosingRegister: TcxCheckBox;
    Label3: TLabel;
    Label7: TLabel;
    Label19: TLabel;
    Label51: TLabel;
    lblLevel: TLabel;
    Label52: TLabel;
    Label57: TLabel;
    chkFlagValidationInvoiceDisc1: TcxCheckBox;
    chkFlagValidationInvoiceDisc2: TcxCheckBox;
    chkFlagValidationInvoiceVoucher: TcxCheckBox;
    chkFlagValidationInvoiceVoid: TcxCheckBox;
    chkFlagValidationInvoiceReprint: TcxCheckBox;
    chkFlagValidationPaymentVoid: TcxCheckBox;
    chkFlagValidationItemPrice: TcxCheckBox;
    chkFlagValidationItemDisc1: TcxCheckBox;
    chkFlagValidationItemDisc2: TcxCheckBox;
    chkFlagValidationItemVoucher: TcxCheckBox;
    chkFlagValidationItemBonus: TcxCheckBox;
    chkFlagValidationItemVoid: TcxCheckBox;
    chkFlagValidationPIPaymentVoid: TcxCheckBox;
    chkFlagValidationSIPaymentVoid: TcxCheckBox;
    edtLevelValidationInvoiceDisc1: TcxSpinEdit;
    edtLevelValidationInvoiceDisc2: TcxSpinEdit;
    edtLevelValidationInvoiceVoucher: TcxSpinEdit;
    edtLevelValidationInvoiceVoid: TcxSpinEdit;
    edtLevelValidationInvoiceReprint: TcxSpinEdit;
    edtLevelValidationPaymentVoid: TcxSpinEdit;
    edtLevelValidationItemPrice: TcxSpinEdit;
    edtLevelValidationItemDisc1: TcxSpinEdit;
    edtLevelValidationItemDisc2: TcxSpinEdit;
    edtLevelValidationItemVoucher: TcxSpinEdit;
    edtLevelValidationItemBonus: TcxSpinEdit;
    edtLevelValidationItemVoid: TcxSpinEdit;
    edtLevelValidationPIPaymentVoid: TcxSpinEdit;
    edtLevelValidationSIPaymentVoid: TcxSpinEdit;
    chkFlagValidationInvoiceDisc1Bypas: TcxCheckBox;
    chkFlagValidationInvoiceDisc2Bypass: TcxCheckBox;
    chkFlagValidationInvoiceVoucherBypass: TcxCheckBox;
    chkFlagValidationItemPriceBypass: TcxCheckBox;
    chkFlagValidationItemDisc1Bypass: TcxCheckBox;
    chkFlagValidationItemDisc2Bypass: TcxCheckBox;
    chkFlagValidationItemVoucherBypass: TcxCheckBox;
    chkFlagValidationItemBonusBypass: TcxCheckBox;
    chkFlagValidationItemVoidBypass: TcxCheckBox;
    chkCannotPrintUnpaidInvoice: TcxCheckBox;
  protected
    procedure SaveDataFromForm; override;
    procedure LoadDataToForm; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSettingGlobalPro: TfmSettingGlobalPro;

implementation

{$R *.dfm}

uses dtmGlobal;

procedure TfmSettingGlobalPro.LoadDataToForm;
begin
  chkItemUsingExpiredDate.Checked := dmGlobal.GetSetupValue('OPT11', '0');
  chkShowAutomaticSalesOnSI.Checked := dmGlobal.GetSetupValue('OPT37', '0');
  chkAutoPostingOnClosingRegister.Checked := dmGlobal.GetSetupValue('REG_AUTO_CLOSING_WITH_POSTING', '0');
  chkCannotPrintUnpaidInvoice.Checked := dmGlobal.GetSetupValue('REG_CANNOT_PRINT_UNPAID', '1');

  chkFlagValidationInvoiceDisc1.Checked := dmGlobal.GetSetupValue('REG_INV_DISC1', '1');
  edtLevelValidationInvoiceDisc1.EditValue := dmGlobal.GetSetupValue('REG_INV_DISC1_LV', '1');
  chkFlagValidationInvoiceDisc1Bypas.Checked := dmGlobal.GetSetupValue('REG_INV_DISC1_BYPASS', '0');
  chkFlagValidationInvoiceDisc2.Checked := dmGlobal.GetSetupValue('REG_INV_DISC2', '1');
  edtLevelValidationInvoiceDisc2.EditValue := dmGlobal.GetSetupValue('REG_INV_DISC2_LV', '1');
  chkFlagValidationInvoiceDisc2Bypass.Checked := dmGlobal.GetSetupValue('REG_INV_DISC2_BYPASS', '0');
  chkFlagValidationInvoiceVoucher.Checked := dmGlobal.GetSetupValue('REG_INV_VOUCHER', '1');
  edtLevelValidationInvoiceVoucher.EditValue := dmGlobal.GetSetupValue('REG_INV_VOUCHER_LV', '1');
  chkFlagValidationInvoiceVoucherBypass.Checked := dmGlobal.GetSetupValue('REG_INV_VOUCHER_BYPASS', '0');
  chkFlagValidationInvoiceVoid.Checked := dmGlobal.GetSetupValue('REG_INV_VOID', '1');
  edtLevelValidationInvoiceVoid.EditValue := dmGlobal.GetSetupValue('REG_INV_VOID_LV', '1');
  chkFlagValidationInvoiceReprint.Checked := dmGlobal.GetSetupValue('REG_INV_REPRINT', '1');
  edtLevelValidationInvoiceReprint.EditValue := dmGlobal.GetSetupValue('REG_INV_REPRINT_LV', '1');
  chkFlagValidationPaymentVoid.Checked := dmGlobal.GetSetupValue('REG_INV_VOID_PAY', '1');
  edtLevelValidationPaymentVoid.EditValue := dmGlobal.GetSetupValue('REG_INV_VOID_PAY_LV', '1');

  chkFlagValidationItemPrice.Checked := dmGlobal.GetSetupValue('REG_ITEM_PRICE', '1');
  edtLevelValidationItemPrice.EditValue := dmGlobal.GetSetupValue('REG_ITEM_PRICE_LV', '1');
  chkFlagValidationItemPriceBypass.Checked := dmGlobal.GetSetupValue('REG_ITEM_PRICE_BYPASS', '0');
  chkFlagValidationItemDisc1.Checked := dmGlobal.GetSetupValue('REG_ITEM_DISC1', '1');
  edtLevelValidationItemDisc1.EditValue := dmGlobal.GetSetupValue('REG_ITEM_DISC1_LV', '1');
  chkFlagValidationItemDisc1Bypass.Checked := dmGlobal.GetSetupValue('REG_ITEM_DISC1_BYPASS', '0');
  chkFlagValidationItemDisc2.Checked := dmGlobal.GetSetupValue('REG_ITEM_DISC2', '1');
  edtLevelValidationItemDisc2.EditValue := dmGlobal.GetSetupValue('REG_ITEM_DISC2_LV', '1');
  chkFlagValidationItemDisc2Bypass.Checked := dmGlobal.GetSetupValue('REG_ITEM_DISC2_BYPASS', '0');
  chkFlagValidationItemVoucher.Checked := dmGlobal.GetSetupValue('REG_ITEM_VOUCHER', '1');
  edtLevelValidationItemVoucher.EditValue := dmGlobal.GetSetupValue('REG_ITEM_VOUCHER_LV', '1');
  chkFlagValidationItemVoucherBypass.Checked := dmGlobal.GetSetupValue('REG_ITEM_VOUCHER_BYPASS', '0');
  chkFlagValidationItemBonus.Checked := dmGlobal.GetSetupValue('REG_ITEM_BONUS', '1');
  edtLevelValidationItemBonus.EditValue := dmGlobal.GetSetupValue('REG_ITEM_BONUS_LV', '1');
  chkFlagValidationItemBonusBypass.Checked := dmGlobal.GetSetupValue('REG_ITEM_BONUS_BYPASS', '0');
  chkFlagValidationItemVoid.Checked := dmGlobal.GetSetupValue('REG_ITEM_VOID', '1');
  edtLevelValidationItemVoid.EditValue := dmGlobal.GetSetupValue('REG_ITEM_VOID_LV', '1');
  chkFlagValidationItemVoidBypass.Checked := dmGlobal.GetSetupValue('REG_ITEM_VOID_BYPASS', '0');

  chkFlagValidationPIPaymentVoid.Checked := dmGlobal.GetSetupValue('REG_PI_PAY_VOID', '1');
  edtLevelValidationPIPaymentVoid.EditValue := dmGlobal.GetSetupValue('REG_PI_PAY_VOID_LV', '1');
  chkFlagValidationSIPaymentVoid.Checked := dmGlobal.GetSetupValue('REG_SI_PAY_VOID', '1');
  edtLevelValidationSIPaymentVoid.EditValue := dmGlobal.GetSetupValue('REG_SI_PAY_VOID_LV', '1');

  inherited;
end;

procedure TfmSettingGlobalPro.SaveDataFromForm;
begin
  dmGlobal.SaveSetupValue('OPT11', Integer(chkItemUsingExpiredDate.Checked));
  dmGlobal.SaveSetupValue('OPT37', Integer(chkShowAutomaticSalesOnSI.Checked));
  dmGlobal.SaveSetupValue('REG_AUTO_CLOSING_WITH_POSTING', Integer(chkAutoPostingOnClosingRegister.Checked));
  dmGlobal.SaveSetupValue('REG_CANNOT_PRINT_UNPAID', Integer(chkCannotPrintUnpaidInvoice.Checked));

  // Kasir
  dmGlobal.SaveSetupValue('REG_INV_DISC1', Integer(chkFlagValidationInvoiceDisc1.Checked));
  dmGlobal.SaveSetupValue('REG_INV_DISC1_LV', edtLevelValidationInvoiceDisc1.EditValue);
  dmGlobal.SaveSetupValue('REG_INV_DISC1_BYPASS', Integer(chkFlagValidationInvoiceDisc1Bypas.Checked));
  dmGlobal.SaveSetupValue('REG_INV_DISC2', Integer(chkFlagValidationInvoiceDisc2.Checked));
  dmGlobal.SaveSetupValue('REG_INV_DISC2_LV', edtLevelValidationInvoiceDisc2.EditValue);
  dmGlobal.SaveSetupValue('REG_INV_DISC2_BYPASS', Integer(chkFlagValidationInvoiceDisc2Bypass.Checked));
  dmGlobal.SaveSetupValue('REG_INV_VOUCHER', Integer(chkFlagValidationInvoiceVoucher.Checked));
  dmGlobal.SaveSetupValue('REG_INV_VOUCHER_LV', edtLevelValidationInvoiceVoucher.EditValue);
  dmGlobal.SaveSetupValue('REG_INV_VOUCHER_BYPASS', Integer(chkFlagValidationInvoiceVoucherBypass.Checked));
  dmGlobal.SaveSetupValue('REG_INV_VOID', Integer(chkFlagValidationInvoiceVoid.Checked));
  dmGlobal.SaveSetupValue('REG_INV_VOID_LV', edtLevelValidationInvoiceVoid.EditValue);
  dmGlobal.SaveSetupValue('REG_INV_REPRINT', Integer(chkFlagValidationInvoiceReprint.Checked));
  dmGlobal.SaveSetupValue('REG_INV_REPRINT_LV', edtLevelValidationInvoiceReprint.EditValue);
  dmGlobal.SaveSetupValue('REG_INV_VOID_PAY', Integer(chkFlagValidationPaymentVoid.Checked));
  dmGlobal.SaveSetupValue('REG_INV_VOID_PAY_LV', edtLevelValidationPaymentVoid.EditValue);

  dmGlobal.SaveSetupValue('REG_ITEM_DISC1', Integer(chkFlagValidationItemDisc1.Checked));
  dmGlobal.SaveSetupValue('REG_ITEM_DISC1_LV', edtLevelValidationItemDisc1.EditValue);
  dmGlobal.SaveSetupValue('REG_ITEM_DISC1_BYPASS', Integer(chkFlagValidationItemDisc1Bypass.Checked));
  dmGlobal.SaveSetupValue('REG_ITEM_DISC2', Integer(chkFlagValidationItemDisc2.Checked));
  dmGlobal.SaveSetupValue('REG_ITEM_DISC2_LV', edtLevelValidationItemDisc2.EditValue);
  dmGlobal.SaveSetupValue('REG_ITEM_DISC2_BYPASS', Integer(chkFlagValidationItemDisc2Bypass.Checked));
  dmGlobal.SaveSetupValue('REG_ITEM_VOUCHER', Integer(chkFlagValidationItemVoucher.Checked));
  dmGlobal.SaveSetupValue('REG_ITEM_VOUCHER_LV', edtLevelValidationItemVoucher.EditValue);
  dmGlobal.SaveSetupValue('REG_ITEM_VOUCHER_BYPASS', Integer(chkFlagValidationItemVoucherBypass.Checked));
  dmGlobal.SaveSetupValue('REG_ITEM_BONUS', Integer(chkFlagValidationItemBonus.Checked));
  dmGlobal.SaveSetupValue('REG_ITEM_BONUS_LV', edtLevelValidationItemBonus.EditValue);
  dmGlobal.SaveSetupValue('REG_ITEM_BONUS_BYPASS', Integer(chkFlagValidationItemBonusBypass.Checked));
  dmGlobal.SaveSetupValue('REG_ITEM_VOID', Integer(chkFlagValidationItemVoid.Checked));
  dmGlobal.SaveSetupValue('REG_ITEM_VOID_LV', edtLevelValidationItemVoid.EditValue);
  dmGlobal.SaveSetupValue('REG_ITEM_VOID_BYPASS', Integer(chkFlagValidationItemVoidBypass.Checked));
  dmGlobal.SaveSetupValue('REG_ITEM_PRICE', Integer(chkFlagValidationItemPrice.Checked));
  dmGlobal.SaveSetupValue('REG_ITEM_PRICE_LV', edtLevelValidationItemPrice.EditValue);
  dmGlobal.SaveSetupValue('REG_ITEM_PRICE_BYPASS', Integer(chkFlagValidationItemPriceBypass.Checked));

  dmGlobal.SaveSetupValue('REG_PI_PAY_VOID', Integer(chkFlagValidationPIPaymentVoid.Checked));
  dmGlobal.SaveSetupValue('REG_PI_PAY_VOID_LV', edtLevelValidationPIPaymentVoid.EditValue);
  dmGlobal.SaveSetupValue('REG_SI_PAY_VOID', Integer(chkFlagValidationSIPaymentVoid.Checked));
  dmGlobal.SaveSetupValue('REG_SI_PAY_VOID_LV', edtLevelValidationSIPaymentVoid.EditValue);

  inherited;
end;

end.
