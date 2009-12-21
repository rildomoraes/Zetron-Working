unit frmSPKTimber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSPK, Menus, cxLookAndFeelPainters, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxDockControlPainter, dxDockControl, DB, untIvPositionDevExpress,
  untIvPositionStandard, DBActns, ActnList, cxDropDownEdit, cxCalendar,
  cxDBEdit, dxDockPanel, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxImageComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  StdCtrls, cxButtons, ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxSplitter, cxClasses, cxGridLevel, cxGrid, cxSpinEdit,
  cxCalc, cxCurrencyEdit, ADODB, cxGridDBTableView, cxMemo, cxPC;

type
  TfmSPKTimber = class(TfmSPK)
    dblcMaterial: TcxDBExtLookupComboBox;
    cgRawMaterialLevel1: TcxGridLevel;
    cgRawMaterial: TcxGrid;
    cgFinishGoodLevel1: TcxGridLevel;
    cgFinishGood: TcxGrid;
    cxSplitter1: TcxSplitter;
    cgvRawMaterial: TcxGridDBBandedTableView;
    cgvRawMaterialT: TcxGridDBBandedColumn;
    cgvRawMaterialL: TcxGridDBBandedColumn;
    cgvRawMaterialP: TcxGridDBBandedColumn;
    cgvRawMaterialQty: TcxGridDBBandedColumn;
    cgvRawMaterialM3: TcxGridDBBandedColumn;
    cgvFinishGood: TcxGridDBBandedTableView;
    cgvFinishGoodT: TcxGridDBBandedColumn;
    cgvFinishGoodL: TcxGridDBBandedColumn;
    cgvFinishGoodP: TcxGridDBBandedColumn;
    cgvFinishGoodPcs: TcxGridDBBandedColumn;
    cgvFinishGoodM3: TcxGridDBBandedColumn;
    cgvFinishGoodKeterangan: TcxGridDBBandedColumn;
    pnlDetail: TPanel;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSPKTimber: TfmSPKTimber;

implementation

{$R *.dfm}

uses dtmInventory;

end.
