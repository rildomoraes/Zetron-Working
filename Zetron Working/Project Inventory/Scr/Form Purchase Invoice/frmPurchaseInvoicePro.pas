unit frmPurchaseInvoicePro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmPurchaseInvoice, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxSpinEdit, cxDBExtLookupComboBox, cxCalendar, cxCalc, cxCurrencyEdit,
  cxImageComboBox, cxCheckBox, MemDS, DBAccess, Uni, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxGridDBTableView,
  cxDBEdit, cxPC, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxMemo, cxDropDownEdit, dxDockPanel, cxLookupEdit,
  cxDBLookupEdit, cxContainer, cxTextEdit, cxMaskEdit, ExtCtrls, StdCtrls,
  cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxDockControlPainter;

type
  TfmPurchaseInvoicePro = class(TfmPurchaseInvoice)
    Label5: TLabel;
    dblcShippingId: TcxDBExtLookupComboBox;
    Label6: TLabel;
    dbeSalesman: TcxDBTextEdit;
    lblOutlet: TLabel;
    dblcOutletId: TcxDBExtLookupComboBox;
    dblcProject: TcxDBExtLookupComboBox;
    procedure cgvPurchaseInvoiceDtNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPurchaseInvoicePro: TfmPurchaseInvoicePro;

implementation

{$R *.dfm}

uses
  untConstanta, untProcedure, dtmGlobal, dtmGeneral, dtmShare, dtmInventory,
  frmPurchaseOrderItem;

procedure TfmPurchaseInvoicePro.cgvPurchaseInvoiceDtNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;

  if AButtonIndex = 13 then
  begin
    if qryPurchaseInvoiceHd.State in [dsInsert, dsEdit] then
      qryPurchaseInvoiceHd.Post;
    if qryPurchaseInvoiceDt.State in [dsInsert, dsEdit] then
      qryPurchaseInvoiceDt.Post;

    if not qryPurchaseInvoiceHd.IsEmpty then
      TfmPurchaseOrderItem.ExecuteForm(qryPurchaseInvoiceHd.FieldByName('VendorId').AsString,
        qryPurchaseInvoiceDt);
    ADone := True;
  end;
end;

end.

