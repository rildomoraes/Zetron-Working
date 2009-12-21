unit dtmShare;

interface

uses
  SysUtils, Classes, DB, Menus, Forms, Variants, untConstanta,

  // Auto Generate
  MemDS, DBAccess, Uni;

type
  TdmShare = class(TDataModule)
    qryGetEmployeeName: TUniQuery;
    qryGetItemFlagInactive: TUniQuery;
    qryGetStatusItemIdExternal: TUniQuery;
    qryGetStatusItemId: TUniQuery;
  private
    { Private declarations }
    FOptionAutoClosing: boolean;
    FOptionJumHariClosing: integer;
    FOptionMinSalePriceActive: boolean;
    FOptionAutoUpdateMinSalePrice: boolean;
    FOptionWarningExpired: integer;
    FOptionSalesUsingPriceList: boolean;
    FOptionWarningQtyMinus: boolean;
    FOptionWarningMinSalePrice: boolean;
    FOptionWarningBonusItem: boolean;
    FOptionWarningItemInactive: boolean;
    FOptionWarningHighPuchasePrice: boolean;
    FOptionItemNameUnique: boolean;
    FOptionShowInactiveItem: boolean;
    FOptionUsingItemExpired: boolean;
    FOptionPIExternalCannotDuplicate: boolean;
    FOptionSIInternalCannotDuplicate: boolean;
    FOptionShowAutomaticSalesOnSI: boolean;
    FOptionSalesRoundingValue: integer;
    FOptionAutoPostingOnClosingRegister: boolean;
    FOptionCannotPrintUnpaidInvoice: boolean;

    procedure InitDataModule;
    procedure DeinitDataModule;
  public
    { Public declarations }
    OptionPO: TPrefixRecord;
    OptionPI: TPrefixRecord;
    OptionPP: TPrefixRecord;
    OptionPR: TPrefixRecord;
    OptionPRP: TPrefixRecord;
    OptionSO: TPrefixRecord;
    OptionSI: TPrefixRecord;
    OptionSP: TPrefixRecord;
    OptionSR: TPrefixRecord;
    OptionSRP: TPrefixRecord;
    OptionAP: TPrefixRecord;
    OptionAM: TPrefixRecord;
    OptionMT: TPrefixRecord;
    OptionCO: TPrefixRecord;
    OptionKM: TPrefixRecord;
    OptionKK: TPrefixRecord;
    OptionBM: TPrefixRecord;
    OptionBK: TPrefixRecord;
    OptionBANK_ADJ: TPrefixRecord;
    OptionAP_V_ADJ: TPrefixRecord;
    OptionAR_V_ADJ: TPrefixRecord;
    OptionAP_C_ADJ: TPrefixRecord;
    OptionAR_C_ADJ: TPrefixRecord;
    OptionRegValidationInvoiceDisc1: TRegisterValidationRecord;
    OptionRegValidationInvoiceDisc2: TRegisterValidationRecord;
    OptionRegValidationInvoiceVoucher: TRegisterValidationRecord;
    OptionRegValidationInvoiceVoid: TRegisterValidationRecord;
    OptionRegValidationInvoiceReprint: TRegisterValidationRecord;
    OptionRegValidationPaymentVoid: TRegisterValidationRecord;
    OptionRegValidationItemDisc1: TRegisterValidationRecord;
    OptionRegValidationItemDisc2: TRegisterValidationRecord;
    OptionRegValidationItemVoucher: TRegisterValidationRecord;
    OptionRegValidationItemBonus: TRegisterValidationRecord;
    OptionRegValidationItemVoid: TRegisterValidationRecord;
    OptionRegValidationItemPrice: TRegisterValidationRecord;
    OptionRegValidationPIPaymentVoid: TRegisterValidationRecord;
    OptionRegValidationSIPaymentVoid: TRegisterValidationRecord;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure LoadDataFromOption;

    function GetEmployeeName(const AEmployeeId: string): string;
    function GetItemIdExternal(ABarcodeId: string): string;
    function GetStatusItemId(ItemId: string): string;
    function GetStatusItemIdExternal(ItemIdExternal: string): string;

    function IsItemValid(const AItemIdExternal: string; var AItemId, AStatusItem: string): boolean;
    function IsAllowViewCOGS: boolean;

    property OptionPIExternalCannotDuplicate: boolean read FOptionPIExternalCannotDuplicate write FOptionPIExternalCannotDuplicate;
    property OptionSIInternalCannotDuplicate: boolean read FOptionSIInternalCannotDuplicate write FOptionSIInternalCannotDuplicate;
    property OptionMinSalePriceActive: boolean read FOptionMinSalePriceActive write FOptionMinSalePriceActive;
    property OptionAutoUpdateMinSalePrice: boolean read FOptionAutoUpdateMinSalePrice write FOptionAutoUpdateMinSalePrice;
    property OptionSalesUsingPriceList: boolean read FOptionSalesUsingPriceList write FOptionSalesUsingPriceList;
    property OptionWarningQtyMinus: boolean read FOptionWarningQtyMinus write FOptionWarningQtyMinus;
    property OptionWarningMinSalePrice: boolean read FOptionWarningMinSalePrice write FOptionWarningMinSalePrice;
    property OptionWarningBonusItem: boolean read FOptionWarningBonusItem write FOptionWarningBonusItem;
    property OptionWarningItemInactive: boolean read FOptionWarningItemInactive write FOptionWarningItemInactive;
    property OptionWarningHighPuchasePrice: boolean read FOptionWarningHighPuchasePrice write FOptionWarningHighPuchasePrice;
    property OptionItemNameUnique: boolean read FOptionItemNameUnique write FOptionItemNameUnique;
    property OptionShowInactiveItem: boolean read FOptionShowInactiveItem write FOptionShowInactiveItem;
    property OptionSalesRoundingValue: integer read FOptionSalesRoundingValue write FOptionSalesRoundingValue;
    property OptionShowAutomaticSalesOnSI: boolean read FOptionShowAutomaticSalesOnSI write FOptionShowAutomaticSalesOnSI;
    property OptionAutoPostingOnClosingRegister: boolean read FOptionAutoPostingOnClosingRegister write FOptionAutoPostingOnClosingRegister;
    property OptionCannotPrintUnpaidInvoice: boolean read FOptionCannotPrintUnpaidInvoice write FOptionCannotPrintUnpaidInvoice;

    property OptionAutoClosing: boolean read FOptionAutoClosing write FOptionAutoClosing;
    property OptionJumHariClosing: integer read FOptionJumHariClosing write FOptionJumHariClosing;
    property OptionWarningExpired: integer read FOptionWarningExpired write FOptionWarningExpired;
    property OptionUsingItemExpired: boolean read FOptionUsingItemExpired write FOptionUsingItemExpired;
  end;

var
  dmShare: TdmShare;

implementation

uses
  untProcedure, dtmGlobal;

{$R *.dfm}

procedure TdmShare.LoadDataFromOption;
var
  S: string;
begin
  //OptionStockIsDecimal := dmGlobal.GetSetupValue('OPT01', False); //sudah tidak dipakai lagi
  //OptionDefaultWarehouseSales := dmGlobal.GetSetupValue('OPT02', ''); //sudah tidak dipakai lagi
  OptionMinSalePriceActive := dmGlobal.GetSetupValue('OPT03', False);
  //OptionDefaultCustomerId := dmGlobal.GetSetupValue('OPT04', '');  //sudah tidak dipakai lagi
  OptionShowAutomaticSalesOnSI := dmGlobal.GetSetupValue('OPT37', False);
  //OptionDefaultPaymentTypeId := dmGlobal.GetSetupValue('OPT36', '');  //sudah tidak dipakai lagi

  OptionAutoUpdateMinSalePrice := dmGlobal.GetSetupValue('OPT06', False);
  OptionAutoClosing := dmGlobal.GetSetupValue('OPT34', True);
  OptionWarningExpired := dmGlobal.GetSetupValue('OPT07', '1');
  {Warning: OPT09 = dipakai untuk default ItemIdLength via procedure GetItemIdExternal}
  S := dmGlobal.GetSetupValue('OPT10', '19000101');
  OptionUsingItemExpired := dmGlobal.GetSetupValue('OPT11', False);

  OptionJumHariClosing := dmGlobal.GetSetupValue('OPT35', '1');
  OptionSalesUsingPriceList := dmGlobal.GetSetupValue('OPT12', False);

  OptionWarningQtyMinus := dmGlobal.GetSetupValue('OPT13', True);
  OptionWarningMinSalePrice := dmGlobal.GetSetupValue('OPT14', True);
  OptionWarningBonusItem := dmGlobal.GetSetupValue('OPT15', True);
  OptionWarningItemInactive := dmGlobal.GetSetupValue('OPT16', True);
  OptionWarningHighPuchasePrice := dmGlobal.GetSetupValue('OPT17', True);
  OptionItemNameUnique := dmGlobal.GetSetupValue('OPT19', True);
  OptionShowInactiveItem := dmGlobal.GetSetupValue('OPT21', True);

//  OptionSIValidationVoid := dmGlobal.GetSetupValue('OPT22', True); //sudah tidak dipakai lagi
//  OptionSIValidationEditAfterPrint := dmGlobal.GetSetupValue('OPT23', True); //sudah tidak dipakai lagi
//  OptionSIValidationDeleteAfterPrint := dmGlobal.GetSetupValue('OPT24', True); //sudah tidak dipakai lagi
//  OptionSIValidationReprint := dmGlobal.GetSetupValue('OPT25', True); //sudah tidak dipakai lagi
//  OptionSIValidationVoidPayment := dmGlobal.GetSetupValue('OPT26', True); //sudah tidak dipakai lagi
//  OptionSIValidationPriceChange := dmGlobal.GetSetupValue('OPT27', True); //sudah tidak dipakai lagi
//  OptionSIValidationDisc1 := dmGlobal.GetSetupValue('OPT28', True); //sudah tidak dipakai lagi
//  OptionSIValidationDisc2 := dmGlobal.GetSetupValue('OPT29', True); //sudah tidak dipakai lagi
//  OptionSIValidationVoucher := dmGlobal.GetSetupValue('OPT30', True); //sudah tidak dipakai lagi
//  OptionSIValidationItemBonus := dmGlobal.GetSetupValue('OPT31', True); //sudah tidak dipakai lagi
  OptionSIInternalCannotDuplicate := dmGlobal.GetSetupValue('OPT32', True);
  OptionPIExternalCannotDuplicate := dmGlobal.GetSetupValue('OPT33', True);
  OptionSalesRoundingValue := dmGlobal.GetSetupValue('OPT38', 0);

  // Counter
  OptionPO.Prefix := dmGlobal.GetSetupValue('PO1', 'PO');
  //OptionPI.Prefix := dmGlobal.GetSetupValue('PI1', 'PI'); //sudah tidak dipakai lagi
  OptionPP.Prefix := dmGlobal.GetSetupValue('PP1', 'PP');
  OptionPR.Prefix := dmGlobal.GetSetupValue('PR1', 'PR');
  OptionPRP.Prefix := dmGlobal.GetSetupValue('PRP1', 'PRP');
  OptionSO.Prefix := dmGlobal.GetSetupValue('SO1', 'SO');
  //OptionSI.Prefix := dmGlobal.GetSetupValue('SI1', 'SI'); //sudah tidak dipakai lagi
  OptionSP.Prefix := dmGlobal.GetSetupValue('SP1', 'SP');
  OptionSR.Prefix := dmGlobal.GetSetupValue('SR1', 'SR');
  OptionSRP.Prefix := dmGlobal.GetSetupValue('SRP1', 'SRP');
  OptionAP.Prefix := dmGlobal.GetSetupValue('AP1', 'OT');
  OptionAM.Prefix := dmGlobal.GetSetupValue('AM1', 'OT');
  OptionMT.Prefix := dmGlobal.GetSetupValue('MT1', 'MT');
  OptionCO.Prefix := dmGlobal.GetSetupValue('CO1', 'CO');
  OptionKM.Prefix := dmGlobal.GetSetupValue('KM1', 'KM');
  OptionKK.Prefix := dmGlobal.GetSetupValue('KK1', 'KK');
  OptionBM.Prefix := dmGlobal.GetSetupValue('BM1', 'BM');
  OptionBK.Prefix := dmGlobal.GetSetupValue('BK1', 'BK');
  OptionBANK_ADJ.Prefix := dmGlobal.GetSetupValue('BANK_ADJ1', 'BA');
  OptionAP_V_ADJ.Prefix := dmGlobal.GetSetupValue('AP_V_ADJ1', 'AP');
  OptionAR_V_ADJ.Prefix := dmGlobal.GetSetupValue('AR_V_ADJ1', 'AR');
  OptionAP_C_ADJ.Prefix := dmGlobal.GetSetupValue('AP_C_ADJ1', 'AP');
  OptionAR_C_ADJ.Prefix := dmGlobal.GetSetupValue('AR_C_ADJ1', 'AR');

  OptionPO.Length := dmGlobal.GetSetupValue('PO2', 15);
  OptionPI.Length := dmGlobal.GetSetupValue('PI2', 15);
  OptionPP.Length := dmGlobal.GetSetupValue('PP2', 15);
  OptionPR.Length := dmGlobal.GetSetupValue('PR2', 15);
  OptionPRP.Length := dmGlobal.GetSetupValue('PRP2', 15);
  OptionSO.Length := dmGlobal.GetSetupValue('SO2', 15);
  OptionSI.Length := dmGlobal.GetSetupValue('SI2', 15);
  OptionSP.Length := dmGlobal.GetSetupValue('SP2', 15);
  OptionSR.Length := dmGlobal.GetSetupValue('SR2', 15);
  OptionSRP.Length := dmGlobal.GetSetupValue('SRP2', 15);
  OptionAP.Length := dmGlobal.GetSetupValue('AP2', 15);
  OptionAM.Length := dmGlobal.GetSetupValue('AM2', 15);
  OptionMT.Length := dmGlobal.GetSetupValue('MT2', 15);
  OptionCO.Length := dmGlobal.GetSetupValue('CO2', 15);
  OptionKM.Length := dmGlobal.GetSetupValue('KM2', 15);
  OptionKK.Length := dmGlobal.GetSetupValue('KK2', 15);
  OptionBM.Length := dmGlobal.GetSetupValue('BM2', 15);
  OptionBK.Length := dmGlobal.GetSetupValue('BK2', 15);
  OptionBANK_ADJ.Length := dmGlobal.GetSetupValue('BANK_ADJ2', '15');
  OptionAP_V_ADJ.Length := dmGlobal.GetSetupValue('AP_V_ADJ2', '15');
  OptionAR_V_ADJ.Length := dmGlobal.GetSetupValue('AR_V_ADJ2', '15');
  OptionAP_C_ADJ.Length := dmGlobal.GetSetupValue('AP_C_ADJ2', '15');
  OptionAR_C_ADJ.Length := dmGlobal.GetSetupValue('AR_C_ADJ2', '15');

  OptionPO.RunYear := dmGlobal.GetSetupValue('PO3', False);
  OptionPI.RunYear := dmGlobal.GetSetupValue('PI3', False);
  OptionPP.RunYear := dmGlobal.GetSetupValue('PP3', False);
  OptionPR.RunYear := dmGlobal.GetSetupValue('PR3', False);
  OptionPRP.RunYear := dmGlobal.GetSetupValue('PRP3', False);
  OptionSO.RunYear := dmGlobal.GetSetupValue('SO3', False);
  OptionSI.RunYear := dmGlobal.GetSetupValue('SI3', False);
  OptionSP.RunYear := dmGlobal.GetSetupValue('SP3', False);
  OptionSR.RunYear := dmGlobal.GetSetupValue('SR3', False);
  OptionSRP.RunYear := dmGlobal.GetSetupValue('SRP3', False);
  OptionAP.RunYear := dmGlobal.GetSetupValue('AP3', False);
  OptionAM.RunYear := dmGlobal.GetSetupValue('AM3', False);
  OptionMT.RunYear := dmGlobal.GetSetupValue('MT3', False);
  OptionCO.RunYear := dmGlobal.GetSetupValue('CO3', False);
  OptionKM.RunYear := dmGlobal.GetSetupValue('KM3', False);
  OptionKK.RunYear := dmGlobal.GetSetupValue('KK3', False);
  OptionBM.RunYear := dmGlobal.GetSetupValue('BM3', False);
  OptionBK.RunYear := dmGlobal.GetSetupValue('BK3', False);
  OptionBANK_ADJ.RunYear := dmGlobal.GetSetupValue('BANK_ADJ3', False);
  OptionAP_V_ADJ.RunYear := dmGlobal.GetSetupValue('AP_V_ADJ3', False);
  OptionAR_V_ADJ.RunYear := dmGlobal.GetSetupValue('AR_V_ADJ3', False);
  OptionAP_C_ADJ.RunYear := dmGlobal.GetSetupValue('AP_C_ADJ3', False);
  OptionAR_C_ADJ.RunYear := dmGlobal.GetSetupValue('AR_C_ADJ3', False);

  //Kasir
  OptionAutoPostingOnClosingRegister := dmGlobal.GetSetupValue('REG_AUTO_CLOSING_WITH_POSTING', False);
  OptionCannotPrintUnpaidInvoice := dmGlobal.GetSetupValue('REG_CANNOT_PRINT_UNPAID', True);

  OptionRegValidationInvoiceDisc1.Validate := dmGlobal.GetSetupValue('REG_INV_DISC1', '1');
  OptionRegValidationInvoiceDisc1.Level := dmGlobal.GetSetupValue('REG_INV_DISC1_LV', '1');
  OptionRegValidationInvoiceDisc1.BypassIfUnpaid := dmGlobal.GetSetupValue('REG_INV_DISC1_BYPASS', '0');
  OptionRegValidationInvoiceDisc2.Validate := dmGlobal.GetSetupValue('REG_INV_DISC2', '1');
  OptionRegValidationInvoiceDisc2.Level := dmGlobal.GetSetupValue('REG_INV_DISC2_LV', '1');
  OptionRegValidationInvoiceDisc2.BypassIfUnpaid := dmGlobal.GetSetupValue('REG_INV_DISC2_BYPASS', '0');
  OptionRegValidationInvoiceVoucher.Validate := dmGlobal.GetSetupValue('REG_INV_VOUCHER', '1');
  OptionRegValidationInvoiceVoucher.Level := dmGlobal.GetSetupValue('REG_INV_VOUCHER_LV', '1');
  OptionRegValidationInvoiceVoucher.BypassIfUnpaid := dmGlobal.GetSetupValue('REG_INV_VOUCHER_BYPASS', '0');
  OptionRegValidationInvoiceVoid.Validate := dmGlobal.GetSetupValue('REG_INV_VOID', '1');
  OptionRegValidationInvoiceVoid.Level := dmGlobal.GetSetupValue('REG_INV_VOID_LV', '1');
  OptionRegValidationInvoiceReprint.Validate := dmGlobal.GetSetupValue('REG_INV_REPRINT', '1');
  OptionRegValidationInvoiceReprint.Level := dmGlobal.GetSetupValue('REG_INV_REPRINT_LV', '1');
  OptionRegValidationPaymentVoid.Validate := dmGlobal.GetSetupValue('REG_INV_VOID_PAY', '1');
  OptionRegValidationPaymentVoid.Level := dmGlobal.GetSetupValue('REG_INV_VOID_PAY_LV', '1');
  OptionRegValidationItemDisc1.Validate := dmGlobal.GetSetupValue('REG_ITEM_DISC1', '1');
  OptionRegValidationItemDisc1.Level := dmGlobal.GetSetupValue('REG_ITEM_DISC1_LV', '1');
  OptionRegValidationItemDisc1.BypassIfUnpaid := dmGlobal.GetSetupValue('REG_ITEM_DISC1_BYPASS', '0');
  OptionRegValidationItemDisc2.Validate := dmGlobal.GetSetupValue('REG_ITEM_DISC2', '1');
  OptionRegValidationItemDisc2.Level := dmGlobal.GetSetupValue('REG_ITEM_DISC2_LV', '1');
  OptionRegValidationItemDisc2.BypassIfUnpaid := dmGlobal.GetSetupValue('REG_ITEM_DISC2_BYPASS', '0');
  OptionRegValidationItemVoucher.Validate := dmGlobal.GetSetupValue('REG_ITEM_VOUCHER', '1');
  OptionRegValidationItemVoucher.Level := dmGlobal.GetSetupValue('REG_ITEM_VOUCHER_LV', '1');
  OptionRegValidationItemVoucher.BypassIfUnpaid := dmGlobal.GetSetupValue('REG_ITEM_VOUCHER_BYPASS', '0');
  OptionRegValidationItemBonus.Validate := dmGlobal.GetSetupValue('REG_ITEM_BONUS', '1');
  OptionRegValidationItemBonus.Level := dmGlobal.GetSetupValue('REG_ITEM_BONUS_LV', '1');
  OptionRegValidationItemBonus.BypassIfUnpaid := dmGlobal.GetSetupValue('REG_ITEM_BONUS_BYPASS', '0');
  OptionRegValidationItemVoid.Validate := dmGlobal.GetSetupValue('REG_ITEM_VOID', '1');
  OptionRegValidationItemVoid.Level := dmGlobal.GetSetupValue('REG_ITEM_VOID_LV', '1');
  OptionRegValidationItemVoid.BypassIfUnpaid := dmGlobal.GetSetupValue('REG_ITEM_VOID_BYPASS', '0');
  OptionRegValidationItemPrice.Validate := dmGlobal.GetSetupValue('REG_ITEM_PRICE', '1');
  OptionRegValidationItemPrice.Level := dmGlobal.GetSetupValue('REG_ITEM_PRICE_LV', '1');
  OptionRegValidationItemPrice.BypassIfUnpaid := dmGlobal.GetSetupValue('REG_ITEM_PRICE_BYPASS', '0');
  OptionRegValidationPIPaymentVoid.Validate := dmGlobal.GetSetupValue('REG_PI_PAY_VOID', '1');
  OptionRegValidationPIPaymentVoid.Level := dmGlobal.GetSetupValue('REG_PI_PAY_VOID_LV', '1');
  OptionRegValidationSIPaymentVoid.Validate := dmGlobal.GetSetupValue('REG_SI_PAY_VOID', '1');
  OptionRegValidationSIPaymentVoid.Level := dmGlobal.GetSetupValue('REG_SI_PAY_VOID_LV', '1');
end;

function TdmShare.GetItemIdExternal(ABarcodeId: string): string;
begin
  Result := '';
  if length(ABarcodeid) = 10 then
  begin
    Result := copy(ABarcodeId, 1, 6);
  end;
end;

function TdmShare.IsAllowViewCOGS: boolean;
var
  CanViewCOGS: boolean;
begin
  // Menu Exist & Allow to open
  CanViewCOGS := dmGlobal.qryPositionAccess.Locate('MenuId', 'Display St&ok', [loCaseInsensitive]);
  if CanViewCOGS then
    CanViewCOGS := dmGlobal.qryPositionAccess.FieldByName('FlagOpen').AsString = '1';

  // Adalah superuser
  if not CanViewCOGS then
    CanViewCOGS := dmGlobal.SettingGlobal.LoginUsername = ADMIN_ID;
  Result := CanViewCOGS;
end;

function TdmShare.IsItemValid(const AItemIdExternal: string; var AItemId, AStatusItem: string): boolean;
begin
  AItemId := '';
  Result := False;
  qryGetStatusItemIdExternal.Close;
  qryGetStatusItemIdExternal.Params[0].Value := AItemIdExternal;
  OpenIfClose(qryGetStatusItemIdExternal);
  if not qryGetStatusItemIdExternal.IsEmpty then
  begin
    AItemId := qryGetStatusItemIdExternal.FieldByName('ItemId').AsString;
    AStatusItem := qryGetStatusItemIdExternal.FieldByName('StatusItem').AsString;
    Result := True;
  end;
end;

function TdmShare.GetStatusItemId(ItemId: string): string;
begin
  qryGetStatusItemId.Close;
  qryGetStatusItemId.Params[0].Value := ItemId;
  OpenIfClose(qryGetStatusItemId);
  Result := qryGetStatusItemId.FieldByName('StatusItem').AsString;
end;

function TdmShare.GetStatusItemIdExternal(ItemIdExternal: string): string;
begin
  qryGetStatusItemIdExternal.Close;
  qryGetStatusItemIdExternal.Params[0].Value := ItemIdExternal;
  OpenIfClose(qryGetStatusItemIdExternal);
  Result := qryGetStatusItemIdExternal.FieldByName('StatusItem').AsString;
end;

procedure TdmShare.DeinitDataModule;
begin
//
end;

procedure TdmShare.InitDataModule;
begin
  if not Application.Terminated then
    dmGlobal.InitComponent(Self);
end;

constructor TdmShare.Create(AOwner: TComponent);
begin
  inherited;
  InitDataModule;
end;

destructor TdmShare.Destroy;
begin
  DeinitDataModule;
  inherited;
end;

function TdmShare.GetEmployeeName(const AEmployeeId: string): string;
begin
  Result := '';
  qryGetEmployeeName.Close;
  qryGetEmployeeName.Params[0].Value := AEmployeeId;
  OpenIfClose(qryGetEmployeeName); ;
  if not qryGetEmployeeName.IsEmpty then
    Result := VarToStr(qryGetEmployeeName.Fields[0].Value);
end;

end.


