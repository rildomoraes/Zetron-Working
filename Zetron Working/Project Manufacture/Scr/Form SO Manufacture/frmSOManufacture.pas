unit frmSOManufacture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, dxDockControl, DB,
  untIvPositionDevExpress, untIvPositionStandard, DBActns, ActnList,
  dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBEdit,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxMemo, cxCalendar, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfmSOManufacture = class(TFormUniTransactionEx)
    pnlTop: TPanel;
    lblVendor: TLabel;
    lblPurchaseOrderId: TLabel;
    lblVendorPurchaseOrderId: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    dblcCustomerId: TcxDBExtLookupComboBox;
    dbePurchaseOrderDate: TcxDBDateEdit;
    dbePurchaseOrderId: TcxDBTextEdit;
    dbeEndPeriod: TcxDBDateEdit;
    dbeDocument: TcxDBTextEdit;
    dbmInternalMemo: TcxDBMemo;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cgPurchaseOrderDt: TcxGrid;
    cgvPurchaseOrderBalok: TcxGridDBBandedTableView;
    cgvPurchaseOrderBalokNo: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokItemId: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokTCutting: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokLCutting: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokPCutting: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokTInvoice: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokLInvoice: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokPMinInvoice: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokPMaxInvoice: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokInterval: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokKet: TcxGridDBBandedColumn;
    cgPurchaseOrderDtLevel1: TcxGridLevel;
    cgvPurchaseOrderBalokColumn1: TcxGridDBBandedColumn;
    cgvPurchaseOrderBalokColumn2: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSOManufacture: TfmSOManufacture;

implementation

{$R *.dfm}

end.
