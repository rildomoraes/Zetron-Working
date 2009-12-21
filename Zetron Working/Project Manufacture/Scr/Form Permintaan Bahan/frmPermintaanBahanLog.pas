unit frmPermintaanBahanLog;

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
  TfmPermintaanBahanLog = class(TfmPermintaanBahan)
    pnlLog: TPanel;
    cgHasilGradeCutting: TcxGrid;
    cgvHasilGradeCutting: TcxGridDBBandedTableView;
    cgvHasilGradeCuttingNoPalet: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingTCutting: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingLCutting: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingPCutting: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingM3Cutting: TcxGridDBBandedColumn;
    cgvHasilGradeCuttingGrade: TcxGridDBBandedColumn;
    cgHasilGradeCuttingLevel1: TcxGridLevel;
    cgHasilGradeInvoice: TcxGrid;
    cgvHasilGradeInvoice: TcxGridDBBandedTableView;
    cgvHasilGradeInvoiceTInvoice: TcxGridDBBandedColumn;
    cgvHasilGradeInvoiceColumn3: TcxGridDBBandedColumn;
    cgvHasilGradeInvoiceLInvoice: TcxGridDBBandedColumn;
    cgvHasilGradeInvoiceColumn1: TcxGridDBBandedColumn;
    cgvHasilGradeInvoicePInvoice: TcxGridDBBandedColumn;
    cgvHasilGradeInvoiceColumn2: TcxGridDBBandedColumn;
    cgvHasilGradeInvoiceKubikasiInvoice: TcxGridDBBandedColumn;
    cgHasilGradeInvoiceLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cgvHasilGradeCuttingColumn1: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPermintaanBahanLog: TfmPermintaanBahanLog;

implementation

{$R *.dfm}

end.
