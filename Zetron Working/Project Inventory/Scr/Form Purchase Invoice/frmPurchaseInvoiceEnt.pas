unit frmPurchaseInvoiceEnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  //Auto Create
  frmPurchaseInvoicePro, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
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
  TfmPurchaseInvoiceEnt = class(TfmPurchaseInvoicePro)
    dblcPurchaseCategoryId: TcxDBExtLookupComboBox;
    Label8: TLabel;
    dblcCurrencyId: TcxDBExtLookupComboBox;
    dbeKurs: TcxDBCurrencyEdit;
    btnPrintBarcode: TcxButton;
    actPrintBarcode: TAction;
    procedure qryPurchaseInvoiceHdNewRecord(DataSet: TDataSet);
    procedure dsDefaultStateChange(Sender: TObject);
    procedure actPrintBarcodeExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure InitForm; override;
  public
    { Public declarations }
  end;

var
  fmPurchaseInvoiceEnt: TfmPurchaseInvoiceEnt;

implementation

{$R *.dfm}

uses
  untConstanta, untConstantaPos, untProcedure, dtmGlobal, dtmGeneral,
  dtmShare, dtmInventory, frmPrintBarcode;

procedure TfmPurchaseInvoiceEnt.actPrintBarcodeExecute(Sender: TObject);
begin
  inherited;

  if qryPurchaseInvoiceHd.IsEmpty then
    Exit;

  if VarToStr(dbePurchaseInvoiceId.EditValue) <> '' then
    TfmPrintBarcode.ExecuteForm(dbePurchaseInvoiceId.EditValue);
end;

procedure TfmPurchaseInvoiceEnt.dsDefaultStateChange(Sender: TObject);
begin
  inherited;

  if qryPurchaseInvoiceHd.State in [dsBrowse] then
  begin
    dbchkFlagKonsinyasi.Properties.ReadOnly := True;
    SetReadOnly(dblcPurchaseCategoryId, True, COLOR_INACTIVE);
    SetReadOnly(dblcCurrencyId, True, COLOR_INACTIVE);
    SetReadOnly(dbeKurs, True, COLOR_INACTIVE);
  end;
end;

procedure TfmPurchaseInvoiceEnt.InitForm;
begin
  inherited;

  dbeKurs.Properties.DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  SetReadOnly(dblcPurchaseCategoryId, True, COLOR_INACTIVE);
end;

procedure TfmPurchaseInvoiceEnt.qryPurchaseInvoiceHdNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  SetReadOnly(dblcPurchaseCategoryId, False);
  SetReadOnly(dblcCurrencyId, False);
  SetReadOnly(dbeKurs, False);
end;

end.
