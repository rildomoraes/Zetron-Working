unit dtmShare;

interface

uses
  untProcedure,SysUtils, Classes, ADODB, DB, ImgList, Menus,
  Controls, variants, Forms, MemDS, DBAccess, Uni;

type
  TTransactionMode = (
    tmTransaksi,tmMutasi,tmPengambilanPayroll);
  TMenuItemArray = Array of TMenuItem;

  TdmShare = class(TDataModule)
    qryGetShift: TADOQuery;
    qryCheckShift: TADOQuery;
    qryGetTransactionId: TADOQuery;
    qryGetTransactionIdNotDate: TADOQuery;
    qryGetTransactionStatus: TADOQuery;
  private
    { Private declarations }
    FOptionStockIsDecimal: boolean;
    FOptionManual: boolean;
    FOptionClosingDate: TDateTime;
    FOptionActiveDate: TDateTime;
    FOptionDefaultWarehouseSales: string;
    FOptionDefaultCustomerId: string;
    FOptionMinSalePriceActive: boolean;
    FOptionAutoUpdateMinSalePrice: boolean;
    FOptionWarningExpired: integer;
    FOptionDefaultLengthId: integer;
    FOptionSalesUsingPriceList: boolean;
    FOptionWarningQtyMinus: boolean;
    FOptionWarningMinSalePrice: boolean;
    FOptionWarningBonusItem: boolean;
    FOptionWarningItemInactive: boolean;
    FOptionWarningHighPuchasePrice: boolean;
    FOptionItemNameUnique: boolean;
    FOptionItemBarcodeIdUnique: boolean;
    procedure InitDataModule;
    procedure DeinitDataModule;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure LoadDataFromOption;

    function cekjam(Atime:tdatetime;x:integer):boolean;

    function GetEmployeeName(const AEmployeeId: string): string;
    function GetTransactionStatus(ATransactionMode: TTransactionMode; ATransactionId: variant): string;
    function GetItemIdExternal(ABarcodeId: string): string;
    function GetStatusItemId(ItemId: string): string;
    function GetStatusItemIdExternal(ItemIdExternal: string): string;

    function IsItemValid(const AItemIdExternal: string; var AItemId, AStatusItem: string): boolean;

    procedure SetTransInfo(ATransactionMode: TTransactionMode; var ATableName, AFieldname, APrefix: string);

    procedure InitPopupMenuPrint(APopupMenu: TPopupMenu; AEvent: TNotifyEvent; var AMenuItemPrintArray: TMenuItemArray; const AProgramId, AReportId: string);
    procedure SetPrintCounter(ATransactionMode: TTransactionMode; ATransactionId: variant);

    property OptionManual: boolean read FOptionManual write FOptionManual;
    property OptionActiveDate: TDateTime read FOptionActiveDate write FOptionActiveDate;
    property OptionClosingDate: TDateTime read FOptionClosingDate write FOptionClosingDate;
    property OptionStockIsDecimal: boolean read FOptionStockIsDecimal write FOptionStockIsDecimal;
    property OptionDefaultWarehouseSales: string read FOptionDefaultWarehouseSales write FOptionDefaultWarehouseSales;
    property OptionDefaultCustomerId: string read FOptionDefaultCustomerId write FOptionDefaultCustomerId;
    property OptionMinSalePriceActive: boolean read FOptionMinSalePriceActive write FOptionMinSalePriceActive;
    property OptionAutoUpdateMinSalePrice: boolean read FOptionAutoUpdateMinSalePrice write FOptionAutoUpdateMinSalePrice;
    property OptionWarningExpired: integer read FOptionWarningExpired write FOptionWarningExpired;
    property OptionDefaultLengthId: integer read FOptionDefaultLengthId write FOptionDefaultLengthId;
    property OptionSalesUsingPriceList: boolean read FOptionSalesUsingPriceList write FOptionSalesUsingPriceList;
    property OptionWarningQtyMinus: boolean read FOptionWarningQtyMinus write FOptionWarningQtyMinus;
    property OptionWarningMinSalePrice: boolean read FOptionWarningMinSalePrice write FOptionWarningMinSalePrice;
    property OptionWarningBonusItem: boolean read FOptionWarningBonusItem write FOptionWarningBonusItem;
    property OptionWarningItemInactive: boolean read FOptionWarningItemInactive write FOptionWarningItemInactive;
    property OptionWarningHighPuchasePrice: boolean read FOptionWarningHighPuchasePrice write FOptionWarningHighPuchasePrice;
    property OptionItemNameUnique: boolean read FOptionItemNameUnique write FOptionItemNameUnique;
    property OptionItemBarcodeIdUnique: boolean read FOptionItemBarcodeIdUnique write FOptionItemBarcodeIdUnique;
  end;

var
  dmShare: TdmShare;

implementation

uses
  dtmGlobal, StrUtils, DateUtils;

{$R *.dfm}

function TdmShare.cekjam(ATime:tdatetime;x:integer):boolean;
var
 AHour,AMinute,ASecond,AMilisecond:word;
 ok:boolean;
begin
  ok:=false;
  DecodeTime(ATime,AHour,Aminute,ASecond,Amilisecond);
  if ((AHour=x) and ((Aminute>0)) or (Asecond>0) or (Amilisecond>0)) or (AHour>x) then
  begin
    ok:=true;
  end;
  cekjam:=ok;
end;

procedure TdmShare.LoadDataFromOption;
begin
//
end;

function TdmShare.GetItemIdExternal(ABarcodeId: string): string;
begin
  Result := '';
  if length(ABarcodeid) = 10 then
  begin
    Result := copy(ABarcodeId, 1, 6);
  end;
end;

function TdmShare.IsItemValid(const AItemIdExternal: string; var AItemId, AStatusItem: string): boolean;
begin

end;

function TdmShare.GetStatusItemId(ItemId: string): string;
begin

end;

function TdmShare.GetStatusItemIdExternal(ItemIdExternal: string): string;
begin

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

procedure TdmShare.InitPopupMenuPrint(APopupMenu: TPopupMenu;
  AEvent: TNotifyEvent; var AMenuItemPrintArray: TMenuItemArray;
  const AProgramId, AReportId: string);
begin
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


function TdmShare.GetTransactionStatus(ATransactionMode: TTransactionMode;
  ATransactionId: Variant): string;

begin

end;

procedure TdmShare.SetPrintCounter(ATransactionMode: TTransactionMode;
  ATransactionId: variant);

begin

end;

function TdmShare.GetEmployeeName(const AEmployeeId: string): string;
begin

end;

procedure TdmShare.SetTransInfo(ATransactionMode: TTransactionMode;
  var ATableName, AFieldName, APrefix: string);
begin
  case ATransactionMode of
    tmTransaksi:
      begin
        ATableName := 'transaksiabsen';
        AFieldName := 'notransaksiabsen';
        APrefix := 'T-';
      end;
    tmMutasi:
      begin
        ATableName := 'Mutasi';
        AFieldName := 'noreg';
        APrefix := 'M-';
      end;
    tmPengambilanPayroll:
      begin
        ATableName := 'transaksipengambilanpayrollhd';
        AFieldName := 'notransaksipengambil';
        APrefix := 'A-';
      end;
  else
    Assert(False, 'Transaction mode not served yet!');
  end;
end;

end.

