unit frmCashRegister;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmUniMasterEx, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxCheckBox, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit,
  StdCtrls, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxButtons, ExtCtrls;

type
  TfmCashRegister = class(TFormUniMasterEx)
    lblCashRegister: TLabel;
    dbeCashRegisterId: TcxDBTextEdit;
    lblCashRegisterName: TLabel;
    dbeCashRegisterName: TcxDBTextEdit;
    lblCustomerId: TLabel;
    lblWarehouseId: TLabel;
    lblOutletId: TLabel;
    dbeCustomerId: TcxDBExtLookupComboBox;
    dbeOutletId: TcxDBExtLookupComboBox;
    dbeWarehouseId: TcxDBExtLookupComboBox;
    cgPrevDisplay: TcxGrid;
    cgvPrevDisplay: TcxGridDBTableView;
    cgPrevDisplayLevel1: TcxGridLevel;
    cgvPrevDisplaycashregisterid: TcxGridDBColumn;
    cgvPrevDisplaycashregistername: TcxGridDBColumn;
    cgvPrevDisplaywarehouseid: TcxGridDBColumn;
    cgvPrevDisplaycustomerid: TcxGridDBColumn;
    cgvPrevDisplayoutletid: TcxGridDBColumn;
    qryCashRegister: TUniQuery;
    chkFlagUseFPValidation: TcxDBCheckBox;
    chkFlagUseBarcodeMode: TcxDBCheckBox;
    procedure qryCashRegisterNewRecord(DataSet: TDataSet);
  private
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
  public
    { Public declarations }
  end;

var
  fmCashRegister: TfmCashRegister;

implementation

{$R *.dfm}

uses dtmGlobal, dtmGeneral, dtmInventory, untProcedure;

{ TfmCashRegister }

procedure TfmCashRegister.InitForm;
begin
  inherited;

  OpenIfClose(dmGeneral.qryWarehouse);
  OpenIfClose(dmGeneral.qryCustomer);
  OpenIfClose(dmGeneral.qryOutlet);
  OpenIfClose(qryCashRegister);
end;

procedure TfmCashRegister.qryCashRegisterNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('FlaguseFPValidation').AsString := '0';
  DataSet.FieldByName('FlagValidationItemPrice').AsString := '0';
  DataSet.FieldByName('FlagValidationItemDisc1').AsString := '0';
  DataSet.FieldByName('FlagValidationItemDisc2').AsString := '0';
  DataSet.FieldByName('FlagValidationItemVoucher').AsString := '0';
  DataSet.FieldByName('FlagValidationItemBonus').AsString := '0';
  DataSet.FieldByName('FlagValidationItemVoid').AsString := '0';
  DataSet.FieldByName('FlagValidationItemEditPrint').AsString := '0';
  DataSet.FieldByName('FlagValidationItemDeletePrint').AsString := '0';
  DataSet.FieldByName('FlagValidationInvoiceDisc1').AsString := '0';
  DataSet.FieldByName('FlagValidationInvoiceDisc2').AsString := '0';
  DataSet.FieldByName('FlagValidationInvoiceVoucher').AsString := '0';
  DataSet.FieldByName('FlagValidationInvoiceVoid').AsString := '0';
  DataSet.FieldByName('FlagValidationInvoiceReprint').AsString := '0';
  DataSet.FieldByName('FlagValidationPaymentVoid').AsString := '0';
  DataSet.FieldByName('LevelValidationItemPrice').AsInteger := 1;
  DataSet.FieldByName('LevelValidationItemDisc1').AsInteger := 1;
  DataSet.FieldByName('LevelValidationItemDisc2').AsInteger := 1;
  DataSet.FieldByName('LevelValidationItemVoucher').AsInteger := 1;
  DataSet.FieldByName('LevelValidationItemBonus').AsInteger := 1;
  DataSet.FieldByName('LevelValidationItemVoid').AsInteger := 1;
  DataSet.FieldByName('LevelValidationItemEditPrint').AsInteger := 1;
  DataSet.FieldByName('LevelValidationItemDeletePrint').AsInteger := 1;
  DataSet.FieldByName('LevelValidationInvoiceDisc1').AsInteger := 1;
  DataSet.FieldByName('LevelValidationInvoiceDisc2').AsInteger := 1;
  DataSet.FieldByName('LevelValidationInvoiceVoucher').AsInteger := 1;
  DataSet.FieldByName('LevelValidationInvoiceVoid').AsInteger := 1;
  DataSet.FieldByName('LevelValidationInvoiceReprint').AsInteger := 1;
  DataSet.FieldByName('LevelValidationPaymentVoid').AsInteger := 1;
end;

procedure TfmCashRegister.RefreshAll;
begin
  inherited;

  LockRefresh(qryCashRegister);
end;

end.
