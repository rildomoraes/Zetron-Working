unit frmEntryItemBatch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmUniPosition, Menus, cxLookAndFeelPainters, cxGraphics, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, StdCtrls,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, cxButtons, ExtCtrls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridLevel, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfmEntryItemBatch = class(TFormUniPosition)
    pnlTop: TPanel;
    lblTimberShape: TLabel;
    lblTimberMaterial: TLabel;
    lblTimberCondition: TLabel;
    dblcMaterial: TcxDBExtLookupComboBox;
    dblcCondition: TcxDBExtLookupComboBox;
    dbeShape: TcxDBExtLookupComboBox;
    cgEntryItemBatch: TcxGrid;
    cgvEntrySquare: TcxGridBandedTableView;
    cgvEntrySquareBatchId: TcxGridBandedColumn;
    cgvEntrySquareTCutting: TcxGridBandedColumn;
    cgvEntrySquareLCutting: TcxGridBandedColumn;
    cgvEntrySquareKubikasiCutting: TcxGridBandedColumn;
    cgvEntrySquarePCutting: TcxGridBandedColumn;
    cgvEntrySquareTInvoice: TcxGridBandedColumn;
    cgvEntrySquareLInvoice: TcxGridBandedColumn;
    cgvEntrySquarePInvoice: TcxGridBandedColumn;
    cgvEntrySquareKubikasiInvoice: TcxGridBandedColumn;
    cgvEntrySquareQty: TcxGridBandedColumn;
    cgvEntrySquareGrade: TcxGridBandedColumn;
    cgEntryItemBatchLevel1: TcxGridLevel;
    cgEntryItemBatchLevel2: TcxGridLevel;
    btnProcess: TcxButton;
    actProcess: TAction;
    cgvEntryLog: TcxGridTableView;
    cgvEntryLogBatchId: TcxGridColumn;
    cgvEntryLogGrade: TcxGridColumn;
    cgvEntryLogD1: TcxGridColumn;
    cgvEntryLogD2: TcxGridColumn;
    cgvEntryLogD3: TcxGridColumn;
    cgvEntryLogD4: TcxGridColumn;
    cgvEntryLogDInv: TcxGridColumn;
    cgvEntryLogPInv: TcxGridColumn;
    cgvEntryLogKubikasiLog: TcxGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEntryItemBatch: TfmEntryItemBatch;

implementation

{$R *.dfm}

end.
