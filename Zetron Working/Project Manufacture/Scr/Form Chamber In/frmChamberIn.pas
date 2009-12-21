unit frmChamberIn;

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
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxSpinEdit, cxCalc,
  cxMemo, cxPC, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCalendar, ADODB, DateUtils;

type
  TfmChamberIn = class(TFormUniTransactionEx)
    pnlTop: TPanel;
    lblPurchaseOrderId: TLabel;
    lblVendorPurchaseOrderId: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dbeChamberInCode: TcxDBTextEdit;
    dblcWareHouseId: TcxDBExtLookupComboBox;
    dbeChamberInDate: TcxDBDateEdit;
    dbeChamberInPlanOutDate: TcxDBDateEdit;
    cgChamberDt: TcxGrid;
    cgvChamberDt: TcxGridDBTableView;
    cgChamberDtLevel1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    tsExternalMemo: TcxTabSheet;
    dbmStatementMemo: TcxDBMemo;
    tsInternalMemo: TcxTabSheet;
    dbeMemoInternal: TcxDBMemo;
    qryChamberInHd: TADODataSet;
    qryChamberInDt: TADODataSet;
    dsChamberDt: TDataSource;
    cgvChamberDtChamberInId: TcxGridDBColumn;
    cgvChamberDtNo: TcxGridDBColumn;
    cgvChamberDtTallySheetId: TcxGridDBColumn;
  private
    { Private declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmChamberIn: TfmChamberIn;

implementation

{$R *.dfm}
uses untProcedure, untConstanta, dtmGlobal, dtmInventory, frmUni, Math;

{ TfmChamberIn }

procedure TfmChamberIn.InitForm;
begin
  inherited;
  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PO);

  if FStatusApprove = 0 then
  begin
    Self.Caption := Self.Caption + ' - unPosting';
    SetReadOnly(dblcStatusApprove, True, COLOR_INACTIVE);
  end;

  OpenIfClose(qryChamberInHd, True);
  OpenIfClose(qryChamberIndt, True);

  SetRoundMode(rmTruncate);
end;

procedure TfmChamberIn.MonthYearValueChange(Sender: TObject);
begin
  inherited;
  if (qryChamberInHd.State in [dsEdit, dsInsert]) or
    (qryChamberInHd.State in [dsEdit, dsInsert]) then
    Abort;

  qryChamberInHd.Close;
  qryChamberInHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  qryChamberInHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), (cbMonth.ItemIndex + 1));
  OpenIfClose(qryChamberInHd, True, True);

end;

procedure TfmChamberIn.RefreshAll;
begin
  inherited;

end;

end.
