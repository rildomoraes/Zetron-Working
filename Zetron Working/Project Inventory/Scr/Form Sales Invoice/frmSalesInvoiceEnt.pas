unit frmSalesInvoiceEnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Create
  frmSalesInvoicePro, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxSpinEdit, cxDBExtLookupComboBox, cxCalendar, cxCalc, cxCurrencyEdit,
  cxImageComboBox, MemDS, DBAccess, Uni, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxGridDBTableView, cxDBEdit, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxMemo, dxDockPanel, cxLookupEdit, cxDBLookupEdit,
  cxContainer, cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, ExtCtrls;

type
  TfmSalesInvoiceEnt = class(TfmSalesInvoicePro)
    lblSalesCategory: TLabel;
    dblcSalesCategoryId: TcxDBExtLookupComboBox;
    Label8: TLabel;
    dblcCurrencyId: TcxDBExtLookupComboBox;
    dbeKurs: TcxDBCurrencyEdit;
    procedure qrySalesInvoiceHdNewRecord(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
  private
  protected
    procedure InitForm; override;
  public
    { Public declarations }
  end;

var
  fmSalesInvoiceEnt: TfmSalesInvoiceEnt;

implementation

{$R *.dfm}

uses
  untConstanta, untConstantaPos, untProcedure, dtmGlobal, dtmGeneral, dtmShare,
  dtmInventory, frmPrintFastReport, frmSalesInvoiceCashPayment,
  frmSalesOrderItem, frmDisplayItemStock, frmDisplayItemPrice;

procedure TfmSalesInvoiceEnt.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if dsDefault.State in [dsBrowse] then
  begin
    SetReadOnly(dblcSalesCategoryId, True, COLOR_INACTIVE);
    SetReadOnly(dblcCurrencyId, True, COLOR_INACTIVE);
    SetReadOnly(dbeKurs, True, COLOR_INACTIVE);
  end;
end;

procedure TfmSalesInvoiceEnt.InitForm;
begin
  inherited;

  dbeKurs.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  SetReadOnly(dblcSalesCategoryId, True, COLOR_INACTIVE);
end;

procedure TfmSalesInvoiceEnt.qrySalesInvoiceHdNewRecord(DataSet: TDataSet);
begin
  inherited;

  SetReadOnly(dblcSalesCategoryId, False);
  SetReadOnly(dblcCurrencyId, False);
  SetReadOnly(dbeKurs, False);
end;

end.
