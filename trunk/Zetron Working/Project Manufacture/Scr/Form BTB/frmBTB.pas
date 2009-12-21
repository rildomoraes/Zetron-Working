unit frmBTB;

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
  cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, ADODB, cxCalendar, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCalc, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, DateUtils, cxGridDBTableView;

type
  TfmBTB = class(TFormUniTransactionEx)
    qryBTBHd: TADODataSet;
    dsDefaultDt: TDataSource;
    qryBTBDt: TADODataSet;
    cgBTB: TcxGrid;
    cgvBTB: TcxGridDBBandedTableView;
    cgBTBLevel1: TcxGridLevel;
    Panel1: TPanel;
    lblPurchaseOrderId: TLabel;
    dbeBTBId: TcxDBTextEdit;
    dbeBTBDate: TcxDBDateEdit;
    lblVendorPurchaseOrderId: TLabel;
    Label2: TLabel;
    dblcWarehouseSource: TcxDBExtLookupComboBox;
    dblcWarehouseDest: TcxDBExtLookupComboBox;
    Label1: TLabel;
    qryTallySheet: TADODataSet;
    dsTallySheet: TDataSource;
    cgvBTBBTBId: TcxGridDBBandedColumn;
    cgvBTBNo: TcxGridDBBandedColumn;
    cgvBTBTallySheetId: TcxGridDBBandedColumn;
    cxGridViewRepository1: TcxGridViewRepository;
    cgvTallySheet: TcxGridDBTableView;
    cgvTallySheetTallySheetId: TcxGridDBColumn;
    cgvTallySheetTallySheetCode: TcxGridDBColumn;
    cgvTallySheetTotalQty: TcxGridDBColumn;
    cgvTallySheetTotalLuas: TcxGridDBColumn;
    cgvTallySheetTotalVolume: TcxGridDBColumn;
    cgvTallySheetTotalBerat: TcxGridDBColumn;
    cgvTallySheetLastTransaction: TcxGridDBColumn;
    cgvTallySheetMaterialId: TcxGridDBColumn;
    cgvTallySheetPurchaseInvoiceId: TcxGridDBColumn;
    cgvTallySheetWarehouseId: TcxGridDBColumn;
    cgvTallySheetpurchaseinvoicecode: TcxGridDBColumn;
    cgvBTBColumn1: TcxGridDBBandedColumn;
    dsBTBSJ: TDataSource;
    qryBTBSJ: TADODataSet;
    cgBTBLevel2: TcxGridLevel;
    cgvBTBSJ: TcxGridDBTableView;
    cgvBTBSJBTBId: TcxGridDBColumn;
    cgvBTBSJSJId: TcxGridDBColumn;
    cgvBTBSJSJDate: TcxGridDBColumn;
    cgvBTBSJNoPolisi: TcxGridDBColumn;
    cgvBTBSJKendaraan: TcxGridDBColumn;
    cgvBTBSJNoFAKO: TcxGridDBColumn;
    cgvBTBSJNoCont: TcxGridDBColumn;
    cgvBTBSJDescription: TcxGridDBColumn;
    cgBTBLevel3: TcxGridLevel;
    cgBTBDBTableView1: TcxGridDBTableView;
    cgBTBDBTableView1Column1: TcxGridDBColumn;
    cgBTBDBTableView1Column2: TcxGridDBColumn;
    cgBTBDBTableView1Column3: TcxGridDBColumn;
    cgBTBDBTableView1Column4: TcxGridDBColumn;
    cgBTBDBTableView1Column5: TcxGridDBColumn;
    cgvBTBColumn2: TcxGridDBBandedColumn;
    cgvBTBColumn3: TcxGridDBBandedColumn;
    procedure cgvBTBNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure qryBTBHdBeforePost(DataSet: TDataSet);
    procedure qryBTBDtNewRecord(DataSet: TDataSet);
    procedure dblcWarehouseSourcePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  end;

var
  fmBTB: TfmBTB;

implementation

{$R *.dfm}
uses untProcedure, untConstanta, dtmGlobal, dtmInventory, dtmTimber, frmUni,
  frmBTBEntry;

{ TfmBTB }

procedure TfmBTB.cgvBTBNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  if AButtonIndex = 13 then
  begin
//    fmBTBEntry.ExecuteForm(0,qryGradeResultHd.FieldByName('PurchaseOrderId').asinteger,
//    qryGradeResultHd.FieldByName('GradeResultId').asinteger,1,qryGradeResultInvoiceDt);
    ADone := True;
  end;
end;

procedure TfmBTB.dblcWarehouseSourcePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//  qryTallySheet.
end;

procedure TfmBTB.InitForm;
begin
  inherited;
  // Init Print
  dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_PO);

  // Setting Format

  OpenIfClose(dmInventory.qryWarehouse);
  OpenIfClose(dmInventory.qryItem);

  MonthYearValueChange(nil); // -> Trigger qrySalesInvoiceHd

  OpenIfClose(qryBTBDt);
  OpenIfClose(qryBTBSJ);
  OpenIfClose(qryTallySheet);

end;

procedure TfmBTB.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryBTBHd.State in [dsEdit, dsInsert]) or
     (qryBTBDt.State in [dsEdit, dsInsert]) or
     (qryBTBDt.State in [dsEdit, dsInsert]) then
    Abort;

  qryBTBHd.Close;
  qryBTBHd.Parameters[0].Value := StartOfAMonth(StrToInt(cbYear.Text), cbMonth.ItemIndex + 1);
  qryBTBHd.Parameters[1].Value := EndOfAMonth(StrToInt(cbYear.Text), cbMonth.ItemIndex + 1);
  OpenIfClose(qryBTBHd, True, True);
end;

procedure TfmBTB.qryBTBDtNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
end;

procedure TfmBTB.qryBTBHdBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('EmployeeId').AsVariant := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmBTB.RefreshAll;
begin
  inherited;

end;

end.
