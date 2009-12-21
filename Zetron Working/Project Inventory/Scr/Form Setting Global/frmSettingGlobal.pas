unit frmSettingGlobal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUni, Menus, cxLookAndFeelPainters, cxDropDownEdit, cxCalc, cxMaskEdit,
  cxSpinEdit, cxTextEdit, cxContainer, cxEdit, cxCheckBox, StdCtrls, cxPC,
  cxControls, ActnList, cxButtons, ExtCtrls, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter;

type
  TfmSettingGlobal = class(TFormUni)
    actRefresh: TAction;
    actPost: TAction;
    actCancel: TAction;
    cxPageControl1: TcxPageControl;
    tsGeneral: TcxTabSheet;
    tsItem: TcxTabSheet;
    tsPurchase: TcxTabSheet;
    tsSales: TcxTabSheet;
    chkAutoEdit: TcxCheckBox;
    Label5: TLabel;
    edtDefaultLengthItemId: TcxSpinEdit;
    Label6: TLabel;
    chkItemNameCannotDuplicate: TcxCheckBox;
    chkShowItemInactive: TcxCheckBox;
    Label9: TLabel;
    chkPIExternalDuplicate: TcxCheckBox;
    Label20: TLabel;
    chkWarningPurchasePriceHigherThanOtherVendor: TcxCheckBox;
    Label17: TLabel;
    chkUseMinSalePrice: TcxCheckBox;
    chkSIExternalDuplicate: TcxCheckBox;
    Label8: TLabel;
    chkSalePriceUsingPriceList: TcxCheckBox;
    chkSalePriceUsingCustomerPrice: TcxCheckBox;
    Label18: TLabel;
    chkWarningQtyMinus: TcxCheckBox;
    chkWarningSalePriceLowerThanMinPrice: TcxCheckBox;
    chkWarningBonusItem: TcxCheckBox;
    btnRefresh: TcxButton;
    btnPost: TcxButton;
    btnCancel: TcxButton;
    tsCounter: TcxTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    lblAdjustmentPlus: TLabel;
    lblAssembly: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    lblProcess: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    chkPORunYear: TcxCheckBox;
    chkPPRunYear: TcxCheckBox;
    chkPRRunYear: TcxCheckBox;
    chkPRPRunYear: TcxCheckBox;
    chkSORunYear: TcxCheckBox;
    chkSPRunYear: TcxCheckBox;
    chkSRRunYear: TcxCheckBox;
    chkSRPRunYear: TcxCheckBox;
    chkAPRunYear: TcxCheckBox;
    chkCORunYear: TcxCheckBox;
    chkKMRunYear: TcxCheckBox;
    chkKKRunYear: TcxCheckBox;
    chkBMRunYear: TcxCheckBox;
    chkBKRunYear: TcxCheckBox;
    edtPOCode: TcxTextEdit;
    edtPPCode: TcxTextEdit;
    edtPRCode: TcxTextEdit;
    edtPRPCode: TcxTextEdit;
    edtSOCode: TcxTextEdit;
    edtSPCode: TcxTextEdit;
    edtSRCode: TcxTextEdit;
    edtSRPCode: TcxTextEdit;
    edtAPCode: TcxTextEdit;
    edtCOCode: TcxTextEdit;
    edtKMCode: TcxTextEdit;
    edtKKCode: TcxTextEdit;
    edtBMCode: TcxTextEdit;
    edtBKCode: TcxTextEdit;
    edtPOLength: TcxSpinEdit;
    edtPILength: TcxSpinEdit;
    edtPPLength: TcxSpinEdit;
    edtPRLength: TcxSpinEdit;
    edtPRPLength: TcxSpinEdit;
    edtSOLength: TcxSpinEdit;
    edtSILength: TcxSpinEdit;
    edtSRLength: TcxSpinEdit;
    edtSPLength: TcxSpinEdit;
    edtSRPLength: TcxSpinEdit;
    edtAPLength: TcxSpinEdit;
    edtCOLength: TcxSpinEdit;
    edtKMLength: TcxSpinEdit;
    edtKKLength: TcxSpinEdit;
    edtBMLength: TcxSpinEdit;
    edtBKLength: TcxSpinEdit;
    chkAutoUpdateMinSalesPrice: TcxCheckBox;
    Label2: TLabel;
    edtDefaultLengthId: TcxSpinEdit;
    Label4: TLabel;
    chkPIRunYear: TcxCheckBox;
    chkSIRunYear: TcxCheckBox;
    chkWarningItemInactive: TcxCheckBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    edtBankAdjCode: TcxTextEdit;
    edtBankAdjLength: TcxSpinEdit;
    edtAPVendorAdjCode: TcxTextEdit;
    edtAPVendorAdjLength: TcxSpinEdit;
    edtARVendorAdjCode: TcxTextEdit;
    edtARVendorAdjLength: TcxSpinEdit;
    edtAPCustomerAdjCode: TcxTextEdit;
    edtAPCustomerAdjLength: TcxSpinEdit;
    chkBankAdjRunYear: TcxCheckBox;
    chkAPVendorAdjRunYear: TcxCheckBox;
    chkARVendorAdjRunYear: TcxCheckBox;
    chkAPCustomerAdjRunYear: TcxCheckBox;
    Label50: TLabel;
    edtARCustomerAdjCode: TcxTextEdit;
    edtARCustomerAdjLength: TcxSpinEdit;
    chkARCustomerAdjRunYear: TcxCheckBox;
    Label41: TLabel;
    edtDisplayFormatBerat: TcxTextEdit;
    Label42: TLabel;
    edtDisplayFormatMeasure: TcxTextEdit;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    edtDisplayFormatQty: TcxTextEdit;
    edtDisplayFormatPersen: TcxTextEdit;
    edtDisplayFormatCurrency: TcxTextEdit;
    Label56: TLabel;
    edtRoundUpAmount: TcxCalcEdit;
    chkAutoClosingDate: TcxCheckBox;
    edtJumHariClosing: TcxSpinEdit;
    Label1: TLabel;
    lblMutasi: TLabel;
    edtMTCode: TcxTextEdit;
    edtMTLength: TcxSpinEdit;
    chkMTRunYear: TcxCheckBox;
    lblAdjustmentMinus: TLabel;
    edtAMCode: TcxTextEdit;
    edtAMLength: TcxSpinEdit;
    chkAMRunYear: TcxCheckBox;
    procedure chkOptionYes34PropertiesEditValueChanged(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure chkSalePriceUsingPriceListPropertiesEditValueChanged(Sender: TObject);
    procedure chkSalePriceUsingCustomerPricePropertiesEditValueChanged(Sender: TObject);
  protected
    procedure InitForm; override;

    procedure RefreshAll;
    procedure LoadDataToForm; virtual;
    procedure SaveDataFromForm; virtual;
  private

  public

  end;

var
  fmSettingGlobal: TfmSettingGlobal;

implementation

{$R *.dfm}

uses untProcedure, untConstanta, dtmGlobal, dtmShare;

procedure TfmSettingGlobal.actCancelExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmSettingGlobal.actPostExecute(Sender: TObject);
begin
  inherited;

  SaveDataFromForm;
  dmShare.LoadDataFromOption;
end;

procedure TfmSettingGlobal.actRefreshExecute(Sender: TObject);
begin
  inherited;

  RefreshAll;
end;

procedure TfmSettingGlobal.chkOptionYes34PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if chkAutoClosingDate.Checked then
     edtJumHariClosing.Enabled := True
  else
     edtJumHariClosing.Enabled := False;
end;

procedure TfmSettingGlobal.chkSalePriceUsingCustomerPricePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  chkSalePriceUsingPriceList.Checked := not chkSalePriceUsingCustomerPrice.Checked;
end;

procedure TfmSettingGlobal.chkSalePriceUsingPriceListPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  chkSalePriceUsingCustomerPrice.Checked := not chkSalePriceUsingPriceList.Checked;
end;

procedure TfmSettingGlobal.InitForm;
begin
  inherited;

  actCancel.ShortCut := VK_ESCAPE;

  LoadDataToForm;
end;

procedure TfmSettingGlobal.LoadDataToForm;
begin
  // Global
  {Warning: GLB01 = dipakai untuk Tanggal Closing}
  chkAutoEdit.Checked := dmGlobal.GetSetupValue('GLB04', '1'); // Auto edit data (expert user)
  edtDisplayFormatBerat.EditValue := dmGlobal.GetSetupValue('GLB06', ',0.00;-,0.00'); // Format display berat
  edtDisplayFormatMeasure.EditValue := dmGlobal.GetSetupValue('GLB07', ',0.00;-,0.00'); // Format display mesure
  edtDisplayFormatQty.EditValue := dmGlobal.GetSetupValue('GLB08', ',0.00;-,0.00'); // Format display qty
  edtDisplayFormatPersen.EditValue := dmGlobal.GetSetupValue('GLB09', ',0.00;-,0.00'); // Format display disc
  edtDisplayFormatCurrency.EditValue := dmGlobal.GetSetupValue('GLB10', ',0.00;-,0.00'); // Format display currency

  // POS
//  chkOptionYes1.Checked := dmGlobal.GetSetupValue('OPT01', '0'); //sudah tidak dipakai lagi
//  lcbWarehouseId.EditValue := dmGlobal.GetSetupValue('OPT02', ''); //sudah tidak dipakai lagi
  chkUseMinSalePrice.Checked := dmGlobal.GetSetupValue('OPT03', '0');
//  lcbCustomerId.EditValue := dmGlobal.GetSetupValue('OPT04', ''); //sudah tidak dipakai lagi
  chkAutoUpdateMinSalesPrice.Checked := dmGlobal.GetSetupValue('OPT06', '0');
//  edtWarningExpired.EditValue := dmGlobal.GetSetupValue('OPT07', '1'); //sudah tidak dipakai lagi
  edtDefaultLengthItemId.EditValue := dmGlobal.GetSetupValue('OPT09', '8');

  chkSalePriceUsingPriceList.Checked := dmGlobal.GetSetupValue('OPT12', '0');
  chkWarningPurchasePriceHigherThanOtherVendor.Checked := dmGlobal.GetSetupValue('OPT13', '1');
  chkWarningQtyMinus.Checked := dmGlobal.GetSetupValue('OPT14', '1');
  chkWarningSalePriceLowerThanMinPrice.Checked := dmGlobal.GetSetupValue('OPT15', '1');
  chkWarningBonusItem.Checked := dmGlobal.GetSetupValue('OPT16', '1');
  chkWarningItemInactive.Checked := dmGlobal.GetSetupValue('OPT17', '1');
  chkItemNameCannotDuplicate.Checked := dmGlobal.GetSetupValue('OPT19', '1');
  chkShowItemInactive.Checked := dmGlobal.GetSetupValue('OPT21', '1');
//  chkOptionYes15.Checked := dmGlobal.GetSetupValue('OPT22', '0'); //sudah tidak dipakai lagi
//  chkOptionYes16.Checked := dmGlobal.GetSetupValue('OPT23', '0'); //sudah tidak dipakai lagi
//  chkOptionYes17.Checked := dmGlobal.GetSetupValue('OPT24', '0'); //sudah tidak dipakai lagi
//  chkOptionYes18.Checked := dmGlobal.GetSetupValue('OPT25', '0'); //sudah tidak dipakai lagi
//  chkOptionYes19.Checked := dmGlobal.GetSetupValue('OPT26', '0'); //sudah tidak dipakai lagi
//  chkOptionYes20.Checked := dmGlobal.GetSetupValue('OPT27', '0'); //sudah tidak dipakai lagi
//  chkOptionYes21.Checked := dmGlobal.GetSetupValue('OPT28', '0'); //sudah tidak dipakai lagi
//  chkOptionYes22.Checked := dmGlobal.GetSetupValue('OPT29', '0'); //sudah tidak dipakai lagi
//  chkOptionYes23.Checked := dmGlobal.GetSetupValue('OPT10', '0'); //sudah tidak dipakai lagi
//  chkOptionYes24.Checked := dmGlobal.GetSetupValue('OPT31', '0'); //sudah tidak dipakai lagi
  chkSIExternalDuplicate.Checked := dmGlobal.GetSetupValue('OPT32', '1');
  chkPIExternalDuplicate.Checked := dmGlobal.GetSetupValue('OPT33', '1');
  chkAutoClosingDate.Checked := dmGlobal.GetSetupValue('OPT34', '0');
  edtJumHariClosing.EditValue:=dmGlobal.GetSetupValue('OPT35', '1');
//  lcbPaymentTypeId.EditValue := dmGlobal.GetSetupValue('OPT36', ''); //sudah tidak dipakai lagi
  edtRoundUpAmount.EditValue := dmGlobal.GetSetupValue('OPT38', 0);

  // Prefix Counter
  edtPOCode.EditValue := dmGlobal.GetSetupValue('PO1', 'PO');
  //edtPICode.EditValue := dmGlobal.GetSetupValue('PI1', 'PI'); //sudah tidak dipakai lagi
  edtPPCode.EditValue := dmGlobal.GetSetupValue('PP1', 'PP');
  edtPRCode.EditValue := dmGlobal.GetSetupValue('PR1', 'PR');
  edtPRPCode.EditValue := dmGlobal.GetSetupValue('PRP1', 'PRP');
  edtSOCode.EditValue := dmGlobal.GetSetupValue('SO1', 'SO');
  //edtSICode.EditValue := dmGlobal.GetSetupValue('SI1', 'SI'); //sudah tidak dipakai lagi
  edtSPCode.EditValue := dmGlobal.GetSetupValue('SP1', 'SP');
  edtSRCode.EditValue := dmGlobal.GetSetupValue('SR1', 'SR');
  edtSRPCode.EditValue := dmGlobal.GetSetupValue('SRP1', 'SRP');
  edtAPCode.EditValue := dmGlobal.GetSetupValue('AP1', 'AP');
  edtAMCode.EditValue := dmGlobal.GetSetupValue('AM1', 'AM');
  edtMTCode.EditValue := dmGlobal.GetSetupValue('MT1', 'MT');
  edtCOCode.EditValue := dmGlobal.GetSetupValue('CO1', 'CO');
  edtKMCode.EditValue := dmGlobal.GetSetupValue('KM1', 'KM');
  edtKKCode.EditValue := dmGlobal.GetSetupValue('KK1', 'KK');
  edtBMCode.EditValue := dmGlobal.GetSetupValue('BM1', 'BM');
  edtBKCode.EditValue := dmGlobal.GetSetupValue('BK1', 'BK');
  edtBankAdjCode.EditValue := dmGlobal.GetSetupValue('BANK_ADJ1', 'BA');
  edtAPVendorAdjCode.EditValue := dmGlobal.GetSetupValue('AP_V_ADJ1', 'APV');
  edtARVendorAdjCode.EditValue := dmGlobal.GetSetupValue('AR_V_ADJ1', 'ARV');
  edtAPCustomerAdjCode.EditValue := dmGlobal.GetSetupValue('AP_C_ADJ1', 'APC');
  edtARCustomerAdjCode.EditValue := dmGlobal.GetSetupValue('AR_C_ADJ1', 'ARC');

  edtPOLength.EditValue := dmGlobal.GetSetupValue('PO2', '15');
  edtPILength.EditValue := dmGlobal.GetSetupValue('PI2', '15');
  edtPPLength.EditValue := dmGlobal.GetSetupValue('PP2', '15');
  edtPRLength.EditValue := dmGlobal.GetSetupValue('PR2', '15');
  edtPRPLength.EditValue := dmGlobal.GetSetupValue('PRP2', '15');
  edtSOLength.EditValue := dmGlobal.GetSetupValue('SO2', '15');
  edtSILength.EditValue := dmGlobal.GetSetupValue('SI2', '15');
  edtSPLength.EditValue := dmGlobal.GetSetupValue('SP2', '15');
  edtSRLength.EditValue := dmGlobal.GetSetupValue('SR2', '15');
  edtSRPLength.EditValue := dmGlobal.GetSetupValue('SRP2', '15');
  edtAPLength.EditValue := dmGlobal.GetSetupValue('AP2', '15');
  edtAMLength.EditValue := dmGlobal.GetSetupValue('AM2', '15');
  edtMTLength.EditValue := dmGlobal.GetSetupValue('MT2', '15');
  edtCOLength.EditValue := dmGlobal.GetSetupValue('CO2', '15');
  edtKMLength.EditValue := dmGlobal.GetSetupValue('KM2', '15');
  edtKKLength.EditValue := dmGlobal.GetSetupValue('KK2', '15');
  edtBMLength.EditValue := dmGlobal.GetSetupValue('BM2', '15');
  edtBKLength.EditValue := dmGlobal.GetSetupValue('BK2', '15');
  edtBankAdjLength.EditValue := dmGlobal.GetSetupValue('BANK_ADJ2', '15');
  edtAPVendorAdjLength.EditValue := dmGlobal.GetSetupValue('AP_V_ADJ2', '15');
  edtARVendorAdjLength.EditValue := dmGlobal.GetSetupValue('AR_V_ADJ2', '15');
  edtAPCustomerAdjLength.EditValue := dmGlobal.GetSetupValue('AP_C_ADJ2', '15');
  edtARCustomerAdjLength.EditValue := dmGlobal.GetSetupValue('AR_C_ADJ2', '15');

  chkPORunYear.Checked := dmGlobal.GetSetupValue('PO3', '0');
  chkPIRunYear.Checked := dmGlobal.GetSetupValue('PI3', '0');
  chkPPRunYear.Checked := dmGlobal.GetSetupValue('PP3', '0');
  chkPRRunYear.Checked := dmGlobal.GetSetupValue('PR3', '0');
  chkPRPRunYear.Checked := dmGlobal.GetSetupValue('PRP3', '0');
  chkSORunYear.Checked := dmGlobal.GetSetupValue('SO3', '0');
  chkSIRunYear.Checked := dmGlobal.GetSetupValue('SI3', '0');
  chkSPRunYear.Checked := dmGlobal.GetSetupValue('SP3', '0');
  chkSRRunYear.Checked := dmGlobal.GetSetupValue('SR3', '0');
  chkSRPRunYear.Checked := dmGlobal.GetSetupValue('SRP3', '0');
  chkAPRunYear.Checked := dmGlobal.GetSetupValue('AP3', '0');
  chkAMRunYear.Checked := dmGlobal.GetSetupValue('AM3', '0');
  chkMTRunYear.Checked := dmGlobal.GetSetupValue('MT3', '0');
  chkCORunYear.Checked := dmGlobal.GetSetupValue('CO3', '0');
  chkKMRunYear.Checked := dmGlobal.GetSetupValue('KM3', '0');
  chkKKRunYear.Checked := dmGlobal.GetSetupValue('KK3', '0');
  chkBMRunYear.Checked := dmGlobal.GetSetupValue('BM3', '0');
  chkBKRunYear.Checked := dmGlobal.GetSetupValue('BK3', '0');
  chkBankAdjRunYear.Checked := dmGlobal.GetSetupValue('BANK_ADJ3', '0');
  chkAPVendorAdjRunYear.Checked := dmGlobal.GetSetupValue('AP_V_ADJ3', '0');
  chkARVendorAdjRunYear.Checked := dmGlobal.GetSetupValue('AR_V_ADJ3', '0');
  chkAPCustomerAdjRunYear.Checked := dmGlobal.GetSetupValue('AP_C_ADJ3', '0');
  chkARCustomerAdjRunYear.Checked := dmGlobal.GetSetupValue('AR_C_ADJ3', '0');
end;

procedure TfmSettingGlobal.RefreshAll;
begin
  LoadDataToForm;
end;

procedure TfmSettingGlobal.SaveDataFromForm;
begin
  // Global
  {Warning: GLB01 = dipakai untuk Tanggal Closing}
  {GLB02, GLB03, GLB05 = belum terpakai}
  dmGlobal.SaveSetupValue('GLB04', Integer(chkAutoEdit.Checked)); // Auto edit data (expert user)
  dmGlobal.SaveSetupValue('GLB06', VarToStr(edtDisplayFormatBerat.EditValue)); // Format desimal berat
  dmGlobal.SaveSetupValue('GLB07', VarToStr(edtDisplayFormatMeasure.EditValue)); // Format desimal measure
  dmGlobal.SaveSetupValue('GLB08', VarToStr(edtDisplayFormatQty.EditValue)); // Format desimal qty
  dmGlobal.SaveSetupValue('GLB09', VarToStr(edtDisplayFormatPersen.EditValue)); // Format desimal discount
  dmGlobal.SaveSetupValue('GLB10', VarToStr(edtDisplayFormatCurrency.EditValue)); // Format desimal currency

  // POS Only
//  dmGlobal.SaveSetupValue('OPT01', Integer(chkOptionYes1.Checked)); //sudah tidak dipakai lagi
//  dmGlobal.SaveSetupValue('OPT02', VarToStr(lcbWarehouseId.EditValue)); //sudah tidak dipakai lagi
  dmGlobal.SaveSetupValue('OPT03', Integer(chkUseMinSalePrice.Checked));
//  dmGlobal.SaveSetupValue('OPT04', VarToStr(lcbCustomerId.EditValue)); //sudah tidak dipakai lagi
  dmGlobal.SaveSetupValue('OPT06', Integer(chkAutoUpdateMinSalesPrice.Checked)); // harga minimum = harga beli terakhir
//  dmGlobal.SaveSetupValue('OPT07', VarToStr(edtWarningExpired.EditValue)); //sudah tidak dipakai lagi
  dmGlobal.SaveSetupValue('OPT09', VarToStr(edtDefaultLengthItemId.EditValue));

  dmGlobal.SaveSetupValue('OPT12', Integer(chkSalePriceUsingPriceList.Checked)); // price list or customer price
  dmGlobal.SaveSetupValue('OPT13', Integer(chkWarningPurchasePriceHigherThanOtherVendor.Checked));
  dmGlobal.SaveSetupValue('OPT14', Integer(chkWarningQtyMinus.Checked));
  dmGlobal.SaveSetupValue('OPT15', Integer(chkWarningSalePriceLowerThanMinPrice.Checked));
  dmGlobal.SaveSetupValue('OPT16', Integer(chkWarningBonusItem.Checked));
  dmGlobal.SaveSetupValue('OPT17', Integer(chkWarningItemInactive.Checked));
  dmGlobal.SaveSetupValue('OPT19', Integer(chkItemNameCannotDuplicate.Checked));
  dmGlobal.SaveSetupValue('OPT21', Integer(chkShowItemInactive.Checked));

//  dmGlobal.SaveSetupValue('OPT22', Integer(chkOptionYes15.Checked)); // Validate void nota //sudah tidak dipakai lagi
//  dmGlobal.SaveSetupValue('OPT23', Integer(chkOptionYes16.Checked)); // Validate ubah after print //sudah tidak dipakai lagi
//  dmGlobal.SaveSetupValue('OPT24', Integer(chkOptionYes17.Checked)); // Validate hapus after print //sudah tidak dipakai lagi
//  dmGlobal.SaveSetupValue('OPT25', Integer(chkOptionYes18.Checked)); // Validate reprint //sudah tidak dipakai lagi
//  dmGlobal.SaveSetupValue('OPT26', Integer(chkOptionYes19.Checked)); // Validate void payment //sudah tidak dipakai lagi
//  dmGlobal.SaveSetupValue('OPT27', Integer(chkOptionYes20.Checked)); // Validate ubah harga //sudah tidak dipakai lagi
//  dmGlobal.SaveSetupValue('OPT28', Integer(chkOptionYes21.Checked)); // Validate ubah disc 1 //sudah tidak dipakai lagi
//  dmGlobal.SaveSetupValue('OPT29', Integer(chkOptionYes22.Checked)); // Validate ubah disc 2 //sudah tidak dipakai lagi
//  dmGlobal.SaveSetupValue('OPT30', Integer(chkOptionYes23.Checked)); // Validate ubah voucher //sudah tidak dipakai lagi
//  dmGlobal.SaveSetupValue('OPT31', Integer(chkOptionYes24.Checked)); // Validate barang bonus //sudah tidak dipakai lagi

  dmGlobal.SaveSetupValue('OPT32', Integer(chkSIExternalDuplicate.Checked));
  dmGlobal.SaveSetupValue('OPT33', Integer(chkPIExternalDuplicate.Checked));
  dmGlobal.SaveSetupValue('OPT34', Integer(chkAutoClosingDate.Checked));
  dmGlobal.SaveSetupValue('OPT35', VarToStr(edtJumHariClosing.EditValue));
//  dmGlobal.SaveSetupValue('OPT36', VarToStr(lcbPaymentTypeId.EditValue)); //sudah tidak dipakai lagi
  dmGlobal.SaveSetupValue('OPT38', VarToStr(edtRoundUpAmount.EditValue));

  // Counter
  dmGlobal.SaveSetupValue('PO1', VarToStr(edtPOCode.EditValue));
  //dmGlobal.SaveSetupValue('PI1', VarToStr(edtPICode.EditValue)); //sudah tidak dipakai lagi
  dmGlobal.SaveSetupValue('PP1', VarToStr(edtPPCode.EditValue));
  dmGlobal.SaveSetupValue('PR1', VarToStr(edtPRCode.EditValue));
  dmGlobal.SaveSetupValue('PRP1', VarToStr(edtPRPCode.EditValue));
  dmGlobal.SaveSetupValue('SO1', VarToStr(edtSOCode.EditValue));
  //dmGlobal.SaveSetupValue('SI1', VarToStr(edtSICode.EditValue)); //sudah tidak dipakai lagi
  dmGlobal.SaveSetupValue('SP1', VarToStr(edtSPCode.EditValue));
  dmGlobal.SaveSetupValue('SR1', VarToStr(edtSRCode.EditValue));
  dmGlobal.SaveSetupValue('SRP1', VarToStr(edtSRPCode.EditValue));
  dmGlobal.SaveSetupValue('AP1', VarToStr(edtAPCode.EditValue));
  dmGlobal.SaveSetupValue('AM1', VarToStr(edtAMCode.EditValue));
  dmGlobal.SaveSetupValue('MT1', VarToStr(edtMTCode.EditValue));
  dmGlobal.SaveSetupValue('CO1', VarToStr(edtCOCode.EditValue));
  dmGlobal.SaveSetupValue('KM1', VarToStr(edtKMCode.EditValue));
  dmGlobal.SaveSetupValue('KK1', VarToStr(edtKKCode.EditValue));
  dmGlobal.SaveSetupValue('BM1', VarToStr(edtBMCode.EditValue));
  dmGlobal.SaveSetupValue('BK1', VarToStr(edtBKCode.EditValue));
  dmGlobal.SaveSetupValue('BANK_ADJ1', VarToStr(edtBankAdjCode.EditValue));
  dmGlobal.SaveSetupValue('AP_V_ADJ1', VarToStr(edtAPVendorAdjCode.EditValue));
  dmGlobal.SaveSetupValue('AR_V_ADJ1', VarToStr(edtARVendorAdjCode.EditValue));
  dmGlobal.SaveSetupValue('AP_C_ADJ1', VarToStr(edtAPCustomerAdjCode.EditValue));
  dmGlobal.SaveSetupValue('AR_C_ADJ1', VarToStr(edtARCustomerAdjCode.EditValue));

  dmGlobal.SaveSetupValue('PO2', VarToStr(edtPOLength.EditValue));
  dmGlobal.SaveSetupValue('PI2', VarToStr(edtPILength.EditValue));
  dmGlobal.SaveSetupValue('PP2', VarToStr(edtPPLength.EditValue));
  dmGlobal.SaveSetupValue('PR2', VarToStr(edtPRLength.EditValue));
  dmGlobal.SaveSetupValue('PRP2', VarToStr(edtPRPLength.EditValue));
  dmGlobal.SaveSetupValue('SO2', VarToStr(edtSOLength.EditValue));
  dmGlobal.SaveSetupValue('SI2', VarToStr(edtSILength.EditValue));
  dmGlobal.SaveSetupValue('SP2', VarToStr(edtSPLength.EditValue));
  dmGlobal.SaveSetupValue('SR2', VarToStr(edtSRLength.EditValue));
  dmGlobal.SaveSetupValue('SRP2', VarToStr(edtSRPLength.EditValue));
  dmGlobal.SaveSetupValue('AP2', VarToStr(edtAPLength.EditValue));
  dmGlobal.SaveSetupValue('AM2', VarToStr(edtAMLength.EditValue));
  dmGlobal.SaveSetupValue('MT2', VarToStr(edtMTLength.EditValue));
  dmGlobal.SaveSetupValue('CO2', VarToStr(edtCOLength.EditValue));
  dmGlobal.SaveSetupValue('KM2', VarToStr(edtKMLength.EditValue));
  dmGlobal.SaveSetupValue('KK2', VarToStr(edtKKLength.EditValue));
  dmGlobal.SaveSetupValue('BM2', VarToStr(edtBMLength.EditValue));
  dmGlobal.SaveSetupValue('BK2', VarToStr(edtBKLength.EditValue));
  dmGlobal.SaveSetupValue('BANK_ADJ2', VarToStr(edtBankAdjLength.EditValue));
  dmGlobal.SaveSetupValue('AP_V_ADJ2', VarToStr(edtAPVendorAdjLength.EditValue));
  dmGlobal.SaveSetupValue('AR_V_ADJ2', VarToStr(edtARVendorAdjLength.EditValue));
  dmGlobal.SaveSetupValue('AP_C_ADJ2', VarToStr(edtAPCustomerAdjLength.EditValue));
  dmGlobal.SaveSetupValue('AR_C_ADJ2', VarToStr(edtARCustomerAdjLength.EditValue));

  dmGlobal.SaveSetupValue('PO3', Integer(chkPORunYear.Checked));
  dmGlobal.SaveSetupValue('PI3', Integer(chkPIRunYear.Checked));
  dmGlobal.SaveSetupValue('PP3', Integer(chkPPRunYear.Checked));
  dmGlobal.SaveSetupValue('PR3', Integer(chkPRRunYear.Checked));
  dmGlobal.SaveSetupValue('PRP3', Integer(chkPRPRunYear.Checked));
  dmGlobal.SaveSetupValue('SO3', Integer(chkSORunYear.Checked));
  dmGlobal.SaveSetupValue('SI3', Integer(chkSIRunYear.Checked));
  dmGlobal.SaveSetupValue('SP3', Integer(chkSPRunYear.Checked));
  dmGlobal.SaveSetupValue('SR3', Integer(chkSRRunYear.Checked));
  dmGlobal.SaveSetupValue('SRP3', Integer(chkSRPRunYear.Checked));
  dmGlobal.SaveSetupValue('AP3', Integer(chkAPRunYear.Checked));
  dmGlobal.SaveSetupValue('AM3', Integer(chkAMRunYear.Checked));
  dmGlobal.SaveSetupValue('MT3', Integer(chkMTRunYear.Checked));
  dmGlobal.SaveSetupValue('CO3', Integer(chkCORunYear.Checked));
  dmGlobal.SaveSetupValue('KM3', Integer(chkKMRunYear.Checked));
  dmGlobal.SaveSetupValue('KK3', Integer(chkKKRunYear.Checked));
  dmGlobal.SaveSetupValue('BM3', Integer(chkBMRunYear.Checked));
  dmGlobal.SaveSetupValue('BK3', Integer(chkBKRunYear.Checked));
  dmGlobal.SaveSetupValue('BANK_ADJ3', Integer(chkBankAdjRunYear.Checked));
  dmGlobal.SaveSetupValue('AP_V_ADJ3', Integer(chkAPVendorAdjRunYear.Checked));
  dmGlobal.SaveSetupValue('AR_V_ADJ3', Integer(chkARVendorAdjRunYear.Checked));
  dmGlobal.SaveSetupValue('AP_C_ADJ3', Integer(chkAPCustomerAdjRunYear.Checked));
  dmGlobal.SaveSetupValue('AR_C_ADJ3', Integer(chkARCustomerAdjRunYear.Checked));

  // Reload all program options !!!
  dmGlobal.LoadDataFromOption;
  dmShare.LoadDataFromOption;

  MessageDlg(MSG_SAVING_COMPLETE, mtInformation, [mbOk], 0);
end;

end.
