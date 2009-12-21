unit frmSalesInvoicePro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmSalesInvoice, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxSpinEdit, cxDBExtLookupComboBox, cxCalendar, cxCalc, cxCurrencyEdit,
  cxImageComboBox, MemDS, DBAccess, Uni, dxDockControl, untIvPositionDevExpress,
  untIvPositionStandard, ActnList, cxGridDBTableView, cxDBEdit, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxMemo, dxDockPanel, cxLookupEdit, cxDBLookupEdit,
  cxContainer, cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, ExtCtrls;

type
  TfmSalesInvoicePro = class(TfmSalesInvoice)
    dblcShippingId: TcxDBExtLookupComboBox;
    lblOutlet: TLabel;
    dblcOutletId: TcxDBExtLookupComboBox;
    dblcProject: TcxDBExtLookupComboBox;
    Label6: TLabel;
    dblcSalesmanId: TcxDBExtLookupComboBox;
    procedure cgvSalesInvoiceDtNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSalesInvoicePro: TfmSalesInvoicePro;

implementation

{$R *.dfm}

uses
  untConstanta, untProcedure, dtmGlobal, dtmGeneral, dtmShare,
  dtmInventory, frmPrintFastReport, frmSalesInvoiceCashPayment,
  frmSalesOrderItem, frmDisplayItemStock, frmDisplayItemPrice;

procedure TfmSalesInvoicePro.cgvSalesInvoiceDtNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;

  if AButtonIndex = 13 then
  begin
    if qrySalesInvoiceHd.State in [dsInsert, dsEdit] then
      qrySalesInvoiceHd.Post;
    if qrySalesInvoiceDt.State in [dsInsert, dsEdit] then
      qrySalesInvoiceDt.Post;

    if not qrySalesInvoiceHd.IsEmpty then
      TfmSalesOrderItem.ExecuteForm(qrySalesInvoiceHd.FieldByName('CustomerId').AsString,
        qrySalesInvoiceDt);
    ADone := True;
  end;
end;

end.
