unit frmChamberOut;

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
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxMemo, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxCalendar;

type
  TFmChamberOut = class(TFormUniTransactionEx)
    pnlTop: TPanel;
    lblPurchaseOrderId: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dbeChamberInCode: TcxDBTextEdit;
    dbeChamberInDate: TcxDBDateEdit;
    dbeChamberInPlanOutDate: TcxDBDateEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cgChamberDt: TcxGrid;
    cgvChamberDt: TcxGridDBTableView;
    cgvChamberDtChamberInId: TcxGridDBColumn;
    cgvChamberDtNo: TcxGridDBColumn;
    cgvChamberDtTallySheetId: TcxGridDBColumn;
    cgChamberDtLevel1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    tsExternalMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsInternalMemo: TcxTabSheet;
    dbeMemoInternal: TcxDBMemo;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmChamberOut: TFmChamberOut;

implementation

{$R *.dfm}

end.
