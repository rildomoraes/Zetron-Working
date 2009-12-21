unit frmPermintaanBahanBalok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmPermintaanBahan, Menus, cxLookAndFeelPainters, cxGraphics,
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
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxSplitter,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxCalendar;

type
  TfmPermintaanBahanBalok = class(TfmPermintaanBahan)
    pnlSawnTimber: TPanel;
    cgHasilGradeCutting: TcxGrid;
    cgvHasilGradeCutting: TcxGridDBBandedTableView;
    cgvHasilGradeCuttingNoPalet: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingTCutting: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingLCutting: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingPCutting: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingM3Cutting: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingQty: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingGrade: TcxGridDBBandedColumn;
    cgHasilGradeCuttingLevel1: TcxGridLevel;
    cgHasilGradeInvoice: TcxGrid;
    cgvHasilGradeInvoice: TcxGridDBBandedTableView;
    cgvHasilGradeInvoiceTInvoice: TcxGridDBBandedColumn;
    cgvHasilGradeInvoiceLInvoice: TcxGridDBBandedColumn;
    cgvHasilGradeInvoicePInvoice: TcxGridDBBandedColumn;
    cgvHasilGradeInvoiceKubikasiInvoice: TcxGridDBBandedColumn;
    cgHasilGradeInvoiceLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cgvHasilGradeInvoiceColumn2: TcxGridDBBandedColumn;
    cgvHasilGradeInvoiceColumn3: TcxGridDBBandedColumn;
    cgvHasilGradeInvoiceColumn1: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPermintaanBahanBalok: TfmPermintaanBahanBalok;

implementation

{$R *.dfm}

end.
